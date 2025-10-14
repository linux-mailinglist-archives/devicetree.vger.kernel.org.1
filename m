Return-Path: <devicetree+bounces-226351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F19FCBD74A5
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 06:43:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E85619A1BFA
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 04:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ABB030CDB4;
	Tue, 14 Oct 2025 04:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m9iH2FVz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824A630DD20
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 04:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760416965; cv=none; b=srhUAX0CKJ5CYpVFxKrRxlWL9vohSco7KEATFDG0aCPGisBn0h/y0hUzd2+2gLEKWj2xWtV3sc1jiKvrLs5w6iqevbEte7AWm/WfrtJx5dl+bd3jbsGuT2LFCbDR8pQTM3zsK4LgDW97UPGmZ0gBehmx4sTy90n4k0bzMB9ep3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760416965; c=relaxed/simple;
	bh=EIlDG9uZbx4t+BVau/hnM39jO/kAdgreuvfIbFSsmHQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RjuMcXpPrl2syDzzXz3Jvxju2dPCNeYx/OiTrQL1WxMAmLi4trb0uFlehCnEpEQX+r9dFPIXUYKGFinxMma384jfX+rAHFpp8b6unzhuZgLxqOEjjb57YcPWCXaOd9dVW65qMhI55fxYD1u6Q56xQGazWBhxleesk14kTKwCAIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m9iH2FVz; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-78af743c232so4405124b3a.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 21:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760416963; x=1761021763; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1KQfsBMFSGfoXUyfXP7e35VKlrSpIH4j7QZbI3mzBmA=;
        b=m9iH2FVzg8CtLUzuq/x9y+i/YUZsG1Qz38nL/YicS3guXrUhm/pYoEyzx6bNSN7BBp
         dhlqud8fBNpDzO0kPEmjFJpu6Kr9ILmAIZC1CcDWmAzdG5J/iU1Lfya6jg9klwatT9za
         ADawmjYr3D8Bc5e+BmCcQWwsNEtNx+J9kj0wULUt2iBv8koKGmKvXshR2h2KteQAokwq
         O9vhEcSbcTBCyn/amQdINDN+7Td3hJytZLmdz5JL5Iy1miUurmbfKPDVArRK6FS/Tpu2
         n1qyp69pmGpcO91FibKPOtiGbpO7UMhwJz/AxxIV/mXetCgC/7zoEDtDcJ5T42Cz3EUi
         Zhfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760416963; x=1761021763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1KQfsBMFSGfoXUyfXP7e35VKlrSpIH4j7QZbI3mzBmA=;
        b=UXoOA5zJOZrLnx1LK/CEET3ZxXVREBsro2sjOVvz85x2Sy12XEaSENWpz9WZUt6y8X
         xy7yAAXiIywziEdqkvSxt+Ny2a3C76ZgN7J+avZsTdmJjXoJeYcEdrvsneCpIKTI3nJ/
         TZLdW7ZtLIMMSrcJEn1dOLVX0mUUJCYL+iUOH2k4Ytr51X6BmtPM/9frknQQipF3/xqg
         x1x/9V0BJdSezTkJ1A0awIT/2YQQntCFw2P7b3o0FtnX+9t1uQ9UNazY9g5FwbC6P855
         j3rTPAJOacrDV9MIehPX+obS4Xg7ExAFuwSctyL1aQN5EhdyVKj4QjQSxhJR/xDckJ/c
         q0mQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeGcGXY1+AxH9mUo12eX1X4TcO1gMIw4bxdY1BaGE156f3PHTs0qmSlCd9sbocP7Y4rQiO3JDEUmKo@vger.kernel.org
X-Gm-Message-State: AOJu0YxbQYG05QXGxZWblaIx67FSQTQ4odvnRiqTEHDJlyDPNvGIUptO
	YC1i4Q1x7r5ge2YEp1S7OmCqDkGQEn/PwWhMqmSqlS1xZ/FQEcoKFywo
X-Gm-Gg: ASbGncsSbPs1/XmCO/acS7Fu5KW1rfekF79hxnnG7i2Aih3mhdKWzA5Eq45YttrXwgT
	WeFXA0mNp8azf50luT9cDdskSecZApoo5YZnKP2cVtLbblIhJNACwTbjHKo39gfIIpFVA2B1o/Y
	f4kok/lIEJSUnxypku9L9C9oJbRyLaAfV38CwnOmEOgAPZ/1V3hZwiNdB/b5ZMC6Q4+bQgPy7yG
	WAyh+s+dpQX8APoqHz/xwBmu5xa2UDoxtOmHzXK0xdi1r0t/17CnkyjMvjNdi3/HrHmxe2vuGR0
	Delu306iB1KurnEpD6X7TRz6Xsv2BcwK7s/l9fKsIQBE3t6G2VxaZQFy2APMz0jN+tMxb0YD270
	7j+QGQt83FbYuKfCD3SrMRiNh/Gxyi5i9esKHJCQySdegcb4=
X-Google-Smtp-Source: AGHT+IE7bkRAk8ugk735/7nQSzoaqtGZLAqU0QGh/8o+Ft0Bhm7O+ywlZ+lPoOEl8NUhH2Op/ri2Mw==
X-Received: by 2002:a05:6a00:1706:b0:77f:50df:df31 with SMTP id d2e1a72fcca58-793870523b6mr23769529b3a.20.1760416962739;
        Mon, 13 Oct 2025 21:42:42 -0700 (PDT)
Received: from archlinux ([177.9.216.59])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-79b65528a51sm8440684b3a.85.2025.10.13.21.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 21:42:42 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/6] arm64: dts: qcom: r0q: enable ufs storage
Date: Tue, 14 Oct 2025 00:41:34 -0400
Message-ID: <20251014044135.177210-6-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251014044135.177210-1-ghatto404@gmail.com>
References: <20251014044135.177210-1-ghatto404@gmail.com>
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
 .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
index 244fed27a4cc..a3b81403d180 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
@@ -155,6 +155,27 @@ vreg_l5b_0p88: ldo5 {
 			regulator-max-microvolt = <888000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
+
+		vreg_l6b_1p2: ldo6 {
+			regulator-name = "vreg_l6b_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7b_2p5: ldo7 {
+			regulator-name = "vreg_l7b_2p5";
+			regulator-min-microvolt = <2504000>;
+			regulator-max-microvolt = <2504000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l9b_1p2: ldo9 {
+			regulator-name = "vreg_l9b_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
 	};
 
 	regulators-1 {
@@ -330,6 +351,27 @@ tsp_int_sleep: tsp-int-sleep-state {
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


