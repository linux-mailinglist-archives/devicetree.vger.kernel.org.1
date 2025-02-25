Return-Path: <devicetree+bounces-150830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC37DA43AAC
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:06:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E1DA3B51BA
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 795EE268681;
	Tue, 25 Feb 2025 09:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fLfKKlOz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6916F264A96
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740477566; cv=none; b=Hv52GuG2wJOca0og7/WcNI/VLqwQcmgJoA2VecWRJHI5ETGsm69u5RgRrdrQapnjfOh7U1kKWnZYor4297irpb8V2nVgrnNoSAV/iVJPKsg3+44n70IGHtYIJwac02GHfGEtA9JeAaq7yVMrffbE2P9veXypEPvPNU0uSYtvmfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740477566; c=relaxed/simple;
	bh=QMSQmMKlMc04xIoRCN38gGZzuGeozMLABFShCOTTMuE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eCuWlWzG3YprTmHwntTNjxz2T4Rfd/nKggR+AIFCFBUPtgq3hsq8I+y+2Rxo1T7HR3BhbLQWIZEYi4zdWmdRdX1pfukyyI3It1AE88/BLp0XG0IJOTTqgmxZd0/rds5d6Ip/S2EYEQ/vHHjiWLy6U5Fxd53yDdm0cGDOPHAjv+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fLfKKlOz; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-abb88d2b67eso62646966b.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:59:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740477563; x=1741082363; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OZwFfDfbIBtfGLTX0+WStuJhSTIQaGg9xSLe2Cmsqi0=;
        b=fLfKKlOzTjxqy3laLJX67AaSEdmF7rUwzUqALjC2YqmtTI2Ua+qdplIM1nSKRW8dWL
         N2Qez1xEO+12Y8w6KZ9xonFkoe+Dg8xP0dlg9WHQyKxGHDey4xiuAQ0QAiOW3PkxUWGD
         lUc/Iq3UNgCxBU330rv/ocpuUS23eDJ4R3/8ZqC+BMdnWRg/41eXs8M1YBprKbNIfHwQ
         26CFdLiMrbPw9IjFvvzVDH4b+xi0GEBlcONPHGHY9GIvidklhtC5iu/BlUn7zne4VPgj
         qCRwO9PJO923Sd77Ld2eoFlZP6/PvNefJV6PgvLmrLmG8xfqAmo2nibg+FNoMKN1ykPj
         uQBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740477563; x=1741082363;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OZwFfDfbIBtfGLTX0+WStuJhSTIQaGg9xSLe2Cmsqi0=;
        b=D/jStmaLLbtVVodXdh+dmEuBzC6G6Mzwc58sW+jkKa40aad0+XuQPVt41Z5Fs6cWXU
         1rqmOh2AincaZZz4+QRSrjHytKFHBouEFu8L5nukHOXOTaFy2TepUp3EzTkP/W4Bxezm
         VqEWobwsdIWHKFseYq6eqCIpFvKfbQb/KE8KyxGTszJHNhg1c4yIYKys8NaqvFTlnIfc
         22TPSvUzkdxAm5xBJZ8QdVeTfuzy15ZDzt6FDUQDoZCDf/4y/MJxjhfnUQSU3IpBFEwv
         KnaW1K2uPVouxEWJ1SQv3GW8TjXDPQoqjP6WKE3lUOAP9uXjwjKnyiXAdVX4TBUKFHIp
         Bvcg==
X-Forwarded-Encrypted: i=1; AJvYcCUhrjRtuAE0RN9WUt2IZS+97G2s1YD9rrg9P/qSD0QIPFKbTHlBYOuyICZlwpvASLy4okTWVRPq2ZV3@vger.kernel.org
X-Gm-Message-State: AOJu0YxsXwtZiyZF8FsupbBbwXCDutkQrcJq/8bxC6XaKrzobJLMtBIA
	rD3kGSdhZpMEhysPb+XPkaagSntuojnM9nxW4mUb3cggRepb3MBYtwLKxiamUFE=
X-Gm-Gg: ASbGncu9lHM3LB9N74PRxF9yMnysnwgc2eZbeSMl2SF9djDB9D46oopMSXt+MTBFYj5
	HYlhRbs3apAdT9Iii4eOljdzgOAiQe9jwI/PmtACNmnhnYcTMgg6M3Sfu0jKUvhMNcSmN/CW+wX
	sGoZfVzFOkbyQNjecv7a3Z7TSm3Nn9S0b4KZ5QV/1Auhro4uYf8ZkEay0z6FUMDSxSfluK3iQrH
	8bSK5uTf3C0nz2P4HMB6BHzFJ02oGJDp/wVz3bGdqU4hUhDfBRDocx0KJourLtdU5oUbp+fYhyZ
	BNtngMNCa/W7JXNPNmoqOoGIhjp8l8IBQV4fFzFeHyPhekwnDfdhmFRiO6LfQn4Ej9hotlHesnQ
	J
X-Google-Smtp-Source: AGHT+IG1dLj0en6ral3fzzc3CvStpKg7jETofLb78lzfODm4M5m4Okhm6S3e8hZ2pCRKXfRYYl8j7A==
X-Received: by 2002:a17:906:6a11:b0:ab9:4451:331e with SMTP id a640c23a62f3a-abc09c1355cmr565984566b.13.1740477562630;
        Tue, 25 Feb 2025 01:59:22 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed1d59391sm115164266b.56.2025.02.25.01.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 01:59:22 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 25 Feb 2025 10:59:01 +0100
Subject: [PATCH RFC 04/13] arm64: dts: qcom: qrb4210-rb2: Switch to
 undeprecated qcom,calibration-variant
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-dts-qcom-wifi-calibration-v1-4-347e9c72dcfc@linaro.org>
References: <20250225-dts-qcom-wifi-calibration-v1-0-347e9c72dcfc@linaro.org>
In-Reply-To: <20250225-dts-qcom-wifi-calibration-v1-0-347e9c72dcfc@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1044;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=QMSQmMKlMc04xIoRCN38gGZzuGeozMLABFShCOTTMuE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnvZRqwsx5tKYKHdShULWOvRGoYrf0WdyhwXDLb
 h54Nt5dTFaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ72UagAKCRDBN2bmhouD
 15RKD/9F1tE780AFOMqdQHXiltiqZO5fTVm3+ES029jmYNxjDLBdrX5waOoICEv/w/e03/VzifA
 af7Czr4fngZIXSQIhSLKstUYXyGGPOCkoYX0FN0+Xl69H5ZmNm+wqVpWgcyY0/74pntP4UJ699y
 SXq7PGFwgO5/iH3IXcOzIuwomfEV4X1j85InhFl0Ne4d3iXB4qPnxlMogkVA7OJ/PKheaY4tlvY
 OAZfwiCUG8PBKFald3IVJyE/uXSPt32nucgGHDC3XDwDxVvoAy8d5r1LRBOKcTBNUw73SF6w6fp
 kVqUPRi4XMu2UKjDtSQ8KHUGlFtqJxqSSSzojGb3l/OprnAkzfe06Gp2xmRfmnglQ7UJ9ska8N0
 yTaYQM3aCYiP3mFlRiMzPDAJb6SWL0sGS3tV+puSyjRzWBsOZYsj2+zDdXrZy5kmAX9nzrZH7cq
 Q88Bwu/AobDeLxU/KpXaLR725CcjgQ7hY/70uSiRgKvlFIJfwowMTKMzSuS8CypExcnGzVCtByI
 qqounMevs49dch5ZAxJXAvCquHokhrkkJCKA2dTG0jHIeLL0y7u2t+k3JS1kmhR29lXFXNW3UuO
 yQgcv18nFKTifb+X9MX/U/vd2f6soMo0JU/Qzxt8x+L2PR11HDYMsh0N80HglS1SiRFfj8iFKye
 PhGw5vVilbJMscw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The property qcom,ath10k-calibration-variant was deprecated in favor of
recently introduced generic qcom,calibration-variant, common to all
Qualcomm Atheros WiFi bindings.

Change will affect out of tree users, like other projects, of this DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 52db18847803e3d6bc7acf34f5b9b4f0f10e8f32..d485249bcda44055689b5556eec9dd057b92d0ae 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -749,7 +749,7 @@ &wifi {
 	vdd-1.8-xo-supply = <&vreg_l16a_1p3>;
 	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
 	vdd-3.3-ch0-supply = <&vreg_l23a_3p3>;
-	qcom,ath10k-calibration-variant = "Thundercomm_RB2";
+	qcom,calibration-variant = "Thundercomm_RB2";
 	firmware-name = "qrb4210";
 
 	status = "okay";

-- 
2.43.0


