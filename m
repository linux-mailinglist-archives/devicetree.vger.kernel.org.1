Return-Path: <devicetree+bounces-279185-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKxzDw5IwWlGSAQAu9opvQ
	(envelope-from <devicetree+bounces-279185-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 15:02:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C31E52F3B5D
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 15:02:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1E4230BB4E9
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 13:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FE493AE19E;
	Mon, 23 Mar 2026 13:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="BzO0Xt6H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-244122.protonmail.ch (mail-244122.protonmail.ch [109.224.244.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DFD63ACA68
	for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 13:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774274088; cv=none; b=bgHVl2QHNyTHYsXbZd9GHliUtLLAD5ViqAl4Uo8aqTJj5/IKZ2cH4zulP24yj4GJhLIswSlIh0rt29FfEdLqn115m67dbtkl58RVNkyWf2KmjMELYDdTo5ILGHwC4V4ulSQvToQNOQhYASQrJKlU9UsPAxKC1ozFyuXnhjd/CR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774274088; c=relaxed/simple;
	bh=DGO9SRDcmimknpz/KsZxssMJ2sFtQlt6n2vH6LX9aQ4=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=J7DIdhqt3sTmqd7Y92omo787bvtP+Ax82KAxeRL/KkzVsaaybWxBSi0JxY2OMZJs24D5MzzjoMR5M9gg6RAXOrfiqWwJF0CuLPpEPjgMPlB7r0OV3HfFiuAbblega91V6rI09T77sWkdIW0VfjaqoEgjmpjc8hysXNdAOXNz270=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=BzO0Xt6H; arc=none smtp.client-ip=109.224.244.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1774274078; x=1774533278;
	bh=zzKwQIY6HotTyB0Oh/SBNUFiHj0bRK7c8RYQHyJx9IE=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=BzO0Xt6HMzHlmyn3c8OqX1DP8RmVO3LK9p0bmyj+dg8KLcOmfAuxPBTLf1odEvTAj
	 VHj331GVr7zZmjWBZTJS00Mo6Pf3h2oHRomDeXe9bG/YK4Sz8MOHmGCcm6kdqrkp41
	 8pvRrHOLQdhZL8GQw8V81ZmRzebNPMUBNiLRG+hIPagZgcRotoYWlO27n4WuyQAbVS
	 d/RJsltOFezeflrpnvCzhUoakpdWyrePOMGWwe0OIYVWCGIWc4cApbwCuVK5A6OdIJ
	 75DXel8KagNyXZR1/vV/jXRIIFGik46A62Ixs4mqomgPsSmuBeCxqQkMi6jWAF5ukw
	 P0aRisrie2DJQ==
Date: Mon, 23 Mar 2026 13:54:29 +0000
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>, Luca Weiss <luca.weiss@fairphone.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Alexander Koskovich <akoskovich@pm.me>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 0/3] arm64: dts: qcom: Add support for the Nothing Phone (3a)
Message-ID: <20260323-asteroids-v2-0-1a35fa9e178a@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: a23e06926091e3324a6bb99957401fc6e5e8f257
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279185-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pm.me:dkim,pm.me:email,pm.me:mid]
X-Rspamd-Queue-Id: C31E52F3B5D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds initial support for the Nothing Phone (3a) smartphone, whi=
ch
is based on the on the Milos/SM7635 SoC.

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
Changes in v2:
- Add comment to rmtfs_mem override in milos-fairphone-fp6
- Add missing stdout-path for debug UART in &chosen {}
- Drop dr_mode from usb_1 as it is the default
- Link to v1: https://lore.kernel.org/r/20260321-asteroids-v1-0-4b902901cb4=
9@pm.me

---
Alexander Koskovich (3):
      arm64: dts: qcom: milos: Reduce rmtfs_mem size to 2.5MiB
      dt-bindings: arm: qcom: Add the Nothing Phone (3a)
      arm64: dts: qcom: Add the Nothing Phone (3a)

 Documentation/devicetree/bindings/arm/qcom.yaml    |   1 +
 arch/arm64/boot/dts/qcom/Makefile                  |   1 +
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts   |   5 +
 .../boot/dts/qcom/milos-nothing-asteroids.dts      | 964 +++++++++++++++++=
++++
 arch/arm64/boot/dts/qcom/milos.dtsi                |   2 +-
 5 files changed, 972 insertions(+), 1 deletion(-)
---
base-commit: f338e77383789c0cae23ca3d48adcc5e9e137e3c
change-id: 20260321-asteroids-58f7d0bf56f0

Best regards,
--=20
Alexander Koskovich <akoskovich@pm.me>



