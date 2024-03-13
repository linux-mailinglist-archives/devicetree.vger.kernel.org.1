Return-Path: <devicetree+bounces-50255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 532D187A7D9
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 13:54:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E8580B23A07
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 12:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 295E44502B;
	Wed, 13 Mar 2024 12:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="YoTCUFbT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9253F9C7
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 12:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710334418; cv=none; b=HdOtYFieQWr/0J5Gxsa5F5jC38oJ2AKdo6Tqq8h02JweqMdd+Pr0PZcSy4U2E5GYFIk+3jZXnGDHxFgKM3dR3KHQ06Pb0toIURDT3T8poxSQ3mXmaybhtikSGFmcoTbEoLu9j3HySxGwjniXgDh1r8cu0MgjZCfPZdbFvz9hR7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710334418; c=relaxed/simple;
	bh=t9ETQhsMi3JCo6L9lAIlwLKX3YACOoMJvy5t+4f3Db8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UyEF4iDkE6wYKJBEunN+cu9w495M1O0KAbxfUePpQLy4J3vnsEgZV1EGYhC0qh/7Zk8HNu2h4I5YPNMZqPtaw/lndiG7h3+kIUggi8LX2PESJnJNy59JS2N00FLV5+V8oxqtGZme3nvzlAUdsH62wevnHF9jQfnypNmgk6E0BwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=YoTCUFbT; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a2f22bfb4e6so980421866b.0
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 05:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1710334413; x=1710939213; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bxb/4unMwiiw34slo/Lxt3H8AqpbzUye2nUxDtdgTWI=;
        b=YoTCUFbTX79y4w2cya5MbDUdpBP5YG6Ec9fKbJK24RprL5dC/dG67c9GrNNw0/VhKA
         2Lg4GwvGSFt1ORNwHCGkO6M1Pm/Jc1L0kVUe49xlIazzitv1p+Sm2sJsYC4Rf+nS9Wvi
         MxB7mwGZXsLQPjwH3RJ4+loKY1hlUsXwoskwBhZ6KpGEtPdWb+NMtKBwC61RFZdLOuoD
         uqwn5ffC9C+1nY8Ns06j/vPkLL5d5LNLIzOHV3ksrIRMXTf7EaL3x+xOkHmJTt5LqyRe
         IxwZF6sB3ci+NbCwM9jYYofP46fO/tga0AKcMrvu/fns0cAuKrXPIHYOzex9WX59+8Qt
         i+eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710334413; x=1710939213;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bxb/4unMwiiw34slo/Lxt3H8AqpbzUye2nUxDtdgTWI=;
        b=O/VkkLK82/qQS/LgULAiUlPwxR0cvU8JZxWTaeBFYlfrI7e531Ou8unaSvbABNVU/J
         j5jrOy6HgG79bomoLKgjJ8cy9COzJZixbJCkRdkuxAv0WGt68lcapGlgsqAyAECbmgVV
         I7OH4pmvRb3L1q5J9h5DqgWOQ2XS0ArdRk3XrPDCMxluMeV5ex1RsDOCOZhsrsm5C40p
         eA5ocjipQbgwa94F6LMSvc83BwqMIgZj+H7vB7XlcOw+Ljvv+y6o3uVveCfTgZLWIIJ3
         TTnauDifY/XYiQmi1Cig8NXjw+4tvXczbB6Y8FO19k1qFC4489coT4l+3UM8PR1cGwR2
         78pQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSVkUIQyeR18cSlr5JA4k6MShwFUC4sNpBixaiDZsx0ueSJnbr4hCcMhf/HVxdBQk6qc5Nc27Hcp1Lg/ypCYbOAXWyYYCdShgvVg==
X-Gm-Message-State: AOJu0Yy1G3mITiFJ0AoMQnanSxRh4v2iM7vq84rg9y7JQJL6/EimDBc6
	SqW8CwTYxY/2WWgYj79trA+jX8I2zbCbpO+mg3NWAuKfUKD0RfIVpG+MyqMsJ2FRbTnKWGkBjZU
	5
X-Google-Smtp-Source: AGHT+IGZBy38RA1kd28N7FqIYB5/MHvNN1GPfLWolHWY4kG6L/symPCXVuU4L002dy3ms9tGKZ3beA==
X-Received: by 2002:a17:907:cbc4:b0:a46:4e73:9c67 with SMTP id vk4-20020a170907cbc400b00a464e739c67mr2151230ejc.68.1710334413569;
        Wed, 13 Mar 2024 05:53:33 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id jw22-20020a170906e95600b00a4623030893sm3249098ejb.126.2024.03.13.05.53.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 05:53:32 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 13 Mar 2024 13:53:15 +0100
Subject: [PATCH 2/2] arm64: dts: qcom: sc7280: Add inline crypto engine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240313-sc7280-ice-v1-2-3fa089fb7a27@fairphone.com>
References: <20240313-sc7280-ice-v1-0-3fa089fb7a27@fairphone.com>
In-Reply-To: <20240313-sc7280-ice-v1-0-3fa089fb7a27@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0

Add the ICE found on sc7280 and link it to the UFS node.

For reference:

  [    0.261424] qcom-ice 1d88000.crypto: Found QC Inline Crypto Engine (ICE) v3.2.0

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 83b5b76ba179..3ea5f9cf040e 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2314,6 +2314,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 				<0 0>,
 				<0 0>,
 				<0 0>;
+			qcom,ice = <&ice>;
+
 			status = "disabled";
 		};
 
@@ -2336,6 +2338,13 @@ ufs_mem_phy: phy@1d87000 {
 			status = "disabled";
 		};
 
+		ice: crypto@1d88000 {
+			compatible = "qcom,sc7280-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0 0x01d88000 0 0x8000>;
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+		};
+
 		cryptobam: dma-controller@1dc4000 {
 			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			reg = <0x0 0x01dc4000 0x0 0x28000>;

-- 
2.44.0


