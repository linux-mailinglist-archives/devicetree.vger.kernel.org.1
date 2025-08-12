Return-Path: <devicetree+bounces-203519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DB3B21B3A
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 05:04:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27B31620B69
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 03:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 736C02E11DE;
	Tue, 12 Aug 2025 02:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ACbo4Bhv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D402DA762
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 02:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754967579; cv=none; b=gQa6sS26SLrr0JNEH545ki3jnbVTLe7/zdwTU4cWEi01RmkxhMJ/m6/rux9lx6+7wSi0+ngQlMnJFj53y9LUu25q77TjXNn0B2bNj7Cx1czjzbjSR7r4/MK+iv/WH38pVw64fLCFa7Nf4XL8cBEq05ZFOIgjLdv3BTT1ZkLHqN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754967579; c=relaxed/simple;
	bh=XhYrvp+oOzcKXkqVsKgltsmWOkd/VumGhBrmz8Q1R04=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jVRl0w6kSMve837pj/AwosA0wMeqsj49153OYBlR3mySoZp59ru1fnvtp3x3GRadUJ4XStSnal4H3GwMa5BICrD+tVRPQ/0bTOawyVd6Bt9dDnm1tMtosTfDo6OkiWFWQAeasjLzNQUHoO+x0fazxZ4iiX3ibuGTyJOn8VE0HBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ACbo4Bhv; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-30c036641f2so4184323fac.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 19:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754967575; x=1755572375; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kaRIdv5rGzBCPQQ+bL7573cXNcAHftK9x8IVzI6njbM=;
        b=ACbo4Bhvs73rw7VcWm3ZCZN8VSIyFr3+lZbzusdQOuIgtx8h4KG2+RJslnLF+7+JxL
         SyzsOs1affkQ0x3weV00f13pS0NVz3VRHxJgBTGb8+ONXoylCdmME58CgPUzC6RGWJnL
         8FBoTwExtbVgWzjoz26lPSP/S378DQJn8kVoCrUnpS6Xh1hiwppDYRPPdYvS0d02m693
         auNLkXqkrXb1r0LWW3TF6t4qn13/mLOru4Uw7vTnOdu5UmTWZ6UYvV2+dQVLkaiRz1Qu
         zO8zLywQZ3Hl0bEbtlFB0p+GicZyI8a4VA34B7tVL8LjM2eDPhaY28uykay474sSc01F
         bCSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754967575; x=1755572375;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kaRIdv5rGzBCPQQ+bL7573cXNcAHftK9x8IVzI6njbM=;
        b=Utr65OiqzyGoIPAc20dQEXVhUb8YAXAdd4x9/oD3nByvqKrtqMhBnq5Kee4KRQS/1y
         sVCLy77wsAN9AnsOYSnm+CXVhWXX6o3k3hL3tQqc4LgfXsJ7sofX51i1gZOvg3IdBwGQ
         qNE2j9Mz5Y6U/lyiW5Yg0e/B50yZFewWmVzAKN+I6GFlfAwXMCqWOQtErhIyE7n8K5EA
         oN/440saiYxxryX7DX46GPX0fvVgwDzLiTfj6Y8JjLJbiAq8TZcs/Q/8c4jBVDE+EEej
         ohZWvwuCdk73j46Ckul5hqm63m8bkyAXZ1bhIiim+92w2NF7i3YQ/pgSHaIfIBbleOTn
         qJSw==
X-Forwarded-Encrypted: i=1; AJvYcCWRszcWgLaIbfD0CWpD0z3ISIAoQuupJhSv2PbPQHRkmiXV27ZoXCAFEoEd5zYgq+xpM8XA7qjylPyy@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0fmLHTdyFU2kOt9IOER0kSX/Qs6nCPjdlptVvoqBChh0cM+BU
	ak5qnN4rBMkUVJ2sTd/4yVjaN+9+0qdkzuRuJu8ESGVAlGnuW2aXCStf
X-Gm-Gg: ASbGncuY4zJ1QB2nHGVI0vdhwu6UR+F/z7crwTWB6RINBj/pj2b9HcGJ+y5Uwt8zOLE
	fh5HpqtNr2TKiJiz9QSTQnXYi3DATsGIlreRi0Oc+PF8uAKjhpRbtkXfmpKS/5gdKBPZrq12Goe
	i8IganMJcYrwP74Qt55gqKg5rNoGJr1IzgWN/vJYJqv3vNIAS/3swczKYHxgUjvxJAFlG+mBdRS
	glDTmhp9I1dcicxxVlOn9FGop2fqGlMfm8rj4LgpCansN29JH2teZUu89HMjk2quIjsPsqte/jn
	G7Ru4ttMUEMMdcQlLEZ0NhMECZftnkKKLlHxaRN1nofeqDFx+0rRMW4pHxcfAqDjffz8OOSFPxW
	RkhrfEUjr+ufjgkBFV1PRVFspp9IEng==
X-Google-Smtp-Source: AGHT+IEh1gJeqBqbfClfA33RQF4KKCM6q6/kcFkjflR5pnTF3aCML/jEQkLxhXQPP2zA5JJR+viv/Q==
X-Received: by 2002:a05:6870:3c10:b0:307:b28:48e3 with SMTP id 586e51a60fabf-30c9505bbe0mr1175520fac.18.1754967574830;
        Mon, 11 Aug 2025 19:59:34 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:36c5:be5:e9bb:c0f0])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-30c3a9d052asm2726690fac.14.2025.08.11.19.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 19:59:33 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Johannes Erdfelt <johannes@erdfelt.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: enable NPU on OPI5 Plus/Max/Ultra
Date: Mon, 11 Aug 2025 21:57:54 -0500
Message-ID: <20250812025755.2078-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NPU on the Orange Pi 5 uses the same regulator for both the
sram-supply and the npu's supply. Add this regulator, and enable all
the NPU bits. Also add the regulator as a domain-supply to the pd_npu
power domain.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../boot/dts/rockchip/rk3588-orangepi-5.dtsi  | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
index 91d56c34a1e4..ac1df223d6a2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
@@ -258,6 +258,28 @@ regulator-state-mem {
 	};
 };
 
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1m2_xfer>;
+	status = "okay";
+
+	vdd_npu_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_npu_s0";
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <950000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
 &i2c6 {
 	clock-frequency = <400000>;
 	status = "okay";
@@ -352,6 +374,40 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
+&rknn_core_0 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_1 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_2 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
+
+&rknn_mmu_1 {
+	status = "okay";
+};
+
+&rknn_mmu_2 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcc_1v8_s0>;
 	status = "okay";
-- 
2.50.1


