Return-Path: <devicetree+bounces-4508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEA37B2DF2
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:38:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7E0BA282D3C
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 08:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AC29C8F7;
	Fri, 29 Sep 2023 08:38:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A789630
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:38:37 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AB371B7
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:38:35 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9b2a3fd5764so878385166b.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1695976713; x=1696581513; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Eb8SXxyy/PW+V96CqaPd3QJGGDx1CmgmZ0KsU7u1POg=;
        b=OFwZj2kc3WBPg5A4j1LXYvHp6W5Si7JjPkH9S0+RiWIxvV9pLhFYEPVliAP2q9XC6v
         oBxaey+2k1ATLwW+VtrCWKuhKe5d7oj/CPvB81bDQ0+JwMMS4i02TOJemdVX5qlC9uG/
         ct+gUAjG4I1628mgDG15PtuA6tdpW9nxykffbgLpfT6EtcVbBPq6PW8/PDTunn2NT3YE
         NnlhKMqU24KbeCS56fvslpwmlbVnu+D4DfqrAJPz42Wg8PIEmCrtSJBTyPHjpYdnGjpw
         /Iear0TMi0BHtdYx+zgQEHBto3BMFY/dvFl/8uENYIl85ofvKQcAv+Tyw8+52xvNHccg
         AF4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695976713; x=1696581513;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eb8SXxyy/PW+V96CqaPd3QJGGDx1CmgmZ0KsU7u1POg=;
        b=cmMC77lipohJugDerfaKfpzrPdANTCXip/Ev0TjYerYRnA5drEHAwvs7VBPzN/IJn1
         MsPO7TC3hUd8prCMg+cUqXCtG3OWcb48A0lMVAr2NFWbtiQ5V3n5YhXtvRAs+KG/IvKa
         UCcAM4T6B1XLlaU7v773pqVyLoLjUJ1rOAT9OE6tHzGAwYVYkF/bHlTwljfm3kz4YqB3
         YaKfTSc/hs0vnaPh0pTzsyLky+wKgojGQ922a5YlTjQVd6wPvEy9VPkmEYSZW+bGceYu
         fBI4TWJ9Q6nr4akY6YJFeLrzilkEtZ7xgEFYfFJxMl1nTpolbIaloMfuyMysQvCrp3J7
         tP9g==
X-Gm-Message-State: AOJu0YySmUwgizx7x/GJ6LG5T0Zxh9ImeBErqRMc8z+M4zCjDbLCefFP
	Kyl/f4T0dfWqgJaXi3dfsVPq5A==
X-Google-Smtp-Source: AGHT+IHWo6Ad+NGH7yOlybgeRKc1BDC4UBNVMKM73Iv+L+9Io0w560rL/OsLgRo5bWtZz2faxPtTnA==
X-Received: by 2002:a17:906:10cd:b0:9ae:7081:402e with SMTP id v13-20020a17090610cd00b009ae7081402emr2825437ejv.64.1695976713284;
        Fri, 29 Sep 2023 01:38:33 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id qk8-20020a170906d9c800b009ad89697c86sm12208965ejb.144.2023.09.29.01.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 01:38:32 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 29 Sep 2023 10:38:20 +0200
Subject: [PATCH 2/3] arm64: dts: qcom: sc7280: Move video-firmware to
 chrome-common
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-sc7280-venus-pas-v1-2-9c6738cf157a@fairphone.com>
References: <20230929-sc7280-venus-pas-v1-0-9c6738cf157a@fairphone.com>
In-Reply-To: <20230929-sc7280-venus-pas-v1-0-9c6738cf157a@fairphone.com>
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

If the video-firmware node is present, the venus driver assumes we're on
a non-TZ system. Move the video-firmware node to chrome-common.dtsi so
we can use venus on a TZ board.

At the same time let's disable the venus node by default as is custom on
such nodes.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi | 8 ++++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi               | 6 ++----
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
index 5d462ae14ba1..cd491e46666d 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
@@ -104,6 +104,14 @@ &scm {
 	dma-coherent;
 };
 
+&venus {
+	status = "okay";
+
+	video-firmware {
+		iommus = <&apps_smmu 0x21a2 0x0>;
+	};
+};
+
 &watchdog {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 66f1eb83cca7..fa53f54d4675 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -3740,6 +3740,8 @@ venus: video-codec@aa00000 {
 				 <&apps_smmu 0x2184 0x20>;
 			memory-region = <&video_mem>;
 
+			status = "disabled";
+
 			video-decoder {
 				compatible = "venus-decoder";
 			};
@@ -3748,10 +3750,6 @@ video-encoder {
 				compatible = "venus-encoder";
 			};
 
-			video-firmware {
-				iommus = <&apps_smmu 0x21a2 0x0>;
-			};
-
 			venus_opp_table: opp-table {
 				compatible = "operating-points-v2";
 

-- 
2.42.0


