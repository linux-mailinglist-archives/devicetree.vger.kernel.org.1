Return-Path: <devicetree+bounces-248633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAC6CD491D
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 03:39:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FFFC3014584
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 02:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ABAF322557;
	Mon, 22 Dec 2025 02:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A1WhJ7CR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D60322A15
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766371131; cv=none; b=SDzyb4qInZMkOldK1GpvEdS0xV1/aZkK9R7V7/c0OPAMbUFjqi6Q+T7FoUA66JmHa2RzNFyw3Jw/ophdPZaDaJSVlF5Z/mdOzzxzqkFdFBe6GCIKMbyVEtuR5h3mjNmkHrAyAqH0xhHT76LIOc58ZQBJZzPyVu1UMbjB+OG+VF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766371131; c=relaxed/simple;
	bh=/w6TihWTMo0D6Vt/LZluRAdH2Yh6/WCpynIZAlZaZLU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d422+uBKGWhFot8urFBL60M7GKe3WgOALvAZzU8RhlGWuMhvaktqJlc3WUqYBtUSpH89r2rJ0n4UJg24tTHCau44oITrufGu/hZAYsohS3Z0BWgNW2cuos7lOxp2e6GMOptnb2cet7LCQxo9qFdCBGR+/YSarJ81evzu49VhDDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A1WhJ7CR; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-598ed017e4cso257613e87.0
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 18:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766371128; x=1766975928; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sgT+LUd8eSW2KVvVOpn17swJdpN0E1VlzzmLz9Eq77c=;
        b=A1WhJ7CRfW4PUlB4vvVR/kGUvWCY7DC8sH190yOQhghzbBty3pdnTsvx+6ZXqf31y9
         /CQiQIn26XtU/u2NR/ht8+ei3NFGFDYPNvr331AmJxM6mYBi0nxcbpkio1zoHUcTocIN
         e2DMXHKaB/c/bjsQ5YUYPYIcSvLOJOzZABaBDc5p2xg4v94xZdDk/m9l74JpxGLnbIKo
         UDZiD25/2PGaF1U/5VBPeq2h9yLbYKcmHfczGMOZXp90bZC+s5YG8X3qFN2SwYRhHWNx
         iDU/NMWG+lnzvacmdtMoVxa2OJlvb0ZIL9hnaxttZMW/n0mmMfouNJkSMK5PHKlwIgPz
         CyrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766371128; x=1766975928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sgT+LUd8eSW2KVvVOpn17swJdpN0E1VlzzmLz9Eq77c=;
        b=dpBNyMpgUnkDpvpQX0j/XhQ/DXgzwD4bUk7WNu3c1Vz3GdSqVxcwQ9UKerngfUPwzJ
         R3yU3k15nl/7I+AySj/wRTsuZIZiRb1lBk8rxdwyZU7ipXkIWSd3xbRTrZjOK67IwgVt
         iU/oydlzhTD/JY3IuPVzvqxlFgoAe/21UpKiLRmGrMge43WBAiE2IHSbmgVmOuh/9zfy
         PcHtSAORCijKhjGphPEInVTaEPkRZvOXVbbNsrH7WE2AdhZqWONt6UjY7P/dH1V9zL2F
         //4TarLg5EEmi8GRm2rzUMv6lf7gLGm3nmsDBE21OQ5Hl2UuXqVHu/KMOwHLPg1/7MYT
         ax9A==
X-Forwarded-Encrypted: i=1; AJvYcCUAcFfRe1GukJ/fI/Lhyj+t1sVJvDXB1dyjcGylDxQw0K0oEn8CEOynt+iPyVqdE1v5eLq59jubbIyT@vger.kernel.org
X-Gm-Message-State: AOJu0YwdcVKM9ltEOBeruAv+7f/Kb04K7nF4mpdXAs2zrT2gdhkRFtOm
	gHUwC8KNgFcdPJ3XhJqnTFtdlgnkFefGZzMZDzNxE4v/yyqc3DbAwOeC6n8CWlhmtHw=
X-Gm-Gg: AY/fxX5ba4Z2S21oG2mD+6nYD6iPUtFy8pEHbWImzbvnhLgw8BhTi+kW8aRIyhgnWv2
	ku9t861ZjhaG2V84Xc7oBve6crvuaIVhRJx/wNFkd68VNJZLgrCs9NVK07fzZ1sVUTfquoeNpxK
	ehY2m6Moc9CnjQEJbpqjRV46QA/mHtsA3FvDwD/ZKVgaEIWadw75NrLdzS/Wr+TsBTpZfsH+d6d
	YAf87nP/qd7yfxEWfgctunI4Cc7VMtrNY/aLviSlAL2EzkZTt4bqJR0CY7kx2SFoZzRSEK9Q6Gn
	X4K9nDSKalyK8T6Pjuo3vkgdpjNfXEKKTg7n99QCRanqLqNuh5/WCozq05aoWvzcd/yqIKL3H6S
	8TbhOQMKx+UMmsT4Vgmnlsxkc0Dk3s85vmGtEiyHAELxMOp4JieoqhqrpjY3sh7hPjPZiwOyCzy
	16mVi2+MaY3pUuOoF+mOGWBwcZhI7i130SRUBEt0JhIuoU6QhJXp2U7w==
X-Google-Smtp-Source: AGHT+IF1hX5D5akURs9w7M76/Vi3sk1BGoohV/HzXMslfZiuCNuHiDAc/ge6/INfJ0g/HCBZ5cLluw==
X-Received: by 2002:a05:6512:3d26:b0:57a:6d7d:dd74 with SMTP id 2adb3069b0e04-59a17d1d8d4mr1785933e87.0.1766371127595;
        Sun, 21 Dec 2025 18:38:47 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a186282e0sm2778259e87.95.2025.12.21.18.38.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 18:38:46 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2 3/4] arm64: dts: qcom: sm8550-hdk-rear-camera-card: rename supply properties
Date: Mon, 22 Dec 2025 04:38:33 +0200
Message-ID: <20251222023834.3284370-4-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251222023834.3284370-1-vladimir.zapolskiy@linaro.org>
References: <20251222023834.3284370-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

At first voltage supply properties of Samsung S5K3M5 image sensor got
names following a pad name convention for Omnivision image sensors. Now
the property names were corrected in the sensor dt bindings documentation,
and it should be updated in the SM8550-HDK with the Rear Camera Card
board dts file.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso b/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso
index 66bec0fef766..e80de190eef9 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso
@@ -52,9 +52,9 @@ sensor@10 {
 		pinctrl-0 = <&cam3_default>;
 		pinctrl-names = "default";
 		afvdd-supply = <&vreg_l7n_2p96>;
-		avdd-supply = <&vreg_l4m_2p8>;
-		dovdd-supply = <&vreg_l5n_1p8>;
-		dvdd-supply = <&vreg_l2m_1p056>;
+		vdda-supply = <&vreg_l4m_2p8>;
+		vddd-supply = <&vreg_l2m_1p056>;
+		vddio-supply = <&vreg_l5n_1p8>;
 
 		port {
 			cam_tele: endpoint {
-- 
2.49.0


