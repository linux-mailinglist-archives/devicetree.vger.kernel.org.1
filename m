Return-Path: <devicetree+bounces-89985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9869435E8
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 20:54:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2CAA41F2577E
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 18:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB6B614F9C4;
	Wed, 31 Jul 2024 18:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="eln/Ds5Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFF6166305
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 18:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722452003; cv=none; b=GonIw0Hnq9vueL4wKUT7GLbqJaOpKzCJ6Te13UJOKUQnb86gOF9UoJWqULzd1lrsjFWedPOqmHckAsCEkY40nkZP4U/mlhgQQWK0nqtRX4RlNtNZpS4bWxrJjPHFA/f7ROwgoWCV3cubLQsv/JbeH456X2Ny1pC7OgjJnaA+3HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722452003; c=relaxed/simple;
	bh=kPfCx03ybr3MIpJmR8pHHfQuNtULEfQX762YDGBxnKs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=vBijqcAbWLnrWHoLe7RKLccpVO3l8IGk/kq2WKw7LSRF1/XYSmFwpXtiBaC3L1Xluxz7Zgra7obrl5tzJ+wrw6AUAkVsEE9+/+0zWHaETMz6QHLbNBLhCTanzKs9ZMkufmE6Rsuj+GSF+uPOCFM+9mPV74CnHzxfdJ8u5mP62+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=eln/Ds5Y; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-76b3c938153so400100a12.1
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 11:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1722452001; x=1723056801; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Q/3E3b2eo/TFXOq6VQUHvlRBXDZ59E7fsnrItLmpMw=;
        b=eln/Ds5Y/ogz+gtnVuAtt9SqjVE2EHSo0AW1LOcUWIuG6qz3HmZqf9Ezs+KpSSErpC
         kgCEXorehvcsjX06Wi4mHO6h/x8Gwn0S0AmkRZv0Wcecc0UqGCjYrP8+UZj49BgXdUuS
         1fbDyuy7JCyXxtC03GJReeXbjur/tRDJXMIOABWRYFtdzFRfE+TLuRCrd2GKEhxrpo1L
         k118fR3KAQnxqj9XB4ODkEia2gjciM2wQrZeWecMb1qWe0W32565aQS5ys+MO7kGGmN/
         XaOq9o6AaIc7MhWn6RV+VRxE1vS93DoFE4MYE1Dj3g8yj/y3VsxL+RGNJ4/t37DgCiaO
         DqQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722452001; x=1723056801;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Q/3E3b2eo/TFXOq6VQUHvlRBXDZ59E7fsnrItLmpMw=;
        b=PdCanMujFwGx+7+kjvIDgFSn8Y2tfi+B2uMCw5x6l5nAWF/9WDoEHvZBMh4gfAu4/p
         VKYhX06pXtRfv+r79eLYfz/fTz8ZwTuoOnCQ4sAJsL0wCqRjaweUqwbojuj9432oG2Df
         8+AXqOZDBl08k3QZ0h0bZmOkeTQO4uHIkIa50j2NMpm259bXkeR/w6vJs0tvZHZYGnLI
         F+5+rEujnjp3ETZQsrVLJ8aL9lVcP6E5rVPAToVDwVtcgXEEC3BIBw4ChRdOtThWK1IS
         4A92tL2rOzcDz9BeD3Eh3Iwu5o8VZj5YAATUPH1p9lRcimzs8r+KwHLBnMq1fhrO+ao8
         4z9w==
X-Forwarded-Encrypted: i=1; AJvYcCUM2uXYG8u8y829iwTWxrEGvToIL6kkv/6GmTHTlrTuG5SPWYcLR8hTSLF6C6xCm78RhpSKT1MsFHYO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5gQeumid/EDuEN2FaKohucK1hj5VJhiUgM4iwSjuHtdmA5isl
	fhEBPpkalYgcCpheR0/70X4TkYyEovnJw6UTDbKFYamDiwO0K/rYZDF9mWYlPA==
X-Google-Smtp-Source: AGHT+IF9e5nH0+houYf35o7HSbuUJwbUbuVuAZal2IMrlR7X8KHx7hsAAxE0bVJaQ0L7OkSUFPL55w==
X-Received: by 2002:a17:902:fa84:b0:1f7:1a37:d0b5 with SMTP id d9443c01a7336-1ff4d0f0395mr1556395ad.4.1722452001387;
        Wed, 31 Jul 2024 11:53:21 -0700 (PDT)
Received: from [172.16.118.4] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7ff3d64sm123182825ad.299.2024.07.31.11.53.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 11:53:21 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Date: Thu, 01 Aug 2024 00:21:06 +0530
Subject: [PATCH v2 2/3] arm64: dts: ti: k3-am625-beagleplay: Add
 bootloader-backdoor-gpios to cc1352p7
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240801-beagleplay_fw_upgrade-v2-2-e36928b792db@beagleboard.org>
References: <20240801-beagleplay_fw_upgrade-v2-0-e36928b792db@beagleboard.org>
In-Reply-To: <20240801-beagleplay_fw_upgrade-v2-0-e36928b792db@beagleboard.org>
To: lorforlinux@beagleboard.org, jkridner@beagleboard.org, 
 robertcnelson@beagleboard.org, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: greybus-dev@lists.linaro.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=889; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=kPfCx03ybr3MIpJmR8pHHfQuNtULEfQX762YDGBxnKs=;
 b=owEBbQKS/ZANAwAIAQXO9ceJ5Vp0AcsmYgBmqogQIw+1kSBa5l0LPqEzMyulYyOyGwpLiDqAl
 +XMMMoQrviJAjMEAAEIAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCZqqIEAAKCRAFzvXHieVa
 dGsLEACnI9KpgROhjrZozoczEI/u+dRf5uh/LYSnTLW2PsdGjwsBfhmhQMq66oWyjLzpHwix1Fm
 0F6PQev4zZVxoCKwaPMSxVaQG5eXCqM6CQL9saBrCgxR7Loh1EdSKuvwh2LXqOsIoBzhSgbe+Rq
 FYcxHFNfTel8mwZIMXKlL2KFWKyW16GzrCWdIQGJjc11ZgLI7Bj3OcnnjsnuFwBoXm5keHYI7+2
 GB4/dHSbxr9NwzmYea3rnVUWKk1J32XaGvuCfVWgL65a5T638EIYLg/0dUZ8DhuJkWdVJizaWOU
 tHFKvYmmC6LWOwRwHeKnDlpelKyMb9rfzcXXRSAh4oRW41LdXX2/eIEnaACTN0d8XOII6hztQdE
 1BtyqUdBF64RcCNae6VHtrEsq+11n5oClFLBQfeFPrJUGy8H0ORrROp2rZtZpOUFy+emJ6irmi8
 CvUv9Z0mFVM6/LkNQYZ5dMbhJ/awOn0R7B9paKmAj1FZ/FMlXREUv9RjncR/e5o9PNZMN8uh/xF
 xCVOQJOj0zExhhMB7+sQ+j/6vW25brLoN5+/bzG/v9ICNe5xgCjUS03udutATd17Y39cNdse9fQ
 4y6c3Sr6EzVe2Dg0fyaqQxNgN8p3BuWpUicmgbeArXp5ZbrNU7lEK3UZ7CdUlM73oQA5QXdSxRM
 dpFIs3qKAAPNskw==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

Add bootloader-backdoor-gpios which is required for enabling bootloader
backdoor for flashing firmware to cc1352p7.

Also fix the incorrect reset-gpio.

Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
 arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
index 70de288d728e..a1cd47d7f5e3 100644
--- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
@@ -888,7 +888,8 @@ &main_uart6 {
 
 	mcu {
 		compatible = "ti,cc1352p7";
-		reset-gpios = <&main_gpio0 72 GPIO_ACTIVE_LOW>;
+		bootloader-backdoor-gpios = <&main_gpio0 13 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&main_gpio0 14 GPIO_ACTIVE_HIGH>;
 		vdds-supply = <&vdd_3v3>;
 	};
 };

-- 
2.45.2


