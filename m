Return-Path: <devicetree+bounces-126583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 123099E1C5B
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:41:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C76672821FF
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:41:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526FF1EBA17;
	Tue,  3 Dec 2024 12:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ADFBl/vv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB95B1E767D
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 12:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733229632; cv=none; b=d9ccPATSAk6NIyHo9xTnYC8cwCea5kqBktJ9I8Hu7FH59jDLboqhoQqRr+lmRm6kAL8ionoGEbvSylTalR05AQlJE+98DqXUx6EIdX9KClcDjXQRNmHhdlZ/9Vb/adB/i9imJtoSvbqagji/WurnqCDXwZyH9dZKcQlyshvqEcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733229632; c=relaxed/simple;
	bh=ErHr+ubnC2nccg316Z42nK3s1bkSHAlf8m9iyKpuF2A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LHJVDv87myQ1C08TlAN7iFeiNshcaaySkyHR8QZDdgqArOcnWsX45gMf7lM80+E3f4SaLnPcVbSOYyTOwGOF/gjAZt4F3HSs9/Jrc92dDHkTt78pnHNJ4B8U20dscGv0shiMv8MQX0YWGfAiu0C1Jw9pEwDjByltZRlD2xr+nWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ADFBl/vv; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aa53ebdf3caso262574466b.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 04:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733229627; x=1733834427; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gSM9DgJ8s8ciANY65GvKwivzFuJwV1VAivJ5cEw7IQQ=;
        b=ADFBl/vv/P9Oyj3DQxcRpL61ZPtzDcfin/WZvXA2NG6ptuiYCkOmuHLe8T0c9huOov
         jCXwhMpRkTaA/Isuh4gOr38yyXMb7Kpvc/LMRCqx8AlrcBF1eDWZ5G+0yhq0WHzBwSlM
         sNPA+o0q3MucMgplUWmBvlvwJQbi7d1IQrvAYoOQWB7K0+bnKNGxGoZqb5f+a6Dos6TK
         w9qW/0aqr1azCYaX3xjZdmEjr7Y8xf50WeKNujYXcFZ/7o//Y2m3racKlYa788hNl5SD
         CPSfew7wCFgeKifYsH33HSYRUs2Hvbmitx0sk37y7FseWYRMQnGv5zYivzaW4QsuY3OD
         s1AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733229627; x=1733834427;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gSM9DgJ8s8ciANY65GvKwivzFuJwV1VAivJ5cEw7IQQ=;
        b=YcXhD/BiDHW918czcAC6CeXDRGXE/6/ubAFZh2Y7Iajb2tTzGWaaCZiwwH5D1g3fTz
         V4YsEPWwOW764CqtCwQJCXE1KiqcB+rPBfiU/xdQDaIWKvmNPVr88K//HPbiM2aCLJjg
         2hZjZAJfECd44jWFHCsJj+7q3Mjorqr3Dwy/DmrugVWT5KXmWqtp/OyuVNdOIc8y4NbT
         c4nRb8OwqIb9Jr/qqN8ZNoIt+NtPjxO6DS1/LURc4GYcWQ6Ny5UgcSg8jmlzJJmPPATN
         fTm1z2uHJ97U5Ird7Z/lUAXl9CEKNbW74CMuFpvul9jATugKwqidhpHseX5LwtTcdUMY
         FTjg==
X-Forwarded-Encrypted: i=1; AJvYcCW+Ze7qD6G+K2GyBhEKl5B86qo8MD4AbkQAbdc8IMASPmNCCD/1dYodt3SbvaXR7699EkH/3PMFsVeb@vger.kernel.org
X-Gm-Message-State: AOJu0YwcceL3Q7tGfXiu+Q+perMo3jsnRZPm0hKpV8Jxh0+gsiznx678
	aCouPsNid8/f2RdSPab8NjsJnTE57NUrdTh7t/WCfhMQP8P/iT3I33Q36bmvo/c=
X-Gm-Gg: ASbGncu9zaO9qUHkzd3c2oFzuTefiVTpO3nkXheFC3VPk53wTRwD9Zr1/PRCKaaDEzU
	DZXqMVQbWh0CvKTs7IQYr5gfAo3a3vK7Y0jexL6qEaP9ag3bxf2oH4OoXbCwf6fxqJNlXt4whcI
	xGpvPdu6BwbeSkppSQAelBarvZzQDuBzs2y2Z/CRrSLenZAEk+r7uX2NcOhdJrVd2zX1ePW4eHU
	xnwc2Hk48f2ONdoYql5fMLH3kRQOH9rSnDnpspihMnmWaXXKmaJ7B7rTS7K6vpVYCYxTyFWizrJ
	4dTI43GHpq70ZfmqAxztieuZsUQif55Vpg==
X-Google-Smtp-Source: AGHT+IHow5Ax9TALz74PlLZBVVpeQZfnTQ4QfucP7E9gMwHlWhWcBplvAxbKn5vgo6QeTg9aVvDQPw==
X-Received: by 2002:a17:906:1ba9:b0:a99:4162:4e42 with SMTP id a640c23a62f3a-aa5f7eef4demr200217966b.37.1733229627078;
        Tue, 03 Dec 2024 04:40:27 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e6a4csm616809466b.106.2024.12.03.04.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:40:26 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:40:26 +0000
Subject: [PATCH v2 3/5] arm64: dts: exynos: gs101: allow stable USB phy
 Vbus detection
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241203-gs101-phy-lanes-orientation-dts-v2-3-1412783a6b01@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

For the DWC3 core to reliably detect the connected phy's Vbus state, we
need to disable phy suspend.

Add
    snps,dis_u2_susphy_quirk
    snps,dis_u3_susphy_quirk
to do that.

While at it, also add
    snps,has-lpm-erratum
as this is set downstream which implies that the core was configured
with LPM Erratum. We should do the same here.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2:
- drop snps,dis_rxdet_inp3_quirk and instead use the mentioned
  properties. The former alone wasn't reliable enough in all
  situations, e.g. when attached to certain USB hubs.
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 18d4e7852a1a..c5335dd59dfe 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1302,6 +1302,9 @@ usbdrd31_dwc3: usb@0 {
 				interrupts = <GIC_SPI 463 IRQ_TYPE_LEVEL_HIGH 0>;
 				phys = <&usbdrd31_phy 0>, <&usbdrd31_phy 1>;
 				phy-names = "usb2-phy", "usb3-phy";
+				snps,has-lpm-erratum;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_u3_susphy_quirk;
 				status = "disabled";
 			};
 		};

-- 
2.47.0.338.g60cca15819-goog


