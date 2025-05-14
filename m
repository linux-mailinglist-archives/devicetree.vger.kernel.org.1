Return-Path: <devicetree+bounces-177013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F46AB63BD
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 09:05:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04B421888A56
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 07:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68C492040BF;
	Wed, 14 May 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="eyTEtKDL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A751B3956
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 07:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747206353; cv=none; b=X9H26xSxZ2tK8zBkr8LdmEW5KTDe9Ucv/WGufwTSpfBijeZ3TtT11Elnet/mpYInbCEDlpbPOClsjLKahaWeealxlZtF6UH0garc0r5hfjVaknLPqqItzO9r5yAk6e81Z0M/rbP4S/mMYgDTwafBB8t0rHGF2M5t+wfkEBTA9lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747206353; c=relaxed/simple;
	bh=PSloMT7Rx2inJOV3KMd3Zck3Us+DxfashHtyFpyXkJM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AhvtCL9RLOVHgksMAAzckjCiFYqRHvRoe3s0ucS93iJmRZoV8WhgyyNvfwW+nOPSt10SBHVVe27v4X6ScU9lKJiu30AS8TPGLdKjAZDKeqvcHXYrxfDCToAaSudHVrIsaesktak4AyMMtSR5XEhnPqa/DNN8gfoKJznPgrNz8KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=eyTEtKDL; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43cfdc2c8c9so37050465e9.2
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 00:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747206350; x=1747811150; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xsjFEA09j+sM7FAAoS3tj2IZ7u/MK8eK35o8RJtHzgM=;
        b=eyTEtKDLLJ9ZVBQZK79eDuyiVTeC2dU//SUL5+l8u9EhTAX+LShGYz/HVsDPdLmpQw
         yzogE/gv8YHnjuhzgmgY//x5ywpObel2J19g4tObD3aUlznuqOLoss5E7gWROmHIxyyb
         Bfa4t8pXQlIjRXAx8bK0MxeIBlyGeOs3j7qII=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747206350; x=1747811150;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xsjFEA09j+sM7FAAoS3tj2IZ7u/MK8eK35o8RJtHzgM=;
        b=AVQtqLvFwJxtv1GK2xmpYvm3UnYDZm/reD2wKWl7YNLJQVMornDnIl5wsuwmfC+Bbs
         oi1XPSbyC7uogB0zu8jwJ0JEQ8t0aiN7gniy1J96z4JH5VdLGLiTzuTANZM16/o6IDvj
         j3yjeNmSjj4X2JkzoUag8ovbTeUcWkGLgUZ4uFQq9RHm+AWes3wLfcl4EmgjhAt+pMs1
         EW/UyPobzV1Z+yaXthgp2U6iEVGpVr9J8UGTsYPI+2HE+kQBkU0l33KI1fBB+YD4312p
         WioaqY8cWodpg2V/m5Wn//zYb84BgAa+gOc1a3pf7cFRokSac2pUXV29eQZOcZB3U7N+
         xqvA==
X-Forwarded-Encrypted: i=1; AJvYcCWeKpx8ZeOPOwMdRKNwgWNstlKxqmQ9lZR//cgwib5ZHeA8+Pdu3EG7rqMHvIax27pNFbSzgEalSi0e@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0yqgqvpXVZja3AyadN0ZpiR9gYSCMwiEoELK9smV/QanfGMWo
	HY94tRZmk31KbVOmBC75dIJcsMl2MKQgEu1IxQ71rUAPtTk322ZaqlslDuLTAG34jp1Wywb95KB
	9Sx0=
X-Gm-Gg: ASbGnctGNVB5HOoRf+Rr6t9soCCpsn2JBGoKcrEMsK715S0dszPxExk8IdD066HVoWJ
	JGjOhcZockn0fCYGXn1ukzdvdvaBvKt+jKLSELZXmRFO3j4txlfiRNUfHg02XPEWbE1mxCS9vf4
	NCA6B3I6ut5Fc3k33DXKOCL/ZvsnLFNphyeg74X0sO3XMfaKyErkxxNKnxJbdvPxh83sRraxQ6T
	t6Ja0eUUtupyE+Im6cYXA/c6kkZ8ieYfL13VOq7VvZrDZbXuhb+3FCdiTDrnJJCuhA7H2AqDeH0
	sEfgrwpmvyD7BaoHHKS5ueA9hQtjWGG2FpXshmmNP3q7gC8xg5OwE/jVCjJttBXER/y7ROENCPu
	itZAM7AGblc/i+OQwcAT6ikOKk+RnCK9cyRdrrIW05Kg=
X-Google-Smtp-Source: AGHT+IFP3OZAR0dGoXkyYTq8TW0unWpQGNJt+dN4divr0wjJZfTsT15iqaNFB4zXPgGA9rG4SvnMNg==
X-Received: by 2002:a05:600c:3c8c:b0:442:ccf9:e6f2 with SMTP id 5b1f17b1804b1-442f210f732mr20320025e9.16.1747206349632;
        Wed, 14 May 2025 00:05:49 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.client.m3-hotspots.de ([46.189.28.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f396c052sm16688175e9.29.2025.05.14.00.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 00:05:48 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Leonhard Hesse <leonhard.hesse@bshg.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] ARM: dts: imx6ulz-bsh-smm-m2: Enable hardware rng
Date: Wed, 14 May 2025 09:05:33 +0200
Message-ID: <20250514070545.1868850-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Leonhard Hesse <leonhard.hesse@bshg.com>

Hardware random number generator is now used for cryptography.

Signed-off-by: Leonhard Hesse <leonhard.hesse@bshg.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts b/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
index 6159ed70d966..5c32d1e3675c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
@@ -29,6 +29,10 @@ &gpmi {
 	status = "okay";
 };
 
+&rngb {
+	status = "okay";
+};
+
 &snvs_poweroff {
 	status = "okay";
 };
-- 
2.43.0

base-commit: e9565e23cd89d4d5cd4388f8742130be1d6f182d
branch: bsh-202505-imx6ulz_smm_m2

