Return-Path: <devicetree+bounces-124966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC92A9DA669
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:02:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92883282E04
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 639621EF086;
	Wed, 27 Nov 2024 11:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sdv6TBs1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29D71EBFF9
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 11:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732705305; cv=none; b=SbWNIkAGuYTKBV4wMb7/yg4I0ssRlqGyFq9++pR6DaX1leJF+K5oRItZarReI+op+p2T5vmGyKp0XimVeBQJioMHkwY5rSAeCpEWVmOc+ZcEIqE8n6W+5bdYJr6qExNQGBmYNRYd33crGvpH+i58jwADmFh8Y+EgjxAb/dOrfQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732705305; c=relaxed/simple;
	bh=hOCe6cJ0obVm8UjxsiUQNLMPtCy8NJeg3v7RzQ3z6+k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cKb97LJM8DIIQO28d9utFDTi/3GhxFGU+CsTctQBOr/Fy55x3CKbpQA0mleQjev+LbdOqnRc09hc6BLE9ziElH22M77omTGOzFU6+R2GAVRoiR9szpvL7VLIw0p+767bsRr4xbgQ5bCaKqOOSqQUwx/Rv97oFt2DIRCdzpIaYKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sdv6TBs1; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aa51d32fa69so703019266b.2
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 03:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705302; x=1733310102; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NwFISXzC5YdjT7nYyo3FK0ynEMcXmWD+620yv0Db3ss=;
        b=sdv6TBs16Pd/lTeKDK70sztwFUL4rITyoibbam4TXLLcfXFHCshCJ/CWro7FgXqZBA
         iTzDjP7XCJH72HWnVfmvethA5C0v944Z6VwqkqNw5u/iW62UJ2P6WitAReUsVItA59Y0
         MnEzn8Ikz9ZA152qPXflnsqfhd1HC5MzrKR2fw6yxwrbHoBZGrRS7UEfOB1HcHUFnYEV
         dZPpU4FUsXpqBu11tQOI2d+AuaOTWv7xb80/kQwEkOwoEICdm9IJldVV9dtMBZRyPzeQ
         e4f3GlXxjjNsha5Bs57Rp/eDjK9EJPcpD6k/9ydAyYyC2r0zNCQniHWXOtuNwOGaXKm/
         TzLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705302; x=1733310102;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NwFISXzC5YdjT7nYyo3FK0ynEMcXmWD+620yv0Db3ss=;
        b=kv0RcZlt6f5SpRRiBPstK2e4O8bwxTVxa3XLXgWxst1zUI93tREWysd7ljQtRJKo9E
         Y3Ho71f1p8W0YdOYiVlXOG/pimUKyVMm0MhrfDMVQwnOr0GxFTgKd3Xu16s2t+FLnytB
         BhFRGTaCZJBmHCKNV4pfa4y7aHT0lfT5fds6qGG5A6ZhkF0Dp7ff4m3ewO1FPvWXS9eo
         /wOPrvbw3Z6+40bsMuLBfov/RwIckOFhwjBvYB7c6i3wFmRj73yU76/10ERmNk7eTjIh
         J5YyXNfviNc5RDp/0Fme5xCldKLqTAkOxa1zCcrCVGYQnlhyfWfXqcxQQ1hhaCaLRTo3
         yj7g==
X-Forwarded-Encrypted: i=1; AJvYcCVxl+RbabUxQO5ubtA7lDXYb3JQdWMJhOWmv6SaaK3mQQB4WHWv2q/ArZgezEwZhMMAOFFKEIhvwSOg@vger.kernel.org
X-Gm-Message-State: AOJu0Yzcc6fyVDbTCd/8fpUdPvQvk74QIS4XdXnmAsUxNC8Oi5bvQfTk
	DRoq4kWG1H8GwUv3S7WlsSpheThYPmKAWlAfkumhbI8Xu606h6P5Y1sgpqcDwYA=
X-Gm-Gg: ASbGnctt2oi/tBr/Fgwx9uV+hemNDh7IaL86wLZM27mcSXi0b3k77XRhuScazfOE4we
	K5ILwxcTNOIf3y7g9j1sXVGPLDCag3N3syTtxzpVvtmWvPDldMoZLRsVtSoqi5FKzLSQiqkTKeP
	tJ4K9yXB7ALrPNZLEU4NkgrxrsPJljrTi6lKSkW0iH+sNwgpAmSw/klmeLl5kXhzmHEEdFHB77q
	1c0bcjHefpjCOI71uWk+lmE361rVS2PY5OB+mXr6OGihkNx469WSOJApMDWWhBDyRiZ/La8/EG2
	25corL2Pz7MEvjUxg5DBJbKnE/F/Vfs00w==
X-Google-Smtp-Source: AGHT+IE4cyy/cDmo8WquVmKFdo7zSy462eB6By+Kdq+zP9Q+Ss+y6AajJ7PIBc5sONgo2uDxTZPy4A==
X-Received: by 2002:a17:906:2922:b0:aa5:639d:7cdb with SMTP id a640c23a62f3a-aa580f0ddfcmr151648066b.22.1732705301452;
        Wed, 27 Nov 2024 03:01:41 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa50b339612sm693762966b.84.2024.11.27.03.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 03:01:40 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 11:01:40 +0000
Subject: [PATCH 2/6] dt-bindings: usb: max33359: add max77759 flavor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241127-gs101-phy-lanes-orientation-dts-v1-2-5222d8508b71@linaro.org>
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

On the surface, Maxim's max77759 appears identical to max33359. It
should still have a dedicated compatible, though, as it is a different
IC. This will allow for handling differences in case they are
discovered in the future.

max77759 is used on Google Pixel 6 and Pixel 6 Pro.

Add a dedicated compatible to allow for potential differences in the
future.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
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

-- 
2.47.0.338.g60cca15819-goog


