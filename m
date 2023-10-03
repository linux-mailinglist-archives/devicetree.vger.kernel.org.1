Return-Path: <devicetree+bounces-5559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 937EF7B6A22
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 15:18:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 375662816D2
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC8FD26E2D;
	Tue,  3 Oct 2023 13:18:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8442628C
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 13:18:49 +0000 (UTC)
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [85.215.255.82])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23E56A7;
	Tue,  3 Oct 2023 06:18:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696339125; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=iXvByhZmQv4Vwaqxi5klQsQ1u4CuQgIoeUAkwcbYtdy1S5iyBZiIDoZV68gNqkF+It
    2mbflE67R7hYoq6VhRgWzXgAtqK4Wf5hsMulEj7Q6wOjbg8MyqJnrMugUX2/FeLicOu0
    Qh9klP5Cgt25jphownK55vgM8ZLXpAz+5Nw7IPuVrcsD+RQVDaZtOsFkUjcvUXHijFZt
    H5upgM5/zMHZe+RaVLO1yb9if2GQUHlXg91Lcr08EHpNvx2NHalAAyxR/vBAZka6Cr6U
    WTaK2Vlf4kakSUNzW/vrJzYZsbfxdjcdsCEav6Gj2QB8CzgDV8wTkI0KOIiFRsrOgR38
    z/5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1696339125;
    s=strato-dkim-0002; d=strato.com;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=9LB17dLFMfNzTJngJvf42XBLSmJlOf4/DOV/P11USUY=;
    b=YdbmUy8X8f6a9Nj4x/E/Oub6xXxlrtrhHBNCyF1HYahIZLpewtu1zun6DGNDT06jtF
    ML6iIR9/q0BmSVTo5V25QNOO3wCWVRpiDEZkf0eIF3Cr3IHHoEcLCnFpI2/+nWd/nzbe
    QRaGcLbrc17vhhzSIO8r2MAbhzwf/gjNhu4cGySWi71L93d+SK2gXQ7es4+vqVrlEWHp
    zsxV3tXU1eoNKaPAR1s7lTMYMjazNCxF7U5txSuxN9gtieZiBGl6hEbwYOSaCm+DsKWB
    ++i321gZ5m9CnP5kcmcspEDJpwLfL4rwnj/PwM/RhMijKbSzbf+7NGAkbyZPi8cQgh1f
    klfw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1696339125;
    s=strato-dkim-0002; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=9LB17dLFMfNzTJngJvf42XBLSmJlOf4/DOV/P11USUY=;
    b=NkYEZ9e+dEE6Gtu+yuSQHUqrgCjjWDIEQ46+yczB0lgu8BE9Dzbc0BLgcpqFXXCcIY
    QgrS7awYirwGzUs1COV13+85thlioRah1OPM3rXsRiPUGO34kkmNQDfkh5MnW9i6ZblZ
    4a1oNdkm5SAnMCYDBU0gANGGOHqJLxl+xc9HF0GBpz6qj3WUASacElzDi+vaQg+hE9Xk
    RcA4RW1njFlbXqe52f6IUWZj7A9ljPy8PCbC0iKY8dPRl9CHviJ42vM4jpyXgDUFzKRf
    gwYsf2GvM8oE4TVIrX91qHq7OW1DEKGYByCS8EdJvj06/ta63Wgn26iknJx4+5iVt8Dj
    O0aw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1696339125;
    s=strato-dkim-0003; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=9LB17dLFMfNzTJngJvf42XBLSmJlOf4/DOV/P11USUY=;
    b=ZPdEbvBV1b0xqeLjPFGT/XZno1FBBAM77dYEP5XOE1R8PLvjtgn+gaLNJmXuTtkWYy
    rhIG1rs9+EgZag97e6BA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQjVd4CteZ/7jYgS+mLFY+H0JAn8u4l+/zY="
Received: from [192.168.244.3]
    by smtp.strato.de (RZmta 49.8.2 DYNA|AUTH)
    with ESMTPSA id R04c57z93DIj2OF
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Tue, 3 Oct 2023 15:18:45 +0200 (CEST)
From: Stephan Gerhold <stephan@gerhold.net>
Date: Tue, 03 Oct 2023 15:18:21 +0200
Subject: [PATCH v2 03/14] arm64: dts: qcom: msm8939: Add QDSP6
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231003-msm8916-modem-v2-3-61b684be55c0@gerhold.net>
References: <20231003-msm8916-modem-v2-0-61b684be55c0@gerhold.net>
In-Reply-To: <20231003-msm8916-modem-v2-0-61b684be55c0@gerhold.net>
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

MSM8939 does not have a dedicated ADSP. Instead, the audio services via
APR are also implemented by the modem DSP. Audio can be either routed
via the modem DSP (necessary for voice call audio etc) or directly sent
to the LPASS hardware (currently used by DB410c). Bypassing QDSP6 audio
is only possible with special firmware (on DB410c) or when the modem
DSP is completely disabled.

Add the typical nodes for QDSP6 audio to msm8939.dtsi. The apr node is
disabled by default to avoid changing behavior for devices like
apq8039-t2 that use the bypassed audio path.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm64/boot/dts/qcom/msm8939.dtsi | 49 +++++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
index 65c68e0e88d5..95610a32750a 100644
--- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/reset/qcom,gcc-msm8939.h>
+#include <dt-bindings/soc/qcom,apr.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -1615,6 +1616,54 @@ smd-edge {
 				qcom,remote-pid = <1>;
 
 				label = "hexagon";
+
+				apr: apr {
+					compatible = "qcom,apr-v2";
+					qcom,smd-channels = "apr_audio_svc";
+					qcom,domain = <APR_DOMAIN_ADSP>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+					status = "disabled";
+
+					q6core: service@3 {
+						compatible = "qcom,q6core";
+						reg = <APR_SVC_ADSP_CORE>;
+					};
+
+					q6afe: service@4 {
+						compatible = "qcom,q6afe";
+						reg = <APR_SVC_AFE>;
+
+						q6afedai: dais {
+							compatible = "qcom,q6afe-dais";
+							#address-cells = <1>;
+							#size-cells = <0>;
+							#sound-dai-cells = <1>;
+						};
+					};
+
+					q6asm: service@7 {
+						compatible = "qcom,q6asm";
+						reg = <APR_SVC_ASM>;
+
+						q6asmdai: dais {
+							compatible = "qcom,q6asm-dais";
+							#address-cells = <1>;
+							#size-cells = <0>;
+							#sound-dai-cells = <1>;
+						};
+					};
+
+					q6adm: service@8 {
+						compatible = "qcom,q6adm";
+						reg = <APR_SVC_ADM>;
+
+						q6routing: routing {
+							compatible = "qcom,q6adm-routing";
+							#sound-dai-cells = <0>;
+						};
+					};
+				};
 			};
 		};
 

-- 
2.42.0


