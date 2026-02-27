Return-Path: <devicetree+bounces-269133-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHHNE2VYoWldsQQAu9opvQ
	(envelope-from <devicetree+bounces-269133-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:40:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2B31B4A08
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:40:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF9A230512A8
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:40:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E663C38756B;
	Fri, 27 Feb 2026 08:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="I1uD1S3A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f73.google.com (mail-dl1-f73.google.com [74.125.82.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B17A925A62E
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 08:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772181601; cv=none; b=T6/VB9Um0WzOVB28spT68wu/RNy4RtnaJ0MscxflZQQ4tSulzMonJeW1D3aybSFUel13PNubG+qxpBOIDxerE3iV/EC1K95BSDFwPjpfNGRki+ilRUa05OEYf5ehiXmv/4CnE7PgLZRzWey63wU7OlpNNSmeYDle+AdlVhxOFZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772181601; c=relaxed/simple;
	bh=NbLtPWDPx0lJhzQfbcf147KsaPcuuT6CSyua6Mp0zqw=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=aNrmJUlfw8/6ZBSwqHepWsg8rno+L3WbEVRV8AuYlJ3+hfVH98c9nA7Y2tK9MLtEi314qx8dY/6tLjGFAwkDkEVBWFNYK/zxiZvDnDzWySVT4jRsHyhitWybWOpijKXjhrzBKHydt+tws3KqDyzTLbykA+lA/Q0RfTz3jrTvnt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=I1uD1S3A; arc=none smtp.client-ip=74.125.82.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com
Received: by mail-dl1-f73.google.com with SMTP id a92af1059eb24-1277896014fso49910618c88.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 00:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772181600; x=1772786400; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lhND4v1aUy9aSZclAOzKSGnysjiQszdyXIZxCYh0ppo=;
        b=I1uD1S3AJ6oTN7/OSvUmtMSUZdpWw1KKClM6i42hJ7m1x6HSC+5PtutDC7yj9R13MR
         IMvWORyGiVqp+u06ikR/gqtVOM5W4SPypBGm4cULDhfN2ApEYHwz4XM0E9iqcpixJt2Z
         HSCB79RqlwK7T7gmVaVoGF1SZLRgLbnqafu3zWXJUHea+hjoelJq9+p48NnMXI1t0RXg
         Yk62j0Bteho9gpD1jHUgt+61ggGCAxcWHWHSJ8HU/qXkj844BhSL4DapnBCa/1Vo47FC
         pLZd8fEFzDtHlNf1SJDnil3ESP6SlMc319y2Ux9huPvsdTJT2G+QcNfZoLzLgKm2p8cD
         0qCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772181600; x=1772786400;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lhND4v1aUy9aSZclAOzKSGnysjiQszdyXIZxCYh0ppo=;
        b=FWk+BLBCx02RkwlHY6CVHm7ADwdNbl6bv/zG7rlrstDIX1AKjLXQkxE2cc1UpnlEKG
         hJ6kLqdDc/9mWTYJGQv+ksPL6B77OGo7qoRNvydKW4VW9pL+7hZ1Ebn1uutzvUe/27Kd
         fB/nsTeMNOdnFT2CYaTSD3erVSYKpbZcweuuybGxUKRv7KrzJszF2u/qOZBJ/C0qDRno
         X5pmor7SPDG0D31WbF2dOEl0rsalzpS4D3CCf7R9dtEUv/mr6r2pn7f9B5F2VdF8iEJV
         d8g81ydQMX9gioGnMj86zzZSTVtr4JiFE8rTjQ4UyCohOIj+T5VoSxxUTId+xRWQV8Bf
         loHg==
X-Forwarded-Encrypted: i=1; AJvYcCUilIOMqLrL8NmKT+VN99JxPS+3nbQigqf8v9XfIcahbc9wtlfATLMxsEpqr8MneibQHUwBoKu0oJWh@vger.kernel.org
X-Gm-Message-State: AOJu0YzPcDdg+2VslX06rTOVIgF9asmG3ACiHM5sJd4wxwlnE2ZmGJHb
	6AwZFKJl97PGOb56p6sOhBnjDF3uHZ+JN1y3Ec5Ng9qVLCkH1M7Cid75YCqjFRkeTV+KObq+8E2
	NLokdFQ==
X-Received: from dlg18.prod.google.com ([2002:a05:7022:792:b0:127:93b2:e6d4])
 (user=badhri job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7022:4590:b0:11b:c4ee:66b
 with SMTP id a92af1059eb24-1278fd6e09bmr954659c88.37.1772181599531; Fri, 27
 Feb 2026 00:39:59 -0800 (PST)
Date: Fri, 27 Feb 2026 08:39:54 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.53.0.473.g4a7958ca14-goog
Message-ID: <20260227083954.3529857-1-badhri@google.com>
Subject: [PATCH v2] arm64: dts: exynos: gs101: Enable AVS APDO
From: Badhri Jagan Sridharan <badhri@google.com>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: "=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, amitsd@google.com, 
	Badhri Jagan Sridharan <badhri@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269133-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[badhri@google.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9B2B31B4A08
X-Rspamd-Action: no action

Enable USB PD SPR AVS for gs101 by adding SPR AVS APDO to the sink caps
pusblished by gs101.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
Depends-on: https://lore.kernel.org/lkml/20260226055311.2591357-2-badhri@google.com/

Changes since v1:
- Fixed Depends-on
- Patch rebased on top of git://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git
- Link to v1: https://lore.kernel.org/lkml/20260226061053.2596167-1-badhri@google.com/ 
---
 arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
index 93892adaa679..5a689be61432 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
@@ -174,6 +174,7 @@ connector {
 						| PDO_FIXED_HIGHER_CAP
 						| PDO_FIXED_DUAL_ROLE))
 				     PDO_FIXED(9000, 2200, 0)
+				     PDO_SPR_AVS_SNK_APDO(3000, 3000)
 				     PDO_PPS_APDO(5000, 11000, 3000)>;
 			sink-vdos = <VDO_IDH(1, 1, IDH_PTYPE_PERIPH, 0,
 					     IDH_PTYPE_DFP_HOST, 2, 0x18d1)

base-commit: 5d692f20de6311fa507c952adc3487c641edee00
-- 
2.53.0.473.g4a7958ca14-goog


