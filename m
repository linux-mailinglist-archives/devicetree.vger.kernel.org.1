Return-Path: <devicetree+bounces-9678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B978F7CDF97
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 16:26:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA81C1C20D41
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 14:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AD4537C84;
	Wed, 18 Oct 2023 14:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="esfKvJ6t"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ECE9374F8
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 14:26:14 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11509359E;
	Wed, 18 Oct 2023 07:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4fUP0tSwnbpMdjb7K6eDxs6iBd7r7k7NIBV8eKcwP/0=; b=esfKvJ6t+VZvP1bVmag5ZIcGku
	teGa5m40L94eryStGRZJjv+iIqknS9rlLChGCQH/xtRGNAitPmoYlOAXhZ69UwV9FUFhNbPonERl4
	MAebZgOVEvYPOCe1481Z1BqA3JITu/4mN/EOrCvT5anPA71I4Agb0dsIypgEE/JbAkjkUVp9ql60x
	qhDTZoOfg4DQNHl6/7tEGhAc6/nYw4EgbqAA7nHJxbNfI/47+95fgtcb6uHt5TIbHVtR4n3kohN5y
	1VE5T4YoyeizIfjc6+kvLFaMrIyPwEOv3Gyxwo1JZwIR6Eu2nQrw8vvbAH74MVCKHH5Yo5hP0Dbuk
	u1Z/FvHg==;
Received: from [145.18.212.154]
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1qt7Ui-001paE-7n; Wed, 18 Oct 2023 16:25:56 +0200
From: Nia Espera <nespera@igalia.com>
Date: Wed, 18 Oct 2023 16:25:14 +0200
Subject: [PATCH v2 3/6] arm64: dts: qcom: pm8350k: remove hanging
 whitespace
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231018-nia-sm8350-for-upstream-v2-3-7b243126cb77@igalia.com>
References: <20231018-nia-sm8350-for-upstream-v2-0-7b243126cb77@igalia.com>
In-Reply-To: <20231018-nia-sm8350-for-upstream-v2-0-7b243126cb77@igalia.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, Vinod Koul <vkoul@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, Rob <Me@orbit.sh>, 
 Clayton Craft <clayton@igalia.com>, 
 Caleb Connolly <caleb.connolly@linaro.org>, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 ~postmarketos/upstreaming@lists.sr.ht, Nia Espera <nespera@igalia.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=682; i=nespera@igalia.com;
 h=from:subject:message-id; bh=APP5garvIkYCYGoKeB/Nz7HFYVTAgEBtnOVhnK7sM6w=;
 b=owEB7QES/pANAwAIAfIkzsI3VuKtAcsmYgBlL+rqbY+CNQ4F3cGM8ql/kDdJZKUjABlDYFH80
 shH2rJJSiiJAbMEAAEIAB0WIQSBPDomug3slDJEnubyJM7CN1birQUCZS/q6gAKCRDyJM7CN1bi
 rcTmC/48bMPMbeB5pxmNctsjV+xgc26XscB37Kig/tDHgtWSmx7eMs3+oJnePffp33y/zv9DEol
 RKbqFfRtJUykLpTqDZOU11oi31OrkPJpJMBlzpEjUGswHA+uL3nhh3LgKw9PjbCzJlPepmG3aA3
 qpO5uMhrFLdehJWCknxk3QiViZBAG412RAUVCYt+zEu7zmRuCeL04AakBE9odG7yKKCSsagP6xL
 ZjSbgbP96RakT8sD6+qH1LkrIjdCeLqWJH4b0mcBsvEYlC3NmNZ2O28dolqD/NiOFTiCCqK27Dl
 koYyi8wLzmagjks+UH2iD6py9WtyBxrBldTCzIClTNGJUigT/+npxHssMta1MXeoOQHXf6zjLQd
 ZYX8+TiRWfWxcE7DzGuGyNDRqkd0EbqYTrCrzF12GmC0G6/SWNpYrJeLtTqtQAJxDLdxXAVhd2Q
 kA42cAZJaC4QTj2+pCoCby/4GmRiO8HUneOUuGbnnINExgBAJ7fj8wduLTKM/loltOs7k=
X-Developer-Key: i=nespera@igalia.com; a=openpgp;
 fpr=813C3A26BA0DEC9432449EE6F224CEC23756E2AD
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

pmk8350 has a random tab character inserted, so remove it.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Nia Espera <nespera@igalia.com>
---
 arch/arm64/boot/dts/qcom/pmk8350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pmk8350.dtsi b/arch/arm64/boot/dts/qcom/pmk8350.dtsi
index 1eb74017062d..f0ed15458dd7 100644
--- a/arch/arm64/boot/dts/qcom/pmk8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmk8350.dtsi
@@ -22,7 +22,7 @@ reboot-mode {
 		mode-bootloader = <0x02>;
 	};
 };
-	
+
 &spmi_bus {
 	pmk8350: pmic@PMK8350_SID {
 		compatible = "qcom,pmk8350", "qcom,spmi-pmic";

-- 
2.42.0


