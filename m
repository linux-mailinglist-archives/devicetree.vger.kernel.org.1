Return-Path: <devicetree+bounces-12610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0567DA7BA
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 17:19:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CB1E1C20969
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 15:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2493315E9B;
	Sat, 28 Oct 2023 15:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="FYN/TtA2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7AFE23A5
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 15:18:57 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02C7FF7;
	Sat, 28 Oct 2023 08:18:54 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E5BB7720;
	Sat, 28 Oct 2023 17:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698506318;
	bh=QTn6wI1xkxt9l2xgQqdSNbm5k5C2KdjL1OV6R+r7S3A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FYN/TtA2Rh5LM2tRMkDxgfF1JHn/zgcXVN5pp0jo/RJ6jHUx87ykIY0dFSMCas46J
	 PGtmRDgI6B6QxrdudDGjb5yFbUbFeuPSUi+qbC9+RheXaHIZv1W3ZmqhtHM6xU/5zL
	 LYnKyeve8IyfGUHZ9MiRRv48gUtj+p2NkyKC0J9M=
Date: Sat, 28 Oct 2023 18:18:58 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@iki.fi>
Cc: linux-media@vger.kernel.org, Paul Elder <paul.elder@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Julien Stephan <jstephan@baylibre.com>, devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v4 3/3] media: i2c: Add driver for THine THP7312
Message-ID: <20231028151858.GB20465@pendragon.ideasonboard.com>
References: <20231017132103.9914-1-laurent.pinchart@ideasonboard.com>
 <20231017132103.9914-4-laurent.pinchart@ideasonboard.com>
 <ZTutbU1XG_jKZbIp@valkosipuli.retiisi.eu>
 <20231027124529.GA19539@pendragon.ideasonboard.com>
 <ZTvOIQSmpytUisUD@valkosipuli.retiisi.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZTvOIQSmpytUisUD@valkosipuli.retiisi.eu>

On Fri, Oct 27, 2023 at 02:50:09PM +0000, Sakari Ailus wrote:
> Hi Laurent,
> 
> On Fri, Oct 27, 2023 at 03:45:29PM +0300, Laurent Pinchart wrote:
> 
> ...
> 
> > > > +#include <linux/clk.h>
> > > > +#include <linux/delay.h>
> > > > +#include <linux/device.h>
> > > > +#include <linux/firmware.h>
> > > > +#include <linux/gpio/consumer.h>
> > > > +#include <linux/i2c.h>
> > > > +#include <linux/init.h>
> > > > +#include <linux/iopoll.h>
> > > > +#include <linux/kernel.h>
> > > > +#include <linux/module.h>
> > > > +#include <linux/mtd/spi-nor.h>
> > > > +#include <linux/of_device.h>
> > > > +#include <linux/pm_runtime.h>
> > > > +#include <linux/regulator/consumer.h>
> > > > +#include <linux/slab.h>
> > > > +#include <linux/thp7312.h>
> > > 
> > > uapi/linux/thp7321.h ?
> > 
> > Is that needed ?
> 
> It's a UAPI header. Wouldn't it be reasonable to include it that way
> (instead of relying on searching include/uapi as well)?

There are some occurences of '#include <uapi/' in drivers/ (I counted
338), but why is that better ?

> > > > +	struct {
> > > > +		struct v4l2_ctrl *noise_reduction_auto;
> > > > +		struct v4l2_ctrl *noise_reduction_absolute;
> > > > +	};
> > > > +
> > > > +	const char *fw_name;
> > > > +	u8 *fw_data;
> > > > +	size_t fw_size;
> > > > +
> > > > +	u8 fw_major_version;
> > > > +	u8 fw_minor_version;
> > > > +
> > > > +	/* Lock to protect fw_cancel */
> > > > +	struct mutex fw_lock;
> > > > +	struct fw_upload *fwl;
> > > > +	bool fw_cancel;
> > > 
> > > Arranging this right after fw_* would save some memory.
> > 
> > After what ? I assume you mean fw_*_version ? It would, but it would
> > feel a bit out of place. I'll see what I can do.
> 
> Yes. There doesn't seem to be any firm ordering here either. Up to you.
> 
> ...
> 
> > > > +	val = ((conv_lanes[3] & 0x03) << 6) |
> > > > +	      ((conv_lanes[2] & 0x03) << 4) |
> > > > +	      ((conv_lanes[1] & 0x03) << 2) |
> > > > +	       (conv_lanes[0] & 0x03);
> > > 
> > > You could construct val in the loop and drop conv_lanes altogether.
> > > 
> > > I.e.
> > > 
> > > 		val |= (i & 0x03) << ((lanes[i] - 1) * 2);
> > > 
> > > And assign val to 0 in declaration.
> > 
> > I think I'll compute it at probe time and cache it instead.
> 
> If you don't need anything else in the endpoint, you could move it out of
> the device context struct.

That's what I've now done, yes.

> > > > +	for (rate = mode->rates; rate->fps; ++rate, --index) {
> > > > +		if (!index) {
> > > > +			fie->interval.numerator = 1;
> > > > +			fie->interval.denominator = rate->fps;
> > > 
> > > Maybe a newline here?
> > 
> > If that makes you happy :-)
> 
> Newlines are great (when they are at the right places)!
> 
> > > > +	case V4L2_CID_THP7312_NOISE_REDUCTION_AUTO:
> > > > +	case V4L2_CID_THP7312_NOISE_REDUCTION_ABSOLUTE:
> > > > +		/* Ignore the manually set value if auto has been set */
> > > > +		value = thp7312->noise_reduction_auto->val
> > > > +		      ? 0 : 0x80 | (thp7312->noise_reduction_absolute->val & 0x7f);
> > > 
> > > "?" should be on the preceding line.
> > 
> > Isn't that a matter of coding style preference ?
> 
> Yes, indeed, and I recall GNU coding style is shunned upon here. :-)
> 
> > > > +
> > > > +		cci_write(thp7312->regmap, THP7312_REG_NOISE_REDUCTION, value,
> > > > +			  &ret);
> > > > +		break;
> > > > +
> > > > +	case V4L2_CID_AUTO_WHITE_BALANCE:
> > > > +		value = ctrl->val ? THP7312_WB_MODE_AUTO : THP7312_WB_MODE_MANUAL;
> > > 
> > > I'd do this in the call, up to you.
> > 
> > Only if you allow lines longer than 80 columns ;-)
> 
> I don't think you need longer lines for that, do you?
> 
> > > > +
> > > > +		cci_write(thp7312->regmap, THP7312_REG_WB_MODE, value, &ret);
> > > > +		break;
> > > > +
> 
> ...
> 
> > > > +static enum fw_upload_err thp7312_fw_write_to_flash(struct thp7312_device *thp7312,
> > > > +						    u32 dest, u32 write_size)
> > > > +{
> > > > +	u8 command[sizeof(thp7312_cmd_write_ram_to_flash) + 6];
> > > > +	static const u32 cmd_size = sizeof(thp7312_cmd_write_ram_to_flash);
> > > > +	u64 val;
> > > > +	int ret;
> > > > +
> > > > +	memcpy(command, thp7312_cmd_write_ram_to_flash, cmd_size);
> > > > +
> > > > +	command[cmd_size] = (dest & 0xff0000) >> 16;
> > > > +	command[cmd_size + 1] = (dest & 0x00ff00) >> 8;
> > > > +	command[cmd_size + 2] = (dest & 0x0000ff);
> > > > +	command[cmd_size + 3] = ((write_size - 1) & 0xff0000) >> 16;
> > > > +	command[cmd_size + 4] = ((write_size - 1) & 0x00ff00) >> 8;
> > > > +	command[cmd_size + 5] = ((write_size - 1) & 0x0000ff);
> > > > +
> > > > +	ret = thp7312_write_buf(thp7312, command, sizeof(command));
> > > > +	if (ret < 0)
> > > > +		return FW_UPLOAD_ERR_RW_ERROR;
> > > > +
> > > > +	usleep_range(8000000, 8100000);
> > > 
> > > I guess there's time to make some tea here?
> > 
> > For a flash infusion, gong fu style, probably.
> > 
> > We don't have much documentation about the exact values of the delays
> > that are needed, and why :-(
> 
> I have even less documentation (none) on this device. Is polling an option,
> as you're reading a register to verify the operation was successful?

I'll try to ask and get more information. As firmware update is an
uncommon and not time-sensitive operation, I'd rather be cautious here
and not over-optimize.

> > > > +
> > > > +	ret = cci_read(thp7312->regmap, THP7312_REG_FW_VERIFY_RESULT, &val,
> > > > +		       NULL);
> > > > +	if (ret < 0)
> > > > +		return FW_UPLOAD_ERR_RW_ERROR;
> > > > +
> > > > +	return val ?  FW_UPLOAD_ERR_HW_ERROR : FW_UPLOAD_ERR_NONE;
> > > > +}
> 
> ...
> 
> > > > +	/*
> > > > +	 * Register a device for the sensor, to support usage of the regulator
> > > > +	 * API.
> > > > +	 */
> > > > +	sensor->dev = kzalloc(sizeof(*sensor->dev), GFP_KERNEL);
> > > > +	if (!sensor->dev)
> > > > +		return -ENOMEM;
> > > > +
> > > > +	sensor->dev->parent = dev;
> > > > +	sensor->dev->of_node = of_node_get(sensor->of_node);
> > > 
> > > This device could well find its way to a non-OF system. Could you use the
> > > fwnode property API instead?
> > 
> > I'm pretty sure there will be problems if someone was using this driver
> > on an ACPI-based system, so trying to pretend it's supported without
> > being able to test it may not be the best use of development time. I'll
> > try, but if I hit any issue, I'll keep using the OF-specific functions
> > in the next version.
> 
> I'd suggest to use OF functions if there's no corresponding fwnode function
> available. The intention is they cover the same scope, so it is likely
> something that's missing will be added sooner or later.

I understand, but if the conversion is not complete, it's not very
valuable. I have no objection against using the fwnode API in the
driver, but I'll let someone else handle it when and if needed.

> > > > +	/* Retrieve the sensor index from the reg property. */
> > > > +	ret = of_property_read_u32(node, "reg", &reg);
> > > > +	if (ret < 0) {
> > > > +		dev_err(dev, "'reg' property missing in sensor node\n");
> > > 
> > > Shouldn't you assume it's zero instead?
> > 
> > The property is mandatory.
> 
> You could also make it optional as that appears to be the general practice.
> Up to you.

I think it's easier to keep it mandatory.

-- 
Regards,

Laurent Pinchart

