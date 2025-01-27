Return-Path: <devicetree+bounces-141102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB97A1D71F
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:48:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 300E41886417
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 174A91FFC46;
	Mon, 27 Jan 2025 13:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GRiI2PWb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E41A1FF1C4
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985690; cv=none; b=K1MQF3V4PwIsW3h5yfs1hWyABfrvMiHQG9KzEQu8JBdJ0PI+l6Dqo98xO75qbJRin/dzEKnMY/X5Hjtncc19+hSVnHZQx0HfuhSeAVjnhka/XzOR9sCntLqpqZ5Q1dn0GYx5UahmdS356YbdTevva7PRzsmLOOMYZ7+8wt1tzyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985690; c=relaxed/simple;
	bh=AsdrbD1FinQIFy2SJqudJkl/gKAL8Qn/PIHOADbXeIE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=IsL8rzMhFyyix9xmtN8YXtCRpkMQ+2D5LDU0DYPx1uWgkALmBaN2irJw2NW9ozw0D8tWkpjaXEc8JWRO+L7DUVsuqEKIgEC1l6HmycNk3Ojl0CjMilEC4UeYliQnWNIHOOZ0xtvgNLAk3iwEIyRduuDdOBqvHYgiQmXCM2tOQ5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GRiI2PWb; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4363298fff2so2791055e9.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737985686; x=1738590486; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=V6WFDdx+GdB5LlBjj/7S1XhCBwDKm8zbhgZOc6Hqbhg=;
        b=GRiI2PWbQwv/11UcuIuSl2enHDTr6DrUqzr2SD8jwaDm4n2OjBomnmzxc7kTJl5xmm
         wqZKxqco+zRRjsTZEnU56O08ldevMjOiZej1BK195oXF/HnIFw5m75uE5PIAYkAIUqxN
         RuAtkxZTEJfx9eMlnGCdR2LK4hlDl96UyBSXOX+2GSe1ERpc2qw+3JBYRQuPCFE40KhV
         SAnUKnbNmd9Yq25N0V3Rlu8Zu//YZdwKRECPMrjkwY5uYw1zVDu63AQt6IzvHwj4D/uK
         9bwy8Jvyq7haKMhCQ+zKh+cWphBMl5tvq5x+1WZX7hi3ZGi6uskf04/S3DxkT9/qIVcY
         zPaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737985686; x=1738590486;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V6WFDdx+GdB5LlBjj/7S1XhCBwDKm8zbhgZOc6Hqbhg=;
        b=EZXErCg+w+NKTj3rTHNeZiL96x3ZFU4u0o+XwiDboSrYeyPojFKL6JnaxNVFncFe6+
         A36kM1Kny4n9iqhXe/vo8ktlpFFE3d6nOIhDDPU5hUjvxc1rTeS03iL9zcvNa/mAKT/D
         +DYoVuaWxWvHGkbYZpJ8r2Wt1DnXImWPn6UmK0Tb/guHlr18+QvsUfTOeQXwO6a1G2Sk
         n8pmaiSdtdQ9GAxqzsp3nXiCpzYyRjp9+oubmduvDUN+A39lM2u0F3uqGd4XG1pKpbIy
         ccgF8UjwVUR7TUkPYFRnSqp799GU0Z2Zh4quOQVbyE5c+VNANNKA9LcAw2hHGVDH8Xre
         SjiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVithxO32H/5YMIm+uNFP+94LHKbtS9A+f98Qzc0rASm50boQDD2Lon4gFvlpXIyojNGdzt4EFAu/9P@vger.kernel.org
X-Gm-Message-State: AOJu0YzrcewM2qtS1oEc3pCuJ6ReyKJ+jSIkweM6L9DEgOb1wqJewd7h
	WGCZ0b+82Oi5BdqJoX06D0iu63HJecKxrE9IKzbAgGUmb4TLsQfJRx7grMF76AU=
X-Gm-Gg: ASbGncsYNaD5LSD2FyGSMlnDdmRy6qPP2+rHcs6NjXltWovckh1oBRdydT8vK7YbTOy
	j6upFK9ESMBeXmz4Glarobcjd1DqFVkkHRXNlw4FDzQDNa6ysPUnIuNxNA/XKp/8yxfyE+WOziP
	J6n/OFp3pNswwETppHXAQeUKgLqQN6se+Wwm/WPJ7wZUMzB6NQcTnv5Dkao6Gb3ZMrdJOWWB3Eq
	yVr/xpqtvtYL5Ox7cE7zlldXdAO+KUiKnpAj7NwmEbkaBPwm8QKhwH0vSdGfcVmZqqwX2QEcb/X
	CLawDUdH7CqnmTqTwDs=
X-Google-Smtp-Source: AGHT+IEWEp1g+acEqNl0elS+v5e/RHkjAvjiWa7DTjTVA1szm3rLHDbdmlUdPwLcGdsgWZVt4/z++Q==
X-Received: by 2002:a05:600c:5122:b0:435:192:63eb with SMTP id 5b1f17b1804b1-438b17b0e8emr81889615e9.3.1737985686432;
        Mon, 27 Jan 2025 05:48:06 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f292sm131038555e9.3.2025.01.27.05.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:48:05 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 00/24] ARM / arm64: dts: qcom: Use the header with DSI phy
 clock IDs
Date: Mon, 27 Jan 2025 14:47:33 +0100
Message-Id: <20250127-dts-qcom-dsi-phy-clocks-v1-0-9d8ddbcb1c7f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHWOl2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDQyNz3ZSSYt3C5Pxc3ZTiTN2CjErd5Jz85OxiXXPLZDNLM4uUNCNjUyW
 g7oKi1LTMCrDJ0bG1tQAB9p9vaQAAAA==
X-Change-ID: 20250127-dts-qcom-dsi-phy-clocks-79c6968df235
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4426;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=AsdrbD1FinQIFy2SJqudJkl/gKAL8Qn/PIHOADbXeIE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnl458ljUU5iQywhlbJLLRg1xj6lXo/JabtpDzd
 N0S6IGRVruJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ5eOfAAKCRDBN2bmhouD
 127PD/9fEByKwl02gPyY++tk4FuaCNCY7ITffnVyhpHNV0nAWzNjUzjTC+RIrJ11uwb1F8XOBwL
 UIL2HumZ0PEmnWlIZdR8xkexSglrT9YI+gmeqL6ii6wNhs/KbaCbH4bCzWgDEnBR5drSwWRy9WP
 enrlEL2fAxh0RPdJ37B5a20HMwyQyaq6VNbSyF6DZyu4FbkbK53mYAcnhkGq+gczU/4sd1MKW/G
 I7OfXGNyt032WTl0kNFDbX0q/eJmvEmySOHhQevRE8pY4WpiGb8vvuHYOrmbCV6xbLaZ5MSfLsF
 +He+AGaSKgF9XgZZ4osAHTNgDoEVcMNtyajcecIwijVzwTXjPFRS1Rl4yTtIwn1U9CzvIisYae5
 0fieTQ3ZGrh7HmjLEUmpdllTd+q8+dRW6xQzMIF68SsxanG/AqeaWDqYMKf5dSz9NyxRv8UQSut
 KKjaAhzp8zs1kxgpkNOExerbPFBQ04HRuo1ScfA2a/+j73Q4lwry1oI1y+HrNzvgmwji1XGIM1X
 EZ/s6YIaKP1RtaewfKi+7Hf38jVK1yZjHyUoqkcqG9Yxt8VPH5rya5aFbV2HCZoHa1GnxnwXj5R
 FUbaBQZdlOVCFf3UvFghjZDVuJ4rH7gqwQtL7E06RxTN8fVvK3zLfYtibbPA+FY3b+ufqG24ptP
 fcxUMr86ahzCMMA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.
Changes done with sed with alignment/wrapping fixups. Verified with
dtx_diff.

Depends on:
https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/

Please wait with merging till this hit mainline.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (24):
      ARM: dts: qcom: msm8226: Use the header with DSI phy clock IDs
      ARM: dts: qcom: msm8974: Use the header with DSI phy clock IDs
      ARM: dts: qcom: msm8916: Use the header with DSI phy clock IDs
      arm64: dts: qcom: msm8917: Use the header with DSI phy clock IDs
      arm64: dts: qcom: msm8939: Use the header with DSI phy clock IDs
      arm64: dts: qcom: msm8953: Use the header with DSI phy clock IDs
      arm64: dts: qcom: msm8976: Use the header with DSI phy clock IDs
      arm64: dts: qcom: msm8996: Use the header with DSI phy clock IDs
      arm64: dts: qcom: msm8998: Use the header with DSI phy clock IDs
      arm64: dts: qcom: qcm2290: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sc7180: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sc8180x: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sdm630: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sdm670: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sdm845: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm6115: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm6125: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm6350: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm8150: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm8250: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm8350: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm8450: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm8550: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm8650: Use the header with DSI phy clock IDs

 arch/arm/boot/dts/qcom/qcom-msm8226.dtsi            |  9 +++++----
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi            | 21 +++++++++++++--------
 arch/arm64/boot/dts/qcom/msm8916.dtsi               |  9 +++++----
 arch/arm64/boot/dts/qcom/msm8917.dtsi               |  9 +++++----
 arch/arm64/boot/dts/qcom/msm8939.dtsi               | 13 +++++++------
 arch/arm64/boot/dts/qcom/msm8953.dtsi               | 17 +++++++++--------
 arch/arm64/boot/dts/qcom/msm8976.dtsi               | 17 +++++++++--------
 arch/arm64/boot/dts/qcom/msm8996.dtsi               | 21 +++++++++++++--------
 arch/arm64/boot/dts/qcom/msm8998.dtsi               | 17 +++++++++--------
 arch/arm64/boot/dts/qcom/qcm2290.dtsi               |  9 +++++----
 arch/arm64/boot/dts/qcom/sc7180.dtsi                | 11 +++++++----
 arch/arm64/boot/dts/qcom/sc8180x.dtsi               |  9 +++++----
 arch/arm64/boot/dts/qcom/sdm630.dtsi                |  9 +++++----
 arch/arm64/boot/dts/qcom/sdm660.dtsi                | 12 ++++++------
 arch/arm64/boot/dts/qcom/sdm670.dtsi                | 16 +++++++++-------
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts          |  3 ++-
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts             |  3 ++-
 arch/arm64/boot/dts/qcom/sdm845.dtsi                | 21 +++++++++++++--------
 arch/arm64/boot/dts/qcom/sm6115.dtsi                |  8 +++++---
 arch/arm64/boot/dts/qcom/sm6125.dtsi                |  8 +++++---
 arch/arm64/boot/dts/qcom/sm6350.dtsi                |  8 +++++---
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts             |  3 ++-
 arch/arm64/boot/dts/qcom/sm8150.dtsi                | 17 +++++++++--------
 .../boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi   |  3 ++-
 arch/arm64/boot/dts/qcom/sm8250.dtsi                | 21 +++++++++++++--------
 arch/arm64/boot/dts/qcom/sm8350.dtsi                | 15 +++++++++------
 arch/arm64/boot/dts/qcom/sm8450.dtsi                | 21 +++++++++++++--------
 arch/arm64/boot/dts/qcom/sm8550.dtsi                | 17 +++++++++--------
 arch/arm64/boot/dts/qcom/sm8650.dtsi                | 17 +++++++++--------
 29 files changed, 210 insertions(+), 154 deletions(-)
---
base-commit: 1df6c90cce2d90ca54e18b498e7d8928d07ee0dd
change-id: 20250127-dts-qcom-dsi-phy-clocks-79c6968df235

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


