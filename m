Return-Path: <devicetree+bounces-3504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C18B47AF142
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:52:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id E961F1C2089C
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E9E434CC2;
	Tue, 26 Sep 2023 16:52:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD13534CF5
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:52:02 +0000 (UTC)
Received: from mo4-p03-ob.smtp.rzone.de (mo4-p03-ob.smtp.rzone.de [85.215.255.102])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6DBF11F;
	Tue, 26 Sep 2023 09:52:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695747101; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=nkG3qo4wxa6uPpr8wezU1QB3J9gPmARwh2pUsEBIO4644ypuWj3bpf4jKsNSGPvWsG
    nl/MuQeFBWPMKOUYuANpUr9YbI3GtmsAz98pY+MR3fF399SvTCEQIYNE+9tFSBW4n9uo
    dOrXyYy9YhviBsVcejoXiOUB3OFdAwXN/Mao0I+mZMqc3+9GU+dDg2A6yvPh2Rg9rr90
    YaOUAK6OAhYR0JAZbzHGQxdu2EBgeHpVRfmevT7IxMYgdKGhTRUlRXEuWbp0cmgTPVGJ
    OWI4GctFmkqzvS9etyeH3uQXQPz39SZdEVVfLsfpVbDEYrGaoJBXNUG8+3dp9lc8Wqql
    biWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1695747101;
    s=strato-dkim-0002; d=strato.com;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=tufcaIR3gqhuRrY5aJ18aw1wfuMM/cmSUyyyezmaDvk=;
    b=M28tOYed4a+uDYp3SoHeC+ceSs4//LjQgD/5ycLgv4AdtTpGim06TmHxZXG/jakZMM
    87fcbONDMmIGaaZLoibW/DUKlPJs/22vqL56EOAgSqNk/JpcmeRPnnIGsr5MV9D6gzzP
    ncgBOxfn55AyDy1Fzcg3nY80B8stlFSdsGbAepZ3hgm5awLqzw0ofluuoSec6fCz0NMb
    b4OpQR5ePCD4tim2FMamSNjVRr25f/2zGExPXPkC26cdNpBJ3CVYrBOa+oX9lYIkc2fk
    oNHE9TbepYh7m6BLwP1MeqZVsUssdzs1kDRzmkjl0dKZLunwIVc7P+7+bnrsx0428sIF
    EMmA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1695747101;
    s=strato-dkim-0002; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=tufcaIR3gqhuRrY5aJ18aw1wfuMM/cmSUyyyezmaDvk=;
    b=MpeJFR55+/Kra0BqLqqlt8ubm8S6O6XtQqKaj4XZPWGn1lG//QsIOEhcgoThOYgN3C
    /Xe7X7fSTuMqKkBdp88GFh2QHVE5VgflVpDzVhm78C+Ncqj3o6x8w7F6C5DhBUDuK8cJ
    uK6ncWrZa6EU5JAi8Oc65/nw0K9ajxpQp2f20z8Nd2VnPd5oJkK5NV7buJkKONEx0rrH
    LvrzI7l2MTX9oAhndIqPRF/wcKiWXpl7V7Xon3T32aouvXxpuVVFs5dExqN8biUjNA4t
    /EBVm+zcT0yP+cpAEyp44eqK1EaWSoLJxwdnMtpOQpdWWVgtyNL3fxu9QoAnM7roS45m
    TUew==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1695747101;
    s=strato-dkim-0003; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=tufcaIR3gqhuRrY5aJ18aw1wfuMM/cmSUyyyezmaDvk=;
    b=DSs3zEBZOD9PDojf0ZDEnz39N/bXVBh80JJXu3OOaptca1U40I7321k1R3mY0/Rv0q
    M9SzyIlCTUqrcKTGjxBg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQjVd4CteZ/7jYgS+mLFY+H0JAn9VOH+nz0="
Received: from [192.168.244.3]
    by smtp.strato.de (RZmta 49.8.2 SBL|AUTH)
    with ESMTPSA id R04c57z8QGpfg5j
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Tue, 26 Sep 2023 18:51:41 +0200 (CEST)
From: Stephan Gerhold <stephan@gerhold.net>
Date: Tue, 26 Sep 2023 18:51:26 +0200
Subject: [PATCH 12/13] arm64: dts: qcom: msm8916-samsung-j5: Add sound and
 modem
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-msm8916-modem-v1-12-398eec74bac9@gerhold.net>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
In-Reply-To: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stephan Gerhold <stephan@gerhold.net>, 
 "Lin, Meng-Bo" <linmengbo0689@protonmail.com>, 
 Markuss Broks <markuss.broks@gmail.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: "Lin, Meng-Bo" <linmengbo0689@protonmail.com>

Enable sound and modem for the Samsung J5 smartphones. The setup is
similar to most MSM8916 devices, i.e.:

 - QDSP6 audio
 - Speaker/earpiece/headphones/microphones via digital/analog codec
   in MSM8916/PM8916
 - WWAN Internet via BAM-DMUX

except:

 - There is no secondary microphone, so a different "model" is used to
   differentiate that in the UCM configuration.
 - Samsung-specific audio jack detection (not supported yet)

Co-developed-by: Markuss Broks <markuss.broks@gmail.com>
Signed-off-by: Markuss Broks <markuss.broks@gmail.com>
Signed-off-by: "Lin, Meng-Bo" <linmengbo0689@protonmail.com>
[Stephan: Add consistent commit message]
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm64/boot/dts/qcom/msm8916-samsung-j5-common.dtsi | 15 +++++++++++++++
 arch/arm64/boot/dts/qcom/msm8916-samsung-j5.dts         |  4 ++++
 2 files changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916-samsung-j5-common.dtsi b/arch/arm64/boot/dts/qcom/msm8916-samsung-j5-common.dtsi
index fe59be3505fe..2caa820b0c26 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-samsung-j5-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916-samsung-j5-common.dtsi
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include "msm8916-pm8916.dtsi"
+#include "msm8916-modem-qdsp6.dtsi"
+
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/irq.h>
@@ -135,6 +137,10 @@ &blsp_uart2 {
 	status = "okay";
 };
 
+&mpss_mem {
+	reg = <0x0 0x86800000 0x0 0x5800000>;
+};
+
 &pm8916_resin {
 	status = "okay";
 	linux,code = <KEY_VOLUMEDOWN>;
@@ -154,6 +160,15 @@ &sdhc_2 {
 	cd-gpios = <&tlmm 38 GPIO_ACTIVE_LOW>;
 };
 
+&sound {
+	model = "msm8916-1mic";
+	audio-routing =
+		"AMIC1", "MIC BIAS External1",
+		"AMIC2", "MIC BIAS Internal2",
+		"AMIC3", "MIC BIAS External1";
+	status = "okay";
+};
+
 &usb {
 	extcon = <&muic>, <&muic>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/qcom/msm8916-samsung-j5.dts b/arch/arm64/boot/dts/qcom/msm8916-samsung-j5.dts
index 58c2f5a70e78..ba8650971d6a 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-samsung-j5.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-samsung-j5.dts
@@ -19,6 +19,10 @@ &blsp_i2c5 {
 	status = "disabled";
 };
 
+&pm8916_codec {
+	qcom,micbias1-ext-cap;
+};
+
 &touchscreen {
 	/* FIXME: Missing sm5703-mfd driver to power up vdd-supply */
 };

-- 
2.42.0


