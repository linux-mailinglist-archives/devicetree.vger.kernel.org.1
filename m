Return-Path: <devicetree+bounces-195756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 560C4B02FA7
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 10:10:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 958DC1747D8
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 08:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DED822488B;
	Sun, 13 Jul 2025 08:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="4yA6yoPi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01CF223DEC
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 08:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752394081; cv=none; b=A+xv8PX8bI8kTpOeOV0v++YvMJna6ANQTyr2lYBCkZL1jiCSlXQYqUa73GjMmPqOBcPG5Z+ROa6GDKkCcwXFFkuWiM8X9LzmbuQcxModv1VeSz3lsNwfsernnM60IHcBrskItuW0V8gBci/cpu0sjhGXpL3tTxbej97eZUPmsgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752394081; c=relaxed/simple;
	bh=yPJZUHzJ6XbbvDpc1ODgE88aN81oenBu6+oDbLZi6Fw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E7S1kqUpQRUxz29bjkY7CZVm78F3S5M3Goy2lNTl3vILygDAXZLM2rbELrGKM5tUlMzAH2IQz6uY79/jVk2/6omqGxfObLDpUB+gGMws3XafFVZ7qgaxp38C76W1l4xCXJsOEE/2uDEal7qQnm029VkymUKqSXlFIpah+Ja8uIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=4yA6yoPi; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3a51481a598so1774802f8f.3
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 01:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752394077; x=1752998877; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uq6707S6F7Ph6Bn24TeKW5JdfT2AUuElQEXV+Ub8YnU=;
        b=4yA6yoPi6nA8XogS+h88iocKe8iUorOKdq6CEkffaek4fVuzES58/+4wvxf4x2zBOH
         h59crMtSLFTngxNZTVnn3T2+r0RaaubOUyy/rCr9X7EHaEvR8u8dK4bP29Z9kXPsmXcL
         qsTZMyMKkwoUzPhm01bf94RJC1DYW91N0qEd9E36BjrCNJGG/BZCA1g5b4BPL5vWaKOl
         uPr3IYx0cfY0J7Fmfx0E/FKdGV1OKeViBvmU59kMdXChP9JwoHjoKRR9udVx+fZOHArG
         IaK0ix0NWG2L8t6MA2HJfTri3/UBOq2gwxiE4MIvcuxNb+bfTT4DI9mTVTMIieuUxwXW
         PjBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752394077; x=1752998877;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uq6707S6F7Ph6Bn24TeKW5JdfT2AUuElQEXV+Ub8YnU=;
        b=hC7LF5QxTLiIxvyrCJzAtcDZB+TsV82LNSUvp+NoF1+rVYuyCjnncFK2fC2smR0vwj
         WRxX7L8che+toNjezcLvoUsny8cBmcTjpfbFSdS3RkYKsXEyaD+dwt8ZcIAEkhcbYldf
         mBJSWTgrjB/qOvBE3P2H3q+a7yW1DLtwBV4lcoZsosTxC1zXgRAnswNb85NTpVLquzZM
         s2uRRaP0BRdB1g7vEpT66ZNwp2FWtBqPlVWqrFiyLwwVrhniVQwQLVsCyexsGNCyjDWl
         Dsep+DMlltesbwqUCt2fnyNaFKNRhDkN5a7ms3BbNLIDqefmAtGON4YVnLBZdLSwt/YA
         XDCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVn+TxARf7MZ6UDRTQodBkGFLDMQyFvIvG0ifmkgYU+HZWe2ozFI00e6R3DR7GTAOyW5uSZ7EdpbJx5@vger.kernel.org
X-Gm-Message-State: AOJu0Yyzi60rxKqlBGrbNQHB3Vst87CewiwR2V9plcyO+X16n7eSd/o0
	znL0ZtFJRwl/KU5HYThQhYZ31Ly2mT2OiyHNM4Nh7yrf8YoDcdvZ8BuIaz5U5R4ZD3E=
X-Gm-Gg: ASbGncuRTTwhjxHW6k24neQvOz4d9mviqEso8nei3NTaXNm+GBb4T++Zduyaz3gF3XK
	K0f3qunDZiT/XJGYR9J/UYDPWzvf+btN03n9DBrUwHGMkFXwJGZEZ9B6SkeaJvRUxmV53RfaVPh
	rvdyDvq3IHH5at72YrDG4TSgpUzi3VaqQ72l8dzopG3rkHarPJvy+2Xdu5BhZAvrgFtio8pTKTT
	Id6nupEeFrNgylWeOEAERNNIdE4ye6LcpERYE8xZst0SaUG848h+8Y/mtfSfK0s1j+OrIaw+RDe
	BY7EAzi38QBr1FEjHErHWTUTaVbVZx84jTa86txF+Ge7pw5vWMueIeKhQ2DJY221JSeljLEl0c6
	yhlm5qW74Q7S3TEU1wGhNbX69OWmbewLQjib5
X-Google-Smtp-Source: AGHT+IGMCdx7d+JV7VT+NDUL2DlG4mtQQoySy69Gfp3Ds2b0lZ7KbU9s/Vv3M69/0Uqu3iIlOqMa4w==
X-Received: by 2002:a05:6000:490e:b0:3b4:9dfa:b7 with SMTP id ffacd0b85a97d-3b5f2dd49c9mr7880135f8f.25.1752394077215;
        Sun, 13 Jul 2025 01:07:57 -0700 (PDT)
Received: from [192.168.224.50] ([213.208.155.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc22a8sm9386608f8f.34.2025.07.13.01.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 01:07:56 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Sun, 13 Jul 2025 10:05:34 +0200
Subject: [PATCH v2 12/15] dt-bindings: arm: qcom: Add Milos and The
 Fairphone (Gen. 6)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250713-sm7635-fp6-initial-v2-12-e8f9a789505b@fairphone.com>
References: <20250713-sm7635-fp6-initial-v2-0-e8f9a789505b@fairphone.com>
In-Reply-To: <20250713-sm7635-fp6-initial-v2-0-e8f9a789505b@fairphone.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Das Srinagesh <quic_gurus@quicinc.com>, 
 Thomas Gleixner <tglx@linutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>, 
 Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org, 
 linux-mmc@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752393945; l=994;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=yPJZUHzJ6XbbvDpc1ODgE88aN81oenBu6+oDbLZi6Fw=;
 b=ymzq2LdMSZzjV86mE+IAARRAmbShVDeXvVgWjbmxw1Q6I+K7W0/9mujh7mmVhB2ZPk3JCIpSp
 C8m500WFnKfDTPHOjcBz48HP3rjsUZ2kL+OAwZmfz//lxGpiwkj5SEo
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the Milos-based The Fairphone (Gen. 6) smartphone.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 56f78f0f3803fedcb6422efd6adec3bbc81c2e03..38871129f8a271bd5005a01f174ff5127a3faefa 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -34,6 +34,7 @@ description: |
         ipq8074
         ipq9574
         mdm9615
+        milos
         msm8226
         msm8660
         msm8916
@@ -155,6 +156,11 @@ properties:
               - qcom,apq8084-sbc
           - const: qcom,apq8084
 
+      - items:
+          - enum:
+              - fairphone,fp6
+          - const: qcom,milos
+
       - items:
           - enum:
               - microsoft,dempsey

-- 
2.50.1


