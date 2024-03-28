Return-Path: <devicetree+bounces-54363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AC0890B3F
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 21:25:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8B222974A5
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 20:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7024B13A3EC;
	Thu, 28 Mar 2024 20:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ahM9dC3N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FAEE139D03
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 20:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711657432; cv=none; b=I72SeDv0OalRXkBFhAnp6x/03VGoP8ww9Murkr02BpL1uNaD+GTMfbptZRepGNyDbjYcvNw2G9zc8KT7wMomPdDvS45xygi/WeOBX7AlkL93LkZKe44IoFy3B3iVNPbGev0xybUeP8D1x5KacbzWkAlgk5/ZgoSZcgdfV4b3ihw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711657432; c=relaxed/simple;
	bh=QXXWL87/5lJNB0b9xDTTEtAz9RJ4R2qc7NHzCCO2Vgk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VpVFaFGzLYcvMQBO2icn2kuVC8HnDfsKHo86xXf0Gcr+qtklFjSjxpFAOn+8KpoA4YCfcRtqJh1U20+Oq5ka9IxdDP2AWMOSC15ARjbmM9IcmXZ6Dp0Xho7i92x+w8afXvkdDdublacv7qQj66yU3/HhuDJi3s6ee1cGOKB1lt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ahM9dC3N; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-34005b5927eso941735f8f.1
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 13:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711657429; x=1712262229; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=57aFB1eNPYGC7lvg7sDQU/upxZe1OvMdYbKrKwBcY7k=;
        b=ahM9dC3N9mFYXeekXowe6lwBx0mIpdZ5zkBVEol8mim9SIVymJBVUvEQtavpl8dcYr
         tY5YuP+F8GlufK0JrOi47au5i4bsdc/OY9p/1GlDDY/rT/0mxjxVD5L+MNXYB1wrP+Db
         NcQSEMGKhJGTe9SZr4qYo+xPdX/+9YUK15Ud8Vdn3RQN534hk2a5B7+Z8SNjVj1/o+Nj
         /9RxJ6dTUebm8sb8SGt9dF+1kpMgltP8rLpxsPt8k+rqpJFuXnwXjVHPjifccLLVYLYz
         5jDDcF1ZUQq8eEprB9DxIVtweX0bFV7Y0499AQZulm9RcBpYg9BZeA8Q7o7Vx3Rh9c79
         hVpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711657429; x=1712262229;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=57aFB1eNPYGC7lvg7sDQU/upxZe1OvMdYbKrKwBcY7k=;
        b=ZWaE6IZN0wj6hmilWNL8FJcfSHEbxdLZUMbfPzK+byWX03zhiFXXAZUqr7BNTe5EAP
         VAz0Nexj4iV/TKQ7q/hq5IaBkU5YGQtUg2F65auZWSNoNg0LB5dL+af8LxLcU74yDTRj
         li1yB8a63kegtVTQvUwf/f2OJZrK3gi6wHKaufCzJSSEieXce7zA3PUfdoafZYS7tTpX
         wpjsbvC61o7zisgFTcl1cGNKpIX5iGL1XAVDHtgyHVqppW847Rq4DKH/qgdFUqvlLBBZ
         CyDf/ChbnjAWJ/sBvR7wxAwb6XNa34CxnKk5FuKUFrmph3nMqdpEEEnH/FRinTs6ZwD3
         gwGA==
X-Gm-Message-State: AOJu0YweqHq8Bm6Aw1+FBzZiqs+s6Z38vf1z2W3wNKwYj61J2cHFrOuJ
	hiainB2C1Sfs/qN92R3SFYgt7fQRFxLMCSr0iGEVIC/pyadJAlAAY9UU/uedv7xNJQ==
X-Google-Smtp-Source: AGHT+IEF+7bL9YKjJD3uyLKpsEoQDj8QCAkJ9u/SEd87WdISjKyRgyt8uzBXbe8k8S+awRGI82m9Ew==
X-Received: by 2002:adf:a1dc:0:b0:33e:78c4:3738 with SMTP id v28-20020adfa1dc000000b0033e78c43738mr93995wrv.54.1711657428541;
        Thu, 28 Mar 2024 13:23:48 -0700 (PDT)
Received: from localhost.localdomain ([2605:59c8:6662:b310:26a7:2d64:79c1:dee4])
        by smtp.gmail.com with ESMTPSA id dp18-20020a0560000c9200b00341de138a2esm2538974wrb.94.2024.03.28.13.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 13:23:48 -0700 (PDT)
From: Gilles Talis <gilles.talis@gmail.com>
To: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	shawnguo@kernel.org,
	festevam@gmail.com,
	alex@voxelbotics.com,
	Gilles Talis <gilles.talis@gmail.com>
Subject: [PATCH 2/3] dt-bindings: arm: Add Emcraft Systems i.MX8M Plus NavQ+ Kit
Date: Thu, 28 Mar 2024 16:23:19 -0400
Message-Id: <20240328202320.187596-3-gilles.talis@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240328202320.187596-1-gilles.talis@gmail.com>
References: <20240328202320.187596-1-gilles.talis@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add DT compatible string for Emcraft NavQ+ kit based on
the i.MX8M Plus SoC from NXP

Signed-off-by: Gilles Talis <gilles.talis@gmail.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 0027201e19f8..cec1b31d0792 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1050,6 +1050,7 @@ properties:
           - enum:
               - beacon,imx8mp-beacon-kit  # i.MX8MP Beacon Development Kit
               - dmo,imx8mp-data-modul-edm-sbc # i.MX8MP eDM SBC
+              - emcraft,imx8mp-navqp      # i.MX8MP Emcraft Systems NavQ+ Kit
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - gateworks,imx8mp-gw71xx-2x # i.MX8MP Gateworks Board
               - gateworks,imx8mp-gw72xx-2x # i.MX8MP Gateworks Board
-- 
2.39.2


