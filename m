Return-Path: <devicetree+bounces-149534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C7928A3FB90
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:39:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A1B81893B34
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:34:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FCD520E6FE;
	Fri, 21 Feb 2025 16:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AqJPxeaX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A03C21FFC73
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740155601; cv=none; b=H3JBx0MlrytFyQkc3ojKa6WQDukuOMRHDmxAxKkEM6vgZUfRxGwuedTQPWAzGvNWijspGwDnNzjFYqJIJKGdgs4K9eN5iNDzi60XK8NS+5oK/jMKAgsKLPk2qfrGal5alY98HYJR57lhnJ55opm2696BYS2bcL8K0IyERdDkV9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740155601; c=relaxed/simple;
	bh=k+eaoBDEiV/v/571srMqiYgCDvaRgVbpbTz+O7zIC7c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OLbKn7PXu/A/f4BzIJ3hIL9tJ23tJeLNgVlQ5SddCRlRIpObpUOY0+JsVfPSMRVUOR1ZD5tNDLhkdx7/lqq9q84W6mmZJWLInXBpgaeufElRh2zfz0K81S4Ivyt8ReQrdwS5rkmZbVVrTTDVdKrJQbDwVpId/j21zCfAqdhYB20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AqJPxeaX; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5dc191ca8baso469043a12.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740155598; x=1740760398; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f3iw6hKjikBCxVEZdKgu4116iy//8boYuOpKYntKgu0=;
        b=AqJPxeaXWZpO5niAhvqKyd+bpyirZl8sw9Sch0bKSACLKBE+fxHZBT/6FLBOXkkQHG
         AXl0aHQa0wgWMh+rjTSEIMMmO5M/NuBdahploMIWsD72gX5iK179rAHKAuWRS18/QZhe
         K9f8JwMdfPt/rVFB1Sh6KwBeMwCrWjrNEYcEbSGWFrnQVmkzCGw5xQEjbA0S2eL9S6o0
         ZsSKOxoVX4aGxc7atG7ZKSIGZWiD49YUfP8EWjX8sYR0xkQ7xsw+6RbwnpKLZV0PwxKn
         djEmR81NXZSpzs6GFxGhDra+oGn4xW+Dy4kSgDftDfFHJC4iLvqUqLw6ZWrlaXiqNlJX
         h+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740155598; x=1740760398;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f3iw6hKjikBCxVEZdKgu4116iy//8boYuOpKYntKgu0=;
        b=A5ZDCPrDucSES78wA0sFRs2aKCkq2IodF6C4wbGKfnlZCafINFL4bqU2dH4kcIRnsN
         Srw9WhPVJqLx2c3YAiB2VrMoSxHbjRK/qPlyVIP0gAQH0YL2rytBQWjFDbyksOrn+B3y
         eRjpvL6Jsw6TJA3EPreq8RPe/L9CB9qFiW3AX9V+oLy6anOXA12bnnNpcx9tA5KLGER4
         HDvj4dCJHNN7VVJ4lhNCR+BrQuGftXojizh0T4eZ6BspbHOqr1VxbmTDwJX4DkYFhjP1
         PowU16Boprx9dZGXOa1erJEvXeXrxpYDb10ZSoAxDViS5vsfumRfHsKvjuyzUYZWrbEv
         1BNA==
X-Forwarded-Encrypted: i=1; AJvYcCW475joWJC8Zic1KeO+L8zovvqeMuIO2jgvSVWOHHjUWIl3zFYfXjQb6KFo6xrneqyRT6fL89rQiUNw@vger.kernel.org
X-Gm-Message-State: AOJu0Yys0sWDUxR51qFpYtEHTOsfy/HK14o8wvE248/thqXk++KBUCKB
	CaIF8OUrtxt7eASv4K+L94ktBdQpPz5QP5pSu7kom0wn9OW1lndfKflAkESRbo4=
X-Gm-Gg: ASbGncu/0epdLx3mR5ORvd9dBCxJ7/W/URjj8S1uEEWdspA4EdyrZ6ke+0y4JKHM4lI
	w4Rxnd5TQGrKTrihKtJFTpoSDK/NAW+TBrzUXzo8nREP3P1iEGgEUVYKL5qZGJxns+hvn14LkEx
	Xk0l6Sq3fDwLwdNjYdqaKbNDrUNJkx6p2WY+DRAq1JLt3DBhenL3OQzm0zGpI+d8q4/K7kbnrwB
	bEKxivpAfutFXUYqFhRSGFvmRxKbEdYRQSZs0TJQtX/SfMCKW4KipF32CFzmsBBuZiwHOmI1DqY
	+FBL8ci3FP0wo7hXD6PZik9qIiwpy3xtmsFtn9+vkcAwV2iFaCJfpQLDiLM71vA5JOF8FmJsas7
	v
X-Google-Smtp-Source: AGHT+IEu7y+YxCXPnUsYn64daCxbLq5KBXVjYcY0SneRjy7cICXc6ytelS9iRMCcZFiC70h8skV9Dg==
X-Received: by 2002:a17:907:3f90:b0:ab6:58e4:4fec with SMTP id a640c23a62f3a-abc099e895dmr150442966b.3.1740155597747;
        Fri, 21 Feb 2025 08:33:17 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abba4fc0c29sm906814066b.157.2025.02.21.08.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:33:17 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 21 Feb 2025 17:33:07 +0100
Subject: [PATCH RFC v3 3/3] arm64: dts: qcom: sm8750-qrd: Enable modem
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-b4-sm8750-modem-v3-3-462dae7303c7@linaro.org>
References: <20250221-b4-sm8750-modem-v3-0-462dae7303c7@linaro.org>
In-Reply-To: <20250221-b4-sm8750-modem-v3-0-462dae7303c7@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=797;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=k+eaoBDEiV/v/571srMqiYgCDvaRgVbpbTz+O7zIC7c=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnuKrHA0/Af+/nk0PU5yoU8f3LJNXmLAEEaaCDK
 pTBuPjnWOuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7iqxwAKCRDBN2bmhouD
 1wmcD/410/xPnOqzA0ntt6GOStQjSzlKYVHbApkU9vqaoigwukTy57MznTigG9NSVvsPfZ5NObs
 eRMYGMpGNtsRdDbcy1QpCdlmBNuPDeNUYVJUYHsamHb1/QSx+fQNmmDF999v72C1ZxlV3aw3EdI
 +Z6x/9H2QOMWpqSuGQ0o2B8SPlsHdMf9MepMsbCHlAFNvHjkwZ1oSuhplSniQh2yI1Hd2SWTb4q
 XNveF3qdGSnTs1Lw4ULfpecXUSuodmQducLAALBk+Wjk0sQXxS7JTC/ZGF28dRV8Tc3lMkDuuDk
 5OrhppKcotcQ1UsLM8n0drxK8BM8H3Nle8YIPtFOAZphfI4rj6ZyZUzBeH7Lrys/aO8spSMrbSh
 LyDpN7MBD3tVgg8bu+eBLTZrqbZNFzydGf+UchFUWsuiT2XM3gyeE6XaUSv0NvqJ6LrVPKsGN3g
 t79cigdul6VqACBuW7JxTYCgRQ25naYp83M25UR19Bj+yPpLGmXB8BEX8/PuPJSKDxQ53nmIxrn
 N3ZtGINTzZ9o5j3QLkIA9CtwvHWkpKwo0PF+sMCItYVwwDnBPpWRNYtZ7TvlD/oAcgOk3SDSQ91
 E2mXEgKvxe/6dfPM9r42UcnVma8rWZGrkmDETrD+LorVG6TEoDhDCFslnAbgbV8PSxKTsYlFQTy
 suLqTL0AuM337Aw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Enable the modem (MPSS) on QRD8750 board.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index 7f1d5d4e5b2813c59ea9dba2c57bee824f967481..840a6d8f8a24670a01376f8fce511da222159016 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -796,6 +796,13 @@ &remoteproc_cdsp {
 	status = "okay";
 };
 
+&remoteproc_mpss {
+	firmware-name = "qcom/sm8750/modem.mbn",
+			"qcom/sm8750/modem_dtb.mbn";
+
+	status = "okay";
+};
+
 &tlmm {
 	/* reserved for secure world */
 	gpio-reserved-ranges = <36 4>, <74 1>;

-- 
2.43.0


