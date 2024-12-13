Return-Path: <devicetree+bounces-130515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F18509F042F
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 06:28:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 61C39188ABC6
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 05:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17B5718A6D7;
	Fri, 13 Dec 2024 05:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jgwGOTLJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABCD1189528
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 05:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734067676; cv=none; b=WH2GB6YH3SVfzMXfyMNVS9uHVpPTlhpS4AwgldGz6YZLrgtNOM8gmZcWkeSILfcKkZ1tnQKAwaagXM+9tNqMgDlpto2+SOrW+oyQwPNZaTPfuVaD58GZJgNm8hNOBkQpfzE7CnIVgdRsIzslXAc1tsv/dXrpw+IvqmOE3nh05RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734067676; c=relaxed/simple;
	bh=bk9gIncBGFq0J0SRqSDAmnds14P+ZGVSByXhzONMc9M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t7A8X9NVzesynIlt/iaoEcdn2ciSdyAEbMXaL/tX/5WS1xHZSpnehyeib0M/lTSTZunIMRpFf6UI0LIYLb1AfN64i3MYo3Whh66Y8PY6RL3ol2ltbyuc+o7X2FT4xbYPxtYj+9DVQQ0rRm5U1FpLcSZm9Z08TTsJEibzRM8rk7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jgwGOTLJ; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-728e81257bfso1131119b3a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 21:27:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734067674; x=1734672474; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9sHUcSk8M94bRNs3iZu7+gRAJsjDAn//p+qux811FOg=;
        b=jgwGOTLJ7u7Gij9HNXzOv/aDjXxvSoz6xn2qgipG932BlzsuTICNXCpOiPrwbie2n3
         ypX06IN/RJK2YUy/DCDuLjF3bZrpWfVjCAggNpNZeT+pykM9B542iS7NTXS6Gc7D2UWK
         MI9ExVoLWgbT6jayij1qdGtM8ftwLFcXPPdbY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734067674; x=1734672474;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9sHUcSk8M94bRNs3iZu7+gRAJsjDAn//p+qux811FOg=;
        b=LaIu1my5f7UYeMaSUL63diPPIEaofYDO59NRWz7IreOCczvpoIUh3VavQIO8d8YvCu
         Vz2StxLsaN2LHjYBU8qlgnPA4BivbBZeTkvvgg+SQyw+0BgptyQbpewRxVsljHqlsgpu
         sJ44SEKqNSe/zuCknmnlqaJEqZ317zspLvgcVe3nyBbY31l1GmKV7mpDkhQMjSfVGMFQ
         jOPhQmu75Yq7opdyEfzp5r4jajNj8NPJKGhAoX5kDCxzh3Tj4xemhkjZeY1AUMC3BlRq
         o55TcInH6eZi7yMHUweN5MxqYu67cz8sTlUNDVwb5GaCeDDILxsDzP1A0EnaA7Mn+Rdo
         xjBQ==
X-Gm-Message-State: AOJu0YzCWD7J1nRdHnWdVa6j1IXqnWRLFiQnuYRuW98nKzPWSCnej8v4
	F+uyf2ZL2VtNHXurTjqSHivUMMc0AfBRgO6JdkS0pLFtuH99rZEJ5iwf15ugKQ==
X-Gm-Gg: ASbGncvI5vwA65PyFFRxyK+vGjgKAfg3HxtOtYLNUICGmcgXOaR2O6Z19k0TEumnN4U
	qQ/zSb2/eF2RUujhqjP7zysjf7BnRLhwEhf1SiWWrOiJPjVcET3bnczEvnd6pZQ+n8IdQ3lc8nl
	FytmJgz8Dw+ql4OO2pC4/RMltLC1SnfLo3rvun4QsZtZxKPmopFBNr8SLdE9DcuJXD2Y5j8lE4W
	E2CKWJfQl4VkCgyo3eIIKeqUAqaTcQiXQv6OPYZVHsG3Lg1Ep6rj2s61ikA6Mg5G/C4Hi9Qgi7G
	60oevB40+LKev+/AcQ6XMZzSOBuJefXaRqC/MTTees0AysQ=
X-Google-Smtp-Source: AGHT+IEewRI1exts+mBt5zPXwiV4DU9C7+OYlL08s3JN7DhOdqeiqTJY3msJOJkX4Vs4aQwdU++g3g==
X-Received: by 2002:a05:6a21:7803:b0:1e1:b35b:5132 with SMTP id adf61e73a8af0-1e1dfd6023bmr2007610637.20.1734067674075;
        Thu, 12 Dec 2024 21:27:54 -0800 (PST)
Received: from yuanhsinte.c.googlers.com (176.220.194.35.bc.googleusercontent.com. [35.194.220.176])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7263803a805sm7386830b3a.14.2024.12.12.21.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 21:27:53 -0800 (PST)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Fri, 13 Dec 2024 05:27:47 +0000
Subject: [PATCH v3 1/2] arm64: dts: mediatek: mt8183: kenzo: Support second
 source touchscreen
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-touchscreen-v3-1-7c1f670913f9@chromium.org>
References: <20241213-touchscreen-v3-0-7c1f670913f9@chromium.org>
In-Reply-To: <20241213-touchscreen-v3-0-7c1f670913f9@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>, 
 Hsin-Yi Wang <hsinyi@chromium.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-7be4f

Some kenzo devices use second source touchscreen.

Fixes: 0a9cefe21aec ("arm64: dts: mt8183: Add kukui-jacuzzi-kenzo board")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts      | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts
index e8241587949b2bc238ffa85f8fa6b6ca78b1d6f5..561770fcf69e66341c080687e2efaa6e98c550a8 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts
@@ -12,3 +12,18 @@ / {
 	chassis-type = "laptop";
 	compatible = "google,juniper-sku17", "google,juniper", "mediatek,mt8183";
 };
+
+&i2c0 {
+	touchscreen@40 {
+		compatible = "hid-over-i2c";
+		reg = <0x40>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&touchscreen_pins>;
+
+		interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
+
+		post-power-on-delay-ms = <70>;
+		hid-descr-addr = <0x0001>;
+	};
+};

-- 
2.47.1.613.gc27f4b7a9f-goog


