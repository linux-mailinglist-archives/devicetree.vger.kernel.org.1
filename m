Return-Path: <devicetree+bounces-189408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF011AE7C5B
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:21:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CEC1A7B3C9F
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8778229E0EF;
	Wed, 25 Jun 2025 09:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="kJ9NwL2f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B3529ACC5
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842883; cv=none; b=RQxHyQxlsce8A7ZN+Nuttb7kiHbnCkwfyK8jA6JgJmxcUcXjogpEvNEwHlh2859m2CorefWtZNvncpLEfztreeZL3VAxdVtsZTpK6pP+OwUXiV7JGpBd5bojKtFy2POFBD2FDRzN2s2Ar/QPRwVk21lIGF67A+pEbQj2gpUB/QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842883; c=relaxed/simple;
	bh=eRKXKF6mMaUPaJ+UjU/8hav2GlgqkxDfF+0UOVp5P9E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OHqhJB4N8rodeoGvWncrVrUkaJ1BVJedg/Zqus5Q9g84yH6OBbgiimql2W82JNTJwy+yCm8xld8NvYfEa7iROxSabH919N0SC3cH7g3UTPHJUr1d+CmPGCfqeFAcJOq4tc+MgMrL5IVhhG82J+Sg/tzJK577KL5fnAGtK2g4ZzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=kJ9NwL2f; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6097b404f58so2409926a12.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842880; x=1751447680; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FtEbaqMHRXIEvNFaPPE5wU/cQa+kH4fJ7i9D/u9rEcQ=;
        b=kJ9NwL2fWBlgCQL8StW8DxvLDYbUezSBxrRxtKKc6pjD632AHbikoMbQLqGa5v9aIX
         nAe2ECD0sz+reNXmWyYxaV995myKwBTTF3PU6r/SGPobunjR28jOmQ6KsGLdtZO3Bxgw
         uaF7HhwQ1i+AtpLokfNDg4KAsy4Uj4tTINUkm7EgR1FmPlU6CusKGmxdw/+bo8qmwzaH
         p/p+1lonlGRqRHfM200n8qQeFXZJyFezo3R76F5l9ECLiMFxpUGlUgn47JAI34xrBk9M
         0tsl5hVmN5HEM+5yBgSG79+JEhrAeBZeZXRWxc2iTRtv2nlNx7vtm7H1Z3dVouY75RMa
         Dn5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842880; x=1751447680;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FtEbaqMHRXIEvNFaPPE5wU/cQa+kH4fJ7i9D/u9rEcQ=;
        b=uDOhOh40Lz4mppmmea0ciVTF3Z37BqBOrvssZzq6DQON6dccUBPpZrUJ02krvi/Pfd
         92rtJOJHBBTfd+YNbbwHlcOCWNXFc1wrehilumrj7e9EqvYTm9Cgg2VHSBh559yizn73
         7fJ9Oo2+tD4On2Mhko8ImomMyOweeHadFXvd+Phq7SMf1unZqD/hBIAt+KD5X2Tew3l8
         6u4u4C2yQOyGtkQMpILm4zmqRpGgBL1l0iqP0qssZNqFhPNQxVqd/wUTBOoR2mGheyBx
         BbyyEPR/R69eliyPQfusBjRZ2J+p7liWVCXf4QxsKQkHdfO/SWT8S730xeh4Ep8VEHPP
         7xwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmMC9GjyQae1nAh87PRV7UgyC8T2K/CPfoHi46C08RpAPwrQ06n/oICvgryw5yu1p8JDyVFkzSfTcx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw76ax9Qsv24HXFHkbUKYJGDfHP8wN8rra87adqdIMxgdaz1koZ
	XSlREf2gw/T4NdJnpS7xc3fidC1VQZZFlfUSVLXDawD1LOENKjBzGi7zJV3V9uuXzVM=
X-Gm-Gg: ASbGncuQEc2+27+uh3SMBj82RMohTEDSlaF4SIQhrmyNmiWb7jNTgh8RpiIhyytRuTW
	SJ1K2rG6uh/X79I3mYjurXuXpjht32sXBV2MCtmZSrolyrC1g/IHogyqlcWMjAMP/kzCgzgAvnb
	NsAkNirZJQLTlL20QoOqGW7IH/qtryjEpRkn857BCPbGw1EmxP2wojEJoQ2CNKGiDxHzY5oNDI8
	Ah2+GqnutqTYkC9NqjboF8hIcTGxqXLcnfnWWtiY10NLFOWNrWRgMVIIWcKH693WHO+PxlAXirI
	yLffBnprME6EvFhuMboSXCW1uxrr77rOu6DZr1X55KOFo2nV51si5Cs9O3lapc7pfU92zn9AFHa
	heAHzdB1CLjQtg10sA8YAteN7D46LJ1GS
X-Google-Smtp-Source: AGHT+IF1iuoBJ5/IWRuTBr2H+764qhYUfliJ6K8sCXaPslobIM/iwfyF3QHm7EtNXEH7KW3eJUZwvg==
X-Received: by 2002:a17:907:1ca7:b0:ae0:c215:5be2 with SMTP id a640c23a62f3a-ae0c2157b5bmr180401866b.30.1750842879941;
        Wed, 25 Jun 2025 02:14:39 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054083c95sm1021480166b.91.2025.06.25.02.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:14:39 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:29 +0200
Subject: [PATCH 1/4] dt-bindings: usb: qcom,snps-dwc3: Add SM7635
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-eusb-phy-v1-1-94d76e0667c1@fairphone.com>
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842877; l=1298;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=eRKXKF6mMaUPaJ+UjU/8hav2GlgqkxDfF+0UOVp5P9E=;
 b=wpxdiMwdD1qjIVMibt8wuPqXRsBEHwnN9wfoc1mcjsqkiHBTcfoYMO2yrsvY9XvCAP+0AjcCW
 idXpk282ffCBG6St4/1bJgt6brzsRTr2oSi/pUFKtu8GSwHflZVg6P3
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the SM7635 dwc3 compatible.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index 8dac5eba61b45bc2ea78b23ff38678f909e21317..07ed7c68470d7c951e3a4259942dfe1eb257b939 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -60,6 +60,7 @@ properties:
           - qcom,sm6125-dwc3
           - qcom,sm6350-dwc3
           - qcom,sm6375-dwc3
+          - qcom,sm7635-dwc3
           - qcom,sm8150-dwc3
           - qcom,sm8250-dwc3
           - qcom,sm8350-dwc3
@@ -345,6 +346,7 @@ allOf:
               - qcom,sc8180x-dwc3-mp
               - qcom,sm6115-dwc3
               - qcom,sm6125-dwc3
+              - qcom,sm7635-dwc3
               - qcom,sm8150-dwc3
               - qcom,sm8250-dwc3
               - qcom,sm8450-dwc3
@@ -453,6 +455,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sm7635-dwc3
               - qcom,x1e80100-dwc3
     then:
       properties:

-- 
2.50.0


