Return-Path: <devicetree+bounces-57774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1426989EBA2
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 09:15:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 437E91C218BC
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 07:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCB2213C905;
	Wed, 10 Apr 2024 07:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="3CFvlfh4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6C813D275
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 07:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712733315; cv=none; b=TSKq+1jBCtZjNl/L0pVoNSTqwgoEVvQBdRHtosNRJ+7oUYRUuwK+d78mcqdhx981GcgqZb0AmdR69IGWKqwIYcQKSatKSFH9dfIqGG8dvy5r5upwtImUQ1VLZMe+FsQUS9WcW8B+xU+gtKaHsXQc8B1nsQXWbqa3+F6lHipX2KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712733315; c=relaxed/simple;
	bh=HiFF62xYC5j1uk2LqKhgRL4fn0S4VzgDMc40YEtSxHc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kjh9h8avazt/scjnCnervA/mnagqGWROiDm1IcwElQV/9y4ELdj2604FUYDURA3UYmpOqnSdXu1hXTQx3uO5LwwFmMKzcO/cpoEgFvrfINhFAunWxxvXFo66EoEiuwwmeIiotZDyNLoXqU1dSwL0z2e17gqpqGVzytvx4sfLtvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=3CFvlfh4; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1e424bd30fbso21208715ad.0
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 00:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1712733311; x=1713338111; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JLNsviQIo1VwdlD8j/pmqb1ZJhhhQw3AWOszQa31LOA=;
        b=3CFvlfh4A/GAYeieuWgpxcwCrKD508rkkTkPWiLqWDD/5rG74g6x3QdYcMkLp7I8us
         xANauBN7OBnYIOOl65dvqx9gGKIAzulWyTSchE6ZQDGhwDUL/Hx5vOD1/CYZCGcmcfiB
         sPgL0U6F9fli0eqL7bsOtAerF0xJesdSQvAB8+3VGjMaAloZxA4/ycbA7aw3mrMqaYmK
         dtRJykY8hPyr22kngyrayFmktO1Rh9RYaEo1RwhsjN1LhG3vtgwT5YmacRDVbkWkEJGf
         AkUZrkPBVbCKeHrrhO8niWQB8E9VgqsJ8CBUNvbofawRuRR7SBPOvbJTlLORiM0PHWwM
         /RiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712733311; x=1713338111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JLNsviQIo1VwdlD8j/pmqb1ZJhhhQw3AWOszQa31LOA=;
        b=v7NdTCywbvAVC7EnHeP7tvJZUDdXxWIJpu674wnSsy1y292QJvels08ivPIT78FAsd
         toeURHkc0emVPMz8E3ARjqAfPP2meA4KW5SQe1gxTsQqy8unnkl932CKt+Uh2r6ZuDbj
         pZN1GTbdK5dIii097WCQ/8aeCfOKWsYjDKHJM9+dzNfmO3wH82yo8PgU9AIql0xT7lUR
         DbVmCdF3/CaN0GpH4dSuLookPu8kHhJb8HBiK+NAC3FqgiUgf1H/4R68tGw1YwxOzuXK
         pkcaPtJhTN5/YGEx+iTxhgkYp42WSF39PLXr1ZQJT2sQbRGjWbxFS0s//PNRRrSqnziK
         8f+g==
X-Forwarded-Encrypted: i=1; AJvYcCVTBMDGVKfjNqpEnaY/rS0TXGQ53OSaSfZUtafBxE7ksVy+SOMRK72PBVe3m8ACqZ0tRDv5dxAfhvuae/rrd2V8myQFg3Cgl5Khkw==
X-Gm-Message-State: AOJu0Yzys1T3wwwZc8//N6Ovl60cxjtbcdkl79YdUmTbGPk+uG5Kbokc
	2Lx6ido9/LxVDxvswjaAftuFSXZDr7HPU2nRc5PyBVIizMpqdeF7JH8uDNGLhpM=
X-Google-Smtp-Source: AGHT+IGjEfCI9/aMprIcNOJB+4iYY7SjxOU1j2wcCISVFQSOXE94kFbIt9Mi2b+ndzdXO9Z48qYnSw==
X-Received: by 2002:a17:903:40d2:b0:1e2:3e0a:fc5e with SMTP id t18-20020a17090340d200b001e23e0afc5emr2704662pld.33.1712733310882;
        Wed, 10 Apr 2024 00:15:10 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id z17-20020a170903409100b001e264b50964sm10107975plc.205.2024.04.10.00.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 00:15:10 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	airlied@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v1 3/4] dt-bindings: display: panel: Add compatible for IVO t109nw41
Date: Wed, 10 Apr 2024 15:14:38 +0800
Message-Id: <20240410071439.2152588-4-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240410071439.2152588-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240410071439.2152588-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The IVO t109nw41 is a 11.0" WUXGA TFT LCD panel, which fits in nicely with
the existing panel-boe-tv101wum-nl6 driver. Hence, we add a new compatible
with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
index 50351dd3d6e5..f15588a2641c 100644
--- a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
@@ -38,6 +38,8 @@ properties:
       - starry,ili9882t
         # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
       - boe,nv110wum-l60
+        # Ivo t109nw41 11.0" WUXGA TFT LCD panel
+      - ivo,t109nw41
 
   reg:
     description: the virtual channel number of a DSI peripheral
-- 
2.25.1


