Return-Path: <devicetree+bounces-44054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9701585C4FB
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 20:42:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C8F7D1C21E1E
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 19:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBF7814A4CE;
	Tue, 20 Feb 2024 19:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dcij/HAZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D7B14601B
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 19:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708458133; cv=none; b=r/soYFaQEfJ14+Di6xELSvheMNPQKiUc8UdoRSrTIQB2XEp62JugcXJoqaWqhRSmJyip+wIZJgGeR/xeL3OWN8/5zedBgz6K/+UsaRPf3IF0/32rTbIJV06MXcxpL7KOWalrGxESpCqOLajcOgJB3Xz2PXwi+8lk2A+d/jsEZ74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708458133; c=relaxed/simple;
	bh=SIo7UuL857cJN/BAk2/OFWYIDGu1F5bYNPOrEFilIxU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vi/ZcK/K5JqrH6UR/HkEie0AUYBce9gB/YtjWiYzjJ5ZcRNct1GNMjjOrHIbBU7DiMwGNrCmbaIY2mnLWxOyey6SoPeoLknhKDPV4jRYGG/ZMPn3ziRUiim1G0EuH4kdafYqF03jQyfljM+HOGE2N/MA+XKWd0YI/EybaoeFTjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dcij/HAZ; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-563d32ee33aso6431246a12.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 11:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708458130; x=1709062930; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=68h+LE3V0lr/x+lRFuw+jGun3H+4YcH4pkj7W0Hoxgk=;
        b=dcij/HAZxh7lVadtRr0RCnmRp87PMCkNLF6iPS5DpeWZbrNOHJTuoUTK/Wpt/QcaOM
         As+AyqiI4CLSCzU7OQK+qS4hXu09PXg9Nt7JgBh9GswS4UaIl+1pCCWMVvSaP16Nvf/b
         +8BHrKYXViMHYBTTsMjFq35I4uFxrGb5jqBINrXVoW7xDuJL3O2+EUDUZrnvHhw8b/XP
         cb3dc10P7XUq39g6W4hhHqo63mkUDGqbF5niuhN7A2+0SsdvwxlJxcidyud/cpmVxmzH
         kRNIPGtfMHadnnzbkuILSPerW9NKCOzTwWwOaHA2E3ysOK4Sj5FO0mEDR6Q1E8BI/Qxk
         RG3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708458130; x=1709062930;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=68h+LE3V0lr/x+lRFuw+jGun3H+4YcH4pkj7W0Hoxgk=;
        b=j1b2kbhmzg8Pv3800oX/2BNCqUGS0mEhgL9MwDuGSfXnamkHd4ZewuZxJse6h77ww7
         nC7TyN1he6FU52FITirSIIDsyX+4Y+1qBeAuyFyw3q2MYLh9ZM6eTolxAkckTzwC4sgE
         QL3c5Sm2D12bDJMdzhhs5EH7AzgJdy0In1gDFd0pd7wVuKAsHXq1KLGKJkgvEB9bD2mK
         YX9406f0kAhKPuC/NyPKIUyZy5mQ4PYjbDkBerfz4Fxaf437hM+vgI2nRYt4cQAYeQ0b
         iia5M1hVnUexAGkPqfq7HZTC6Qm9tmlVK8KEpMcLm/MTwgTJe6SlDdEnzRSRItvpNGxp
         zN/w==
X-Forwarded-Encrypted: i=1; AJvYcCV4yX05gJbJ4QVB1ybvuldF12f5NxuKIrGOTx6uLmEisdvmv3XJPVNKtE4v3EuODYEAy/Y8hwm/vmUMroQ6JPGytBtseb4S3IrpxA==
X-Gm-Message-State: AOJu0YySJZxHHgldPnRsK77SNMIW96ZfGtUP1sb1ObmHazet8rwymq9H
	ioSgFDBSkcSGiIp7jDTjkK2yfqOUQFG/eapnMmTU0M1CVRQqnXe8b9YPdidaEpc=
X-Google-Smtp-Source: AGHT+IEmN3u9NfNCJHi5YlS2KPIwUVANNjzpvxdcGsi7+HFNP9uN+rCikJJbcI05RahxcW0koN940g==
X-Received: by 2002:aa7:d899:0:b0:564:4028:e2cf with SMTP id u25-20020aa7d899000000b005644028e2cfmr4651208edq.24.1708458130436;
        Tue, 20 Feb 2024 11:42:10 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id c1-20020a056402100100b0056486eaa669sm1906822edu.50.2024.02.20.11.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 11:42:10 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 20 Feb 2024 21:41:59 +0200
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 compatible for SMB2360
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240220-phy-qualcomm-eusb2-repeater-smb2360-v2-1-213338ca1d5f@linaro.org>
References: <20240220-phy-qualcomm-eusb2-repeater-smb2360-v2-0-213338ca1d5f@linaro.org>
In-Reply-To: <20240220-phy-qualcomm-eusb2-repeater-smb2360-v2-0-213338ca1d5f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1000; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=SIo7UuL857cJN/BAk2/OFWYIDGu1F5bYNPOrEFilIxU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1QCNOAZipYAXjBdAijs80zBC/8NG6RFfVTGz9
 97PbulbEI2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdUAjQAKCRAbX0TJAJUV
 VtFmD/4pQdUIgFWfHGlCQU/z5+p7XGVVkaS82l5b7PjySJRSqhcG0utgcrUheaUccIIe6WKt+ud
 aneGbMEBXiqaIfLG7jwggwntMT0hXUhf+0GwqznWXid+XYOClUgXvHB0tLP4jSsTXYvASZWdYWJ
 ovUnzG20wzUwOjcyP21L3IVCWxw33+CVDyj+GDycVQ3a7TePPhiOI4FJkonzk1wnBXolaetI08Q
 HBSCvqic7GPndYXb6iZUApNnL6Zqb+nLbkcIU0Kk2X3/zukCvOij5OJmlnmiEOSvSecYODXcyJ3
 GIErepa7iUsTU0UcUSYN8NMlM1ZaAhBX3Px9+9A2pxWp9IVOvvs+OwVxjlNw9/16XgYj329wTX6
 dZxSNXptwFjYAZaQGoioxUTXFgx6+iKZjtUNsTgdzgrrauj1MGlfhAu8bh8sIm0nA/m/jFqaIvH
 a/ZAKjU67T3bsDcYu9b0XcTJXOnuItoqgc8OOYtEU5McZss3W6uiBvDRBYt7uEv7sHunxzShGC8
 e4tLiG4a3TYrIhyvAKSzJaNw3EoDkFFjnreg+/Cal2BVZ7gbVOtRVej888ZNIH6eX1CB6oVPmvp
 TI/9AM13TR+/DMQziN4bdQZNgtWJoZLemkLjQVRjfMzxw0UOw5LRk9zgowrwBWyodZA53LiuLss
 KR1/B257ikB506A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add a dt-bindings compatible string for the Qualcomm's SMB2360 PMIC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 24c733c10e0e..90d79491e281 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -20,7 +20,9 @@ properties:
           - enum:
               - qcom,pm7550ba-eusb2-repeater
           - const: qcom,pm8550b-eusb2-repeater
-      - const: qcom,pm8550b-eusb2-repeater
+      - enum:
+          - qcom,pm8550b-eusb2-repeater
+          - qcom,smb2360-eusb2-repeater
 
   reg:
     maxItems: 1

-- 
2.34.1


