Return-Path: <devicetree+bounces-123352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC2B9D427B
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 20:18:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 175D51F22EA0
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 19:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B23681C6F55;
	Wed, 20 Nov 2024 19:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="QdJ/za4n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC611C1F11
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732130255; cv=none; b=tzSpyVH5h/cIOPfdnULKej/eRCMIjkr3sRsqd5BoM3DQ7AIFutVTkY04+O4EMEvJLEE/e4JEU62cPMp9Pl/4IFeB/Dzi7cAbyvYEFLU9nzoOvdB78J6thzMu0iYXfMLK5czq98BVzNejxzzfgndEV62xEH7Z7vXr2JbwUmsBNGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732130255; c=relaxed/simple;
	bh=3tV6GkAKanIEYQ6ZIvJMVnikoHT1hIYNzp0NLUDHrFk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pgjt8VrU+6mzXcazPjjhLHj30LD9WAFeWcB0qN/fTMKujtTXCw5rJlTX/B6zMR3wPaU1Z0zu9iBc0y3cmDkzcd8rAv9HlAhN1HaY5/VcnqNVXHhgVXSy6G8FGTYkxoi/p/Vao5YeYLhIEYV+Mr+Yp9n5m0Lw/WVwm1q4HKUeyS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=QdJ/za4n; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-382411ea5eeso43758f8f.0
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 11:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1732130252; x=1732735052; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tlfK6fVkxSaaorM3DUmPJkAs0WHL/MQZMzNEpDjn1Qs=;
        b=QdJ/za4nYtjAyAK4eFfS6nhK7k3HSP7eSso4xB6aqHKhJcu/wWqotS7QlqUN3GLveC
         SUe9YwIWQvgIkz2uevKvv5pMpP1cjMjm+hhs7AHwOyh5/AjcdWXnOwB40spp46rk2siY
         Shd7umdIuS3d+D3ms3SDhRDcT7Mff4bKCDTO+Kt5vxtet0luVgS3Yd20FFTxCchcRpfY
         etENfF16qi9pkB5fmycEooqCty8ho2llrmg2ne/wPoOK2Aa36RHRnoRyKZiFBu5m05yS
         i2T1PGMNB/y3GXVqXX2Yx/+DLS2Px1hpz5N5FZwfV1AHMhty5RxsCckqjTH4NYndtesh
         v4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732130252; x=1732735052;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tlfK6fVkxSaaorM3DUmPJkAs0WHL/MQZMzNEpDjn1Qs=;
        b=dGIEpkDrBsFdT6FQEvzn8lkmPFQeG5NmFpfgIXhTGnpADof5RxjWONA8UPZZvafxZf
         5HdayZHFcZ7GYWflZ6tT05XXtSbio+jn/+KE6yWBKJLj4coNql9dz0NKYY/3rlB0aYPF
         qVhkdMRI5VCRa7vJksr47s1YG6fO0HCY7/aUq7yX65j8mtTpWnageiWtGtMkLMu6K5pu
         Yw7Duj/GGdAu2KWQDqSccP2RCnMwhVd7deDeHK8ymiPaEX/8xRWZEl7nRdjvC/Bec+MC
         e+TCewAxiJXvHeOVrgAugc1ojSfs4v7A/pzsYdLO9G9tV3WeQzOy7v2ch5Mkz+X51bow
         eG1g==
X-Forwarded-Encrypted: i=1; AJvYcCV8qvVX3iRrqe+y2cRGyfC+vyDPLUxkLuoTiuqW5m5OEXkWA6wL0nR8ioIkk40K61GWXcrDZP4ljGA4@vger.kernel.org
X-Gm-Message-State: AOJu0YyhK80fYyVMFZm87frL7G6pU40NUWOAHUGFeIdr3pf7d2yd5/c1
	9v69+cX/LttJE+BiZijIHbhYFEJRGkifydMTids2iRKWiWw8tTXgNoEBV5qEZDk=
X-Google-Smtp-Source: AGHT+IFsPHCFTeyLurJH5qyVLl3pNocdRdlqiQRb210XXiKhMPrIT/IgqWReShN+rBrzroBvgkskDg==
X-Received: by 2002:a05:6000:401f:b0:382:2386:ceaf with SMTP id ffacd0b85a97d-38259d26078mr527503f8f.27.1732130252463;
        Wed, 20 Nov 2024 11:17:32 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3825a2c5ef2sm172457f8f.53.2024.11.20.11.17.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 11:17:31 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 20 Nov 2024 19:17:05 +0000
Subject: [PATCH v2 3/4] media: dt-bindings: sony,imx290: Add IMX462 to the
 IMX290 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241120-media-imx290-imx462-v2-3-7e562cf191d8@raspberrypi.com>
References: <20241120-media-imx290-imx462-v2-0-7e562cf191d8@raspberrypi.com>
In-Reply-To: <20241120-media-imx290-imx462-v2-0-7e562cf191d8@raspberrypi.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.1

IMX462 is the successor to IMX290, which is supportable by
the existing IMX290 driver via a new compatible string.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 Documentation/devicetree/bindings/media/i2c/sony,imx290.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx290.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx290.yaml
index bf05ca48601a..fa69bd21c8da 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx290.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx290.yaml
@@ -33,6 +33,8 @@ properties:
           - sony,imx290lqr # Colour
           - sony,imx290llr # Monochrome
           - sony,imx327lqr # Colour
+          - sony,imx462lqr # Colour
+          - sony,imx462llr # Monochrome
       - const: sony,imx290
         deprecated: true
 

-- 
2.34.1


