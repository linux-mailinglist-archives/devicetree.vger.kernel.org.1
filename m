Return-Path: <devicetree+bounces-124963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BF59DA68B
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:07:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 89932B2AABF
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF6351EC00D;
	Wed, 27 Nov 2024 11:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jlVqIjaI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2E81EBFF1
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 11:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732705303; cv=none; b=pj/2dkah5iiqPj3JY+ZBSCl8OJVnnNkxaLiIOzE7IlxyqJhvMV/nnJgv96R1r9nkHZ+eIFo8VR116rsjffH8+h3KIMPBMRCYBS8ZVoNoJKXZXcAtgw4rwBnolsk2k7jqCXWsNGvXj4H+vZZX96bpE6oOCGiTBJhDvXyMZFQ10WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732705303; c=relaxed/simple;
	bh=lozZ7p/MhDuRt6nX+BtkrwBuJHf1C84dqV892qIj6RI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aSCSvAQBjSQOuk/zIB7VNaoOEcH+r4I2CaCeM1E7E7LQZPKUmrnzTAsxDt7vFiINaOpqrOa441xBwJfgnfO00Ubb6uyIOzwIIeQ+Xutrn3CnhMBZKK8MWc+7FB6x6pwr91SpDDRsX8U/SROg+r3OtNd9VpLCy29W1u6MVjj9K4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jlVqIjaI; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aa531a70416so274457566b.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 03:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705301; x=1733310101; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VB/ikfiNeJLME2Jkz2PKwShANoRD6KN3KhS7opfVViA=;
        b=jlVqIjaIdGwz+w9ViTUCIOrQYfZcRdmM+eCcGyQsn/32+a4NfONrvtQvuxtm0b0RR1
         pK2ezWO53I2ZBg1v31KUlH3PunVEFYyk9uqIjT6+mZ0mJRlKiGlsQ5G6AUJ267uU4N+f
         6lrsEI+QEWEPpFLhPlkEiSA6R/vzVzqhSbSgl7iSlFkEYEmkwT6u9pguqVk9/LIN+yjj
         jVrAd7XAppBxCBY1z2Ctfod9gX7bAXy9H+gYRhhc+YqZh4fRPx4ego6sYGwQRgRoAv6E
         LH9Wwx5BeXti8rhJTdFYKAOO3MBU04ryyOtil320/PXelKyB2W4fdXb6oeWZscrsEJ1a
         mQnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705301; x=1733310101;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VB/ikfiNeJLME2Jkz2PKwShANoRD6KN3KhS7opfVViA=;
        b=ijXkuhrpuClDyaZUhQwTcspBvoOOai+W6v5M6C8JR/QKz8HCnkw7SBAyxavPxhr/Of
         yQTs3C4nPDYIb0OlqnptHGoxzydqCo9H1+2zX8Yg8JHxa3pgb3+yTO8e+9qW9bBh5oX7
         acO7m8XlcJBZ1aWq4ZDGWz5LdI6ezurtt9VtwapDUqyS+jp8q/M0s7mYMl8jmkpVB8W6
         QQEKCfqt898NmW0ZP7oMXY8gqZUeiyX5QSoSr6IWTG2QImBFsHk8nhliL0+XmLqLy9sb
         qVZviVwdVz+8UhyeTpvLZhZvGh5AUWC3GEieScwvdS6g+NSywXrMETLC5FMlTb/E7/V4
         4MsA==
X-Forwarded-Encrypted: i=1; AJvYcCUUgqkQb2LWyOseVexIvRJJkL1ky5rUTIsRx3EjJcB5H2KXNW4bZZv+ymzHOycea6wkggPwm6fgE/+S@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj/EJUITXuC6PCMw3JJ/pXhWkfWvR07yWdQLSVf8eYq8QcsId8
	zzh54S3sVYOPzZ4ToSxQezgCM3B5TRf/N5iENmyR3natrBNe7XwCMMqsbCp4eOY=
X-Gm-Gg: ASbGncsAKEB3nTI0BEN5mZjtHhabWsC6WxtvpqlPKPSh9Qt75jLpsOaD481AXO6jZXO
	YWJjG3d98grkQaLqkh2CDJS+Jhxlvf2zjeFpCFW5qNwBTJxrqLf4HdLlxy11a8gns35zNtTvHpE
	NlqFB2Bpz1juNR63JxywrJRpzDq/iJjhqho3g29goVZF0lN6+ItyIW+vSkWRh+1IPLEWHxayaVr
	rMdWN3mWxi9zK+abFoyLf1I0Ar5zujtOZBTFvg8MWkASYdLxfi00gZRK/jaf+2DcOL53hBqfBUM
	xgfOCaY/bIy07qvFKsCE8CYfEnAQLx5+9w==
X-Google-Smtp-Source: AGHT+IFomp5IYrPwtodVx4NfkTQ1BU4IT3aD00OknD9fip4RuVHiqXSHZTCSxH7nkJmeEnB3wrFv4A==
X-Received: by 2002:a05:6402:1d55:b0:5d0:88ea:6560 with SMTP id 4fb4d7f45d1cf-5d088ea65a4mr876701a12.31.1732705300646;
        Wed, 27 Nov 2024 03:01:40 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa50b339612sm693762966b.84.2024.11.27.03.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 03:01:40 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 11:01:39 +0000
Subject: [PATCH 1/6] arm64: defconfig: enable Maxim TCPCI driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241127-gs101-phy-lanes-orientation-dts-v1-1-5222d8508b71@linaro.org>
References: <20241127-gs101-phy-lanes-orientation-dts-v1-0-5222d8508b71@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-dts-v1-0-5222d8508b71@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagan Sridharan <badhri@google.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Enable the Maxim max33359 as this is used by the gs101-oriole (Google
Pixel 6) board.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d13218d0c30f..5080fe2ce776 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1121,6 +1121,7 @@ CONFIG_USB_MASS_STORAGE=m
 CONFIG_TYPEC=m
 CONFIG_TYPEC_TCPM=m
 CONFIG_TYPEC_TCPCI=m
+CONFIG_TYPEC_TCPCI_MAXIM=m
 CONFIG_TYPEC_FUSB302=m
 CONFIG_TYPEC_QCOM_PMIC=m
 CONFIG_TYPEC_UCSI=m

-- 
2.47.0.338.g60cca15819-goog


