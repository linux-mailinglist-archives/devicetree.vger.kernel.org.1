Return-Path: <devicetree+bounces-257387-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECqhLg9mcGkVXwAAu9opvQ
	(envelope-from <devicetree+bounces-257387-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:37:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5612E51980
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:37:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 13D823EB591
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C2083D6662;
	Tue, 20 Jan 2026 12:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jaqeOb+v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1343F3DA7FE
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768912186; cv=none; b=pGxhRZc/KrqXwfUcQ8XgOpXkSJhAzcpk6z/pOGOkpnlKl2psx6mcZy/lLolh+nWCwTawYVW4UdMbal3z8PzdD045GOicaTv3GLnynojm9l6RvL1BwaODPptmhDu9cqqevFqw1dm7oJ0VmjZxSbD71G8p+KuFvMCDReW9Tlma2i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768912186; c=relaxed/simple;
	bh=ch1EDL45KQ1Bli8m3y9dlCGuNaDcJnG1aw6Tw3Tgbh8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CcOpWArTI2qacIPFIa7anMORg9eReGmzmXZ8yZvt5uqaOePBl7sxlGbNbjlS0G56R/ETwQ2flzakvwTkfdQ3IDIHTyna3L/h2iVrLxymAu/PNETfL3NyeM6db0aTIxCRUfUtMt/GjV3iYqzmK5Ac4zbjFxCwqxXrDko9sBb6BMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jaqeOb+v; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b86f3e88d4dso949958066b.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:29:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768912182; x=1769516982; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h0YG28pJwuFWWWbmb7kZFD7xrZgouesVy9V7x/n/G6Y=;
        b=jaqeOb+v7ykK6Cf9QPY7OtGUK9+boVgdOrgcAxVNKGJaHR6ZdyLKMdISbKdnhClS7B
         XCzZUA/sIqbd/AbbbTrXd1RGSRWzWXv0f8+jsJ9FqBppZYc/jY9Y/jz19XM9EIKt9BHM
         7eWyLm2IVk0s5J+RX51x+0nx2JLtn98GegIIlWvyFVHx4oDQQFVzyeLd6w83kN6Ibf10
         XJZSivSNYh7HSA8+H0S4AJeURAdmDyDAHibiUfAI/1FrCwf4oFKULtR1JVBNKPfvPjYm
         7FUVuxx58gALAhwQr2RL8xaSp1/C65Rb+cqgizJcdMJVbM4e0W/g143al7WxMz8DEi31
         NAFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768912182; x=1769516982;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h0YG28pJwuFWWWbmb7kZFD7xrZgouesVy9V7x/n/G6Y=;
        b=Zm+VO2lSNkSGi7uRy7Q+FNxVuQIgytGRPghcnvt+uABInLcatCJSH4j3llFoJ9utt4
         4Z+L/Bov8zixvukFixANMBTriPzJQBo6ca85S9//ATahyh29KS6r/b9mLd7xpLLctux7
         y3Kv+osKCp+Tq8w10bIY/G6b3K4GrT9S/mIIjO2Pmcok8cVdXeDaY9bqHt+3gwfxavap
         qd+ZgrFmjqskFyo7gzUFTuZDrlbzMuhs6tTbxIUAVWqTCViN+XzOpGqn4aoqlyfPmZOh
         hoHTQ+nq4Umi+prb+EZDPPPgsM4YhTzhXqB4qzXeJxJeCz1PVaDfMbL1/LhGwAWXbUTf
         7XHg==
X-Gm-Message-State: AOJu0Ywls4+hNQT5T5W8yOHlvDBVB5SpCn2PCEuQlwOCp4W9azIoAbPM
	S+u+gNq9W2paLBenhpb9t5bQKud3NJjTVB8skaXPoEDR952EB93mQ+Jx
X-Gm-Gg: AZuq6aLopBkdaNRd48LjLNS+rBJSS8DacvUBEjS+CqI6nNpNMk1w/z1n+o7/6tfYxoa
	uC1krGddnkYL31dklNy5rK9sR306p+S1anLgqn95W86j1lLv6zYK/MAN4bMLB11iJjkRZhW55Mk
	qvxb1PMufeOEZyA2TLPVoxx0XA9mFcsovh3tS/yCqn6k+M5rafxmJcqY0/sCdpk2pCiX4u7/ryT
	fqjj0HINUBwiJlb49xV9mmdTHYomFtvyf2ikKW/VXtqTXRAfHRSMqv1yNt4j3gtAoIfL+U3RTYL
	gvrxEJoQg3z0M6dIo6pohsnJOmHDsHBuLWLY5/J21XHkGJ0qp7el7/2P3qug4BJmmZwJCFDyTs0
	DHeEXKA9b3leoj4y9Y3Krg77pPhhZkjatfZi6qDE6CzBeNbXaQaNvXSshq+U+gtNEaA6cNTX24s
	ak26yZdNieAowByo3ST86wd2GEMenw9mdaEOEqK2e9Aw==
X-Received: by 2002:a17:906:c153:b0:b87:3280:6003 with SMTP id a640c23a62f3a-b8792fc4229mr1369007366b.49.1768912182084;
        Tue, 20 Jan 2026 04:29:42 -0800 (PST)
Received: from [10.25.220.41] ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a0880dsm1368115166b.57.2026.01.20.04.29.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 04:29:41 -0800 (PST)
Message-ID: <993363fb-8ce4-4a89-b6c4-8fbf181ad410@gmail.com>
Date: Tue, 20 Jan 2026 04:30:32 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: imx95: Reserve eDMA channels 0-1 for V2X
To: Joy Zou <joy.zou@nxp.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Ye Li <ye.li@nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260120-b4-imx95-v2x-v1-1-52b2025b27a0@nxp.com>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <20260120-b4-imx95-v2x-v1-1-52b2025b27a0@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257387-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[nxp.com,kernel.org,pengutronix.de,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[2.128.222.128:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,nxp.com:email]
X-Rspamd-Queue-Id: 5612E51980
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 1/20/2026 12:35 AM, Joy Zou wrote:
> Reserve eDMA channels 0 and 1 on the AXI eDMA controller for exclusive
> use by V2X (Vehicle-to-Everything) fast hash operations.
>
> Signed-off-by: Joy Zou <joy.zou@nxp.com>
> ---
> ---
>  arch/arm64/boot/dts/freescale/imx95.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
> index 55e2da094c889fc7c1096d0e36f31ae118d2a982..24d02aa18b2f480bbffdc30bc41c658fb3aaf67a 100644
> --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> @@ -631,6 +631,7 @@ edma2: dma-controller@42000000 {
>  				reg = <0x42000000 0x210000>;
>  				#dma-cells = <3>;
>  				dma-channels = <64>;
> +				dma-channel-mask = <0x3>;
>  				interrupts = <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>,
>  					     <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>,
>  					     <GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
>
> ---
> base-commit: d08c85ac8894995d4b0d8fb48d2f6a3e53cd79ab
> change-id: 20260120-b4-imx95-v2x-3e01c7bc6881
>
> Best regards,


Thanks, this fixes the kernel panics on MX95-15x15-FRDM and MX95-19x19-EVK after

AP access is removed from said channels via SM.


Just one thing: can you do this change for imx95-19x19-evk-sof.dts as well?

If not, I'll just send a patch for that later on.


Either way:

Reviewed-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Tested-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com> # MX95-15x15-FRDM, MX95-19x19-EVK


