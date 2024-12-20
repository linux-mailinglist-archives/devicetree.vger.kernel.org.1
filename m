Return-Path: <devicetree+bounces-133051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B77219F91AD
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:51:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9AD61895FC5
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:51:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CA2E1C5F20;
	Fri, 20 Dec 2024 11:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Q3P8OMAZ"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460002594B5;
	Fri, 20 Dec 2024 11:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734695468; cv=none; b=XSwDTSStuRTEDDulpVuo6plkA8leUeu1sqqc7OI0T5K2PLmAuPFXH+YtdchADUCmuTYeXZU8o54Cv1O0kRFLZOj52IOBJFpeANV0Y972w+trjbH8cdNL6XYax1qsIoD9TyyFXCfIjKzfB0e+fIWbnsLyIiwLggHp/1Mw0CtwmHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734695468; c=relaxed/simple;
	bh=S3LF4IJU9JotiK7p+SXFg1MUAru+xOziP63TS5y0GWQ=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iEQWbT9qwaNt4o9zQOJDYg/hkG8T+82aYP+rp4pee/D6HD4I3AGByStWJborUUt3A8e1H9sJmnKneMrndXRqCX8J6ZxUrxFxNfNRJncrUTNGfFfkHuIMbdIaz/7hLnvJBiNk+1fteYLYfM67+OK4PqDKsNQAtF0kuU6I6Ph9s/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Q3P8OMAZ; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4BKBojsi006872;
	Fri, 20 Dec 2024 05:50:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1734695445;
	bh=tGedN05yDyYA7Seb0LX9K4nmEUYLSyJdSXcb+rtc3Y8=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=Q3P8OMAZnR1ML4OecptuPSeIRv3jws4wqLq4Snh8VS+mEvu2FFWwAy/SGP02hwJwy
	 Kijs36sfbjLp1WLV33c5Ecfkfce1woZFFxzlro5Sxbko5p3XUH7xBqdBUoJ2b19u3S
	 ka7+7WlIyHs9zcyRlV9vtGkWGaSmNxzOwAPOyvDc=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4BKBojYq104259
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 20 Dec 2024 05:50:45 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 20
 Dec 2024 05:50:44 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 20 Dec 2024 05:50:44 -0600
Received: from localhost (lcpd911.dhcp.ti.com [172.24.227.226])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BKBohWO059097;
	Fri, 20 Dec 2024 05:50:44 -0600
Date: Fri, 20 Dec 2024 17:20:43 +0530
From: Dhruva Gole <d-gole@ti.com>
To: Markus Schneider-Pargmann <msp@baylibre.com>
CC: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Santosh
 Shilimkar <ssantosh@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>, Rob
 Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor
 Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Vishal Mahaveer <vishalm@ti.com>,
        Kevin Hilman
	<khilman@baylibre.com>
Subject: Re: [PATCH v4 2/4] firmware: ti_sci: Partial-IO support
Message-ID: <20241220115043.qhjroeqc4gl3pwtz@lcpd911>
References: <20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com>
 <20241219-topic-am62-partialio-v6-12-b4-v4-2-1cb8eabd407e@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241219-topic-am62-partialio-v6-12-b4-v4-2-1cb8eabd407e@baylibre.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Markus,

On Dec 19, 2024 at 21:02:13 +0100, Markus Schneider-Pargmann wrote:
> Add support for Partial-IO poweroff. In Partial-IO pins of a few

Maybe add a comma after the In partial-IO, a few pins in this SOC can generate....

> hardware units can generate system wakeups while DDR memory is not
> powered resulting in a fresh boot of the system. These hardware units in
> the SoC are always powered so that some logic can detect pin activity.
> 
> If the system supports Partial-IO as described in the fw capabilities, a
> sys_off handler is added. This sys_off handler decides if the poweroff
> is executed by entering normal poweroff or Partial-IO instead. The
> decision is made by checking if wakeup is enabled on all devices that
> may wake up the SoC from Partial-IO.
> 
> The possible wakeup devices are found by checking which devices have the
> "poweroff" in the list of wakeup-source power states. Only devices that
> are actually enabled by the user will be considered as an active wakeup
> source. If none of the wakeup sources is enabled the system will do a
> normal poweroff. If at least one wakeup source is enabled it will
> instead send a TI_SCI_MSG_PREPARE_SLEEP message from the sys_off
> handler. Sending this message will result in an immediate shutdown of
> the system. No execution is expected after this point. The code will
> wait for 5s and do an emergency_restart afterwards if Partial-IO wasn't
> entered at that point.
> 
> A short documentation about Partial-IO can be found in section 6.2.4.5
> of the TRM at
>   https://www.ti.com/lit/pdf/spruiv7
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
>  drivers/firmware/ti_sci.c | 115 +++++++++++++++++++++++++++++++++++++++++++++-
>  drivers/firmware/ti_sci.h |   5 ++
>  2 files changed, 119 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
> index ec0c54935ac0d667323d98b86ac9d288b73be6aa..693ac816f8ba3941a9156bd39524099ca476d712 100644
> --- a/drivers/firmware/ti_sci.c
> +++ b/drivers/firmware/ti_sci.c
> @@ -3746,6 +3746,100 @@ static const struct dev_pm_ops ti_sci_pm_ops = {
>  #endif
>  };
>  
> +/*
> + * Enter Partial-IO, which disables everything including DDR with only a small
> + * logic being active for wakeup.
> + */
> +static int tisci_enter_partial_io(struct ti_sci_info *info)

Isn't the function naming style in the driver ti_sci_XXX ? You're
missing one `_` I guess

> +{
> +	struct ti_sci_msg_req_prepare_sleep *req;
> +	struct ti_sci_xfer *xfer;
> +	struct device *dev = info->dev;
> +	int ret = 0;
> +
> +	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_PREPARE_SLEEP,
> +				   TI_SCI_FLAG_REQ_GENERIC_NORESPONSE,
> +				   sizeof(*req), sizeof(struct ti_sci_msg_hdr));
> +	if (IS_ERR(xfer)) {
> +		ret = PTR_ERR(xfer);
> +		dev_err(dev, "Message alloc failed(%d)\n", ret);
> +		return ret;
> +	}
> +
> +	req = (struct ti_sci_msg_req_prepare_sleep *)xfer->xfer_buf;
> +	req->mode = TISCI_MSG_VALUE_SLEEP_MODE_PARTIAL_IO;
> +	req->ctx_lo = 0;
> +	req->ctx_hi = 0;
> +	req->debug_flags = 0;
> +
> +	dev_info(dev, "Entering Partial-IO because a powered wakeup-enabled device was found.\n");
> +
> +	ret = ti_sci_do_xfer(info, xfer);
> +	if (ret) {
> +		dev_err(dev, "Mbox send fail %d\n", ret);
> +		goto fail;
> +	}
> +
> +fail:
> +	ti_sci_put_one_xfer(&info->minfo, xfer);
> +
> +	return ret;
> +}
> +
> +static bool tisci_canuart_wakeup_enabled(struct ti_sci_info *info)

Add some documentation around this please.

> +{
> +	struct device_node *wakeup_node = NULL;
> +
> +	for (wakeup_node = of_find_node_with_property(NULL, "wakeup-source");
> +	     wakeup_node;
> +	     wakeup_node = of_find_node_with_property(wakeup_node, "wakeup-source")) {
> +		struct platform_device *pdev;
> +		int index;
> +
> +		index = of_property_match_string(wakeup_node, "wakeup-source", "poweroff");
> +		if (index < 0)
> +			continue;

Doesn't the fact that we're inside the for loop already ensure this is > 0?

> +
> +		pdev = of_find_device_by_node(wakeup_node);
> +		if (!pdev)
> +			break;

Same here? Would we otherwise be in the loop?
Just having a quick look here, I could be wrong, please just check once.



-- 
Best regards,
Dhruva Gole
Texas Instruments Incorporated

