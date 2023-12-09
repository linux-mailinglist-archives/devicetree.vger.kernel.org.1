Return-Path: <devicetree+bounces-23510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 557E180B778
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:21:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7CD291C2094B
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 23:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1E1C20313;
	Sat,  9 Dec 2023 23:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HD1FEsnC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70956121
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 15:21:39 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2c9f9db9567so36655831fa.3
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 15:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702164098; x=1702768898; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qFNU2Uw0pSijZLO+gDI3Cy6lXyGk9xUoibHaeplshjA=;
        b=HD1FEsnCKcjmpIBN2oaXrWEUkCAtwv5m8xfZsI4ExHmO2tVckCbhJeJ3TweqwLNcu9
         ZE0sq9I0XmCX0wmYOqmqENcWZLsBTwcos7+EnzY27GzAr2Ou7k0LQGhMEVeKjwUA9MDp
         J4z/I/SP61i+ZVUKbvIO2uuE9UqZCuNkxWYk5y0Bg3YqJW12nsMmCqZDAPEG62Rvt1si
         EhpGPM6L+Adpj8xubw3tyefk1CZ8dWsggSGA3L+urqlSWyHYueIGbLcX3tFyJ0AR5kT7
         mlabNbCfWCIYRffO+IO2AqFrhavsk1RYBnYk4owo2wIZ5CWkSBHhytZDjb45UGQn3BQS
         xBMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702164098; x=1702768898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qFNU2Uw0pSijZLO+gDI3Cy6lXyGk9xUoibHaeplshjA=;
        b=MtEXKcGFqT1OqcjqdIQ3BogTRYPEqcDOcviPuo880KiYa8rmPkbRp2P2nHWR15VKv7
         Ehxpa8dMu7m4MnH0limjf12bi0VsLcwPukqNQp4nAuhR3us8zv9Ax5b2UIw+iuOGdOJS
         B9XVIQpxx5XAUrjlfvGYcqFpyCrLGj+guOHjURMVguj7D7JSGszsPqaPzQpv4GhXFYLE
         Ak3VtfydHXELxCbc9K3N22U7vAIwQXbbDbzwBymJcjO2HjbHDnlz4IiFFJEiGkmGmXPF
         b/VpkXdcgUmFCbx83CBM7JRWsHJQzg62DF2AVLsi9nzyap+0OuxNATVHhH5sfUg/F2vU
         v2Tg==
X-Gm-Message-State: AOJu0YxleGwAbfmBjnZz3efJnWOF7fXNztXI+EyqrkntH36gq+/XP8yk
	093Y8pfpS3O1GiccLjx8N5YOug==
X-Google-Smtp-Source: AGHT+IFHcplFcv60XwQPEicmotat4bKqCFXkbEoKpfVySFHQsY0mq3mrzXNQ5TiQAVQ6R8peoAv4Mg==
X-Received: by 2002:a05:651c:1247:b0:2cb:2a2c:55b5 with SMTP id h7-20020a05651c124700b002cb2a2c55b5mr464415ljh.10.1702164097820;
        Sat, 09 Dec 2023 15:21:37 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z18-20020a2ebe12000000b002c9f59f1748sm685258ljq.7.2023.12.09.15.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 15:21:37 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH 5/9] arm64: dts: qcom: sm8150-hdk: fix SS USB regulators
Date: Sun, 10 Dec 2023 02:21:28 +0300
Message-Id: <20231209232132.3580045-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231209232132.3580045-1-dmitry.baryshkov@linaro.org>
References: <20231209232132.3580045-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SM8150-HDK uses two different regulators to power up SuperSpeed USB
PHYs. The L5A regulator is used for the second USB host, while the first
(OTG) USB host uses different regulator, L18A. Fix the regulator for the
usb_1 QMPPHY and (to remove possible confusion) drop the
usb_ss_dp_core_1/_2 labels.

Fixes: 0ab1b2d10afe ("arm64: dts: qcom: add sm8150 hdk dts")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
index 6a036f9ba1c9..ea4d75308ac8 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
@@ -138,8 +138,6 @@ vdda_qrefs_0p875_5:
 		vdda_sp_sensor:
 		vdda_ufs_2ln_core_1:
 		vdda_ufs_2ln_core_2:
-		vdda_usb_ss_dp_core_1:
-		vdda_usb_ss_dp_core_2:
 		vdda_qlink_lv:
 		vdda_qlink_lv_ck:
 		vreg_l5a_0p875: ldo5 {
@@ -221,6 +219,12 @@ vreg_l17a_3p0: ldo17 {
 			regulator-max-microvolt = <3008000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
+
+		vreg_l18a_0p8: ldo18 {
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <880000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
 	};
 
 	regulators-1 {
@@ -563,13 +567,13 @@ &usb_2_hsphy {
 &usb_1_qmpphy {
 	status = "okay";
 	vdda-phy-supply = <&vreg_l3c_1p2>;
-	vdda-pll-supply = <&vdda_usb_ss_dp_core_1>;
+	vdda-pll-supply = <&vreg_l18a_0p8>;
 };
 
 &usb_2_qmpphy {
 	status = "okay";
 	vdda-phy-supply = <&vreg_l3c_1p2>;
-	vdda-pll-supply = <&vdda_usb_ss_dp_core_1>;
+	vdda-pll-supply = <&vreg_l5a_0p875>;
 };
 
 &usb_1 {
-- 
2.39.2


