Return-Path: <devicetree+bounces-25262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1638812C68
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:00:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00D721C21524
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 784E239FC2;
	Thu, 14 Dec 2023 09:59:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id A3521BD;
	Thu, 14 Dec 2023 01:59:55 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EEF55C15;
	Thu, 14 Dec 2023 02:00:40 -0800 (PST)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CEE623F762;
	Thu, 14 Dec 2023 01:59:52 -0800 (PST)
Date: Thu, 14 Dec 2023 09:59:50 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Maxim Kiselev <bigunclemax@gmail.com>
Cc: Vasily Khoruzhick <anarsoul@gmail.com>, bob@electricworry.net, Conor
 Dooley <conor+dt@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-sunxi@lists.linux.dev, lukasz.luba@arm.com,
 martin.botka@somainline.org, "Rafael J. Wysocki" <rafael@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>, Samuel
 Holland <samuel@sholland.org>, Yangtao Li <tiny.windzz@gmail.com>, Chen-Yu
 Tsai <wens@csie.org>
Subject: Re: [PATCH v3 5/6] thermal: sun8i: add support for H616 THS
 controller
Message-ID: <20231214095950.60505c20@donnerap.manchester.arm.com>
In-Reply-To: <CALHCpMj3+g5MD1vHdtZeYP3=2xBYvXMBH9ai376YwETGJRyeyA@mail.gmail.com>
References: <CALHCpMj3+g5MD1vHdtZeYP3=2xBYvXMBH9ai376YwETGJRyeyA@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 13 Dec 2023 12:41:29 +0300
Maxim Kiselev <bigunclemax@gmail.com> wrote:

Hi Maksim,

> Hello, again!
> 
> On 28.11.2023 03:58, Andre Przywara wrote:
> > From: Martin Botka <martin.botka@somainline.org>
> >
> > Add support for the thermal sensor found in H616 SoCs, which slightly
> > resembles the H6 thermal sensor controller, with a few changes like
> > four sensors.
> > Also the registers readings are wrong, unless a bit in the first SYS_CFG
> > register cleared, so set needs_syscon to trigger that code
> >
> > Signed-off-by: Martin Botka <martin.botka@somainline.org>
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> > drivers/thermal/sun8i_thermal.c | 73 +++++++++++++++++++++++++++++++++
> > 1 file changed, 73 insertions(+)
> >
> > diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> > index 920e419ce7343..9a404fa9d76a9 100644
> > --- a/drivers/thermal/sun8i_thermal.c
> > +++ b/drivers/thermal/sun8i_thermal.c
> > @@ -280,6 +280,64 @@ static int sun50i_h6_ths_calibrate(struct ths_device *tmdev,
> > return 0;
> > }
> >
> > +static int sun50i_h616_ths_calibrate(struct ths_device *tmdev,
> > + u16 *caldata, int callen)
> > +{
> > + struct device *dev = tmdev->dev;
> > + int i, ft_temp;
> > +
> > + if (!caldata[0])
> > + return -EINVAL;
> > +
> > + /*
> > + * h616 efuse THS calibration data layout:
> > + *
> > + * 0 11 16 27 32 43 48 57
> > + * +----------+-----------+-----------+-----------+
> > + * | temp | |sensor0| |sensor1| |sensor2| |
> > + * +----------+-----------+-----------+-----------+
> > + * ^ ^ ^
> > + * | | |
> > + * | | sensor3[11:8]
> > + * | sensor3[7:4]
> > + * sensor3[3:0]
> > + *
> > + * The calibration data on the H616 is the ambient temperature and
> > + * sensor values that are filled during the factory test stage.
> > + *
> > + * The unit of stored FT temperature is 0.1 degree celsius.
> > + */
> > + ft_temp = caldata[0] & FT_TEMP_MASK;
> > +
> > + for (i = 0; i < tmdev->chip->sensor_num; i++) {
> > + int delta, cdata, offset, reg, temp;
> > +
> > + if (i == 3)
> > + reg = (caldata[1] >> 12)
> > + | ((caldata[2] >> 12) << 4)
> > + | ((caldata[3] >> 12) << 8);
> > + else
> > + reg = (int)caldata[i + 1] & TEMP_CALIB_MASK;
> > +
> > + temp = tmdev->chip->calc_temp(tmdev, i, reg);
> > + delta = ((temp - ft_temp * 100) * 10) / tmdev->chip->scale;
> > + cdata = CALIBRATE_DEFAULT - delta;
> > + if (cdata & ~TEMP_CALIB_MASK) {
> > + dev_warn(dev, "sensor%d is not calibrated.\n", i);
> > +
> > + continue;
> > + }
> > +
> > + offset = (i % 2) * 16;
> > + regmap_update_bits(tmdev->regmap,
> > + SUN50I_H6_THS_TEMP_CALIB + (i / 2 * 4),
> > + TEMP_CALIB_MASK << offset,
> > + cdata << offset);
> > + }
> > +
> > + return 0;
> > +}
> > +
> > static int sun8i_ths_calibrate(struct ths_device *tmdev)
> > {
> > struct nvmem_cell *calcell;
> > @@ -659,6 +717,20 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
> > .calc_temp = sun8i_ths_calc_temp,
> > };
> >
> > +static const struct ths_thermal_chip sun50i_h616_ths = {
> > + .sensor_num = 4,
> > + .has_bus_clk_reset = true,
> > + .needs_syscon = true,
> > + .ft_deviation = 8000,
> > + .offset = 263655,
> > + .scale = 810,  
> 
> Can I ask you, how did you get the offset and the scale values?
> 
> In the H616 user manual (3.10.3.4. THS Temperature Conversion Formula)
> we can find this formula:
> 
> T = (sensor_data - 3255)/(-12.401)
> 
> I calculated offset and scale values, and this is what I got:
> 
> scale = 1 / 12.401 = 806,38658173 ~ 806
> offset = 3255 / 12.401 = 262478,832352 ~ 262479
> 
> Let me assume that you got offset and scale values from Tina Linux
> Here for example
> https://github.com/Tina-Linux/linux-5.4/blob/ff6b1361f7041be75d4486559141e13134d164ef/drivers/thermal/sunxi_thermal.c#L373
> 
> In Tina Linux the scale is rounded to 81 (that equals to 810 in
> mainline driver).
> And looks like you used this rounded value to recalculate the offset:
> 3255 * 81 = 263655
> 
> I would be glad to know your thoughts about this.

Yes, this submission was based on some BSP code, from there we calculated
the values to match the formula used in mainline, so this would include
the rounding error, as your rightly figured.

I don't know if the manual is any more accurate than the BSP data, but
your calculations above make sense, and would explain the difference.

I will use your new values in the next version.

Thanks,
Andre

> > + .temp_data_base = SUN50I_H6_THS_TEMP_DATA,
> > + .calibrate = sun50i_h616_ths_calibrate,
> > + .init = sun50i_h6_thermal_init,
> > + .irq_ack = sun50i_h6_irq_ack,
> > + .calc_temp = sun8i_ths_calc_temp,
> > +};
> > +
> > static const struct of_device_id of_ths_match[] = {
> > { .compatible = "allwinner,sun8i-a83t-ths", .data = &sun8i_a83t_ths },
> > { .compatible = "allwinner,sun8i-h3-ths", .data = &sun8i_h3_ths },
> > @@ -667,6 +739,7 @@ static const struct of_device_id of_ths_match[] = {
> > { .compatible = "allwinner,sun50i-a100-ths", .data = &sun50i_a100_ths },
> > { .compatible = "allwinner,sun50i-h5-ths", .data = &sun50i_h5_ths },
> > { .compatible = "allwinner,sun50i-h6-ths", .data = &sun50i_h6_ths },
> > + { .compatible = "allwinner,sun50i-h616-ths", .data = &sun50i_h616_ths },
> > { /* sentinel */ },
> > };
> > MODULE_DEVICE_TABLE(of, of_ths_match);  
> 
> Best regards,
> Maksim
> 


