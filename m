Return-Path: <devicetree+bounces-275446-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ZdA4IPo/tGmJjwAAu9opvQ
	(envelope-from <devicetree+bounces-275446-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:48:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA00D287653
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:48:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B60D8305B08C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 097813C7DEE;
	Fri, 13 Mar 2026 16:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="uaRRE+Ty"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E81D3C7DF4;
	Fri, 13 Mar 2026 16:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.161
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773420304; cv=none; b=OhPBv9y5svJQXUMdulXeAZ+CeKOSg7KbZXRswbMUrprN/7/o4ekN3bnd0xvvf5XsECITPiG4YcLP2L1SKcWSOFJiOyZ0Aac4QcAAp1ZsXwhf6MeAeu/gKshuOZ0Ea/opveseRk1bCIdmhDyfRJbcn71UPQsHIz+UolaZVpZM5as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773420304; c=relaxed/simple;
	bh=2km+XikPyiPxhJlMKZaPHBMiGbe4Chw5Q8ygoyMi6k0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Pf6dp50sts4QvLXd0FFQLFCiASfPr5crTJymjKhX87FNEttbuqM8zLQBit/rtj9nJWcgIdBcfXxZMuqgP6q7CQNj7JiNtlVt3+Iu007JbyWln1Qhq04UPEtl2dSJtxGP/T+CW+UHU3fWKwbTGvNe5o43XqmYKNEKupMBN9FJLAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=uaRRE+Ty; arc=none smtp.client-ip=80.241.56.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4fXVhW0s03z9v0n;
	Fri, 13 Mar 2026 17:44:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1773420299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KLgV40T/B5NlziDwzPAutV6VZ7YQTKYRqnGFSFRfQeU=;
	b=uaRRE+TyW/kGoof96aMLEw6YPZrk4MOUpQ9fitT7pCA5mQQytcEO0AhpnO7YD95ciEV7Gt
	9A1xVGWLWCjHFCZizY7aPnXPjmqRzhCnJMNrO66miB9r+xV5JW3XF/vAybT2ZjlKecUD4B
	0kNM/sGpBSAhMTd8UBri1omNlSmnDfD6zgNJS8hNAPZSXam5mZK4vvUQlx8jTggOyJhk1u
	gN2vukyZPeCqDwtPJmeREeCa1qSKlF4RQp8F0pCWfLRn8rS2cHa1PoA16eNQ+x9BpUuHzG
	rwGKe3xOyo3HVDDWb2T9PvICCrfMSD2O7yxMIbSCaVqP74LWXfat8L/416hILw==
Message-ID: <2313c717-1729-48a2-8fc7-63b68ce0a0e6@mailbox.org>
Date: Fri, 13 Mar 2026 17:44:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: imx8mp-dhcom-pdk3: Use symbolic macro for
 IOMUXC_SAI2_TXC__GPIO4_IO25
To: Eduard Bostina <egbostina@gmail.com>, daniel.baluta@nxp.com,
 simona.toaca@nxp.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Christoph Niedermaier <cniedermaier@dh-electronics.com>,
 Marek Vasut <marex@denx.de>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260309181524.39423-1-egbostina@gmail.com>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <20260309181524.39423-1-egbostina@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MBO-RS-META: wfqcmx73jwyxskcys17yhqsdtf6eaeid
X-MBO-RS-ID: 3636750f7ea4df0c0c2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275446-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,nxp.com,kernel.org,dh-electronics.com,denx.de,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marek.vasut@mailbox.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[mailbox.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mailbox.org:dkim,mailbox.org:mid]
X-Rspamd-Queue-Id: DA00D287653
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/9/26 7:15 PM, Eduard Bostina wrote:
> Currently, in order to configure IOMUXC_SAI2_TXC__GPIO4_IO25 a magic
> raw value is written in this register. This makes the code not obvious
> to read and modify.
> 
> Use the MX8MP_SION symbolic macro instead of the magic value to improve
> code readability.
> 
> Signed-off-by: Eduard Bostina <egbostina@gmail.com>
> ---
>   arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
> index ef012e8365b1f..6ad824a7e07e0 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
> @@ -345,7 +345,7 @@ &pinctrl_dhcom_l
>   
>   	pinctrl_ptn5150: ptn5150grp {
>   		fsl,pins = <
> -			MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25		0x40000000
> +			MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25		MX8MP_SION
Isn't the SION bit at the same bit offset at least since iMX5x ? Maybe 
the MX8MP_* prefix isn't necessary ?

