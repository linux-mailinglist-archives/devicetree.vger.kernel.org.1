Return-Path: <devicetree+bounces-125231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A99329DB445
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 09:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17244167069
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 08:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F23B7153BC1;
	Thu, 28 Nov 2024 08:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EjU+7hgc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CD214D2B7
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 08:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732783892; cv=none; b=ikC22+aHvwjGYrt+cutQBpE0Pguhj+pECShJ8QQdifBi5k0yvt3k/vRZ92aXpL22uzBxj8VcNt1HptuQXVRHU/9uny6+gI3iYZ0oEPoNpHzV98YOvvit26AHqex/7CmJK1MjhBZUdTIUkJFMiCc/GuV7VqOTD9AtJv+Vyxs9Ow4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732783892; c=relaxed/simple;
	bh=pekj7ECgVOlQRe4vr1N9uGVIr7LGMONNx11ziceMBM8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=iQ068oSKvjQGigQ7Z6Da7rFK2Qc+UsLOi62RsapYHTjWecmLEAyA6C/TupqQu0k6JUbF8eUvRJNPdtlt2WW82uuZ/Iyy8/HcPkY8xxIRxmuhQs+fYJS4trJUwdLnfXQX9JO0ytE1ePrtu5ou1fsM6g0Ch9z/rsybZDe/x32scAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EjU+7hgc; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aa543c4db92so77487466b.0
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 00:51:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732783889; x=1733388689; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=svMXb3youuDFGL6heC/yYUXnD+Ef4KL/6L2Ux/La5Xs=;
        b=EjU+7hgcUKik0obu3+xJUnTxKZlHidGDoxF2c3OeaxuJ5/aUtAUgxuDecfMizRQNzA
         MNyKyn1hn3N1NGMWC+9O0jHnBudKtc16i8fC11rPfehPmwnqys9qt5UTANMjZH8wir4X
         PAX41xujNd0HG1gNnkfjBCsjzENUooP/wZBelnuF1kqgaLEEwNVeh/TCLfhuztNL9oEk
         2apWfD0GlNBs+XUajemNq655a2cNBYEFKojzx1p6rltQcnbUceED7R9nwOYPQETc+Cdw
         Na4WTjbLFfeLJzkbq3UmyHIbA6U3jNGQalmXpm6p62uvtnS9g7f3rMQt5lFYHrO/wO+n
         6UxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732783889; x=1733388689;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=svMXb3youuDFGL6heC/yYUXnD+Ef4KL/6L2Ux/La5Xs=;
        b=eNySm+xhlJW5WBVAKJm4oIVBrFZUs4ITTtb371MM4pL4eg4Hd/M69SCyq5aCvoHHny
         gu/pHXzg49uyFjFO8mrxRhmNYnT4olA+ujr04dXx60DhnCLDF7lLkZP/uiDPyBaBRpRe
         sCdADjFfVv3YxpU3/OG7zb2s3qeN6ZwdYdizkOYWnFVaeFJGtov7gy3ij2ZqGZ2J6aMt
         sIq3Fr3erZT/21vC3DLEiE2+84tkVsN/UqoD3EfG/H+50XLDhfuFjOy8kx8Qmu0ppcys
         NWyMfg2wdY8RQDjKsmKvWpRB3+TPCik9ndh5Z/7dD24a/sYRoG6V7Z2J901eBLqvMlPq
         esjg==
X-Forwarded-Encrypted: i=1; AJvYcCXTt/3XFDA/XY2I3D24v02NrRwgoeEM7RFaKKgBoR8i9h9Zcq987tGFyZP6bzZt8Mn26p9Mc1bqL9dc@vger.kernel.org
X-Gm-Message-State: AOJu0YzBF/kLv0CJqya9tz7/asMTsielAiQWpzhhrn+Ul/z5w3ul2Wje
	YeY18BkGcyxIp9W0l1XEsTb5YnjSfM0WJWWI9pCtlFCYtqJaSiqy7otuTTQdJRg=
X-Gm-Gg: ASbGncv6GsqhVgqIgtqeHBmIc++Iv5aCGLlxuvbGIcQx40xPbdb50UFJXyDN5BjJ8pk
	Q4CZPxWXKRVFkNod/s2Tsnd9Up4sBLXQK9BsQkNJL/SOyo6zFtDYCXCf7gThCMaBzaQDYZvxn2e
	5k4pub0tke+Cw4Ld/ClK1iFkd3UI72ewamEL8j6gMMR0+i4XFW+fCLi4aW0QxGoIU9dWwWl9Xcz
	DbMAivgqfGc1KgTW7sxO2Gun7onvlKW09HvHxTeKt1SFck6Dqq24eFjd9pYtyjdAAwFXDMetV6p
	3rxskBdpKJDT/lcih3Dcnh4frjSey+6fAA==
X-Google-Smtp-Source: AGHT+IHx8LJTIGLe7CuREVHaEYs+SJeA2ZjAsRSIj3tP9WdyNMZcBvOS/lqhSV9U2pCag7lZx5Y7xQ==
X-Received: by 2002:a17:907:775a:b0:a9e:b150:a99d with SMTP id a640c23a62f3a-aa580ecbf60mr506696766b.5.1732783888949;
        Thu, 28 Nov 2024 00:51:28 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a7cesm42131566b.162.2024.11.28.00.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 00:51:28 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 28 Nov 2024 08:51:04 +0000
Subject: [PATCH] dt-bindings: usb: max33359: add max77759 flavor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241128-dtbinding-max77759-v1-1-733ce24c0802@linaro.org>
X-B4-Tracking: v=1; b=H4sIAPcuSGcC/x3MQQ5AMBBA0avIrDXRKsVVxKI1g1koaUUk0rtrL
 N/i/xciBaYIQ/FCoJsjHz5DlgXMm/UrCcZsUJXSUqpO4OXYI/tV7PYxxjS9cDWiQ9XqRmvI4Rl
 o4eefjlNKH2C8F75kAAAA
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagan Sridharan <badhri@google.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

On the surface, Maxim's max77759 appears identical to max33359. It
should still have a dedicated compatible, though, as it is a different
IC. This will allow for handling differences in case they are
discovered in the future.

max77759 is used on Google Pixel 6 and Pixel 6 Pro.

Add a dedicated compatible to allow for potential differences in the
future.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v2:
* collect tags
* split out from original series (Krzysztof)
* link to original series
  https://lore.kernel.org/all/20241127-gs101-phy-lanes-orientation-dts-v1-2-5222d8508b71@linaro.org/
---
 Documentation/devicetree/bindings/usb/maxim,max33359.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/maxim,max33359.yaml b/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
index 20b62228371b..e11ede3684d4 100644
--- a/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
+++ b/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
@@ -13,8 +13,12 @@ description: Maxim TCPCI Type-C PD controller
 
 properties:
   compatible:
-    enum:
-      - maxim,max33359
+    oneOf:
+      - enum:
+          - maxim,max33359
+      - items:
+          - const: maxim,max77759
+          - const: maxim,max33359
 
   reg:
     maxItems: 1

---
base-commit: ed9a4ad6e5bd3a443e81446476718abebee47e82
change-id: 20241128-dtbinding-max77759-b3ddbd264544

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


