Return-Path: <devicetree+bounces-32752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D6A83077F
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 15:04:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C71631F249B4
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 14:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DF48208AE;
	Wed, 17 Jan 2024 14:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AWDUBRXj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B2520312
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 14:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705500269; cv=none; b=KwOqVMMHxb5ucbUSLnjrSP15Gdn//8OKody90LmU3zcDDPLTP9v7VfZKxNaXzZ43UcgYp1d59vFm01QvGIhK/H0yq5aU8ypqescacVJt1emYv9sMwZcCrKEEAU9UQZ2xmYJQbU4ELxW2OvjlVouOfJgtm4SheuXjtjAlKnSntAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705500269; c=relaxed/simple;
	bh=IIYXjLUeMbWnutvTtYPCUZAo+vNBHeW5XfLCEiQbpb4=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:From:
	 Date:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key; b=D4TcudOJvyXU9ICSmTN7iOBRIW6rtFo/LHF1dzfsq2x2ocEkm6pFvYlFo2yrPRdfN8UVUoPuBDo9SdM+tg17v2tVzf0PuZbD3lv4tnxqV920PRZuSL5Vod0u6aksiPKguRfGuVJYot4qUGy72miiBMvzblFtzSbmh7M8qJREp8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AWDUBRXj; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-50e72e3d435so10671901e87.2
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 06:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705500266; x=1706105066; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=772vTg8hfgBaDB+Qe7kc5uSF/E3F4uLPYVgiAcwBFyw=;
        b=AWDUBRXjemCKjHXYqCXMjvtkAfocQtPK8Ovj5eH9ri452qlYvQ4+q2UoKR1Q8unfdL
         ctWEJHKYfQkSpCztaMJSRfyeHbt2llnbYwIg33yuveV6p3dGbh8j4TmsvTUdi+GxIhFl
         wqTxJKf7tcL4Dk3pSeQDKSXDHXO0DqjtjC62wYn+jKQgkieANVd6qai4tmilFIbv09dz
         1njF/iuFP3EIBtwIot79GcdS06At2qyWciufVE8qdbpHDJjaE0mFY/Ecii47Xlfcut5c
         r1h4EqzB2Pw/qy6AE6xDkyv1LFtZZKZfdoABF42a+UtUDxhDwPBo3dY8F/SUL4VsxYPO
         kucQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705500266; x=1706105066;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=772vTg8hfgBaDB+Qe7kc5uSF/E3F4uLPYVgiAcwBFyw=;
        b=U3Ua9p7vTALX7UDMBSRWdgxtuuL71r4ovvdfl3lMmG5NrZ9yFOL9WlHjKRaMm/tOWs
         IMLD0vvKWtoZz6LoSN/DYEtTccq/Sc2AmLZnRwDqhiYqxBd7TO1euzkBYWXZ4vUZJ1UH
         VBcHGIl0iJxcgP0RduVt5cY0QMfKdLoc+eYmCfQBAHOyGw9BK7bFPFG7kwuyX8lZZtq5
         STsyjYtr2qQ+2QxDT5IIaHd7J5VyWEi3LhoWX4vjnYFV9FLs/3tn4VcLTpNv2ABfrNk1
         y9ZZWBr8v+/z7z0g43Se4aQLCNE8gaiCpK+rRpRIjoBuaUguKLp7sjuAxlgcdPQ/eNqq
         T+6Q==
X-Gm-Message-State: AOJu0YzjWvFvYy2PZhtJHas/ETvVnK9uL1LqtWizIIZ3xyLY5Lr6xA8A
	sFqpsfMZiUqwJjbzxeVQnkB/PJ00tfgnag==
X-Google-Smtp-Source: AGHT+IFkPW0tH2jtfBfz4Aip9qhxOYVsIvceiz48wRBf771jjy/Lori/rlGUHmxrapPVDLJh3wJXcA==
X-Received: by 2002:a19:2d0c:0:b0:50e:82e7:912b with SMTP id k12-20020a192d0c000000b0050e82e7912bmr2731161lfj.138.1705500265979;
        Wed, 17 Jan 2024 06:04:25 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y29-20020a19915d000000b0050ec7a26420sm269711lfj.204.2024.01.17.06.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 06:04:25 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 16:04:23 +0200
Subject: [PATCH v2 2/6] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: add
 TCSR registers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240117-usbc-phy-vls-clamp-v2-2-a950c223f10f@linaro.org>
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1670;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=IIYXjLUeMbWnutvTtYPCUZAo+vNBHeW5XfLCEiQbpb4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlp95nRXFznK8SZhS163IK0W66kvR4acev8hG7T
 X5LLlH1ILiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZafeZwAKCRCLPIo+Aiko
 1U+7B/9zuQGfbIQc1PlKK3gMFlCrFkYzIUTVKQvONlpjQVXipXYInTZdFNHQpweJi+j+0Fqm9ge
 zQbW7MriaaywehjRX5Uo0zmLwPKxcD16v0l73DHPFhz2Uf4a/sVyhnjg47DmGYWa3TETWak422v
 wCtNL8bv0RogEl92ek/U9Y3oWWMcH1V7L625tkIuhp5UX9vgkqeW7Nd1xVSaCX1R/zvTcO8Jvab
 PWS94mlciV207HIhhADnY2n26YF3tZOfKgTNTlm7sfHYQzYaKhSq33CEDWfej4qCxdCBMV6IZVe
 rwaBV0PZ8gIHo8nOYfEl4oApNo1vBQ6Ixwingqwk7L/PI0tg
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The QMP USB PHYs on msm8998, qcm2290 and some other platforms don't have
the PCS_MISC_CLAMP_ENABLE register. Instead they need to toggle the
register in the TCSR space. Declare the registers accessible through the
TCSR space.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
index da5d4cbca24c..140843347d1e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
@@ -55,6 +55,14 @@ properties:
       Flag the PHY as possible handler of USB Type-C orientation switching
     type: boolean
 
+  qcom,tcsr-reg:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to TCSR hardware block
+          - description: offset of the VLS CLAMP register
+    description: Clamp register present in the TCSR
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     properties:
@@ -78,6 +86,7 @@ required:
   - "#clock-cells"
   - clock-output-names
   - "#phy-cells"
+  - qcom,tcsr-reg
 
 allOf:
   - if:
@@ -148,6 +157,8 @@ examples:
 
       orientation-switch;
 
+      qcom,tcsr-reg = <&tcsr_regs_1 0x6b244>;
+
       ports {
         #address-cells = <1>;
         #size-cells = <0>;

-- 
2.39.2


