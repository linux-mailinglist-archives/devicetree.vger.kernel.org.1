Return-Path: <devicetree+bounces-219473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5EDB8BD15
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:48:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B675A05DF6
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 01:48:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B24B21D596;
	Sat, 20 Sep 2025 01:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GWreJdvk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1510A21FF4D
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 01:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758332844; cv=none; b=eXZLoy7UreISudm+1wQhCL7YMOyH9JX+fKmNxmouGlnEWta25fSl9eUqEGHHDfg7+/OH7EElx/WJWhpqWtmi8mVQnnjvcXTpqDPQzdZ5H2aNwucdGiWBpxLevYR5H3XRaCZGqjqjTXks3e92S0sUjBq0nmI8Vbk392ot1eNW2u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758332844; c=relaxed/simple;
	bh=q7Xfm32bQVivWAKM4yd8tFW9E2pSlnxh8P7wsqP1uaA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KFtjWBHL1vZdJOkLvEqqJfFtyxH3BmWRvv96V3oztu53LtL1dnNTy/FtzvUpk4xyuLE0AyM2HStmEfR2ok3TnI7riRS3fby56H4B8yg2pBnSlaLpDNaWq2I0M42ByUD4gI8Ga8auoNg2EV3nIdHHYq/MMWELu4pn8MayVVvOUDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GWreJdvk; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-25669596921so28631985ad.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758332842; x=1758937642; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1K4nVmfnY5pKLRLdVHuNKFKe2bl1ttzHe8ukP+rPnfM=;
        b=GWreJdvk9R+m7b+Wk8nriEP4+W/lgVd3qBU+tKvtEIFTOypNh1COn8D8EvPrrBnQ2u
         SIig0FH6PtUAYEN1qh3uf0s+xqVfa6fKng217ts075BqKYohfsnHvt3QqCCI7YKU16iv
         vIpjmNiXGlAIGwzmR709g/cTY6bgF7bjGR1QSAf7PmPBI38guYryS3BFi9Hy8qDA9AsA
         PG9mD9Yq+0ybN18NVyhZNVeULLPje38ZOP7YSEuIWqV8l1rzsoFme9GhsKoU12q+bb2c
         unsA1QWWGeZH32NeXHCGrh0elXkTOTaVi7s0LFnn8Wou3SpXFj/RvQwYIu2NL+gGr+K4
         6/+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758332842; x=1758937642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1K4nVmfnY5pKLRLdVHuNKFKe2bl1ttzHe8ukP+rPnfM=;
        b=lDV6ZIJ5yob5frY2AEJzuu9f+CFtJPsA6s6vBawPgFns60j6HPOrmOw8AUt3HA/HnA
         OWXZ7qN4fS/GOYL7yRVjrDZo44tmCXyxt4oBODshGgfTeNIbrMBo5bcPfO+rnGeXv7gY
         l+Hbidb0aCFJUllPV9bKvlNvmAIUR+Nj8UfZowRKZPtyuIuRyjKKn9kDBwTyapmmgt1z
         6hv5D1HZEgI81GpkNRgGCIKcKBzdoFbY2Ktb+4XA6UEeeBlf+ZqhSd77Dpg7tCkIGwVF
         fA7k6nWfmWOpV5WBh7NNTogm1HR4DJzv9jlxN5pe7iMhFqJuePLftx9uYGXSRo+14DOF
         rT+w==
X-Gm-Message-State: AOJu0YwpKABXCV1LgUtygeK85E9aUyl4iNrJ93a9XPm76D6ahnIvlKHv
	AxaKa+oh2NeUWb4c6CDq/q+bPG5M+BtajDXyuyqVADWdwpnx1VIO+X/A
X-Gm-Gg: ASbGncsP06hKt0L+meWRzwvzvDrIs/NSmSTZtFAsls2wGsRdM6qas7BY+BrZRewB71C
	JiiJ9UU1fG9fnFKQHeBDZaDlCxpW/ea1RNlcsPFI/5nb0IQeYVQhWSDjaWTdYdwOhbp4QeAPyBw
	YtiIGniIaB8T7i4NG7MCq8OGIgDTAs4qQxfPk89woP47Tione+j+29cNUawxWBkZYMVwjqOnyVr
	G/1G/yyQZvGtTWXdYoVVkdLQLITEz6/DdYoOngaZjHutaEY7mDZ+i1+U5UZKMQcPMyjNqZcPRsN
	tnas/p5DcwDDZkZMPzle+AlIFVMopoSJRB1LyGqXjEIJ2zCbRqxZUKGF9aJM/dJYQJfEa23b4/a
	34ufI9tRgqp+0HBPa6f50DcBruiJh3aI=
X-Google-Smtp-Source: AGHT+IFeOVs15dznIpdCf/M/7Af5SWFGR9Jd7+90ee4NmadJFomFWtlVJj00c3XSdaHZLu1bl73iYg==
X-Received: by 2002:a17:902:ecd1:b0:267:af07:6528 with SMTP id d9443c01a7336-269ba50848bmr68817665ad.35.1758332842235;
        Fri, 19 Sep 2025 18:47:22 -0700 (PDT)
Received: from archlinux ([191.193.70.152])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698033c922sm65709455ad.131.2025.09.19.18.47.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 18:47:21 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: qcom: r0q: enable ufs storage
Date: Sat, 20 Sep 2025 01:46:37 +0000
Message-ID: <20250920014637.38175-6-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250920014637.38175-1-ghatto404@gmail.com>
References: <20250920014637.38175-1-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Enable UFS internal storage of the Samsung Galaxy S22.

Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
 .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
index c088f1acf6ea..0a55ce952f93 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
@@ -146,6 +146,24 @@ vreg_l5b_0p88: ldo5 {
 			regulator-max-microvolt = <888000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
+
+		vreg_l6b_1p2: ldo6 {
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7b_2p5: ldo7 {
+			regulator-min-microvolt = <2504000>;
+			regulator-max-microvolt = <2504000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l9b_1p2: ldo9 {
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
 	};
 
 	regulators-1 {
@@ -370,6 +388,27 @@ tsp_int_sleep: tsp_int_sleep_state {
 	};
 };
 
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 210 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l7b_2p5>;
+	vcc-max-microamp = <1100000>;
+	vccq-supply = <&vreg_l9b_1p2>;
+	vccq-max-microamp = <1200000>;
+	vccq2-supply = <&vreg_l9b_1p2>;
+	vccq2-max-microamp = <1200000>;
+	vdd-hba-supply = <&vreg_l9b_1p2>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l5b_0p88>;
+	vdda-pll-supply = <&vreg_l6b_1p2>;
+
+	status = "okay";
+};
+
 &usb_1 {
 	/* Keep USB 2.0 only for now */
 	qcom,select-utmi-as-pipe-clk;
-- 
2.51.0


