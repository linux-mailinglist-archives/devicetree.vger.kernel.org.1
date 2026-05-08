Return-Path: <devicetree+bounces-294666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKsXHzc//mmHoQAAu9opvQ
	(envelope-from <devicetree+bounces-294666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 21:53:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 779D54FB491
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 21:53:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6EBB2300FC03
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 19:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2296F34DB4A;
	Fri,  8 May 2026 19:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7qukSLb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E0E2BD11
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 19:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778270001; cv=none; b=ECyKh9ldARAUfAWHo1pZPw2EmJXng2eUa6MJ6/E6/awsJxQTDM7LXNQ4fslUnudp2ORyMZbEBhS/846casVlzKlPxZnDiiJGeEDVh6eRrNyNkKxRxoVUoMBtCoSCDN/V9EfDCorn80TjZhDccJ9V0IefSIQ86LNWrLmJowYYNO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778270001; c=relaxed/simple;
	bh=1c2mNv374HVofZnwPLCQ3rcBIP+eF/JQlE4FI+Ofwb8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bhr3px0EwxZh+qP6kFve8cnOR+ixFHy/FMVWcOTl7z8BE+yR273knKLpAmW1GAOMAdVaNbazyJOJ9q2Y5nD0d7hEXzC37u48oI81mKObikMMzuC8vBvXgJR/l+swkbmVZcmYWuByzbVhZG0nc+IxiS7kKEwRP1lOQL8szE0IDmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7qukSLb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B362C2BCB0;
	Fri,  8 May 2026 19:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778270000;
	bh=1c2mNv374HVofZnwPLCQ3rcBIP+eF/JQlE4FI+Ofwb8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=T7qukSLbE5Q7QBQk16Wslmn/hBYCpr+1vJqRmQx/f5W9TihhUeYpLbL9nIyg9ySxa
	 df8Aj4hhuVNgrloJKKDZDFZOXyTwK5Nyqg5VQG5tiMqnEN1h1Hv7YBU8gwkQy2u6Yq
	 o0dtLiN4FTVjAY+LSa1JG91IbGSQUpb/EQ9pfQseUGBCpKOEP3TRCbZhADed6T5gc2
	 d+PuWM1xUrmQ3pWWJtYZ1FegBtqwkBr2Yt3V2J9CyJx5VXppJTjxV5l4qJ/QR3gDzt
	 chVoFn5oL9eD6bBkBA9Hj4xuh/x23u/yz3lvgYwZlgZrFbEUCQECxm8HCU6QwNElZa
	 TeEuQmiKa84HA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 08/15] can: grcan: set DMA mask for GRCAN and GRCANFD
 to 32-bit
Reply-To: sashiko@lists.linux.dev
To: "Arun Muthusamy" <arun.muthusamy@gaisler.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260508070121.6918-9-arun.muthusamy@gaisler.com>
References: <20260508070121.6918-9-arun.muthusamy@gaisler.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 19:53:19 +0000
Message-Id: <20260508195320.1B362C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 779D54FB491
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294666-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Pre-existing NULL pointer dereference if driver is bound manually.
- [Low] Misuse of `dev_err_probe()` causing redundant error logging.
--

commit d15f249cce5269da5a1fa1e8f9d22ab136f42013
Author: Daniel Hellstrom <daniel@gaisler.com>

can: grcan: set DMA mask for GRCAN and GRCANFD to 32-bit

Sets the DMA mask for GRCAN and GRCANFD devices to 32-bit.
Setting the DMA mask and coherent DMA mask to 32-bit ensures proper
memory addressing during DMA operations.

> diff --git a/drivers/net/can/grcan.c b/drivers/net/can/grcan.c
> --- a/drivers/net/can/grcan.c
> +++ b/drivers/net/can/grcan.c
> @@ -1746,6 +1746,13 @@ static int grcan_probe(struct platform_device *ofd=
ev)
>  		goto exit_error;
>  	}
> =20
> +	/* On 64-bit systems.. GRCAN and GRCANFD can only address 32-bit */
> +	err =3D dma_set_mask_and_coherent(&ofdev->dev, DMA_BIT_MASK(32));
> +	if (err) {
> +		dev_err_probe(&ofdev->dev, err, "No usable DMA configuration.\n");
> +		goto exit_error;

Does this dev_err_probe() call result in redundant error logging?

If dma_set_mask_and_coherent() fails, dev_err_probe() logs the error, but
its return value is ignored and execution falls through to the exit_error
label.

The exit_error path unconditionally calls dev_err() to log the failure:

drivers/net/can/grcan.c:grcan_probe() {
    ...
exit_error:
    dev_err(&ofdev->dev,
        "%s socket CAN driver initialization failed with error %d\n",
        DRV_NAME, err);
    return err;
}

Could this cause the error to be logged twice for a single failure
condition?

> +	}
> +
>  	irq =3D irq_of_parse_and_map(np, GRCAN_IRQIX_IRQ);

This wasn't introduced by this patch, but is it possible for
device_get_match_data() to return a null pointer earlier in this function?

If the driver is bound manually via sysfs or instantiated as a platform
device without a matching device tree node, device_get_match_data() will
return NULL:

drivers/net/can/grcan.c:grcan_probe() {
    ...
    hwcap =3D device_get_match_data(&ofdev->dev);

    if (!hwcap->txbug_possible) {
        txbug =3D false;
    ...
}

Could dereferencing hwcap without a check cause a kernel panic in that
scenario?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508070121.6918=
-1-arun.muthusamy@gaisler.com?part=3D8

