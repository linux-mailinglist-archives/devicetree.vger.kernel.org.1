Return-Path: <devicetree+bounces-204776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F7BB26C3A
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 18:14:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A80DAC21DA
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2643B302CDF;
	Thu, 14 Aug 2025 16:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H0p1PYhs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CB83019CB
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 16:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755187638; cv=none; b=ujdnTL9S8Q6XpEFd3w3Il+HY1Y6vuEhaQgbYySqNNymOjeapNGGBGg2k/f0aTvg5VaKNPaOnvX4Tcoga1wmA4xT7XiKCv2kWIuRbqWAPNPSAZmhf6i5fJI7pSkfeJBm1VN1gumWy8KCwDRg4trHZsWVMyk07sb+Q8dQ1ln00wb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755187638; c=relaxed/simple;
	bh=tuyFNbIZjJIEwYsTvCXnsEW/EVfjfUpA1Tb/WaZ6BA4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y+kp06/hO7zwBDzPpAllFENsQeTREWk/TGe9tPZ0qs0/ZzBxCaS6Azox0kHovjv62C+2gT7z45BRvEBVZl+nDkb0Qc9pZYjXg1G47mtpzlU18EX0kydhC4jZ3PtBjB3MnsYvLAtdPO230z7ilwqLc5QOke9uNE2Tg2n0UPfYwro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H0p1PYhs; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45a1b00e4a1so7448595e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755187634; x=1755792434; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TD30mQRry1zYj/pxkKOJqqK6h7OO9d6sUU7HFt4NRSg=;
        b=H0p1PYhsBp7V+rik+q9YRlAXP3khx0uxMf/1GbHV+MZ42eUCuQcCAUHcC8c46D2+PG
         xGUwc8fAg8skNctg4zqHvIbfD/9mtv+A82uUWRxTZ96ZZBf0IpN47AtNi6r2NTtArgAk
         Q7j1QR5RKZqBK6sSWZfWpGNEirQMVUBgqgMJtgT/xZzGkAXFNDrL0YNY5LrKAeo6KwLr
         hCRCz+ivCRh0eW3PIo1oIoR2JhWyIR7JAdhjpue7y4PTCg0/it7I+3M0rQ05VuKmT5pl
         un4eDdE/M5DZ/+a+RU5ElfEKUVyqXi+xENGpsnZiphMomhKXrYn/maioLnWigkFirED6
         rYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755187634; x=1755792434;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TD30mQRry1zYj/pxkKOJqqK6h7OO9d6sUU7HFt4NRSg=;
        b=Fam2LWSa1YdVmpwjTpw/4MTjOlijLO/gm+jvRWpkrf/dVlev5ckau4S4SkPmXaKCU+
         zlUXD8ffAnc90Mk0gustbGXgGOHVHvTCLGhLSrA8HH3mIATr1A8LrOdOyeDHPv4//mFq
         sfa0S3mXYfmD2P3SleMn1aZRSILQDiQBXx69bAUWkoxghQhZqYt6NqbKIajdu5rtHZ+L
         hLr3kUXQ3sxAF9xEx2FwmjmEF3rrq4Itjvr6PVmFw7SoKH1a3255x2L/U3MP5gP4n2o2
         WnaRc7ihGQ/m4p9v+cK4ShGl9B6lyegQ7PnaU5G2tTCz86kihCTcapANx9O0YYrCH3T2
         jtnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZy9mIT61GOrjLJaq+jeCJFiykUsZIcda33JudYLyIHTrXNG5Hckw7niq/mXeujaG1uQwW0KNL0KJB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3+L6l+OWqJwWFeIzVK+6lRoeHYPBv0t3jk44l+TYEg7EeY1jW
	XYdBlrOHfdyQ+2TKegB71DO5dJFNZCmPkBnXAWCqcUxuysdJddStFa0ipJHJxkvCa1s=
X-Gm-Gg: ASbGncv10E+HKdOnB/UNCqOdVs8eIU3tFfBWetDI3yFkiU33sdeJMkYacDO7qeVuJb4
	XX9phlQ2OyfAlafQm7Otgo1E2/Qj7puxfXXZNar9NfDrECBxcrtdN7ELlyeHWs32YV6PTFPBvKp
	dpHbq9fZOpeQeVYu/dgEWstuzmeYVOJo+rp1ARNVMWWAmnzODDph8maog4XN35Wt4l/W67p1zOW
	y1azXGM13dqXouNwQV6acV5Fjbe0MZRi5ukdz18ZB8i3Bih5xsEUyCrcdSpV5KpqBwyw60o4cPo
	HSpWR71suP9F5px89jKAwAoFYepPHM8b9pDAs0k4lZcGxdzkDB08wZVDE8Beo+LlUdyMesYZKVd
	GrZGDZXl2y31zKjaGA5C2c4qWdCOIIOo=
X-Google-Smtp-Source: AGHT+IH3g7Lbg9BD0ijgtIIxDOgR9U2NbTxPGle12zoaibJgP+H7TGUyhDPESpYkX6F/UP8500PcEA==
X-Received: by 2002:a05:600c:45cd:b0:459:a1c7:99ad with SMTP id 5b1f17b1804b1-45a1b646924mr27213635e9.22.1755187634247;
        Thu, 14 Aug 2025 09:07:14 -0700 (PDT)
Received: from ho-tower-lan.lan ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bd172sm28363495e9.6.2025.08.14.09.07.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 09:07:13 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 14 Aug 2025 17:06:51 +0100
Subject: [PATCH 11/13] dt-bindings: lpspi: Update maximum num-cs value
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-james-nxp-lpspi-v1-11-9586d7815d14@linaro.org>
References: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
In-Reply-To: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
To: Frank Li <Frank.Li@nxp.com>, Mark Brown <broonie@kernel.org>, 
 Clark Wang <xiaoning.wang@nxp.com>, Fugang Duan <B38611@freescale.com>, 
 Gao Pan <pandy.gao@nxp.com>, Fugang Duan <fugang.duan@nxp.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 Larisa Grigore <larisa.grigore@oss.nxp.com>, 
 Larisa Grigore <larisa.grigore@nxp.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, 
 Ciprianmarian Costea <ciprianmarian.costea@nxp.com>, s32@nxp.com
Cc: James Clark <james.clark@linaro.org>, linux-spi@vger.kernel.org, 
 imx@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.0

As mentioned in commit f46b06e62c86 ("spi: spi-fsl-lpspi: Read
chip-select amount from hardware for i.MX93"), some devices support up
to 3 chip selects so update the max value.

This isn't a fix or functional change because the devices with 3 chip
selects support reading the number of chip selects from hardware, so the
value wouldn't have needed to be set here. However the commit states
that the DT could be used to overwrite any HW value, so the full range
should be supported. This also avoids confusion for any readers about
how many chip selects there are.

Signed-off-by: James Clark <james.clark@linaro.org>
---
 Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
index a65a42ccaafe..ce7bd44ee17e 100644
--- a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
@@ -64,7 +64,7 @@ properties:
     description:
       number of chip selects.
     minimum: 1
-    maximum: 2
+    maximum: 3
     default: 1
 
   power-domains:

-- 
2.34.1


