Return-Path: <devicetree+bounces-228501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CC1BEE5DE
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 15:05:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFCFF1898A7D
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 13:06:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E512E8B71;
	Sun, 19 Oct 2025 13:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZmMODl/U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145592EA730
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 13:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760879137; cv=none; b=ZSZydWNdnZsYXdRmEJyidG+d9To/2tcNp3xIAgNLMYMQimG9IjBxaEkYG+z5tNcnu/SKghAFvqOZ1tM5Mj408CycqmoznFPm+QU/+TwEPogixm09qPb1BIJeqG9j8Z85YbvLnSuuDeCMhHXMXUZCYABdOllKwGi7nKPWQf8viY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760879137; c=relaxed/simple;
	bh=WupZjDzp+mYLUnPliPNHAA8llyM+D76W7Nv/oh/99/Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RWE7b+nwXHilQthJ3g71+eRYqzCKiQMZEAg90d9SCsWd6p4+7xJQYgAa3eMpxEFcqKVApO/XZd4pVCJ6qf2Svt34IoN0Un9Pl7Ql9Fd5XrXVcpBtCb1s4Fk9uvjhT2Jla7sORDrIVzeiGUWhHhEZDkoNGrUgXo/ahasRe4Atut4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZmMODl/U; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-28e7cd6dbc0so43615075ad.0
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 06:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760879135; x=1761483935; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H8kUPDmdGFI5dlB1Y4l1vU9fWBs35HJfqSRekTM7U1A=;
        b=ZmMODl/U5ZBaJnWBOI0JWM8cWaXuxDw6R68L9tVivnXa3qyug7K66F3ZkPXw5np6dp
         HdQYrNjoOS7R4mzcnPuECTrLmgbQKgkZsd4gbyFJb9uuOg2ZnYb2+nAHP3nnMnhW8G3/
         rCH5OanDFXb/XAXGIl5Xae2OW80FlXu4u4/ZCnFj4N71trbtdpcwu9B2Mb1gz6tI86r6
         E3ecctQtwRnJa87kYJgHRu/B5D7EXS2vk0RaHcCrpr14yh7KzF+EVvhKZ4Uh2AQOD0ne
         n+LfX1OQZdYsWwY2a1wUqO7P8ylPfihhFoTWkZQw67r+IEovOx4Wyw69wg8fBkV1ECHW
         gJ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760879135; x=1761483935;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H8kUPDmdGFI5dlB1Y4l1vU9fWBs35HJfqSRekTM7U1A=;
        b=if5U++LTsDX/1dhNyQttYSVSnryR64TUO+miOh2q31IpETpEEzqZ59+9TljJnEiw1O
         Px0+3OKPgtn2HJR4QaJ/Z16MJ7jDxcbDYxUJN9M6ODmGUTL6qirMt3G8MX94hJeCbnGg
         S0P5GWQUH8vDmsfGFA/BvKmm6+fwqTwx8qG3kmJ4JjBkrHzCVeD1me8mLgc0zF+QCOqN
         gdfEV6PEwb4HByRz1jIGrKIHHmvxDEkMYkj0GhkwboiV4HRPf2fBIIWsz47JJoj1SQza
         wgm+wbXe2sizProeh0Hf/FKXu1+U5Jl6KQoCFQoK/73uDEynUh7G9oUGEPPDhpCuAeS8
         X7cQ==
X-Forwarded-Encrypted: i=1; AJvYcCXG7mS673v6wbkMiju61cTiH7dacsTFlMu0GcyxzwGQK9ZnSF+pdRzruH8PSCc4x74gpGyTsLayL9oo@vger.kernel.org
X-Gm-Message-State: AOJu0YwDQr/E+dA5f2wTDF+S/1coFn+lJqO9PKFZKf776KOyp4hYNoUO
	231W3ofQ8u7Rkd2YB//Ax2YNBMvB+U5t6YIYEo3fDkXfKDRmdvqVyQgB
X-Gm-Gg: ASbGncuddbub0NQ/4BCcVpKQKgj35MOpt+OZdkQg+lEJaXdqHjiPJqbWbVhlO5zESay
	rq242wWzQ34RTbaPtJCafkJkjxKpQY+ROp+8qumMB9nxtb8vjVyY+4xX95kSkhB9kpvfyi8/EkR
	goKdq0JcTOUGOKHaHvd2u72L2o59ntDbEO1uml/r96DDfT64/5vONSxAaI90ot195f7U2lwwsO2
	JfVg5ZvCHfmMTLt9iXyM/Y1KlDQGvBTpjEFgrOfYBSkgqdXrmJiVf7uZ0nNYfgZu3sCqNgtAj9Z
	3Id7ErgdKTyIUO9RwumVNdjVEVuOlNN3rkfbmy/GiIBhKmAz6Hk2yQS33Sg6f0adR6T7qDkjAMp
	gfScVvh36aDP7I1WVJZyHbeLM8Kw0hgOS85vEEYV47ZeFrfcjP6FLAap3BljMEBByTwTR8v0NCI
	2qXFbkRI/51e/FactsFQVoOPdK
X-Google-Smtp-Source: AGHT+IGna40/zgNzr/p+PlcAD+sAsPiE5QfzBrHx5lk8tHw0QkZCgRgKv2JV/dzTPM82UtUsADs1Mw==
X-Received: by 2002:a17:903:2990:b0:264:8a8d:92e8 with SMTP id d9443c01a7336-290ccab59b1mr119270255ad.59.1760879135435;
        Sun, 19 Oct 2025 06:05:35 -0700 (PDT)
Received: from Black-Pearl.localdomain ([223.181.116.113])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-292471d5c33sm52842425ad.73.2025.10.19.06.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 06:05:34 -0700 (PDT)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Sun, 19 Oct 2025 13:04:37 +0000
Subject: [PATCH v4 1/2] arm: dts: ti: omap: am335x-pepper: Fix vmmc-supply
 property typo
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251019-ti-sdhci-omap-v4-1-fdc63aaeb083@gmail.com>
References: <20251019-ti-sdhci-omap-v4-0-fdc63aaeb083@gmail.com>
In-Reply-To: <20251019-ti-sdhci-omap-v4-0-fdc63aaeb083@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Barker <paul.barker@sancloud.com>, 
 Marc Murphy <marc.murphy@sancloud.com>, Tony Lindgren <tony@atomide.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.2

Rectify a typo for the property "vmmc-supply" to resolve the errors
detected by dtb_check.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 arch/arm/boot/dts/ti/omap/am335x-pepper.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ti/omap/am335x-pepper.dts b/arch/arm/boot/dts/ti/omap/am335x-pepper.dts
index e7d561a527fdd9eeb15237ddee4c8db1dfd48edd..10d54e0ad15a7ff9770ad02c224b4b47aa5040de 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-pepper.dts
+++ b/arch/arm/boot/dts/ti/omap/am335x-pepper.dts
@@ -347,7 +347,7 @@ &mmc3 {
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&wireless_pins>;
-	vmmmc-supply = <&v3v3c_reg>;
+	vmmc-supply = <&v3v3c_reg>;
 	bus-width = <4>;
 	non-removable;
 	dmas = <&edma_xbar 12 0 1

-- 
2.51.0


