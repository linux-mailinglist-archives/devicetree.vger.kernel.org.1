Return-Path: <devicetree+bounces-216266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3ACDB5434D
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:52:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 600C0440BA3
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 06:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAE642989B5;
	Fri, 12 Sep 2025 06:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f26NHkxf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37156288C20
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 06:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757659932; cv=none; b=hi2ArRqM5jBq/Cza0C87nKS4idHel9fKjtY4Q8eLfL0fxFnU/k17+Lk7m9qHAS7Xr01CBm4g3vYDgDpFnkI5CdaYvA18+xlKkrewFfh7R803f3ZoikalIg9szDC6X/yuIjXxEu9hzUC8wXz83hTYiqpVaeaA37u+C67RoK3C75U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757659932; c=relaxed/simple;
	bh=V41BZQfbkLWW55oGb2ig51t9GDvirhFPE3G8Pk3DMsI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QR3F9vdiT3yhNlYthCsr3StDPBxVl0mVmQBw2YldXKPgpr68OQxjA1nqj1eUsZnosIxSsyfm5OXhhNUN4mzGyFOH71Lbg43kcjeiGqVG/kPtT0SbXRtkQnOLircJpb432Zm/efhk7//zxBeNxFTOobEOffcL5Enmt4Eh80Cirkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f26NHkxf; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-352323389cdso1406261fa.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 23:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757659929; x=1758264729; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=reNiXcD7TudqB/sS5bFygtRC8HYtT+QaCqNOvCQ02Zg=;
        b=f26NHkxf9w3ejpmy5F2Z5fCcOevfdy38+JYmn6rfeWM/onGP180Ny7ImfeWYE84iPt
         /vxmNtKtRRTGWklf4CmQqeYpHdmAEoBb+0SLtiPpNqgkIpumQtMH9YIE1dlSVL0gHef2
         8HF4CMSBC6KYLBL+r5rBuWdnO6a9ioTbF6qBqcC9dZ0MvG59TYnUBnO7n0ZPlScfnkXb
         7ChFc9dkiiLZ82qtK1noPgg/X67YLXEzcKj3WoJCqPj8XuKQIgaXiTzSK5SUgtJW8ODH
         n9UdtlGA4ATxPEJx/AKHH6xv4qxYvji2NptxK5X86T3l04DWR4Ws+SYyu5DTBzeLUIaq
         8gHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757659929; x=1758264729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=reNiXcD7TudqB/sS5bFygtRC8HYtT+QaCqNOvCQ02Zg=;
        b=rt033jVMjGjufTP/8UKsw/2MgZUl6eSEQQkh9shkiN3AIWGW+KD06OG6HtanrweW0A
         xncc61mgNCAp2+hzYRcOE3AiP2Pm1+6Y/5PLR13MThMApyxqmUkvX4IzBadvQEx67xtz
         GZq6Tl8QG5ElHLNF920edK+QfrJmAG0YH+l/u+F6YxOcC5tZWmqFW6ef4HAdHyV3lHm3
         7Rew08/ojVYFq9sBtkNvPsaI8Oy7azZZoLVJhdhTjPPg6VyTjhVN8ZM93Jyb/DKCUOu9
         4HwZPU3+iALJIoZzRT2/Cqwh13/TRvLCuRJsg/jq5VIMwr65lkwvdECDYosOaBHfRzzA
         jVRw==
X-Forwarded-Encrypted: i=1; AJvYcCUz1GPOUMPWuUWy6xzpiLSMCmo9e7J2OUhHHkxgIsgmlsI6RD2i7N5LWthRfykVbBThZ8niMmg75QBE@vger.kernel.org
X-Gm-Message-State: AOJu0YyxK+UHKoHwWP/jzpjkW8gVrSOi/dacYcM+ea09iL8yF76DTAAf
	8Qs0q+EfW1QVsrO9oGi9x4eOR72IuFjR9GxVeTIBHZhB+PmjycZ3Rn1u
X-Gm-Gg: ASbGncuZdW8NcQN0hkdrxXlKRkFgCKOZ3mNJSfYOOv0hIprBJdbtPL+VuwK27VUo24R
	mNF09tbZ2lX3dt1N8tR7hfdKiEDOAW21DJnKyU6CduTA5H+GqZC+qSqeJ95Pv3Hbj48OhftBu8Y
	vCE6PrJ9BWGr8mdlu23q50u4qceArirVcueevUYnE0QR2VnUBsIG4XKW9AkSo+ug5e3obsUA+0o
	rIqhk5mJTblz6pmhWhTxwpRvExTDJY5cBPVSPZtUtwmeRgcFPb/aG7/1OJ9obgZWGI308wzsy1H
	NzqjRcgSwHva0mefLaHpGbxSoO/Ts6N4if68Im4QZysaMuPJpskraI1LNBMcxkZ6H1LG7vyc8Gp
	OwNNyVUVgYK7CARQA6QuPPCWF
X-Google-Smtp-Source: AGHT+IGn19z0xbyPOa9s7kRxYEyg1LgSwuY7k0e7LwK8I1bGyacmhk0zyrN8+bwF3af8FbUua6ViGg==
X-Received: by 2002:a05:651c:b0f:b0:336:dd88:69e0 with SMTP id 38308e7fff4ca-3513e12da16mr4691341fa.29.1757659929207;
        Thu, 11 Sep 2025 23:52:09 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1c5d5a49sm7180351fa.66.2025.09.11.23.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 23:52:08 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/1] dt-bindings: power: supply: bq24190: document charge enable pin
Date: Fri, 12 Sep 2025 09:51:46 +0300
Message-ID: <20250912065146.28059-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250912065146.28059-1-clamor95@gmail.com>
References: <20250912065146.28059-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document active low Charge Enable pin. Battery charging is enabled when
REG01[5:4] = 01 and CE pin = Low. CE pin must be pulled high or low.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 Documentation/devicetree/bindings/power/supply/bq24190.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/bq24190.yaml b/Documentation/devicetree/bindings/power/supply/bq24190.yaml
index 307c99c07721..2ea90e7f49b2 100644
--- a/Documentation/devicetree/bindings/power/supply/bq24190.yaml
+++ b/Documentation/devicetree/bindings/power/supply/bq24190.yaml
@@ -30,6 +30,12 @@ properties:
   interrupts:
     maxItems: 1
 
+  ce-gpios:
+    description:
+      Active low Charge Enable pin. Battery charging is enabled when
+      REG01[5:4] = 01 and CE pin is Low. CE pin must be pulled high or low.
+    maxItems: 1
+
   usb-otg-vbus:
     $ref: /schemas/regulator/regulator.yaml#
     description: |
-- 
2.48.1


