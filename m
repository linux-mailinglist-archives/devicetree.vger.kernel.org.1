Return-Path: <devicetree+bounces-150793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D696A438FD
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:14:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 367EC1615E6
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 09:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F0232698A2;
	Tue, 25 Feb 2025 09:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R/FGa+3V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196D326983B
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740474353; cv=none; b=O2iysWon7/S20an/EBnzhxK4nqpK+iunKDLxA+G0b18vjwRwOKPfecmYZ+u7KNMkeKCqJ9arxgfm1V2Puhw27NgiWmgSWIPSJjxES7ULGhBjEI4CmLtdL3KXeAKHv4YLLgC+xOQT7yU2xsfd7Sv5JTw1/52LyInOhjNMpt+r1Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740474353; c=relaxed/simple;
	bh=Dz5yNmE8eSdxa0CmdJl8w6wvj0WWXjGEMcH+7qjSCmE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ku9uUigfVnvtC2s205VQ3vJuUlE33AsofckBN1vUMg7mTyCTNuR+lbXC+OlSoVJBxSubY+Xoy0pssdQunwoQ3YLbqySpIdSrKsCdcR38bEgb00H98T+SU/RMpUXLXnyyDY24Y3mLTiltIKFzwu4haHcmX0GdXtkpErz1A5/NC7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R/FGa+3V; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-abbb16a0565so68177966b.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740474350; x=1741079150; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fCfhYp/tqNoV2tEavI68DM4qQ3+PDh9QaJPfXDvyBHc=;
        b=R/FGa+3VNGlsdc8bJjGQ49drRlnxRJ2z4JmPXlB5kXuPmeFbbnuieqpl7J6hHiHehv
         /cnzfInXRusMVV35qtUWkTPrFYHFhna4QxrNZA/q4gG/ec3PHIwWo7FLNulPaVaNNnQS
         L+h7S1I2H6ast4vKDCeagfap8fZYiqZielH8BKFSyYUFFnd1AkPVVHJ/dwjUjfdMJ00p
         Cnr4uf1Dphj5U77sabmQrm8Xtl89eBwlc64AQqOHnb2Dq2Js56BoxfwD+433VP4D8NTf
         PQ+SfNogYllh1FKCK9uSzA3b1H6ZtwXu5s8Jd16IbeKkHJn3T7PKN+WIrFNFBVEhTxjr
         BiKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740474350; x=1741079150;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fCfhYp/tqNoV2tEavI68DM4qQ3+PDh9QaJPfXDvyBHc=;
        b=REVXn9oLyQaBDqFfVjOZwS4h5UoR0l/wjm1XT9+ubOXDfLVLZKj0YnF5rJxLPYsnG/
         sATIwfQ5KW25bggOMcgT6DxXAvt880qkN08rItyjkwxSgQejcZN4mLU627QAcxh4W9k0
         aBwbVzj7hU8xfg4RP+D3HNHDDuF3daaePbc6RpzrJxEM1HXYGeUo2sXdzmMmXwkRrlot
         iRWuVcMiFM1s97psOlZjkoR4x1/++oldFsPbfbzg+1gyHp5I6UXntFaP1fB3wr1MZS7M
         0yPMxiu4ckdHiW6dPZqoce8IvuNE++I7nFZArh2u+ALP/FD9k8sJT7KKffXrnZDB79Hg
         VY+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUA0duQkgO64+01ls2Vy6aaN6Zg8aMIY1T54eFYvuNl21J4g4l9khf6EAc4vfhXFio8iHqKHZsgqg5y@vger.kernel.org
X-Gm-Message-State: AOJu0Yyhnvo32vJ3dpASrcLLaclEKq3Kv5cJRmjtCUGP2ypDjEZuSe9Q
	OGrvNsT38LEkp+br0KEUXun+CfC5cOwuoT84boFg97OwOxh6Q/zuRIjEB041ykQ=
X-Gm-Gg: ASbGncvS0lCTOt3S8URtPWkimiF8qindixjjwhdbzsFHUs1AZtCxbM4lKRSBPejwBz5
	H3POJ8TeknQmPOEAsho0rQBk36auVP7hV0j2mctEibClCGANuSIEZiBu5Nu26u1NMfrdbnwainy
	i7jtq084Uxu+R7qM5eCpU5kubcF7j6WRtjGm0hgPV5fzMQ6JHy1/K0E/efpabEUPA06AUPZaTEc
	AVPTHJthXgCGElK05DM4GdJRrckuEND6jeCfodI4EN+KGVrF6KnUpBST5ETyNCYBBpK9ki/ERsF
	3KgwouIRuuMXXsGZJP+iDQkzlWhbVhLyF8qfzux5n3tZyi51Rs4kz5Xs2brosBG1loeylFBYo0B
	H
X-Google-Smtp-Source: AGHT+IHtKrgOP/DE1J4J0Y0A0ldGOKWtPV8QRy1Ye1jhGLz4Lda7FRnPOyCqYEGlT4EJBTKJOYvyIw==
X-Received: by 2002:a17:907:7f17:b0:ab7:63fa:e35a with SMTP id a640c23a62f3a-abc099e1dafmr622362066b.2.1740474350361;
        Tue, 25 Feb 2025 01:05:50 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed2054d58sm106681566b.148.2025.02.25.01.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 01:05:49 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 25 Feb 2025 10:05:35 +0100
Subject: [PATCH 4/5] wifi: ath10k: Deprecate
 qcom,ath10k-calibration-variant properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-b-wifi-qcom-calibration-variant-v1-4-3b2aa3f89c53@linaro.org>
References: <20250225-b-wifi-qcom-calibration-variant-v1-0-3b2aa3f89c53@linaro.org>
In-Reply-To: <20250225-b-wifi-qcom-calibration-variant-v1-0-3b2aa3f89c53@linaro.org>
To: Johannes Berg <johannes@sipsolutions.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>
Cc: linux-wireless@vger.kernel.org, devicetree@vger.kernel.org, 
 ath10k@lists.infradead.org, linux-kernel@vger.kernel.org, 
 ath11k@lists.infradead.org, ath12k@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1977;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=Dz5yNmE8eSdxa0CmdJl8w6wvj0WWXjGEMcH+7qjSCmE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnvYfj60TnvUIEnv7U3Skox2u9XlT7lKh41uz9Y
 LYH4CNb/eSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ72H4wAKCRDBN2bmhouD
 161WD/9+7eNP22O1Oi7cVRGHtqvvI7AoMm3h0LaGetUerCD1eAKZJHbQ3ecjiMPTc0nT7VFIOCw
 3QOup8KQRLR2Ad9a8S/wxCAj3co/NXb1sVBb6JYaGjBcDLQLADmaN4emAwavL8SWzD2vy0cL08z
 5OJ3jyibeH1W4qGX8N1BRK5gGpazHOAw6aguwdtqdGT6JTVfbhwXcNhcamzfXvOXfc6O2cKm2dw
 Jt6r36tA914fiY3AHnZX6lE5Zv5mGEleylSa6rtxiCdmUTi3S1P6kWe8kJ6VUzkB5fdbUW5IA3T
 Fp4LCa7ziayx2L0QuJz1mdw5GDW1m8moNDTt/SfGRjQ2SKZMakXPcxkYQHMuhN2WhALPm7aDV3P
 wcB6732IeIZh3ELZHGhy3by02TPGmqey/phS7bhzaoIHdyV9oUd7qAKA+OvbbHmeFdEdFqeHyWq
 CVMNPqCW0ZeF93yytlQEo/n73t951xCiKgqQhNOQ7hkmxxCE2ZXH6m1WzvfhQeBdtLCj0vJwADV
 LnhjWjTsqO7Js2AWCtoK4pUGXI4NNP+rBXvUoxwy+1ovIb8jNiLAb94xArpXOqRpAtgLq0QyIkP
 A5M79qCl+RbiGigr2q+kdL3MtVIXdTMd4+Qnl+RCeKcskpiD1/Q7XYl/nu71067RPMVs41engGh
 0P3cSdAcMOAX2zA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add support for calibration-like properties without 'ath10k' prefix,
while still keeping everything backwards compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/net/wireless/ath/ath10k/core.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index b3294287bce1f7785231d3bf0f90cb15806937b2..6d336e39d6738bbe7973a25e073d03a07b9ae733 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -1163,8 +1163,11 @@ int ath10k_core_check_dt(struct ath10k *ar)
 	if (!node)
 		return -ENOENT;
 
-	of_property_read_string(node, "qcom,ath10k-calibration-variant",
+	of_property_read_string(node, "qcom,calibration-variant",
 				&variant);
+	if (!variant)
+		of_property_read_string(node, "qcom,ath10k-calibration-variant",
+					&variant);
 	if (!variant)
 		return -ENODATA;
 
@@ -2259,7 +2262,9 @@ static int ath10k_core_pre_cal_download(struct ath10k *ar)
 		   "boot did not find a pre calibration file, try DT next: %d\n",
 		   ret);
 
-	ret = ath10k_download_cal_dt(ar, "qcom,ath10k-pre-calibration-data");
+	ret = ath10k_download_cal_dt(ar, "qcom,pre-calibration-data");
+	if (ret == -ENOENT)
+		ret = ath10k_download_cal_dt(ar, "qcom,ath10k-pre-calibration-data");
 	if (ret) {
 		ath10k_dbg(ar, ATH10K_DBG_BOOT,
 			   "unable to load pre cal data from DT: %d\n", ret);
@@ -2337,7 +2342,9 @@ static int ath10k_download_cal_data(struct ath10k *ar)
 		   "boot did not find a calibration file, try DT next: %d\n",
 		   ret);
 
-	ret = ath10k_download_cal_dt(ar, "qcom,ath10k-calibration-data");
+	ret = ath10k_download_cal_dt(ar, "qcom,calibration-data");
+	if (ret == -ENOENT)
+		ret = ath10k_download_cal_dt(ar, "qcom,ath10k-calibration-data");
 	if (ret == 0) {
 		ar->cal_mode = ATH10K_CAL_MODE_DT;
 		goto done;

-- 
2.43.0


