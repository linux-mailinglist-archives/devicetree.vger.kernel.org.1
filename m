Return-Path: <devicetree+bounces-130224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 286809EE552
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 12:45:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66F801886FE5
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 11:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 822DF1F0E30;
	Thu, 12 Dec 2024 11:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pf4NnVxs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4271C1F22
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 11:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734003943; cv=none; b=dIF7tY4jJsKmqTF5hXiyl8RvOhLHFeS6XgvY5KkXgXtMlhdIYd0ZoyW26v7lP+BzPStNdO9Z87MUOB9ZKhEEdqpyPv+sBuSssrAycUGoZiP4aX/zXTeeq2gOHBLY+YWIDqzNuTCNwgMfW1F1vXab1/XBvGR5v8c4R8BzCpKGOic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734003943; c=relaxed/simple;
	bh=qhhbi0bcUn0p1iq6KXl8yrUA1GOxNzY5ovtA2T8t+Bw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=f5NC1uksq1SAULHbErSdfsQF7k4m4RzGBIp4h4scMewqzCwAdG0IKKecIYMEKXpyhGYS22mLWNtN49xGKxoHguGsiBp5W56wHq21UCR4qON4D0LuJwaJNJsuMpjRY2KBtq2ppwL5zy4Y74weXu0uX57/sUxAG9h4pcVbC2qOLxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pf4NnVxs; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-21636268e43so6166065ad.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 03:45:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734003941; x=1734608741; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x9Np+DbeleWAe/hMrNZ3/7vkOSfagGFzChoh8T5Q7/g=;
        b=Pf4NnVxsad8di7gyqk44aQd5ZiOWw+jpfimlItEUhI45PczvEJLGSXRlBiCVKXc6F3
         y/20DDeJ9vG4DC8z7b44ot9VNP9XX65u4H+gwjBMljgEZBFeflN5QVreUBfUMtmLZcDq
         I1X9ZI2BGMpdZyBrcozmsKZbpKus0i5MLK9T3j0QSa9A9EX/MbLkPh7lUeQ0mZ55HOwC
         1+dQ+zwjqwxFuzsBE6pipuzE+m6OOiD+H8uZXW3ZDyVqq+aZNelbin9FHHX9lfEfxapX
         +LxTHvFYJN05kY+CQFy/UWh1F5zYxWMf3Pi1Fo3V+4I01Sm3htc91eUE5PtHLl+d2a4l
         NiDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734003941; x=1734608741;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x9Np+DbeleWAe/hMrNZ3/7vkOSfagGFzChoh8T5Q7/g=;
        b=QD6gH0dPKjxeCSHqLETlyE1okd6eBufsy7HG1qD3PmoNtNE6P83QUCAcz8ZIZ9S9Xm
         xoMhI8gbIiUufgC3SeQVUmsKz4LkI3kn4QBPKhmmeKGdYkkGZd6wq+uoTdHnmOcjdqOH
         //zbNXs9nqVSmOvCOyIZcRjEJibRf+4AjXGcOyt9qNSF1q+RibZ/LSNKgHfnoLk6/Pxe
         NS7BsotApXBWz4i9RkJ/f32zJ3Jjm4UZKC+pXqEHVeitHjMP2ssuAgLfwb03aULxbhBl
         wFktic3pn/oubsXoTXXttv9CO0e7N/GGupGhx3BnNyvqP46Nluff4KCqAtx9I5HkqvfB
         ipbw==
X-Forwarded-Encrypted: i=1; AJvYcCWC+DMcPqEbfonTJ5gQs4AE7N9uYNnGKQLff6NnVx/kalkNAcbSfptuwwcZHKmn+cQmtdakL+JYKsHg@vger.kernel.org
X-Gm-Message-State: AOJu0YwzgcPvnv1UV6TgtUI9sSD/viU6vbY134lbGdamUFYwCUq7Wwro
	W1zVDwMEEgIaJVsR6oTvHRRF0lbth8N7t813YCjqhrTSt/Jdjke+
X-Gm-Gg: ASbGncs6BIyIlc66lDjtmXY/cihdUvPI9jGoIjropzpckJf6riOejSXmWhtvYonWKzs
	X9AmlnXJnEO3jRE5pLkus1VFGbt9H6Dz2GDEIpCay2RzaT1ILEGYWGZZT54S/MwyKsTQLjOONkK
	bxhdNLsbebiJTDEhfkt08mjJAM/wHTQ4EpkyFZ7TaPbNBDWMJ2bDnY4T04zvAG3NN/lBH3fZN7h
	ZZ/IXBzSNxQudPTmXz1zNjyBTLjMagaMllfaFimnZpO92IyPmk4u4Df/hmZ0ZZUBpX3IHM=
X-Google-Smtp-Source: AGHT+IH2605jPrvrYOYHpm64kz+0y778cUpfFeCNXEuXyluuUZ7IlObxLt2pQqsdvim2N2t7Wbrs+Q==
X-Received: by 2002:a17:902:db0b:b0:215:72aa:693f with SMTP id d9443c01a7336-2177851f4cemr93926455ad.9.1734003941334;
        Thu, 12 Dec 2024 03:45:41 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:1176:b16b:e3e7:580d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2166f648cc4sm47650325ad.187.2024.12.12.03.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 03:45:40 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx27-eukrea-mbimxsd27: Fix ADS7846 interrupt
Date: Thu, 12 Dec 2024 08:45:35 -0300
Message-Id: <20241212114535.558496-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to ti,ads7843.yaml the ADS7846 interrupt should be described
via interrupt-parent and interrupts properties.

Do it accordingly to fix the following dt-schema warning:

ads7846@0: interrupts: [[9], [25], [8]] is too long

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx27-eukrea-mbimxsd27-baseboard.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx27-eukrea-mbimxsd27-baseboard.dts b/arch/arm/boot/dts/nxp/imx/imx27-eukrea-mbimxsd27-baseboard.dts
index d78793601306..7ee1e8c3bb08 100644
--- a/arch/arm/boot/dts/nxp/imx/imx27-eukrea-mbimxsd27-baseboard.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx27-eukrea-mbimxsd27-baseboard.dts
@@ -76,7 +76,8 @@ ads7846@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_touch>;
 		reg = <0>;
-		interrupts = <&gpio4 25 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <25 IRQ_TYPE_LEVEL_LOW>;
 		spi-cpol;
 		spi-max-frequency = <1500000>;
 		ti,keep-vref-on;
-- 
2.34.1


