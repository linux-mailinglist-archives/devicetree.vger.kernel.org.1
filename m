Return-Path: <devicetree+bounces-21256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED400802F4D
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 10:52:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3C451F210FE
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30A691D55E;
	Mon,  4 Dec 2023 09:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5ZZxdWO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1618515482
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 09:52:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54150C433C8;
	Mon,  4 Dec 2023 09:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701683556;
	bh=G90ktrbPDxw748635+u97Ko+qELy1kB46DRPsEHwDCA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=p5ZZxdWOpPSX67byQl+sDsl6cNX7yLy3arbNeCYFq2IihlaU8O+3dfknjleNlPU4l
	 2Dih0HGT+Xft39xeEij98/2ryVtOAG1Cp2Trihxi9SXDn0IY3oR8CuVkkTdoAxU/i4
	 aaCUOK9S0CyJ7S8BEY9u0u5TVB7Yr6d5fZFE2j0yWvASO1BH9sN8kwqrLt8wT43mX0
	 Sef8n94W+sQguRkye5Fq6FcPjp+zmpX7WF5F1U+FfQ6QI/dQtxuQb5LPi+6dEh5HZV
	 Cd+Gwu52tF8/1fHX8X9h8AV8WP9LNjnVTYNtDlaUHcG9/aEEjOxZt+SagrELbE+b4o
	 bjRXbGQLmM0+Q==
From: Michael Walle <mwalle@kernel.org>
To: dmitry.baryshkov@linaro.org
Cc: Laurent.pinchart@ideasonboard.com,
	andrzej.hajda@intel.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ivo.g.dimitrov.75@gmail.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	krzysztof.kozlowski+dt@linaro.org,
	merlijn@wizzup.org,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	pavel@ucw.cz,
	philipp@uvos.xyz,
	rfoss@kernel.org,
	robh+dt@kernel.org,
	sam@ravnborg.org,
	simhavcs@gmail.com,
	sre@kernel.org,
	tony@atomide.com,
	tzimmermann@suse.de,
	Michael Walle <mwalle@kernel.org>
Subject: Re: [PATCH v2 09/10] drm/bridge: tc358775: Add support for tc358765
Date: Mon,  4 Dec 2023 10:52:13 +0100
Message-Id: <20231204095213.2573620-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <CAA8EJppYoBxYaFnu7UHxCgNiRwcjmVgPXXcQboaeu_dGCosJXg@mail.gmail.com>
References: <CAA8EJppYoBxYaFnu7UHxCgNiRwcjmVgPXXcQboaeu_dGCosJXg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

>> The tc358775 bridge is pin compatible with earlier tc358765 according to
>> the tc358774xbg_datasheet_en_20190118.pdf documentation. Compared to the
>> tc358765, the tc358775 supports a STBY GPIO and higher data rates.
>>
>> The tc358765 has a register bit for video event mode vs video pulse mode.
>> We must set it to video event mode for the LCD output to work, and on the
>> tc358775, this bit no longer exists.
>>
>> Looks like the registers seem to match otherwise based on a quick glance
>> comparing the defines to the earlier Android kernel tc358765 driver.
>>
>> Signed-off-by: Tony Lindgren <tony@atomide.com>
>> ---
>>  drivers/gpu/drm/bridge/tc358775.c | 26 ++++++++++++++++++++++----
>>  1 file changed, 22 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
>> --- a/drivers/gpu/drm/bridge/tc358775.c
>> +++ b/drivers/gpu/drm/bridge/tc358775.c
>> @@ -15,6 +15,7 @@
>>  #include <linux/kernel.h>
>>  #include <linux/media-bus-format.h>
>>  #include <linux/module.h>
>> +#include <linux/of_device.h>
>>  #include <linux/regulator/consumer.h>
>>  #include <linux/slab.h>
>>
>> @@ -107,6 +108,7 @@
>>  #define RDPKTLN         0x0404  /* Command Read Packet Length */
>>
>>  #define VPCTRL          0x0450  /* Video Path Control */
>> +#define EVTMODE                BIT(5)  /* Video event mode enable, tc35876x only */
>>  #define HTIM1           0x0454  /* Horizontal Timing Control 1 */
>>  #define HTIM2           0x0458  /* Horizontal Timing Control 2 */
>>  #define VTIM1           0x045C  /* Vertical Timing Control 1 */
>> @@ -254,6 +256,11 @@ enum tc358775_ports {
>>         TC358775_LVDS_OUT1,
>>  };
>>
>> +enum tc3587x5_type {
>> +       TC358765,
>
> I'd suggest adding = 1 or =0x65 so that the specified type differs
> from 'no data' = 0 / NULL.
>
>> +       TC358775,
>> +};
>> +
>>  struct tc_data {
>>         struct i2c_client       *i2c;
>>         struct device           *dev;
>> @@ -271,6 +278,8 @@ struct tc_data {
>>         struct gpio_desc        *stby_gpio;
>>         u8                      lvds_link; /* single-link or dual-link */
>>         u8                      bpc;
>> +
>> +       enum tc3587x5_type      type;
>>  };
>>
>>  static inline struct tc_data *bridge_to_tc(struct drm_bridge *b)
>> @@ -424,10 +433,16 @@ static void tc_bridge_enable(struct drm_bridge *bridge)
>>         d2l_write(tc->i2c, PPI_STARTPPI, PPI_START_FUNCTION);
>>         d2l_write(tc->i2c, DSI_STARTDSI, DSI_RX_START);
>>
>> +       /* Video event mode vs pulse mode bit, does not exist for tc358775 */
>> +       if (tc->type == TC358765)
>> +               val = EVTMODE;
>> +       else
>> +               val = 0;
>> +
>>         if (tc->bpc == 8)
>> -               val = TC358775_VPCTRL_OPXLFMT(1);
>> +               val |= TC358775_VPCTRL_OPXLFMT(1);
>>         else /* bpc = 6; */
>> -               val = TC358775_VPCTRL_MSF(1);
>> +               val |= TC358775_VPCTRL_MSF(1);
>>
>>         dsiclk = mode->crtc_clock * 3 * tc->bpc / tc->num_dsi_lanes / 1000;
>>         clkdiv = dsiclk / (tc->lvds_link == DUAL_LINK ? DIVIDE_BY_6 : DIVIDE_BY_3);
>> @@ -643,6 +658,7 @@ static int tc_probe(struct i2c_client *client)
>>
>>         tc->dev = dev;
>>         tc->i2c = client;
>> +       tc->type = (enum tc3587x5_type)of_device_get_match_data(dev);
>
> Would it make sense to use i2c_get_match_data() instead?

FWIW, I' planning to add a dsi binding for this driver. So I'd
suggest either the of_ or the device_ variant. Not sure though,
if the new device supports the DSI commands.

Otherwise, the patch looks good:

Reviewed-by: Michael Walle <mwalle@kernel.org>

-michael

>
>>
>>         tc->panel_bridge = devm_drm_of_get_bridge(dev, dev->of_node,
>>                                                   TC358775_LVDS_OUT0, 0);
>> @@ -704,13 +720,15 @@ static void tc_remove(struct i2c_client *client)
>>  }
>>
>>  static const struct i2c_device_id tc358775_i2c_ids[] = {
>> -       { "tc358775", 0 },
>> +       { "tc358765", TC358765, },
>> +       { "tc358775", TC358775, },
>>         { }
>>  };
>>  MODULE_DEVICE_TABLE(i2c, tc358775_i2c_ids);
>>
>>  static const struct of_device_id tc358775_of_ids[] = {
>> -       { .compatible = "toshiba,tc358775", },
>> +       { .compatible = "toshiba,tc358765", .data = (void *)TC358765, },
>> +       { .compatible = "toshiba,tc358775", .data = (void *)TC358775, },
>>         { }
>>  };
>>  MODULE_DEVICE_TABLE(of, tc358775_of_ids);
>> --
>> 2.43.0



-- 
With best wishes
Dmitry


