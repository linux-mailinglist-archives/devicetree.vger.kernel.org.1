Return-Path: <devicetree+bounces-5562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8517B6A25
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 15:18:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 906A728177C
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A413D273D8;
	Tue,  3 Oct 2023 13:18:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6932915
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 13:18:50 +0000 (UTC)
Received: from mo4-p03-ob.smtp.rzone.de (mo4-p03-ob.smtp.rzone.de [85.215.255.104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EAAFB7;
	Tue,  3 Oct 2023 06:18:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696339126; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=fT1o1bfvAJmEucKypk4JvnYvVPf+gyyz7e86whnVfZ20S7qNU5yGUIvrwnz84Uphc7
    jeCjbtpjr/ZgpKBKttj2klCINZ3gldsp82VIYQLwGj2xaI+gliiC0C63SgshSwqO4DJV
    Evqq2sGmK8rAx4zAPMWPO1xR6WSZjLdXUxrg7+me6fomISSGVvpMakOppNfyS1oQMLlI
    NTfqou2YB7n3M/sPVW/oLYZMBDWDveVGFPVejoystOSgTzrnvkSqrBqicaq09ONbmN7N
    dna4f7Gh8Hxtk5YbgRLMP6E84CxZuvsNtTgGtWU32w/0gWS3RW5nuazQqZLRlG76CDhF
    8cMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1696339126;
    s=strato-dkim-0002; d=strato.com;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=wkEd/6Cy6zxlz0xNYtgtZA9rujzyPOBqe0YaT0QbcHk=;
    b=i0U6MZKYoPjCIbPzdQbe4u2/uGaRqki9rdE6+qIte0Gb/qGCsfxp2yg85iQ1vlw4Gz
    B7DcXych98b7h2ExMMBRX7npTf2/bybFYpksgz5ESD3cmvhpls7OG2olJTx4rhB/jtNJ
    mjkjmL24khi/bvFzDpRzbb3fi3U9AEIpse0wg3Qi2neWiFaulzznE+SSuO3jmsjSOEzz
    2+IucfzhCSXtvh6D/Li9EyltV093uY9XXGzCklAEHnIxyirISkymShja40s7ciFIVcxA
    h5eWo74rSvlZnQS2GAOFksUsZWCKptEjCHPlZ6GTbWYPNMrGp6Ysw5H/5aBnrDcrP/JG
    NdlQ==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1696339126;
    s=strato-dkim-0002; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=wkEd/6Cy6zxlz0xNYtgtZA9rujzyPOBqe0YaT0QbcHk=;
    b=q7IP0NABHFpBrIhoZsdS+Sf6TwV2hADuAkBQ1mwqO/TuJCTtIU7+NiNBSbKoSqux8w
    ukFRK+fA3cdmkNmC1h1oZs/DqGR3IxwhoKtkQcN0J+hKX3O9Jo/U7RjkyucaoCx8B3A9
    cJDD3ftnNeqDQLmd44qYR508e4mOmnMrnrAxcQQpE1h2u6JEq8meL28X+p1ONsTo7abv
    NjBAHIxJu7RE7BEd2/zbLRXYaUYbZEWBU1cgAGk1Fd0zSUoAkoS249x8e4G70QDQgcJh
    l9DbfJv2FGJZaTaA5+KL5aNBSKakTwiOLEhG8fA/QfdnSayrHBZlY2dRlbaufJBt9FGS
    rdCA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1696339126;
    s=strato-dkim-0003; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=wkEd/6Cy6zxlz0xNYtgtZA9rujzyPOBqe0YaT0QbcHk=;
    b=UR9uo9p9yO0V8BYeBwl1Vyoal4Zp8OgENSuFA1GbvpTNCxGHRSQJw7j23sS5LNtmkC
    13r9oY40LQ7Fi4VTBKCA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQjVd4CteZ/7jYgS+mLFY+H0JAn8u4l+/zY="
Received: from [192.168.244.3]
    by smtp.strato.de (RZmta 49.8.2 DYNA|AUTH)
    with ESMTPSA id R04c57z93DIk2OI
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Tue, 3 Oct 2023 15:18:46 +0200 (CEST)
From: Stephan Gerhold <stephan@gerhold.net>
Date: Tue, 03 Oct 2023 15:18:24 +0200
Subject: [PATCH v2 06/14] arm64: dts: qcom: msm8916-samsung-serranove: Add
 sound and modem
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231003-msm8916-modem-v2-6-61b684be55c0@gerhold.net>
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

Enable sound and modem for the Samsung S4 Mini Value Edition. The setup
is similar to most MSM8916 devices, i.e.:

 - QDSP6 audio
 - Speaker/earpiece/headphones/microphones via digital/analog codec in
   MSM8916/PM8916
 - WWAN Internet via BAM-DMUX

except:

 - Samsung-specific audio jack detection (not supported yet)

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts b/arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts
index 68da2a2d3077..5ce8f1350abc 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts
@@ -6,6 +6,8 @@
 /dts-v1/;
 
 #include "msm8916-pm8916.dtsi"
+#include "msm8916-modem-qdsp6.dtsi"
+
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/irq.h>
@@ -319,6 +321,10 @@ &blsp_uart2 {
 	status = "okay";
 };
 
+&mpss_mem {
+	reg = <0x0 0x86800000 0x0 0x5a00000>;
+};
+
 &pm8916_resin {
 	status = "okay";
 	linux,code = <KEY_VOLUMEDOWN>;
@@ -350,6 +356,13 @@ &sdhc_2 {
 	no-1-8-v;
 };
 
+&sound {
+	audio-routing =
+		"AMIC1", "MIC BIAS External1",
+		"AMIC2", "MIC BIAS Internal2",
+		"AMIC3", "MIC BIAS External1";
+};
+
 &usb {
 	status = "okay";
 	extcon = <&muic>, <&muic>;

-- 
2.42.0


