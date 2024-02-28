Return-Path: <devicetree+bounces-46831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD1C86AF14
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:25:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D136F1F25238
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 12:25:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B22003BBE8;
	Wed, 28 Feb 2024 12:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="hdAwSK1n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477FD7353F
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 12:24:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709123087; cv=none; b=H1Hq/FUOp40doKFmmaekxPD4qHL3mP9ZNphtHmaIdauT7QNIUpmLvbsO8+AO211CmGO9UDSLSQXpupryNm7QRgg0SDHmzhSypsfvuogbcHrt1SC6uZire7tYcUKxgrt+1N3UiFxlGgvnU6PxUE395ZjYq6B107gzFH5XG0qvK4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709123087; c=relaxed/simple;
	bh=bFPBA116gtoirGNyMnry9sXnoTQN6+VYhXbxyRlmKn4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WzeBa7lsKfL5T8PVQoIaqsH1kxohk/7fWjdJYDjiOgwicDl+uq6n9sTq58bK2FxpLaVP3Km5AYhQXoZCc7rdI6L+2fVCihWai8H5L8e85hHWV/pHwUhW342fY5Jrm29bsrEwVKe+2FarKsMTtroSSvZWMvSQrbcbG9m48lwDKQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=hdAwSK1n; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6e53f3f1f82so2030878b3a.2
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 04:24:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1709123085; x=1709727885; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fIgaa248Ub+zaPQ+Ikf3cTmWHDI8K7Zc9vypsF/398g=;
        b=hdAwSK1ndSx5iEwDGUy2KWhlPN8vuSpG8ajyCWs4Qff1P3riM9XC7R51qYbjYi6ulm
         asY/NfDW4r+qp4eYXaR85cCz+saNihYlH4lzh7gvjR6QlLn40aaj+5b7cyPMj0YhbPLl
         es894/IENUe/xP2UOhiHGtknV/2bP83/Tn/6D4GWpoXHNJJSICeVzaDf4Ra3R26c+fM/
         rC4etmrPvxcCI9k2q9FOIq39jZih0xT6r5rHinfrEFRJHOxWwlDi1qm5drMSFlTEvy/e
         vp4qFHtgBJ83zeJqXNxoWHJo+tMYXoaNiYZQTpDoD/bQMSPT+6hzYbVKzZ3WhCH3iXCK
         0vxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709123086; x=1709727886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fIgaa248Ub+zaPQ+Ikf3cTmWHDI8K7Zc9vypsF/398g=;
        b=HbtKUEZUS8yE9apJvg5HYKMTArMXd8lWkmYfi1QRvdDriE5ydhYsZH2Ec886+3GTEk
         80+GjoQhbxXX4dZMZq6LLZARg27NEbcYpNrQaWsYpd1BanoY/yqPgKvAxuJXa+xGpwfR
         x2xtQcp64sFZeK2vh8s5OOhh6n7MNQVbkg/xSPshJrfL+Nec3e0T8o43yjKK+W56Ka26
         vXVar07zatXUgvuJ7Oy1+XWCPTGtUO6PmJW0iDPZKdZxVGWP0Mcvk3baE9S7wMCMMVUx
         6FInn+v7mVgcQUxlq+STuHMiXXbJAjQnTopv9vbgv/ED7ci1VnntWf6faukwMWrNMLTy
         rIbw==
X-Forwarded-Encrypted: i=1; AJvYcCVAZrldk0pv9jEJI0mxT5X8Af4AEB9DyRfPkGcYmnLunC7Aepf/BdhGA0rN0yAgYik5ymUr8ef6sdS5TzhWQmzngM1+ZB6AKs6n9A==
X-Gm-Message-State: AOJu0YxyAxwLVINkSmEFFAMpecNUAREBfY6j7J1xA+prmvlt1uefk5pY
	6NwghYe6J3cVt7DGUpUSQzKoM1karDEx+pqk19rTBfRi7No6Xf+NWGRzXni7kWE=
X-Google-Smtp-Source: AGHT+IEG91bO8PWN/S3/Smyj2WKGJyrKtpPJUVxgykGsz9n5ztSsSl2oXzXHonL5HX2NALklFdogUA==
X-Received: by 2002:aa7:9d9a:0:b0:6e4:68fa:7e10 with SMTP id f26-20020aa79d9a000000b006e468fa7e10mr11256181pfq.9.1709123085648;
        Wed, 28 Feb 2024 04:24:45 -0800 (PST)
Received: from localhost.localdomain ([180.150.112.31])
        by smtp.gmail.com with ESMTPSA id m3-20020a62f203000000b006dde0724247sm7857587pfh.149.2024.02.28.04.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 04:24:45 -0800 (PST)
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Marek Vasut <marex@denx.de>,
	Anshul Dalal <anshulusr@gmail.com>,
	Javier Carrasco <javier.carrasco.cruz@gmail.com>
Cc: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	Matt Ranostay <matt@ranostay.sg>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v8 4/5] dt-bindings: iio: light: Avago APDS9306
Date: Wed, 28 Feb 2024 22:54:07 +1030
Message-Id: <20240228122408.18619-5-subhajit.ghosh@tweaklogic.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240228122408.18619-1-subhajit.ghosh@tweaklogic.com>
References: <20240228122408.18619-1-subhajit.ghosh@tweaklogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Extend avago,apds9300.yaml schema file to support apds9306 device.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
---
v7 -> v8:
 - Updated commit message as mentioned by Jonathan
   https://lore.kernel.org/all/20240224143803.27efa14f@jic23-huawei/

v6 -> v7:
 - Removed wrong patch dependency statement
 - Added tag
   https://lore.kernel.org/all/5089c549-505f-4342-b3fe-bed8a29b6ce1@linaro.org/
   https://lore.kernel.org/all/20240206-gambling-tricycle-510794e20ca8@spud/

v5 -> v6:
 - Write proper commit messages
 - Add vdd-supply in a separate commit
 - Add Interrupt macro in a separate commit
   Link: https://lore.kernel.org/all/1d0a80a6-dba5-4db8-a7a8-73d4ffe7a37e@linaro.org/
   
v2 -> v5:
 - Removed 'required' for Interrupts and 'oneOf' for compatibility strings
   as per below reviews:
   Link: https://lore.kernel.org/lkml/20231028142944.7e210eb6@jic23-huawei/
   Link: https://lore.kernel.org/lkml/22e9e5e9-d26a-46e9-8986-5062bbfd72ec@linaro.org/
---
 Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
index e07a074f6acf..b750096530bc 100644
--- a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
+++ b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
@@ -12,11 +12,13 @@ maintainers:
 description: |
   Datasheet: https://www.avagotech.com/docs/AV02-1077EN
   Datasheet: https://www.avagotech.com/docs/AV02-4191EN
+  Datasheet: https://www.avagotech.com/docs/AV02-4755EN
 
 properties:
   compatible:
     enum:
       - avago,apds9300
+      - avago,apds9306
       - avago,apds9960
 
   reg:
-- 
2.34.1


