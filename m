Return-Path: <devicetree+bounces-294650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIuiAko5/mkroAAAu9opvQ
	(envelope-from <devicetree+bounces-294650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 21:28:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D474FB1A3
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 21:28:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EE1BD301EC5D
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 19:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA4E63E7150;
	Fri,  8 May 2026 19:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYirpsI9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872BC376BD5
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 19:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778268486; cv=none; b=S5QM00aJ3gWwfyOKls6oZEEY5g4xKfDQuQTfssvB5JrWEoYVoO/g5sgy4JwGtQWCJaKe2XtYY2sPg5iwfP2+WVN3yOQxmieJJwYQEcedpV/T/FWe0ayeQbNwXeCmlJjlCAfzWFzeW8wb2ogrOK1Wmg5CfDH09ivM2gCiexh0u/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778268486; c=relaxed/simple;
	bh=8Ewt0U+dljznILziI/NAmt7ntlH/r/U30ha2Duay4pk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tyB5gBXt+54HKsL9EDSWIMf479rwgAgnvP8TFStdsQ8Guk86fNuWlbGfCEDZYdL6vszP5zUQW7vyUc3R+cfSA1SdGRVABaUFqQj6uRzwgNq6hcw+E1qAmccV/YSUjVKY+tz2Owscxme+4hxdHDGpVEnDmGkkgDs/bFLxBI2z3YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYirpsI9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED9E1C2BCB0;
	Fri,  8 May 2026 19:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778268486;
	bh=8Ewt0U+dljznILziI/NAmt7ntlH/r/U30ha2Duay4pk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=QYirpsI9sM5vQCcqDw4CAnEn/pg4CIwaFIBo0ISdusesFeP/nY0E3K4dl9C+HYF57
	 eycP5t/ikXmFn5dksVpnFpRjoUpwP1PWNPzig1HGZcJp8WGkUhInoWWb5PnCCBuBgm
	 F0hPwbgDvKwn6jeYhDeraeR+mwaWH0EtyWYp8sczlCpdPolrbxsqJ25PXWap1Dkqx5
	 wJshnJ8mHyYRvsEi00lDdGe9NW25hEslamYOM+i3iT7CrDZSeljOegAnXk6sU9+XKK
	 ++LABDdaMVrJkqAi81EmpG7LGVg7I4irqM3Qbh5s4/GDVWPZhbEq15AFtqIZAeNdPv
	 x5qLocsuWLC7A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 06/15] can: grcan: Simplify timing configuration
Reply-To: sashiko@lists.linux.dev
To: "Arun Muthusamy" <arun.muthusamy@gaisler.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260508070121.6918-7-arun.muthusamy@gaisler.com>
References: <20260508070121.6918-7-arun.muthusamy@gaisler.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 19:28:05 +0000
Message-Id: <20260508192805.ED9E1C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 74D474FB1A3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294650-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch removes the hardware-specific bounds check `ps1 > ps2`=
 under the false assumption that it is a redundant check handled by the CAN=
 core.
--

commit 245e4bc80a0c4a622684c9f656acd758d80ee6a0
Author: Arun Muthusamy <arun.muthusamy@gaisler.com>

can: grcan: Simplify timing configuration

This commit simplifies the CAN bit timing configuration by removing
error checks deemed redundant and using FIELD_PREP for bit assignments.

> diff --git a/drivers/net/can/grcan.c b/drivers/net/can/grcan.c
> index 8d7bde1c006f2..8ba21d94e87df 100644
> --- a/drivers/net/can/grcan.c
> +++ b/drivers/net/can/grcan.c
[ ... ]
> @@ -396,41 +396,26 @@ static const struct can_bittiming_const grcan_bitti=
ming_const =3D {
>  static int grcan_set_bittiming(struct net_device *dev)
>  {
[ ... ]
>  	ps1 =3D (bt->prop_seg + bt->phase_seg1) - 1; /* tseg1 - 1 */
>  	ps2 =3D bt->phase_seg2;
> -	scaler =3D (bt->brp - 1);
> -	netdev_dbg(dev, "Request for BPR=3D%d, RSJ=3D%d, PS1=3D%d, PS2=3D%d, SC=
ALER=3D%d",
> -		   bpr, rsj, ps1, ps2, scaler);
> -	if (!(ps1 > ps2)) {
> -		netdev_err(dev, "PS1 > PS2 must hold: PS1=3D%d, PS2=3D%d\n",
> -			   ps1, ps2);
> -		return -EINVAL;
> -	}

The commit message claims the error checks are redundant. While the
ps2 >=3D rsj constraint is enforced by the CAN framework via can_sjw_check(=
),
does the CAN core actually enforce the ps1 > ps2 constraint?

A user with network admin privileges can configure CAN standard values via
netlink that result in ps1 <=3D ps2. For example, configuring an unusually =
low
sample point can lead can_calc_bittiming() to generate parameters where
ps1 <=3D ps2.

If the hardware strictly requires ps1 > ps2, as the original error message
suggests, could removing this safeguard allow unsupported configurations to
be programmed into the hardware?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508070121.6918=
-1-arun.muthusamy@gaisler.com?part=3D6

