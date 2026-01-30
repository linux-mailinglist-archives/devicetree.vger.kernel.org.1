Return-Path: <devicetree+bounces-261126-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMiUAu11fGmWNAIAu9opvQ
	(envelope-from <devicetree+bounces-261126-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:12:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3645FB8C19
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:12:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CAC543002518
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B050F34FF4C;
	Fri, 30 Jan 2026 09:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="hOK+xx4b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay36-hz2.antispameurope.com (mx-relay36-hz2.antispameurope.com [94.100.136.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E012F5A35
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769764328; cv=pass; b=g52OG/FRn4TvHJ+EPoXedDWATZah1E2YoMNPbyqgZOL+9/PE7HyHJexUe7xH7Kmjn1CGb0yneARMhTxi+iVXmiNIaeRjs49StSDQ6xRGs5wjYorWc7w8wqdDNyIFTTCh4MGuljqVWIga9fxMYcBJWmWSchPeFPlnBjhjZy05TiQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769764328; c=relaxed/simple;
	bh=JJ6ZgfjzIHBLd6Y+kOxT96PhgvFLGLY3oKWCw1HaN/Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=q0s4jJr7EBMkRe60A1ju8bAWjpWXIhPmUwtCJo9FcXLtFOkVmYKM7dY7RBMcS6duqT13aHT+vWcaKqaWglxMjLI9xloqA0v6q4wLvZZ7WH2GYInPBlPdYFOqLf55Wuns902/lxBBgdiliIaNPD6gB3++A4ixLAOVENJ7r9O9u7o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=hOK+xx4b; arc=pass smtp.client-ip=94.100.136.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate36-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=OlaaAEdyH/nGPP2TYnuTAVW6ys1F2ggjuG22tntgfjs=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1769764232;
 b=Vk/yfL9m3MD4BdxnaCZOX0aTVU7osvdXo+zNM+wNOO5ixIUtve8+KVakFQmrpRbqhMXOz7oo
 IdmurHUrblFTFd1GNZmrE6KPos3R2FymLNQ6++tve+sMZQIK6bpNj9IL0ZTuvu9/D4bzUBcHy67
 V/fubylE1SgRFt2UyJS2uER7Bod7ohzPsms/KRgNg6JV3tYKjQD+t2t64aOE3gLEcKNwpWEJ+5n
 lcSUmpsRsLyf6FkEdZUMv7Iseq8b5b39Kn/Mm0zOfFVXccPGlZR29ZA52ZUWaox7T6TI2LuDbrA
 stFKwXaPYQXE5RsaL+SjcfHWREtkphiW3tfaS6nRCwuPQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1769764232;
 b=MCIfCis6oXojbPbCoDJttwVkkyodD8YQmL9a44HYvgvcWC/p5yXtr5WqaftHQX0Oiox+uTgD
 4Ror/FY++vWxdN2rldBUOEOES/QL+LmdGpzGoTwmaF0bxAdqMApxZDmRM+xP+C1LATT8MFW3D0i
 ceJsyKB2qj4tVztrjzabC1ByDsb+USuZyPfmRngPeT30iZVuBDzQwvmaP2Bim4DzxmWhBfPFesp
 Ir20yUurRzqF1UvhOHgycIy8TRdhcUbMlYMt7kZBdKxhqLwkpROGubuWuBFakkx9/mz9Mj5gig9
 tSaQ3uXB8tX5JdrTOyMcI7tNHVlNHA9nwLAMV+8Aas2NQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay36-hz2.antispameurope.com;
 Fri, 30 Jan 2026 10:10:32 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id DEE09A40EF0;
	Fri, 30 Jan 2026 10:10:22 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: mchehab@kernel.org, hverkuil-cisco@xs4all.nl, nicolas@ndufresne.ca,
 benjamin.gaignard@collabora.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, sebastian.fricke@collabora.com,
 shawnguo@kernel.org, ulf.hansson@linaro.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 l.stach@pengutronix.de, Frank.li@nxp.com, peng.fan@nxp.com,
 eagle.zhou@nxp.com, devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ming.qian@oss.nxp.com
Subject:
 Re: [PATCH] arm64: dts: imx8mq: Restore VPU G2 clock to 600MHz for 4K60fps
 decoding
Date: Fri, 30 Jan 2026 10:09:46 +0100
Message-ID: <5476502.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20260130084133.2159-1-ming.qian@oss.nxp.com>
References: <20260130084133.2159-1-ming.qian@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay36-hz2.antispameurope.com with 4f2VbN1GXyz1S63D
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:f72694e440bb7dafe036a5498634db5d
X-cloud-security:scantime:2.180
DKIM-Signature: a=rsa-sha256;
 bh=OlaaAEdyH/nGPP2TYnuTAVW6ys1F2ggjuG22tntgfjs=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1769764231; v=1;
 b=hOK+xx4bha+egW26mXB6qSETYFmsb3sSMefCX2MPz7MHKcx9tR/YlHQy45lfMwqzXCNdPxY7
 N1lCqNL6PLRx+lv2tS4Vaa5RGvbJ3YPFBDSPcGQh4QxB+Msq7sIB9t4+UbKM2DOR0SiphdtxdRR
 KURQGX0f2lmswXw5UahBmaffyHT0WV3M8FLwsPEqL/NiGTVlHwR8FQLfbtih5P1iKOvo++XuCW0
 r/UWCY0uhxXgF4QLPKSk0YBxy1aMjcrGpaGvT46pnL1lhtqzq0nsT/RetwhgrV/p5ZFZCqUWVfO
 k4r40A982QfSUXiaZt1Dnmp9C4m3l7MKIRQX+zn7eZXtw==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	CTE_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,xs4all.nl,ndufresne.ca,collabora.com,pengutronix.de,linaro.org,gmail.com,nxp.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,oss.nxp.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	TAGGED_FROM(0.00)[bounces-261126-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.6:email,ew.tq-group.com:dkim,60fps:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3645FB8C19
X-Rspamd-Action: no action

Am Freitag, 30. Januar 2026, 09:41:31 CET schrieb ming.qian@oss.nxp.com:
> From: Ming Qian <ming.qian@oss.nxp.com>
> 
> The VPU G2 clock was reduced from 600MHz to 300MHz in commit
> b27bfc5103c7 ("arm64: dts: freescale: Fix VPU G2 clock") to address
> pixel errors with high-resolution HEVC postprocessor output.
> 
> However, testing shows the 300MHz clock rate is insufficient for
> 4K60fps decoding and the original pixel errors no longer occur at
> 600MHz with current drivers.
> 
> Test results with 3840x2160@60fps HEVC stream decoded to NV12
> (the same scenario that exhibited pixel errors previously):
> 
> 300MHz performance:
> - Severe frame dropping throughout playback
> - Only 336 frames rendered in 11:53 (0.471 fps)
> - Continuous "A lot of buffers are being dropped" warnings
> - Completely unusable for 4K video
> 
> 600MHz performance:
> - Smooth playback with only 1 frame dropped at startup
> - 37981 frames rendered in 10:34 (59.857 fps)
> - Achieves target 60fps performance
> - No pixel errors or artifacts observed
> 
> Restore the clock to 600MHz to enable proper 4K60fps decoding
> capability while maintaining stability.
> 
> Test pipeline:
>   gst-launch-1.0 filesrc location=<4K60_HEVC.mkv> ! \
>     video/x-matroska ! aiurdemux ! h265parse ! \
>     v4l2slh265dec ! video/x-raw,format=NV12 ! \
>     queue ! waylandsink
> 
> Fixes: b27bfc5103c7 ("arm64: dts: freescale: Fix VPU G2 clock")
> Signed-off-by: Ming Qian <ming.qian@oss.nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 607962f807be..731142176625 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -960,7 +960,7 @@ pgc_vpu: power-domain@6 {
>  									 <&clk IMX8MQ_SYS1_PLL_800M>,
>  									 <&clk IMX8MQ_VPU_PLL>;
>  						assigned-clock-rates = <600000000>,
> -								       <300000000>,
> +								       <600000000>,

If I read the Datasheet correctly 600 MHz is only supported by overdrive
mode (also depending on the VDD_VPU).
Is this frequency really correct?

Best regards,
Alexander

>  								       <800000000>,
>  								       <0>;
>  					};
> 
> base-commit: c824345288d11e269ce41b36c105715bc2286050
> prerequisite-patch-id: 0000000000000000000000000000000000000000
> 





