Return-Path: <devicetree+bounces-3494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A96867AF133
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:52:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A16C2281E91
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81EEF34CCB;
	Tue, 26 Sep 2023 16:51:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE4B3418C
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:51:54 +0000 (UTC)
Received: from mo4-p03-ob.smtp.rzone.de (mo4-p03-ob.smtp.rzone.de [85.215.255.103])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF9F310E;
	Tue, 26 Sep 2023 09:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695747100; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=ZO1bkRACfadu9xOhXlCcAPEtWgKgleYqnaaYoY9+kAaAVUwYTc6CoR2YVNiWt132WG
    n2vcRbZ5MSrknEcpK++XAWZt+ohVivDbC6qmXzLGFMf8wVetlcWO010dFl+krRkaV1a+
    OE/tDpd5r2rduuzfofgZQIK0C2yYwj8JOisFIYWt4ioWQ+hzeyGl06P19x28+EB7zlMo
    nXSFUx+BaAYs2S5yFj/wfU+Hh2Lm3eiuzeH61qhrdgglf0YWc+rnUnUT96Nbxe5ihA4t
    IEzPO+thJ8KvKvdTvXOFiXwIdP3QjlVYlFC8HPzTenPkDM5EN1sgCzRnfjEAetFOVE1O
    st2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1695747100;
    s=strato-dkim-0002; d=strato.com;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=gmsYc8rXCbXWg/VO14Z+EOACh1i4V1W7ETcSIol4nmk=;
    b=QgHwPgg1hBnZ2d2DcL1EehrHe+nubZbpTi+wJZmmxErqDkiQwowjYSjJwDGNzaTmuy
    dMbm8cwSmFvVjbKlkfWDYYezgLdKPmLVWIkOljbU4TqvsDhnkFUFevCMJDohbf6nc0AO
    N3oWmUqQdb/wmE+dTL2Xxk21XHfxBl1cpNQ6sDOi7yZy6kJuJnTzPvByY2bQZWIcbVdl
    t0PSVX1ODFze+QIacR1MZTfGBKU7giIm0Mj+4HxWn2xGW8vytUUPEaCnlyUSmK/AeYfv
    5+kEXu96MPdrYIc4gleuf5QheOG3XA23C1LdAa5dxs0kpNIorZ77YcYmTXeuURSTz7BD
    mFFQ==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1695747100;
    s=strato-dkim-0002; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=gmsYc8rXCbXWg/VO14Z+EOACh1i4V1W7ETcSIol4nmk=;
    b=AZvtVSur+sBsv5AGZTweqSIzkEGC0C2TupeYszbk0BFZfdCM9rIMzyrYaGV2BjNT9l
    DtEVBDgloO0rkcGnHcVXPRriftf//GpkbmrMgXmEgGgTV4i/fRQjKsLzE0oUf7mjWO+5
    EXoMAbGcPg6DuC4CQoosGYRZNH+nILPBHS538fGe2fK6ivKRm2ejkf9zkpDo7PDebpfh
    ngCPKDhs9PK53VYFCViLFuyLzfwy2Ni4OhQVI1tUpoCNHy58CkOEHNLprZLc9IQD4dN5
    RPXCYLeNJVdOr13MJvBm4JuNa0ukGtlqq0Oy6iJKwoolegGjlnN+BL5jUvCu0/Rcqnj9
    QwpQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1695747100;
    s=strato-dkim-0003; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=gmsYc8rXCbXWg/VO14Z+EOACh1i4V1W7ETcSIol4nmk=;
    b=WxbKU7DA/kq7Axy8ayGYSniTa3U9Cn1gmmFpkLiTRAdKDAUKYXE9bP0FgilXtKvV+2
    ebcHZhNibhdGd1xQ3QAA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQjVd4CteZ/7jYgS+mLFY+H0JAn9VOH+nz0="
Received: from [192.168.244.3]
    by smtp.strato.de (RZmta 49.8.2 SBL|AUTH)
    with ESMTPSA id R04c57z8QGpeg5g
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Tue, 26 Sep 2023 18:51:40 +0200 (CEST)
From: Stephan Gerhold <stephan@gerhold.net>
Date: Tue, 26 Sep 2023 18:51:23 +0200
Subject: [PATCH 09/13] arm64: dts: qcom: msm8916-longcheer-l8150: Add sound
 and modem
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-msm8916-modem-v1-9-398eec74bac9@gerhold.net>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
In-Reply-To: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Nikita Travkin <nikita@trvn.ru>

Enable sound and modem for the Longcheer L8150 (e.g. Wileyfox Swift).
The setup is similar to most MSM8916 devices, i.e.:

 - QDSP6 audio
 - Speaker/earpiece/headphones/microphones via digital/analog codec
   in MSM8916/PM8916
 - Audio jack detection via analog codec in PM8916
 - WWAN Internet via BAM-DMUX

except:

 - The mpss firmware region must be relocated to a different address.
   This is because the wcnss firmware is not relocatable for some
   reason. The mpss firmware is too large to avoid overlap with wcnss
   when placed at the default address (0x86800000).

   Surprisingly the vendor kernel does not handle this. The firmware
   regions end up overlapping there and somehow this does not explode.
   We try to handle this more safely by relocating the mpss region to
   the first higher address that is working correctly: 0x8e800000.

Signed-off-by: Nikita Travkin <nikita@trvn.ru>
Co-developed-by: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 .../boot/dts/qcom/msm8916-longcheer-l8150.dts      | 32 ++++++++++++++++++++--
 1 file changed, 29 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
index 47d1c5cb13f4..78f08254b287 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
@@ -3,6 +3,8 @@
 /dts-v1/;
 
 #include "msm8916-pm8916.dtsi"
+#include "msm8916-modem-qdsp6.dtsi"
+
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/irq.h>
@@ -25,17 +27,26 @@ chosen {
 
 	/*
 	 * For some reason, the signed wcnss firmware is not relocatable.
-	 * It must be loaded at 0x8b600000. All other firmware is relocatable,
-	 * so place wcnss at the fixed address and then all other firmware
-	 * regions will be automatically allocated at a fitting place.
+	 * It must be loaded at 0x8b600000. Unfortunately, this also means that
+	 * mpss_mem does not fit when loaded to the typical address at 0x86800000.
+	 *
+	 * Load wcnss_mem to the fixed address and relocate mpss_mem to the next
+	 * working higher address. For some reason the modem firmware does not
+	 * boot when placed at 0x8a800000 to 0x8e800000.
 	 */
 	reserved-memory {
+		/delete-node/ mpss@86800000;
 		/delete-node/ wcnss;
 
 		wcnss_mem: wcnss@8b600000 {
 			reg = <0x0 0x8b600000 0x0 0x600000>;
 			no-map;
 		};
+
+		mpss_mem: mpss@8e800000 {
+			reg = <0x0 0x8e800000 0x0 0x5000000>;
+			no-map;
+		};
 	};
 
 	gpio-keys {
@@ -225,6 +236,13 @@ &blsp_uart2 {
 	status = "okay";
 };
 
+&pm8916_codec {
+	qcom,micbias-lvl = <2800>;
+	qcom,mbhc-vthreshold-low = <75 150 237 450 500>;
+	qcom,mbhc-vthreshold-high = <75 150 237 450 500>;
+	qcom,hphl-jack-type-normally-open;
+};
+
 &pm8916_resin {
 	status = "okay";
 	linux,code = <KEY_VOLUMEDOWN>;
@@ -254,6 +272,14 @@ &sdhc_2 {
 	non-removable;
 };
 
+&sound {
+	status = "okay";
+	audio-routing =
+		"AMIC1", "MIC BIAS Internal1",
+		"AMIC2", "MIC BIAS Internal2",
+		"AMIC3", "MIC BIAS Internal3";
+};
+
 &usb {
 	status = "okay";
 	dr_mode = "peripheral";

-- 
2.42.0


