Return-Path: <devicetree+bounces-115403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C619F9AF64E
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 02:42:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B8742830B2
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 00:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C7FC79C8;
	Fri, 25 Oct 2024 00:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EPNBEsg1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA575695
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 00:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729816933; cv=none; b=L7lvCtew2/Dd/HoWleo1JzGY0O5ILnNO4vRgCBnMdq+t4Soy3FLSbul+bYl3lvPqyInOEkB9i0ImTUM2n3VPws0PGd01fGS1PkXg448TdX1jJ40GP6OZDyKoXeVbL+kv80HcY9HoDpwD6TuhMuUv8Nr53qkB5MHOz12fPHhIWNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729816933; c=relaxed/simple;
	bh=A0i/BPTOJCM56lujfQVhp0IouM3vgbmKHXveMTbOcQI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZTNYwnWB0ethtHMDa8zIa3CGeu/H3JHxFswlI3KlMLe7mkI/MHvp7zHVspIlbGP2TX9Wa/PTnowE84bqsYqZNgXHC9qKAvx2bLPrwKtUxSJjQb+MEIaw2UPu3sRrqZc4ppFMgNgn2omkTOnkMjQlXNA0l1HOP5G4o2jktVsv9/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EPNBEsg1; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3e602a73ba1so913463b6e.2
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 17:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729816931; x=1730421731; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O3glZN7tdnxqEr7AALFevER6kTHzPF//GTHKC2fD5T4=;
        b=EPNBEsg1B1eBLFpoypYIV8Y+wP3XAYOclqTXT3hyC2xUbdu5D+oUfxzSUozW6xEw+h
         0sQYHQXILlL5quePfJQpPHi7hGT0AgVqDZDJpKfVzOH5P+pxccf0HULauR/gLuUzgXkN
         L5GU5dMKVMuBPsUfimvb968cho3o9ktjDq3qzysDDwBZKrcrj6L6zZE4KEsUh6V69e1b
         lmZhZUsfd/n3fH+Ua4MQdQhVe39+mZ5XqxAXleG400JB1Ft4VJEXBJ/RwVRkUSzROEr2
         VPBYcGFBHwdxBNbsTnV2EgJYLNfwOhwYW8+ju3vGm3JBQsiPtE0nAFce1q6+5HJEGPSS
         f06A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729816931; x=1730421731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3glZN7tdnxqEr7AALFevER6kTHzPF//GTHKC2fD5T4=;
        b=VWH4NOyKExejQ/O2pOgjubgIoNAkgAjTnvYGf9bKKlZ81a2XMI3ml1tkPCjjJhJF/+
         IbuibHxQQy3hbcn7Xs2lZ/7NQDegKtkvEBDSqMtBjudrqRxz7SAilsC5jJZ+lEkmmqMW
         DuIQ+GdHKCwSmGaLywTOf5QA5vhZOT/Tpo2RfKcPTiOCeuIw/sLnsReViQZ6Jv1FDD6z
         ok4hYSU3bVOC0uoEhFlHlQyLAsQMy+DIwv4eJkH9z/91bbkBkixuXWuK3nRu8nbM9ggP
         392DdNhs+GJc3GVxPoi/FhWy3AdAwcRwCyjRh3yKzyUSb486jsGg3mF6X/88pwurRyDo
         WVbA==
X-Forwarded-Encrypted: i=1; AJvYcCWw1VtoPOmH5UEWyMdagjwG20K47lQz11plrED8yfQMjf12Qw2fJ7wqejBOvbcwY0h1ozGpdRTmoMbr@vger.kernel.org
X-Gm-Message-State: AOJu0YzPdQgfQvMwScaZGUVN6sYlfc+nnl9/fTG/HBmIba4yiUuJMCgM
	9LYwrC6sf3+xwVOXAX84lX9Yo4kFVPFxfbo7fmbfB+czq4IsKA0T
X-Google-Smtp-Source: AGHT+IH/yxaa5bTSEO6mVFg+zirKexUg+7iL8/DIbuhJOrW61wjJMRXPmsWuAZESLfEU0XQz2w5jgw==
X-Received: by 2002:a05:6808:200b:b0:3e2:a1fe:f0c6 with SMTP id 5614622812f47-3e62450114amr7198590b6e.6.1729816931078;
        Thu, 24 Oct 2024 17:42:11 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b160:3edf:6e5d:8d4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7edc8a3d2easm27289a12.85.2024.10.24.17.42.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 17:42:10 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] dt-bindings: soc: imx: fsl,imx-anatop: Add additional regulators
Date: Thu, 24 Oct 2024 21:41:59 -0300
Message-Id: <20241025004159.1571782-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241025004159.1571782-1-festevam@gmail.com>
References: <20241025004159.1571782-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

i.MX7 has the following anatop regulators: vdd1p0d and vdd1p2.

i.MX6SX has the following anatop regulators: vddpcie.

Add them to the allowed patternProperties.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/soc/imx/fsl,imx-anatop.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx-anatop.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx-anatop.yaml
index ae708a658d52..f40c157908aa 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx-anatop.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx-anatop.yaml
@@ -44,7 +44,7 @@ properties:
     $ref: /schemas/thermal/imx-thermal.yaml
 
 patternProperties:
-  "regulator-((1p1)|(2p5)|(3p0)|(vddcore)|(vddpu)|(vddsoc))$":
+  "regulator-((1p1)|(2p5)|(3p0)|(vdd1p0d)|(vdd1p2)|(vddcore)|(vddpcie)|(vddpu)|(vddsoc))$":
     type: object
     unevaluatedProperties: false
     $ref: /schemas/regulator/anatop-regulator.yaml
-- 
2.34.1


