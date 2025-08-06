Return-Path: <devicetree+bounces-202194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D943BB1C609
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 14:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7EF7E3A3098
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 12:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AD2A28C2A6;
	Wed,  6 Aug 2025 12:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VMjrY7YU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E5528BAAF
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 12:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754483929; cv=none; b=VZP/DrcDnHLjgoc04fSEOcR6D4vnEK8TasmsgqcPyrVMKpxzlJw1+s8tC0q2fhStaqWl8VItUjSxnfryoSP3TS10MNDzZA1Px1+Pjq/xlgfTbkZAK6HBoRpjpbZu7NS03os9i3leTkDbhGqfdCWvPEDvpX9AbHHVRFdzgcXLqhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754483929; c=relaxed/simple;
	bh=7FJHiMUT0ZV5ouqNF0thtObhYJGVIi7u5XHjhFFPFr4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PGIo9w4sbrYxtHzqU9nrf76T8a0aOT0Cmn4cck9fhNjlU+56bTv7+qK+eHSiwHpuuYRPUhKKMvTweO0aoOGRwgFV2N77+LAW2tn2SBg9Spd9AAKm5al+G1tbKMbizgB0wKPjTsjBBs3N1IzROU+BfgCmuYVhi9/7+WJvIw8uOdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VMjrY7YU; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-af93d0b30b3so75548366b.3
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 05:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754483926; x=1755088726; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4P78aqvCdLwTiUcDeg6coC9m01Qjv9ZrSFuTnuFlyY8=;
        b=VMjrY7YUANxeNDBCNJ4+yF/akPquKvDwmfuDr//qTcViqtBkzGpwO/sylyyon+tKF8
         Oc7MJxrbuhNmrQnR1bdpJ52c+rubMPtG0c8U9eN4LEPZcx1Mu5i3i3HXFYCvo8myPycg
         O6E4H6ZRSDg+uzv49qJbtBh0hReTNF+LZVYOHTeIVIFoUZt2PCJW15sm9H9CJgJs7oy3
         whTe7cOBX0r8p+Ep6aOUoYddn6lOryxlUHLnu4U3f5p7Grqj1Zw5EBV/18g+1xtz4K4Z
         54CLeCIQd/l21wvYrL89SqMwIpouTLEew33WJgVd/U22g/Eydsb1hElskNmgNfUvzgpN
         N/Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754483926; x=1755088726;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4P78aqvCdLwTiUcDeg6coC9m01Qjv9ZrSFuTnuFlyY8=;
        b=fe5JSc/YHU4iRitr5wM7ai4ewivWDjyZQRxCMxuPMZIiCztTzM7wf9ZEQHElC+2uBe
         qVHfq400781X8RplObolJAkgO8z5GlszAeO5wxORGPKuVcGrN5bJ37CHdqtiGK0uFs72
         ShqJ21i3KhHBEh3bVi23tdixwt8KZ48iFvLPFZZ0A59SRahize3+DsTeYVlTzMVInFlt
         EJ0tENnkk2f58GP28xfSLemUh6G7vWkc3veL0qhkb2Ublv1s7ibauF/PGiAoiV42DKWF
         pCbonzzqmtmxwiAlaFJlv1ZJvJ03KHWr3XA4uvnDQQQ6u6jvCJll14A59h+SbUVOHykx
         2gcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWalSIGY3zL8st4zUzjeBn6vXZ0y+U3Ioq6b7bHTh9+X4AmunTbzsizWXzSSLvndW4mblH96HN/MIjx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0rv2V/0T7MXM43iAZQTZxHbZh5LWmz0O6I7bhQVA+M3X5fUeU
	tOtLoNQjE7Q/nbj2IiQLlHV1y6wzy3XR1MmHVYVLlKXXUOZSlcJdfp0v2mY/cJaFDe4=
X-Gm-Gg: ASbGncvwaZ0I9SkrcZwDGjl2jLu5U/UOn5nbg4G3GbueXUjxcZj2/sDdFycX1Xee9Pl
	ggopl78G1e1atxBAiVQ9G/lTuIIxvf3b0xdj3cSWT2T8x6MIp2iCiEGRZl3HOSJKliWmt3I4/xX
	sDSz+YPgRnsdbleXlE5vi+BMlRaTVpZfTz9l0ujdXAL7DVnLIxYIT20D2VvDQkldUeJQUxwqdVU
	tMgiTi5T4GmYPRWGb5ZleBkH58TmQ+YXjilyXEfKKrObqorq9pEO354fFaPfCt+sP8EnFPZF1Si
	iKmYM1tduInbwEykEtbHq7z+BU+lObUiVKfyVlQKUIvpPHJ2muaWgnqbyaPMjYNz8p8C+s/Akel
	uBYRWOpkA7JIXaZqL4l9GbR81v+/9QnnV8iOcEHD4p35bYV+u0Q==
X-Google-Smtp-Source: AGHT+IF/Qme6sfIWfz8klv+ODqlN2IQqpbvufYppyk4Z5CD9EwccO5nqIWXmpeKiUOcg7vWgt5+ehQ==
X-Received: by 2002:a17:907:96ab:b0:af9:3116:e10d with SMTP id a640c23a62f3a-af990447a58mr109056566b.11.1754483925983;
        Wed, 06 Aug 2025 05:38:45 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.218.223])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21c081sm1083866766b.97.2025.08.06.05.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 05:38:45 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 06 Aug 2025 14:38:31 +0200
Subject: [PATCH DO NOT MERGE RFC v2 2/3] arm64: dts: qcom: sm8750-mtp:
 Enable Iris codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250806-b4-sm8750-iris-dts-v2-2-2ce197525eed@linaro.org>
References: <20250806-b4-sm8750-iris-dts-v2-0-2ce197525eed@linaro.org>
In-Reply-To: <20250806-b4-sm8750-iris-dts-v2-0-2ce197525eed@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1129;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=7FJHiMUT0ZV5ouqNF0thtObhYJGVIi7u5XHjhFFPFr4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBok0zP52rmG2bxi7HmDpp3Cr6VxQLIdJjAQjvqd
 bYwNE+SGAGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaJNMzwAKCRDBN2bmhouD
 10CIEACVA2Mq4Yy1GMAKMguhi14btLsXOLCYusl9u590ryUfojwWOIK//gc455Am0bcqUbFUAVJ
 e8ck3Yo1QDVxDcRYoK2d0+yZzapqiJ8SjL9fFsnlZ5+qTPUF719hzoqKZ5hZD1unjXEqnXkycnB
 +grzWlQrJTyK83v8sMyyEVHM4i4DY9+HnOIYQfCtNLcpfMM9yBjYgjzWsG/kWIaaghaACeVwsoK
 8PZpG5aMbEpk1e+c+2Uwr3KKOMqB0ElJ9w7JCZPNVIA6NMuUXJRaOMGeKBQqptVQLhX2S42xFrm
 pPRuYndmzARhG9yj0FB7vaIEkacNTIv6lDYe635X6U/cxMpi4vTcx/MAAfb1UUJebdFWNjdOp4B
 MeCyi3zPfXZo/KM2c8SKH4VsyM8bfOmo4rH2ZoIMtOXEkN3o5T32Jh1WR9NgiYMlgWKZmhY+XuG
 obUTgxhDW61/9SHuWMF30TG7SqO+Tj/hA1EItYcvor7lRaSGmesjldP7Q3R7qBSVRPMW/tSzHBm
 0XsizK898Tp++lPNb3OYugm3AT6L7bGeMU2duW8n0Jl/GP8yTgRaE7sDo9fP45pma76JEbOzMfS
 c8R/dqjuUnB+7v4KzMwTYspxvtfh/6eFCwMLQXxj7Pn47A7IONF4i7SsctcccJapkX8VVEbilHR
 q1W35d3vDO9v4vw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Enable on SM8750 MTP the Iris video codec for accelerated video
encoding/decoding.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Do not merge because firmware (hard-coded in the driver) is not released.

For Rob's bot reports:

qcom,sm8750-videocc bindings and clock headers dependency (will fail
build):
https://lore.kernel.org/all/20241206-sm8750_videocc-v1-0-5da6e7eea2bd@quicinc.com/

qcom,sm8750-iris bindings:
https://lore.kernel.org/r/20250804-sm8750-iris-v2-0-6d78407f8078@linaro.org
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 75cfbb510be57a1ab8cb3d870b5c34d3baa53c70..4c155b731a68138154f66fdb0d0e6db5e47adf3c 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -812,6 +812,10 @@ vreg_l7n_3p3: ldo7 {
 	};
 };
 
+&iris {
+	status = "okay";
+};
+
 &lpass_vamacro {
 	pinctrl-0 = <&dmic01_default>, <&dmic23_default>;
 	pinctrl-names = "default";

-- 
2.48.1


