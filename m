Return-Path: <devicetree+bounces-65908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 334AC8C0960
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 03:53:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55F751C20F97
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 01:53:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7221E13D257;
	Thu,  9 May 2024 01:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="xk577T1u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED8213CAB1
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 01:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715219594; cv=none; b=rim76esjIZdpOlJRCtA1hS7vQch5P2oR1XHlJQnx+Ve8THx88AXKD8oL6mzvcCk3lv12agDHd/dPVRExRhs5+JAgID58dtlg2uIu190WSqYSqXwIq5IIGaQv1RB38N7YDNmvTOJmeS1YINuJdz+wEHul1Lz/JljonX40T4DGzl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715219594; c=relaxed/simple;
	bh=3nwo/SInj4wmrovcKTFziVm6y4+hsi02LkwMFGRy6YY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=f0n8aOCTHBr/XgV2ZgEej465JCUL49lvSwnpZJG+ssTyOAULCeTQ77wMvacqvD7KKycvGkD2veH3eFUM5ijbNEEytYA8uwTS+NPltpSt6bbOGNX3WTb/h++pszVjihcVkh/nATI1K79XZHPKoSrfGKk86/Gkxy0EpxSjGafiitI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=xk577T1u; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1ec69e3dbcfso2777505ad.0
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 18:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715219592; x=1715824392; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lx35MtfPKU1z5v4/AzGpN1bIj57li6ybeEXD3S52BqY=;
        b=xk577T1utlxRCeJL0E0+VYQ7OYA/Kok6dQNGO2Hb+6pW64XzQSrIqX6xidxARtMteN
         VHDdTCYHapoLyiIFvO3lKmqLRES1uT3PLw6XtUxc20S3NLazHGgQHvjPinDqUZBvOO2Z
         NB7N1Pvl5W+R7oUb8Ehr8Ek94AhtP4KIY8TRIW46Duy4WneE3qCQVTwOopYNt33btOqZ
         nGH1SiX7+2763L7PYF4JP8ouGZfzKX2eO8gn0crXPr/JC2Uocm6Hs19n/+OBsVw6XuXk
         oCsbE+H+Nlgsc6CDeTzPNHWoUgm1oUjlPZqr182eF8Q5EqBPSmS7kZwWA2vdfX6rX0nD
         PsBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715219592; x=1715824392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lx35MtfPKU1z5v4/AzGpN1bIj57li6ybeEXD3S52BqY=;
        b=eznznsa/FrrJhfCqVOhLa9gjgXpaGD/G8A6OGgnrtpNbcz0/hHqyzVy1dl6RE93zvO
         MfYopi/0ix+U/LCyLU7AXkTNPgz4k5NnQbqd2G+siFWAvmks/YuzLnOcZ0Tnm3bIDZFp
         C4iMxBWPO2lKiBut7iMHJTohWRMlrss3mtz8Fo5MXtsRmAogEZHqQsKnmRuwMra/YeWo
         hP2Z0DUpnRfy3q3Gt9jwkfQZWtB4z49OXtVmabp5H00DMZkz57mEJpJU5cVaIyjljbE5
         0iys9CxVBqG4hzZj4btkGsTLEqy9ye1nq5Sj7tgh24QHAo/nZAuyICnaa+apq5CEmHlr
         FaAA==
X-Forwarded-Encrypted: i=1; AJvYcCVl/X3hGQPdLklVc0Cd/g17Vxpg/NjP2oDYXNWvvPHyeF08Awb3Wu0KsWtgmlOoWvAdi2ozYsTcktM1Ydow0B1OxQccq4x9AEhaRA==
X-Gm-Message-State: AOJu0Yz5ElxxRlwDUWaC8SxRcyY4+Gw3EWyR82Dz/+/W2aEJBMPFWLjp
	IwXLTHB5E1tmYhwSdWe5G6MbeSqJPtOadpDsU/NZ6Gs+9e822iavIoMoVilsWQc=
X-Google-Smtp-Source: AGHT+IHJSZFIfS5xEh0VYynEI+hNT8DbM98p64k5a8t/tHhPiGVa1E/Bp9MzbasyxjF78NI1dQYQSQ==
X-Received: by 2002:a17:903:1212:b0:1eb:5344:6a01 with SMTP id d9443c01a7336-1eeb09ae715mr55580745ad.44.1715219591726;
        Wed, 08 May 2024 18:53:11 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0b9d15dfsm2117465ad.62.2024.05.08.18.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 18:53:11 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	airlied@gmail.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 4/7] dt-bindings: display: panel: Add compatible for BOE nv110wum-l60
Date: Thu,  9 May 2024 09:52:04 +0800
Message-Id: <20240509015207.3271370-5-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240509015207.3271370-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240509015207.3271370-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BOE nv110wum-l60 is a 11.0" WUXGA TFT LCD panel with himax-hx83102
controller. Hence, we add a new compatible with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Chage since V5:

- No change.

V4: https://lore.kernel.org/all/20240507135234.1356855-5-yangcong5@huaqin.corp-partner.google.com

Chage since V4:

- No change.

V3: https://lore.kernel.org/all/20240424023010.2099949-5-yangcong5@huaqin.corp-partner.google.com

Chage since V3:

- Update commit message.

V2: https://lore.kernel.org/all/20240422090310.3311429-5-yangcong5@huaqin.corp-partner.google.com

---
 .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
index fc584b5088ff..baf8b053e375 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
@@ -16,6 +16,8 @@ properties:
   compatible:
     items:
       - enum:
+          # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
+          - boe,nv110wum-l60
           # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
           - starry,himax83102-j02
       - const: himax,hx83102
-- 
2.25.1


