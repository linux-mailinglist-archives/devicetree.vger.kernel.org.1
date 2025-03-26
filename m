Return-Path: <devicetree+bounces-160966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D92D7A71BCC
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 17:26:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 998DC17BAC1
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 16:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B34E1F8AE5;
	Wed, 26 Mar 2025 16:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="keGNTtuP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301DB1F5859
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 16:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743006236; cv=none; b=fNbwxZ+YwZzSphKeMBcPlJSyO8uTOrPf4pwHXfBvCSFvm7RA0+EbSdQwVkmQZSnigPoKgZJOXFKhN40z5sPBeuZ6EpBn5KnGFr5ZQH/0OYtGXT9l/33CqQbl23eRIu9jAbHR7tJGKrI5eS1AZnIKhM6QHnaAGnQYLodTqADjlCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743006236; c=relaxed/simple;
	bh=qgZT/BBWMA235GCVCrIy5Wv1qr+OiVKxM6mDIVHCULs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iRnr8655lNLRSV8/J+mNR1gBW5m8ubVsddOqwogOdG+Cf+4DBxOEuk4rHr22tO4LNuWWE5xLsT8supJgL+9l8eprgvgL7nKqpQXEV6KsBV02smIgZ1MlqHw+8mR2Z7iT+dfb3xMzd4vYfHEIooiZqfmWrEMNnkXc66bJzMQk9OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=keGNTtuP; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac25520a289so1244625366b.3
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 09:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1743006231; x=1743611031; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TIHXHkF/8pZLgK+rwXO3tbSWnw+8GWfU/CEp6SLN7PM=;
        b=keGNTtuPrAf1NxIYmURHTRV+BnL5YmifOhs0/pBDY3y/+Wejzb/Hom8xIjlantJVAk
         lfWm46d1GA6MVEa+I2QJhKuuQjKjvYhSWbT9Xo5cYP3K/tc9RSadjLt4d+YwaNmbgoL2
         Q85wMFEscLjrF6sPTj6OCTcakcCwnJYC5jprRURQwDlEPaANPyXBUPyYH/243hodLQUi
         fhAV45pT+mUZyZdJFI1gqFhiW2kd6Dtimihfgaa0b/mpJY5lzfkLKtCD38d08ybZ0sPr
         0iSdl6jmCWr0rcLJ3rMiHZZwFQR2q3V3M+WuBBDGDRin69y9MmG2dXbmN1fyal+MuKgF
         9pZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743006231; x=1743611031;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TIHXHkF/8pZLgK+rwXO3tbSWnw+8GWfU/CEp6SLN7PM=;
        b=QWaz3BRtDw0Mb9S7hagZ+ce/Qsyl+N7RQe9ovMyhBw+JVz0uXNxX+DZiEMZ/pE6SgD
         JbNfAbO/iKKJVaI17dp1kfIL+8+8W76ZDgIqeD1c5kXPfAmUfCwwYOemJL7QzjRCYp9f
         dg1UVDProEd6CxdCBKE57hKNybeCRzjEPaGohmTAAPZCAEp7v9k5PXx1B7kxZ/P9bVvg
         qs70bpJf2EdTACeqq3wr+3/v3q86RZOw7CJ280lzl+k0W87DjpU4cM/3kXzOq0Dm2lU2
         2W0fyBV95+45FU6mWYyIn018TwmWYenXGcUp0UaFxfnR+IoRv3DZ4RM87YqA73OsX5SA
         umVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUB7UUGeifhGtjFW2A8VMA79Dl11Gr5iuzv8iy3VlW/N/D/Og8uiC4luyVBA+TAYniR7xIg5xgNNhan@vger.kernel.org
X-Gm-Message-State: AOJu0YzaP1SuXTL6ly5w+REISwDCvDp4xYxczGV8TXSsWJD6cEL7dpDM
	6QF2EqYp+qXS5M3q7MIxOe5BrhWF5b6qufwyn3BcoOpBSq5kk/70xibROTDkEMg=
X-Gm-Gg: ASbGncu79vfLi/62bwLv+IesYQDy0/Mj2UKbSXNOjCaDzjBGkD8mYaYyj8zWRIXs5Di
	+y9Xb8UVLATEWbrYO5Af/OoHM582fgeg2TvmbRDJHgrelnAdBA0JtnFoNW6skwEUdRPH0DesBqw
	zYVprc9+OWr+sr3S/22fU4Sqq/i5g0uVhoV4vnVJ8lWB3tyQYjhfQHoSxZrniwIOuHjBuibZNqB
	IAswaLzbHivNJ3l07hTEGQpaYNcM2b7fqOjBklEh7y8ptZZZfQinJV8VP4HtSTA+oKZ5RV3/7oi
	xelLD5H63zyIIp2OfgfPizV8MEGHaA6EtljQAKq7Mb7N4+feuaIuI7gOCQ==
X-Google-Smtp-Source: AGHT+IGX6YIZqj3EMmg9fstP7Tv4f5XMwVql68RmQX1PGbQYAIwS++PJhhjAX5oAjP1/BAdfxlVIAA==
X-Received: by 2002:a17:907:968b:b0:abf:733f:5c42 with SMTP id a640c23a62f3a-ac6fae5fc76mr5632266b.8.1743006231199;
        Wed, 26 Mar 2025 09:23:51 -0700 (PDT)
Received: from [127.0.1.1] ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac6f0f498ecsm76678866b.135.2025.03.26.09.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 09:23:50 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Wed, 26 Mar 2025 17:22:57 +0100
Subject: [PATCH 2/5] dt-bindings: usb: cypress,hx3: Add support for all
 variants
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250326-onboard_usb_dev-v1-2-a4b0a5d1b32c@thaumatec.com>
References: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
In-Reply-To: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, 
 quentin.schulz@cherry.de, stable@vger.kernel.org
X-Mailer: b4 0.13.0

The Cypress HX3 hubs use different default PID value depending
on the variant. Update compatibles list.

Fixes: 1eca51f58a10 ("dt-bindings: usb: Add binding for Cypress HX3 USB 3.0 family")
Cc: stable@vger.kernel.org # 6.6
Cc: stable@vger.kernel.org # Backport of the patch in this series fixing product ID in onboard_dev_id_table and onboard_dev_match in drivers/usb/misc/onboard_usb_dev.{c,h} driver
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 Documentation/devicetree/bindings/usb/cypress,hx3.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
index 1033b7a4b8f9..f0b93002bd02 100644
--- a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
+++ b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
@@ -15,8 +15,14 @@ allOf:
 properties:
   compatible:
     enum:
+      - usb4b4,6500
+      - usb4b4,6502
+      - usb4b4,6503
       - usb4b4,6504
       - usb4b4,6506
+      - usb4b4,6507
+      - usb4b4,6508
+      - usb4b4,650a
 
   reg: true
 

-- 
2.43.0


