Return-Path: <devicetree+bounces-224616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92855BC6450
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 20:21:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B67A188A674
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 18:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A05772C0F81;
	Wed,  8 Oct 2025 18:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CQWqA5uC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3802BEC2B
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 18:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759947679; cv=none; b=COQrnYB/WxmgR1oflw6QrQ8Dcu51B7fC/qgl+iCljeTPHt/jL8FU4IGPNaksKA3R5NsVc9JaY53ql40Ljr/3qGETp1QxVJhxU7fdnzdzJ1FifFOMkgGiprUOSWCHDO1iaGf7OvP7RTvfdGbE+JcQXYZm6+7HeID55mnGOnKwnz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759947679; c=relaxed/simple;
	bh=p280qPQj27zEghzXtASKe/5ZJm4NWAcJ5opk5rxq8ss=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J9KUD2mxFetQ1+wMHtfBOnyMbn22alIydCQJyhfyVH4EQkdNIJL3i7/TpnbJsXKFwhRKJH/fNkYG9lPLiNCknRi+uFg2mWGI3XrIFWVR751R9KjbdJzEqG6evefKe1F2d/Tahr76RNlHFGNCu5IV3oacKg+EARj1jGxabtUSk1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CQWqA5uC; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-57d5ccd73dfso188080e87.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759947676; x=1760552476; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xpsQ648q3C0xKugj4mrt9FABQZLoyanw2vv+wH0Qsz0=;
        b=CQWqA5uCO6YrLJLyD5Ag8Q3OCQsbBEifreaWauVDNzX2aEBC836ib+3SnmlWYT3fCK
         y4834jY40lwR1p+j4LU5WfmvW1InKuq+iFaPHf9RUBTjYxq7/fWnLgPdvBDbOvrK2Yci
         dP7cqHTWkkswyjeIZVHA+p4skXJxjHZJRVURZ0t1Vyi23GD8XBUQI/u90teQW31uqpnC
         HrE5Vo+y3UF5wM7fRoXAMYZcq/M91mqibD3DME1NJpCsXqnN92PxnsL38YlFBtjWZGV5
         8xekXeCXLnLU+WVzwORjkk7fOid+I18nUpTBs7o83SIhHUAAT7p3HDOekxzAfdq+E620
         ferQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759947676; x=1760552476;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xpsQ648q3C0xKugj4mrt9FABQZLoyanw2vv+wH0Qsz0=;
        b=Vsv09EW51hBWXBexZb2zOEJds1r0UobwQOIziVJ8qwZdyIBa4Q4gmN7DjKPg5PGQ8H
         rWtHctQDb1kz4lvSKL6t4xDdvXLQRRmAau0lBXNqmg2EEsHwx9yQjI4+RlH4rK0xIlTl
         0p6ohda+F64AVxsG6GPKhkvzgoA9YNJ3jKUk4VBeoLsitibAwwP5I50SI6Jc7vNoT2GR
         lOWAsjRHYAjl/Xu+pAdzWJ92SFnK6AH5g0ZgehKUHElYLadVxe3oNuYkA7M0274b5qIZ
         SHZxOXl3YLoOVydcZPgeNp0c6i+cssbJ+ymTT9iAipiq8dJ6oopouf+z6nLpulgEcCiy
         WHNg==
X-Forwarded-Encrypted: i=1; AJvYcCUpIReF/lfGuYUlFU2+/DB8lSFv1KU5eL3cKoLKSKrUhUVGsKzYyUGIi3hO7RgukKlRQO431iLs1g0f@vger.kernel.org
X-Gm-Message-State: AOJu0YzMBaKUT2fMlQMG2VRQNM02GP1E1zycs+KqC96HbGSm+g6mzBne
	1TWc/bZAmSdoFhQCOZ9SJibD//9+EKSWhEyvjrCu2HjlBzMS+ng272EK
X-Gm-Gg: ASbGnctbzas1awRxGVgTVV7RKP/bPJdyJ/vvy8qnFly737xZqC9C5BFn1LoLNJIhJgZ
	XsjCaQOEcUmPeHf7bwx4pF2TXkWaZngXsOR8QLSweKxuNtRnIcyjB4O5eGReoEZVE42zVY6wTNy
	oTOtwQAwnB0adlSiRB8/kTfcl9QnlhfwR1jCKGrX2lRA1KQ2AN9yDIJIsuO+XQ4ZasCtCZ2b1ZR
	vZyJJgAhm0Uv0JBgjG+YeQ1ospsawDYeSHgpQTOsMQXNivddGsK5hBRoQAh58iKxP0/UU/vGAmp
	Qv+T6X5U3GWfcAupqVaY3GAdgoQKKg1jaBh7yy1JmC8cmvG+pYC58B3JWHAPC9sDRxMWhi57qcx
	4dWBeQzxScWUbDQL+Xh9CahWVFP78Rwn3+wpkSkgHtRKL
X-Google-Smtp-Source: AGHT+IGBB7GaBBYuVPaybijJfuURxVJRXTNlNl7L4zMNhDPdwFslzUyqDTqQRf8bzBEjERm8JtK7mg==
X-Received: by 2002:a05:6512:1302:b0:58a:ff9c:d107 with SMTP id 2adb3069b0e04-5906dafc4eemr1434243e87.51.1759947675777;
        Wed, 08 Oct 2025 11:21:15 -0700 (PDT)
Received: from crusty-box ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907adb1268sm223930e87.90.2025.10.08.11.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 11:21:15 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: qcom: Add Asus ZenFone 2 Laser/Selfie
Date: Wed,  8 Oct 2025 21:20:19 +0300
Message-ID: <20251008182106.217340-2-xerikasxx@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251008182106.217340-1-xerikasxx@gmail.com>
References: <20251008182106.217340-1-xerikasxx@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible for Asus ZenFone 2 Laser/Selfie (1080p)

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 18b5ed044f9f..1ad77a68fc11 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -88,6 +88,7 @@ properties:
 
       - items:
           - enum:
+              - asus,z00t
               - huawei,kiwi
               - longcheer,l9100
               - samsung,a7
-- 
2.51.0


