Return-Path: <devicetree+bounces-2263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6689F7AA61B
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 02:36:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9C201282827
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 00:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCA14377;
	Fri, 22 Sep 2023 00:35:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2828A37E
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 00:35:58 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A702114;
	Thu, 21 Sep 2023 17:35:57 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c131ddfc95so16593411fa.0;
        Thu, 21 Sep 2023 17:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695342955; x=1695947755; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RcYQgV+bm9yWMYSe35j2ydaItwrEqBRiK5B5oR8hfBE=;
        b=QtSxvoVsaLKYLRee0+ENBuej5rxa34WD6NuKS1dluYFoN/TkKntsAG3+2JOc+By+Oe
         o9Y4DImpQatCRZx/89NhyPmQ9ukk+g7dcQoL4EMl4ZKdnw4HwjDz2xMTVcdqwnSJWNae
         azdNLHS6OkTUgMoN++VoNgnghCVEHuk5d8vwTRtD9atij9PhI6EENrOtZKtWiKaYqY8A
         h9EBJ2UM3bwKuvrTKk+8ptVu6kOOBhug0AenZTVihk84QTvugdSOzlJf7t9SpzMusfdB
         k2dfbZU2roOwLNKkluXIb9j0pacVyrpETATjBAUVJCQ3UKe/KeajQalzn0hjtW3szP3j
         Hy7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695342955; x=1695947755;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RcYQgV+bm9yWMYSe35j2ydaItwrEqBRiK5B5oR8hfBE=;
        b=DohMzkcdtdtyESZAu8vJtwlPRHg9GpSl0qV5egijcwGvlJXJekcUTrPtBMwL/5KpsO
         285feX+3Xz09zWe6sQ3xG9uEzok5LgZoUQw1RXTsbRkJvda92OUWU9Cln+2WIjaMH6uP
         +AhVJdnIO1am4E0LbhXXgOorjb8OtgWHBpxkzPk0sFTihVXcU7g3qJvayXqWlAanBo8p
         eMOa8w69JF2HqMQ1xRrQzjDoQxVJPuKZGXmiVwV9WLlXKp+Z4sXxpRWAjP3EVlCsEyG6
         8GNMxUFOacPfL3WBLb1TYKzVYASK5QT5X5vt+/jmylriZBbIIrBK/tIq7GjH/us4mQY8
         mB1A==
X-Gm-Message-State: AOJu0YzvPIWbb4b6sXmwfzFIGiiVFMOiP3z8f4f/SurOPSiiCMo3vSZC
	VUQdn47VRB7Z67QBgP2/LdTUJUpTbYIVWA==
X-Google-Smtp-Source: AGHT+IE/8QSjsrE4MHaaK0Tz5igeEvIr9GxYg9FlYy7Rpqibms6BqvDFnFN+MWhHAjWFF6caPp3jdQ==
X-Received: by 2002:a2e:8747:0:b0:2bc:d582:e724 with SMTP id q7-20020a2e8747000000b002bcd582e724mr6045179ljj.31.1695342955274;
        Thu, 21 Sep 2023 17:35:55 -0700 (PDT)
Received: from i-vetokaappi.home.lan (dsl-hkibng42-56733b-36.dhcp.inet.fi. [86.115.59.36])
        by smtp.gmail.com with ESMTPSA id j23-20020a2e3c17000000b002bff365c7bfsm615462lja.35.2023.09.21.17.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 17:35:54 -0700 (PDT)
From: =?UTF-8?q?Matti=20Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	=?UTF-8?q?Matti=20Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: qcom: msm8226: Add rpm-master-stats node
Date: Fri, 22 Sep 2023 03:35:32 +0300
Message-Id: <20230922003533.107835-2-matti.lehtimaki@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230922003533.107835-1-matti.lehtimaki@gmail.com>
References: <20230922003533.107835-1-matti.lehtimaki@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add rpm-master-stats node for MSM8226 and the required RPM MSG RAM
slices for memory access.

Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
---
 arch/arm/boot/dts/qcom/qcom-msm8226.dtsi | 32 ++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
index 44f3f0127fd7..98cc5ea637e1 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
@@ -56,6 +56,18 @@ pmu {
 	rpm: remoteproc {
 		compatible = "qcom,msm8226-rpm-proc", "qcom,rpm-proc";
 
+		master-stats {
+			compatible = "qcom,rpm-master-stats";
+			qcom,rpm-msg-ram = <&apss_master_stats>,
+					   <&mpss_master_stats>,
+					   <&lpss_master_stats>,
+					   <&pronto_master_stats>;
+			qcom,master-names = "APSS",
+					    "MPSS",
+					    "LPSS",
+					    "PRONTO";
+		};
+
 		smd-edge {
 			interrupts = <GIC_SPI 168 IRQ_TYPE_EDGE_RISING>;
 			qcom,ipc = <&apcs 8 0>;
@@ -742,6 +754,26 @@ sram@fc190000 {
 		rpm_msg_ram: sram@fc428000 {
 			compatible = "qcom,rpm-msg-ram";
 			reg = <0xfc428000 0x4000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0xfc428000 0x4000>;
+
+			apss_master_stats: sram@150 {
+				reg = <0x150 0x14>;
+			};
+
+			mpss_master_stats: sram@b50 {
+				reg = <0xb50 0x14>;
+			};
+
+			lpss_master_stats: sram@1550 {
+				reg = <0x1550 0x14>;
+			};
+
+			pronto_master_stats: sram@1f50 {
+				reg = <0x1f50 0x14>;
+			};
 		};
 
 		tcsr_mutex: hwlock@fd484000 {
-- 
2.39.2


