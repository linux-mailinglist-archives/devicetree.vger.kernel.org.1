Return-Path: <devicetree+bounces-314580-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G+WVNhLdOWpcyQcAu9opvQ
	(envelope-from <devicetree+bounces-314580-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 03:10:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1396B3189
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 03:10:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="BpNI/RMm";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314580-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314580-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D27783027356
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 01:10:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51BB5340408;
	Tue, 23 Jun 2026 01:10:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD4214E2F2
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 01:10:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782177040; cv=none; b=tDBeVebcG1qNhbBCYcFdoPSYpW5p64TDXfRd8NF8XrM2Gw0sdfnauQlXWezUv5fxC+2QcRkUAsVVWI8Fa+W5qOxzuDZe1pJORrNXCmyXa4273s6EhuAwF8e9Om2Hcopz+5G+sEej6oLovVm0726RCrzdr+2gzjuzFV7GN0RB2z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782177040; c=relaxed/simple;
	bh=3V4yotkiaVSGP4LmtyVzN2kRvyFR7MRVMsO9vduVqQo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KeUdwunBUixp1Pc1QURmZpEDR9Y7luu0NliXdGOiihOMszKr5syVaZCsybiKzFR/aHn5wpMuQldqDsUTTzFDL/ZzboTEKTE3va/85NOGHHEZOUrvTZM12xX/vc/cv0WidSnK8kVlPHx1DfsId2em0vfViv/AQA3LwKvisiknWj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpNI/RMm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFA271F000E9;
	Tue, 23 Jun 2026 01:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782177039;
	bh=vNEKF36isjpHiu5z6iVdmoo7elpoIamhcgdOHNRJepw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BpNI/RMmuxJwsYoQQfMgmPBhGFxiaDqzN7dSRJLMSBPGCRrZiylZQLKCa/qyZpyiY
	 1vIpv1TcQSKqUVUfZuZwkQT83EpyKhgEm3MF1Tu/M4mD5Os/FK6H1ekIkCsf1jZj2h
	 SJ7ciem1YIb8xpxMYJd3nvV6r3I/aGMQ/UvsCctnZ5Z0vxmxzOJyg52TWxfJRBqQx4
	 n30squBELsJ+fxyy0aoTLn8ACCYHu1NH5CRWfs2U3GKMdeX6cMDw6XhNXyNQlYfEMZ
	 73o2MNLdGQNNyIRl7dTURJtKgRVBl6r0xVvUYaQTAJtG5dSjDVE8fH0nB9nHrcbB30
	 K0d8FIblbxO4A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/8] arm64: dts: qcom: sm8450: Modify GPU operating
 points
Reply-To: sashiko-reviews@lists.linux.dev
To: "Esteban Urrutia via B4 Relay" <devnull+esteuwu.proton.me@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260622-sm8450-qol-v1-3-37e2ee8df9da@proton.me>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-3-37e2ee8df9da@proton.me>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 01:10:38 +0000
Message-Id: <20260623011038.AFA271F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314580-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+esteuwu.proton.me@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:neil.armstrong@linaro.org,m:vkoul@kernel.org,m:conor+dt@kernel.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,linaro.org,gmail.com,lists.infradead.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,esteuwu.proton.me,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,proton.me:email,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6B1396B3189

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Removing the 3 lowest GPU OPPs breaks the 1:1 index mapping betwee=
n the GPU frequency table and the hardcoded GMU bandwidth table in the Adre=
no DRM driver, causing severe memory bandwidth starvation at high GPU frequ=
encies.
--

commit d0ec9d0cbceaf15f2295a4c6a613a8ca7a354eea
Author: Esteban Urrutia <esteuwu@proton.me>

arm64: dts: qcom: sm8450: Modify GPU operating points

This commit removes the 317MHz, 285MHz, and 220MHz GPU operating points from
the SM8450 device tree, as they do not exist in the downstream device trees.

> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/q=
com/sm8450.dtsi
> index e34e3c05bf74c..5e331a25e22a2 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -2495,21 +2495,6 @@ opp-350000000 {
>  					opp-hz =3D /bits/ 64 <350000000>;
>  					opp-level =3D <RPMH_REGULATOR_LEVEL_LOW_SVS>;
>  				};
> -
> -				opp-317000000 {
> -					opp-hz =3D /bits/ 64 <317000000>;
> -					opp-level =3D <RPMH_REGULATOR_LEVEL_LOW_SVS>;
> -				};

[Severity: High]
Will removing these 3 lowest GPU OPPs break the index mapping between the
GPU frequency table and the GMU bandwidth table in the Adreno driver?

The Adreno A730 driver doesn't use dynamic bandwidth voting. Instead, it
sends a hardcoded table of exactly 12 memory bandwidth levels to the GMU
firmware:

drivers/gpu/drm/msm/adreno/a6xx_hfi.c:a730_build_bw_table() {
    ...
    msg->bw_level_num =3D 12;
    ...
}

The GMU firmware applies the bandwidth vote corresponding to the GPU
performance level index. Previously, with 12 GPU OPPs, the maximum frequency
mapped to the maximum bandwidth at index 11.

By removing 3 OPPs here, the active OPPs are reduced to 9. Does this mean t=
he
maximum frequency of 818MHz will now map to performance index 8 instead?

If so, this would cause the GMU to apply the lower bandwidth vote from inde=
x 8
when the GPU is at maximum frequency, severely reducing the available memory
bandwidth and bottlenecking the GPU under heavy load.

> -
> -				opp-285000000 {
> -					opp-hz =3D /bits/ 64 <285000000>;
> -					opp-level =3D <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
> -				};
> -
> -				opp-220000000 {
> -					opp-hz =3D /bits/ 64 <220000000>;
> -					opp-level =3D <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
> -				};
>  			};
>  		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-sm8450-qol=
-v1-0-37e2ee8df9da@proton.me?part=3D3

