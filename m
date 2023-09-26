Return-Path: <devicetree+bounces-3503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 092E87AF13F
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:52:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 7B4891F25E3F
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01DD534CE3;
	Tue, 26 Sep 2023 16:52:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C47F34CCB
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:52:02 +0000 (UTC)
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [85.215.255.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF18E12A;
	Tue, 26 Sep 2023 09:51:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695747099; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=FbzLcPaUSXtu2eM+7okVlwAn1nUxWOu+b7iqtKWYzRd2QUaTn3EjaRN9IlSgup3aQr
    iAuTXBBXs4fzkOghrwEKzBlayJ95bxObPJUp5yw97xFMzWYvP00KIDn2qKxUJwiPtuE4
    MY1QC9opGqsaQAYgFPEpTbcpzirCwKjqOVfzSj2vVSHW6iPP/NZLHsx68iG39VpvOX7d
    J/0VWSIsiC6q2gMORCIJ3FmhmgBFukadRChpvSiqLXz9KTwfdD58uT4bCn+nsYizsOg4
    wvmPhrpw+EEz2NlbBW8aN/ckomQ9jmwEdM3RZjb06dofGpR7ekNTc9nQnmxmPzac4o7n
    rmaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1695747099;
    s=strato-dkim-0002; d=strato.com;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=JtAzqCADYdUtAE2X5Cl5VjSMCmhUr+SxQulvUa9cK1o=;
    b=n2RDWVFQ4vFATxaCR1Z8Y0oLbGwHCguFbSuMTu62QAdbovLFaZpphkp59h44ltRIPx
    58otBbRaVXZsAfyt8Qo1CdNRmNt3fH10LLvpgRFN9cPoxzYgOgj+ocH1baZAdZBDOjt8
    jZlqXrBQbJnEpiUX05NyloGNex5hM7HO9tcti68q5acFwe2K5/3+upDulTZ1zwGQR5Lr
    flYXl9oNhg27zNUCrS5TRXllGeZs0qL1hMeJ63PLbDugfDNzteB560eubKopCLjg552d
    apqIzfUZGt6C/sNpOlijRkwMgjx0aBv1NlevzcrwuLq4OVSLbQN1QG66mnz0xcJDrsXF
    gp2g==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1695747099;
    s=strato-dkim-0002; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=JtAzqCADYdUtAE2X5Cl5VjSMCmhUr+SxQulvUa9cK1o=;
    b=C33kZA77J+Gr2LZsPpxSfx3T64m34q/5tKcM0CsIz6cAlUCzx9Kz/fnCgd0v2aDvaw
    HgyMvO2ysg7qjS8eE6eCn30W6yZD+gn7QQw09hjUL+7H3ivt+0iBHfkc0Vpm4ZwdbtDM
    OqSFqqRmsRdsK/bjZk6vH7ceprOk3C4KSCPZBdZ1X7FMmAN0cQyYZRFrzoFwpuwnT+G4
    PKh9b728IM+Y52BgVL13+GTewaH7MlexIwXS0WyLerSIyvHs/+LW7ukgmD6BavWftJyg
    rHKwYHkrLH62JAICw8dgATf4MhdILXV14C/6hSSqS81PELP0sshavomnW/sHu/H3V51L
    fIFQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1695747099;
    s=strato-dkim-0003; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=JtAzqCADYdUtAE2X5Cl5VjSMCmhUr+SxQulvUa9cK1o=;
    b=7GbuwZRrLkBNbxhnnCz6LAVNWMFNXXT1K+XFuDr+JIEjOtM4z5xhfAcg5Z/mkQaI94
    d6oCi9JbAB+5BHT1gTCA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQjVd4CteZ/7jYgS+mLFY+H0JAn9VOH+nz0="
Received: from [192.168.244.3]
    by smtp.strato.de (RZmta 49.8.2 SBL|AUTH)
    with ESMTPSA id R04c57z8QGpdg5d
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Tue, 26 Sep 2023 18:51:39 +0200 (CEST)
From: Stephan Gerhold <stephan@gerhold.net>
Date: Tue, 26 Sep 2023 18:51:20 +0200
Subject: [PATCH 06/13] arm64: dts: qcom: msm8916-wingtech-wt88047: Add
 sound and modem
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-msm8916-modem-v1-6-398eec74bac9@gerhold.net>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
In-Reply-To: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stephan Gerhold <stephan@gerhold.net>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Enable sound and modem for the Xiaomi Redmi 2. The setup
is similar to most MSM8916 devices, i.e.:

 - QDSP6 audio
 - Earpiece/headphones/microphones via digital/analog codec in
   MSM8916/PM8916
 - Audio jack detection via analog codec in PM8916
 - WWAN Internet via BAM-DMUX

except:

 - Speaker amplifier is connected to HPH_R (headphones) output of the
   analog codec. There is a separate analog switch that allows disabling
   playback via the headphone jack.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 .../boot/dts/qcom/msm8916-wingtech-wt88047.dts     | 76 ++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts b/arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts
index 419f35c1fc92..600c225a2568 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts
@@ -6,6 +6,8 @@
 /dts-v1/;
 
 #include "msm8916-pm8916.dtsi"
+#include "msm8916-modem-qdsp6.dtsi"
+
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/leds/common.h>
@@ -25,6 +27,28 @@ chosen {
 		stdout-path = "serial0";
 	};
 
+	speaker_amp: audio-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&tlmm 117 GPIO_ACTIVE_HIGH>;
+		sound-name-prefix = "Speaker Amp";
+		pinctrl-0 = <&speaker_amp_default>;
+		pinctrl-names = "default";
+	};
+
+	/*
+	 * This seems to be actually an analog switch that either routes audio
+	 * to the headphone jack or nowhere. Given that we need to enable a GPIO
+	 * to get sound on headphones, modelling it as simple-audio-amplifier
+	 * works just fine.
+	 */
+	headphones_switch: audio-switch {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&tlmm 8 GPIO_ACTIVE_HIGH>;
+		sound-name-prefix = "Headphones Switch";
+		pinctrl-0 = <&headphones_switch_default>;
+		pinctrl-names = "default";
+	};
+
 	flash-led-controller {
 		compatible = "ocs,ocp8110";
 		enable-gpios = <&tlmm 31 GPIO_ACTIVE_HIGH>;
@@ -146,6 +170,18 @@ &blsp_uart2 {
 	status = "okay";
 };
 
+&mpss_mem {
+	reg = <0x0 0x86800000 0x0 0x5100000>;
+};
+
+&pm8916_codec {
+	qcom,micbias1-ext-cap;
+	qcom,micbias-lvl = <2800>;
+	qcom,mbhc-vthreshold-low = <75 100 120 180 500>;
+	qcom,mbhc-vthreshold-high = <75 100 120 180 500>;
+	qcom,hphl-jack-type-normally-open;
+};
+
 &pm8916_resin {
 	status = "okay";
 	linux,code = <KEY_VOLUMEDOWN>;
@@ -180,6 +216,32 @@ &sdhc_2 {
 	non-removable;
 };
 
+&sound {
+	status = "okay";
+
+	/*
+	 * Provide widgets/pin-switches to allow enabling speaker and headphones
+	 * separately. Both are routed via the HPH_L/HPH_R pins of the codec.
+	 */
+	model = "wt88047";
+	widgets =
+		"Speaker", "Speaker",
+		"Headphone", "Headphones";
+	pin-switches = "Speaker", "Headphones";
+	audio-routing =
+		"Speaker", "Speaker Amp OUTL",
+		"Speaker", "Speaker Amp OUTR",
+		"Speaker Amp INL", "HPH_R",
+		"Speaker Amp INR", "HPH_R",
+		"Headphones", "Headphones Switch OUTL",
+		"Headphones", "Headphones Switch OUTR",
+		"Headphones Switch INL", "HPH_L",
+		"Headphones Switch INR", "HPH_R",
+		"AMIC1", "MIC BIAS External1",
+		"AMIC2", "MIC BIAS Internal2";
+	aux-devs = <&speaker_amp>, <&headphones_switch>;
+};
+
 &usb {
 	status = "okay";
 	extcon = <&usb_id>, <&usb_id>;
@@ -226,6 +288,13 @@ gpio_keys_default: gpio-keys-default-state {
 		bias-pull-up;
 	};
 
+	headphones_switch_default: headphones-switch-default-state {
+		pins = "gpio8";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
 	imu_default: imu-default-state {
 		pins = "gpio115";
 		function = "gpio";
@@ -234,6 +303,13 @@ imu_default: imu-default-state {
 		bias-disable;
 	};
 
+	speaker_amp_default: speaker-amp-default-state {
+		pins = "gpio117";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
 	touchscreen_default: touchscreen-default-state {
 		touchscreen-pins {
 			pins = "gpio13";

-- 
2.42.0


