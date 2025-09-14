Return-Path: <devicetree+bounces-216900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8A6B567EC
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:30:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 067133A4C51
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 11:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0981925E824;
	Sun, 14 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L1jkpTdU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4904024EAB2
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 11:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757849392; cv=none; b=Ebn0OuHa6AkMisDQhGEzmNCE3QPyOjbu4UPOBvMqcNMhjp1hwqQf+JXbv2+nvdndYfHBwpALnZjtY2azANJSa0fJcB+UEZW+LKdIMGfsofuhid9TV0qxXF1W7/2jiH3Pnvb9e811oqiqvV6eM317eglgAM67NJ0ZNkB1rkQ0Uao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757849392; c=relaxed/simple;
	bh=S4TZwGLBK6/RB3hgr9c0AxbOfgqQiu+TmlFevlAFLfE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Cw21rzAVR5P/G2BLPZeUPvdR9RCB1NHF1XdtdDwDSaJqA4BkdJiJPPV0pBhD9RJYhOo3OKEROk+UF/PHGl+s8EVICV8D0RUJ5o4JlD3AHcX0YIt1KbbnZzB1NPpFX4rxsmgEkZVCUjkVfjweuRvcq+UNGRSDox0Sykz9x5l76MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L1jkpTdU; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45f2c5ef00fso1541155e9.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 04:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757849389; x=1758454189; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YA6BwGFWueG+QJIiZVBMUSc9d4T3IHUstOE/1clnUIw=;
        b=L1jkpTdUunUksFJrSotZiAdDM33TF0D7UsEQkdbbgtXoyrX1XM3EZ9i6yT+C1FEnv9
         ASOOKcP3KMCBjzBvudhHmbAuAnNn79XJ1uNryxn1+oYyx3hz3AlV2fGgvea+EFKHoRGQ
         UI3uqt47rzxp8INB5hJyoWHFYyhSuO3aRZ0o9yxigEloYs8KEVWr9AkNADTR/KHQTehL
         M/HX/rFm0203X9xAoHOqBOBUGLqB0A92zep52OCwcXrYckwvpjytC7eK1+vwa1jRul1Y
         HA+I1/nSBvQRIHlApGM26XoTsXS9L7KjMzAm0a663z7iMCt9UZyYPY9Izhi/NWA6YoB9
         +jLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757849389; x=1758454189;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YA6BwGFWueG+QJIiZVBMUSc9d4T3IHUstOE/1clnUIw=;
        b=O3MMuX4mM8ARDpa6rTLZbnL+OqN2m9/Ki2MWF7WJTTB6YPgSPw2tbe7iW344ig0vqA
         DXpVwL+jngmaSiZaOjeh8vMQxPs8qBP4zxef84ElhPt05fNR3NbPgZV+OHSzpOJV6TCb
         vyfJ278q+1ZaN07vQt8ESVg2Kc7i/wfnVHIDlyfdOrAcyGgmhFkgV5102jT9KaLxBv9Y
         RjA6SqvRGTM2hJspcaf67YvVdiZh92J4d74XMYgI2wa2ikZzLNkpctOXig3f42/1w4LK
         Jy14ZuqPNMicb0nGLGyM/zjNo+I+ykiU0QIBdezBIBfh4DD8XX2e+rD0K0M7FLIG/f8C
         lTfQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/f8+eLkAtpYCf1tnPn+NTKe3OZqlgh8P/XUTsnC/GXlUTgiApZWOz+MCjMNTz7Y5iV7abPDwpauiJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yygvma+yQ+BRRvtKcGzCM1O8C/aHnds8wgz+uG3fwgqgAJ8ynX5
	ILz28bRvOV6c9z+SAJyXZkC82P/wfj6NPCnLDggpYcRcQgj3bieYhlr6
X-Gm-Gg: ASbGncvY2lOTKiT1bUtuVyBKgj6PVxmx6sH9YSslucmEC1B3CrGKm3oTke0x//TANFm
	CFFqtvlgeJr/gB09NECTwfrkb6QgC8bRtmcUusykNiw8LWNz756lyUIaFFPWEdkpTM32ybzg0sF
	T8NFGW7P//OqIHXIb6nFUD9nvXtcCmtBFs8FL7SIUpcazIyLqOeVtg3hB2WYf2wjdH82wXr4RBR
	P8sHzkN/X+gxTHR/sOMefcRKa2YXwPov1TE4a8mPNF4K4Tf8J/NTsdTkphg4rLbxi/ZCg1F9BI8
	2Ds3pOC/aHQOb/lUoIgj7ToJdi/2q/ZBGP9o+08nvdrVDLUTJYDeSQj41C0rbGprVaV/tFutU3M
	6s5R8MvStlcMaRYexvHEbVBxSAnoFciGmbHyL2wAyoEd2mdE1vNy0p0NDTDvdPKwVetlkkD/tSg
	==
X-Google-Smtp-Source: AGHT+IGyHDRZhIKdaCEmBZILWIecKug4YvVS1K+HM/kKk2Om/qzHCs838upA5zAOAAg9via+3MJt1A==
X-Received: by 2002:a05:6000:25c3:b0:3cb:3490:6ba5 with SMTP id ffacd0b85a97d-3e765594a4emr6092807f8f.9.1757849388568;
        Sun, 14 Sep 2025 04:29:48 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e8346defd3sm6591268f8f.1.2025.09.14.04.29.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 04:29:48 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/3] dt-bindings: hwinfo: samsung,exynos-chipid: add exynos8890-chipid compatible
Date: Sun, 14 Sep 2025 14:29:41 +0300
Message-ID: <20250914112942.2604194-3-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914112942.2604194-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914112942.2604194-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the samsung,exynos8890-chipid compatible. The registers are
entirely compatible with "samsung,exynos4210-chipid".

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 .../devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml b/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml
index 383020450..30162e55a 100644
--- a/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml
+++ b/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml
@@ -20,6 +20,7 @@ properties:
               - samsung,exynos5433-chipid
               - samsung,exynos7-chipid
               - samsung,exynos7870-chipid
+              - samsung,exynos8890-chipid
           - const: samsung,exynos4210-chipid
       - items:
           - enum:
-- 
2.43.0


