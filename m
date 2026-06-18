Return-Path: <devicetree+bounces-313585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R8AnNOIqNGrXQQYAu9opvQ
	(envelope-from <devicetree+bounces-313585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 19:29:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CC36A1F0B
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 19:29:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FThCaTec;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313585-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313585-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C0B65301C9E8
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 17:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC48D32B110;
	Thu, 18 Jun 2026 17:29:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A12A5280A56
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 17:29:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781803741; cv=none; b=fIMiAqjPYEqQVFAJD/DFf40416bN3UrcC4ubJoClJ05rBEzJgMXr07D56U7JElJuiSKYlxo96fW2ZnV13U/4dceeYOlDKHlt71Vg2KywO6JAs1ge0vYpevmkpAJ6gntpMeaaEPA5AkNwlMM0YzZ5umMi7LRiyPLtmamypNN0Rd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781803741; c=relaxed/simple;
	bh=DUKZS2XP76BilUI567ak1TfoHIGtNobBvIb3kFXyU9U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=arcvLqPn6y6SJ8tQZuCfQVd1PcmNxehFvlLhfFqXbQUFZk4HZQRGtjPPi3P8BK1cxzG3yC4gRkcCoK8Kub6/zQqOINJo0uic/SIICk31VQB5S4Cz1It4Esd1wregE4vuQrBbP1VISpnESDmHj9DJDGEqsose3TMb7j9Otc3QBwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FThCaTec; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0954D1F000E9;
	Thu, 18 Jun 2026 17:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781803740;
	bh=4+ev/3u2cXhfP2ZgRUq/gy3pfK1OlieV7xPWjS+yxeE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FThCaTecDq4d9W6oX6D3Rbr7ezVBjzUrmUa1QobbaxDiMJuEM4u5BoiXy2d1ByR5z
	 /Sar9bOfh00/qIWDsNZ222qldZR2KZi06pj9CCZDLRml+Ewh0hjHEPAkj58qTonOy+
	 R49s/q3V1nj8FXgV1pu84zjGpKFebr9FIP92RChaKzlvTsammqvarJb7mtAOEVbe1r
	 xYAt3vIic2w483AMS7bU3oyvRm0ogLphoNhDc34P/5ewxz3IK7O2Z2gADpneeFtl6d
	 2370Yw+9ylxf4jp6TWcE6N4xARUkNX9s1deeU+uPQlibB5Sw2wXTKbcda0R56SJAmu
	 GwfjKubqPD48Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: clock: qcom: Add Maili global clock
 controller
Reply-To: sashiko-reviews@lists.linux.dev
To: "Taniya Das" <taniya.das@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260618-maili_initial_clock-v1-3-d6ede0352113@oss.qualcomm.com>
References: <20260618-maili_initial_clock-v1-0-d6ede0352113@oss.qualcomm.com>
 <20260618-maili_initial_clock-v1-3-d6ede0352113@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 17:28:59 +0000
Message-Id: <20260618172900.0954D1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313585-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:taniya.das@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C4CC36A1F0B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The dt-bindings header is missing the Block Control Reset (BCR) =
macro for the newly added QUPV3_WRAP5.
--

commit 9b94fa834ca764c84f27ddbfa19843cbf9fd8f24
Author: Taniya Das <taniya.das@oss.qualcomm.com>

dt-bindings: clock: qcom: Add Maili global clock controller

This commit adds device tree bindings for the global clock controller on the
Qualcomm Maili SoC. It extends the existing Hawi GCC bindings by adding a
few additional clocks specific to Maili.

> diff --git a/include/dt-bindings/clock/qcom,hawi-gcc.h b/include/dt-bindi=
ngs/clock/qcom,hawi-gcc.h
> index 6cd7fa0884f53..9e0e382af3112 100644
> --- a/include/dt-bindings/clock/qcom,hawi-gcc.h
> +++ b/include/dt-bindings/clock/qcom,hawi-gcc.h
[ ... ]
> @@ -196,6 +196,16 @@
>  #define GCC_VIDEO_AXI0C_CLK					186
>  #define GCC_VIDEO_XO_CLK					187
> =20
> +/* Maili has below additional clocks on top of Hawi */
> +#define GCC_QUPV3_WRAP5_CORE_2X_CLK				188
> +#define GCC_QUPV3_WRAP5_CORE_CLK				189
> +#define GCC_QUPV3_WRAP5_QSPI_REF_CLK				190
> +#define GCC_QUPV3_WRAP5_QSPI_REF_CLK_SRC			191
> +#define GCC_QUPV3_WRAP5_S0_CLK					192
> +#define GCC_QUPV3_WRAP5_S0_CLK_SRC				193
> +#define GCC_QUPV3_WRAP_5_M_AHB_CLK				194
> +#define GCC_QUPV3_WRAP_5_S_AHB_CLK				195

[Severity: Medium]
Does this hardware block also require a Block Control Reset macro?

Qualcomm GCC architectures typically provide a corresponding BCR macro for
every QUPv3 wrapper block (like GCC_QUPV3_WRAPPER_1_BCR) so the serial
engine drivers can reset the hardware.

Since this patch adds the clocks for QUPV3_WRAP5, should there also be a
GCC_QUPV3_WRAPPER_5_BCR added to the reset section of this header? Without
this definition, the device tree might not be able to specify the reset for
wrapper 5, which could prevent dependent drivers from properly recovering
the hardware.

> +
>  /* GCC power domains */
>  #define GCC_PCIE_0_GDSC						0
>  #define GCC_PCIE_0_PHY_GDSC					1

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-maili_init=
ial_clock-v1-0-d6ede0352113@oss.qualcomm.com?part=3D3

