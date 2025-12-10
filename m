Return-Path: <devicetree+bounces-245505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C3ECB1940
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 02:07:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6AAD6312FF36
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0707E21B91D;
	Wed, 10 Dec 2025 01:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="PUdY41UT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C3B1D88A4
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765328756; cv=none; b=GzUKiGx3iNcyaqQPaBSJaIQYRn92VFQ8ZIr8nB8DhgMDzJlijbmMGjWi0GoHDnUciH6mC6LLLAbeIoORUHwu0+WQhAIDoYChQdcqPcR5RPw2lVFFZlysdSyev1J5iuL51zrYOLNikSDUTFowWU25a/jKeI35UHA6P4GewMws4AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765328756; c=relaxed/simple;
	bh=YrhnGu6LmehfwdHWZT1BvVNTtQV3ilK14SnRP9mcbNo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=S8EhsP7ewLuWKPzo2jsCs1bqLPgT4xpVwAJJJvyTsHQeuy84gHdMcLLq81PpXvqMKM1BIlTnAcLnTR+xLVioXq71La1PdgcjNUwxBxP5AHVbC4VqbiP8UaE13jdKM7gXS6P93lEKbFBjyGe1l0Ajb7i9jxn9AmZOuwQBKsPxhCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=PUdY41UT; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4777771ed1aso51873885e9.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 17:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1765328753; x=1765933553; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5naoPmz25ACan9Hsv717jQTcrvrpX+itusQfrwOWSdg=;
        b=PUdY41UT6jA2PgeH4voN9q2b44OS7nxzAr0b8dZiLAIN+GnlqgLRjMPJcpDDGMs7bL
         rgiJXcUuq1QR8GncrT0pjJyMWo5/ttNslfi/GsGTcudpLuA+dM93mmY1pbO6Tj6v0/Wq
         cV6t196SmlJI+/xc8WmHPqm9nxJJiY0xuBTp68HIQN7H5cYrIvMKy8BfVnOiUSHagG1M
         TbRE2AmjaeDG5BkjlqiVeW/WEN/awtJ/ITbtCzcAE67i+cWKIiScxjH4HQrLUUlrvsbg
         22ftHPtmHBBO4j/hByG/Pdz+g8oo3YR4Dn1GRcBUJJzn6AxogqY8FnVXK/qqYdLN0HBg
         C4ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765328753; x=1765933553;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5naoPmz25ACan9Hsv717jQTcrvrpX+itusQfrwOWSdg=;
        b=okSDO8B2OYEghJjSjcvDBMugMI0aSliiS+YHhjmhtxTnFuvE6J9xNNBOcF/fEEGmBd
         ZKiTyX4jcZVklXQmhhYxoYBqJFDEb6nMSb9N5DUyk0Al2791SgNJ6XjZR0XGR1a9B8kH
         YA3Iq/Ql01w670V6Ld5pt7Ww8hsKFO85Pkcb1JKWu+mxhgIez1TDa8VCT8MRWuSrHsB2
         6wOIoSr3o5GZJASP4Mah3uv0cdmgGSxtCoJ0peggFnD8c2WEisMjFgtXvD4SZlH2Avie
         vzfqDKREtK3j14pNhg9zxmKzEPIMucl1eEOSF65wQw4aH+VLFqL1GEw1Izyvx8Lk8y1f
         IrBw==
X-Forwarded-Encrypted: i=1; AJvYcCXClhFLPeBs/3MbNfHLgej2sNKS9t4q3YLJ9RcSfWFwL0W9JI6y1lfCpsHX+J5xEnvX1HwC3M5YY2Mw@vger.kernel.org
X-Gm-Message-State: AOJu0YwWKpJQaM9nS3saKLG1iu69KNSsKBgoRjHJXodQvYVcZ3IpMaIt
	DnR97ZYQGgus1OyrFf1ZsH8VawKGXGLjNNGAMRc+RH7Nw1y/gJwXxORLJ7LblGoZ1W4=
X-Gm-Gg: ASbGnctAM5DhulNa3uztOTQCHumKZBwJqFGuz/VB9SeYh4LjZbWUh87QUtPrqNgwlXH
	o4fsNSwL92PE/A/Iapgbc4TIl+esJA0VDHNzB6SC5CtHEOOYSVOTkIPEEFlOVfonmQKwoUzNx4F
	E1l1MJovT5jKv8XOSTzHOEh1NlQ+6/6aZuYf5qp/W/Ah3BV5msZM91CDZlWt0/GxjPxgxdwxW7A
	GuyUL7nb2m+eLycw3DCYmD2kCJX88KTAIlaWIeoEMkWHcNhxGgzlMG0I8fAwAZhilMM9DaR1H1T
	EL7gDeD7WsG95UyGdT6VN9b9DZTPZqEKnr0+j4ILi+u5Vid2B1Mr7EigDmNue7wfRwf/0fz8Odc
	gszqJf0pHZUTkjA3kypI/r+Cu3i2YqdIA1cJrfK6hjdhnWaCB83Lqzk4ghtohwdtSwMHUWaEnJv
	YF/PlvcrWLchFNzApg2TIlGY3vkPaFLNErhOEF9tSj/XJ3PHzMwg==
X-Google-Smtp-Source: AGHT+IEyKqUcK/2aZSA6qWuXW0Riv57nPy+c/1E5UcZc42jICfbOBCDPNJhGuFHogXPXXaH81Jg+KQ==
X-Received: by 2002:a05:600c:621b:b0:477:79f8:daa8 with SMTP id 5b1f17b1804b1-47a83806976mr6180005e9.17.1765328752810;
        Tue, 09 Dec 2025 17:05:52 -0800 (PST)
Received: from [10.200.8.8] (p99249-ipoefx.ipoe.ocn.ne.jp. [153.246.134.248])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf9acsm163206575ad.28.2025.12.09.17.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 17:05:52 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 10 Dec 2025 10:05:30 +0900
Subject: [PATCH 4/4] arm64: dts: qcom: sm7225-fairphone-fp4: Enable CCI
 pull-up
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251210-fp4-cam-prep-v1-4-0eacbff271ec@fairphone.com>
References: <20251210-fp4-cam-prep-v1-0-0eacbff271ec@fairphone.com>
In-Reply-To: <20251210-fp4-cam-prep-v1-0-0eacbff271ec@fairphone.com>
To: Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765328733; l=849;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=YrhnGu6LmehfwdHWZT1BvVNTtQV3ilK14SnRP9mcbNo=;
 b=AFvm4GlaLB5Ro70RBGcv4FBtSlxqZF8no6mQgOBUDV58EFGYhTnlZsfcbG7WG30/nN8juNWMB
 ExtfsAk+Q9IA6lIFRs9nByaEgZp54yR8DdLL/Blbq53LMTqwveKp2MG
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Enable vreg_l6p, which is the voltage source for the pull-up resistor of
the CCI busses.

This ensures that I2C communication works as expected.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index 0cfb24e3941d..a3c2b26736f4 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -693,6 +693,8 @@ vreg_l6p: ldo6 {
 				regulator-name = "vreg_l6p";
 				regulator-min-microvolt = <1500000>;
 				regulator-max-microvolt = <1800000>;
+				/* Pull-up for CCI I2C busses */
+				regulator-always-on;
 			};
 
 			vreg_l7p: ldo7 {

-- 
2.52.0


