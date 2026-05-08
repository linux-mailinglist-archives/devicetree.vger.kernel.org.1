Return-Path: <devicetree+bounces-294665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHrBD6I+/mmHoQAAu9opvQ
	(envelope-from <devicetree+bounces-294665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 21:50:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C73944FB446
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 21:50:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A14AE30078F9
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 19:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 221C9364E81;
	Fri,  8 May 2026 19:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkoEay/n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F4003351C20
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 19:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778269853; cv=none; b=TGtvSN8xLVkOXE9HyemKuHI/wBDm8tJGlFfg9ODlGDkEjHqUIc/n+2fCmiatdGBaoqQPYfDwyvMDFLB1C8oiVuWQFSnB6LSBerE3fKWCO4vlRlFXwoNjNL/KX2h7y2VovAKfu+KZJA7Q+BLl1wfFGpvV6hq/ZcWsgdbxMdOIbws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778269853; c=relaxed/simple;
	bh=K8yh5eCvv6u1tBg/BnZudTFfkZF0wM+MB9VW71nkoS4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mVBqqYhMcsk9Uy4IrfZwWJtMFowb5vy5hTNbFHgMxanlZenGFATYKRhbFniZDTFe6775cwOOkEC+IR6gy2bFSpvIra1OPBv7fDJeAWxVo7Bw+NiSD4Kl8TBaLmjFe9VTQ0rf0pLJUn5pYSSLW303cIUA7M5o4zx5I3ddLxZOTIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkoEay/n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 600D3C2BCB0;
	Fri,  8 May 2026 19:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778269852;
	bh=K8yh5eCvv6u1tBg/BnZudTFfkZF0wM+MB9VW71nkoS4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=XkoEay/n+VBzHzlfxLGRJDDp8alOEyEXNaxZLAZp6wsoyQ9Laf6VouyCWzNbeAPCQ
	 UKXiZP7VFZHwBZw5prZ+Tf/Z638dbS+Ws5B4gk/ztyUAEgauLn8g4ezLKDb4mpYfnt
	 ECWLqyoTFjzkaVzyvhoLBrcAydvqNfxOVxfBLATqZj20iWnX5bFudaKVH+ejclzQsf
	 AXdbq6z8oYkhoQiTUjl9w7wRyio6NlKj9JQQKX0ep+mWxuW76LXhTHXfHRjUY2AH7h
	 ODCoV3QhibCHPshCqQuCIe8LaRMWoBZnvUkO6QBOyapC3QzlUzS4oNsqKuLXAFC/Bb
	 o5xRqniitn0SA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: kaanapali: Add camera MCLK
 pinctrl
Reply-To: sashiko@lists.linux.dev
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260508-knp-camera-v1-3-a18e289163fd@oss.qualcomm.com>
References: <20260508-knp-camera-v1-3-a18e289163fd@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 19:50:51 +0000
Message-Id: <20260508195052.600D3C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: C73944FB446
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294665-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,qualcomm.com:email,f100000:email,lists.linux.dev:replyto];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incomplete Power Management: Missing 'sleep' states for camera M=
CLK pinctrls.
--

commit 3df184e361a5c8fe5a2bf34fc4785990c54c8020
Author: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

arm64: dts: qcom: kaanapali: Add camera MCLK pinctrl

This commit defines pinctrl definitions to enable camera master clocks on t=
he
Kaanapali platform.

> diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dt=
s/qcom/kaanapali.dtsi
> --- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> +++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
[ ... ]
> @@ -3903,6 +3903,62 @@ tlmm: pinctrl@f100000 {
>  			#interrupt-cells =3D <2>;
>  			wakeup-parent =3D <&pdc>;
> =20
> +			cam0_default: cam0-default-state {
> +				pins =3D "gpio89";
> +				function =3D "cam_mclk";
> +				drive-strength =3D <2>;
> +				bias-disable;
> +			};

Should there also be corresponding sleep states defined for these MCLK pins?

Typically on Qualcomm platforms, camera sensor drivers request both default
and sleep states. The sleep state safely parks the pad, usually via
bias-pull-down, when the camera is powered off.

Without a sleep state, the MCLK pins might be left floating when powered off
due to the bias-disable setting here, which could cause power leakage. Other
camera pins in the Kaanapali device tree seem to follow the pattern of havi=
ng
sleep states defined.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508-knp-camera=
-v1-0-a18e289163fd@oss.qualcomm.com?part=3D3

