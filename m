Return-Path: <devicetree+bounces-49574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A743F877096
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 11:52:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 466251F216C3
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 10:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EC07381C4;
	Sat,  9 Mar 2024 10:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="UGxwXKnB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275973BBD4
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 10:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709981532; cv=none; b=jK4GS2g1WZFcZRnICiLGq+OYicMJDSLt4CKcMVDyo4ikVtAzcDRlShz3i1N6isdzzjTTa32jxf+AINMUGC18PsZQXo+A3rhhvZWA0tFUq9dM2LqNHFGTgxZM77V9/gNfPjFyUNOSQEKG/UcVV00vGxzBVFu3JOrMr1qC7+Hy9RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709981532; c=relaxed/simple;
	bh=IHVK+8hLPtQE8mddThhUf1bH+0pz3K9FtGK8BU45Wj8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bwfCSC9renwzAYrHBMV6YRNctRIdvoeOZoHciHnoRCQY0a52jgtDrwPn8bunA5Yaj+DeUTQHTwYe/4gVcj3Tea9SylKoo8n4HwWMUdWUiDkUfE2Wqn/hdZc9P1LXL/tRGS5bAuSgHTF17l1rjPJqIrjSIx95yaNMZ4xHEdhE95s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=UGxwXKnB; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1dd878da011so28505ad.2
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 02:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1709981530; x=1710586330; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G0Dt/OszbeXQYl5BW6lsHWwo764yDL+yMt8ZpNqVxh0=;
        b=UGxwXKnBqK+/J9B5wgD4Rm2JZh0Ygz4X/oPC/YcYCnvqmYUOCk1ofUVmbkhXbG1yrF
         l/tn66dZelw4Qd0OqU997gNBanHCp/NHdgyyQuR0WJRXvSKX9DtnAsnT726rj1O48UuK
         RZB+AZ3vi67/yO/WW7vqRxF2lYguDw5APKhbj/M4yvuNB2fvnliO0rL7HLF0Tepq1qDt
         HOmpDLcBuJSG2EmwwE1kZjS8/lwPq4ddv0Vz0wJevfaY2Uyv137o1VHL1EGZMh2xXqbT
         B+49/HPMSv5shdNZB1F1/JHsnBOZnOC8QqV9C3eRdU8llDK0wELy8By1NmVAa9h4/Wr5
         Tn4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709981530; x=1710586330;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G0Dt/OszbeXQYl5BW6lsHWwo764yDL+yMt8ZpNqVxh0=;
        b=t+aOLDMWukSz+XdEesYD4r1noJIk79eoT0NuUPdEb6hA2+vVT1LX1tV4aiFvg+iCDO
         N+zPe++lEHbl6CLxWGs/8lxthZlN2UyQMXiOGImjrXWW6C9fhsxQEIHcUkvdE0BUVZL2
         exdpoGP3onoLnK+poAH6TRm8lJh8soHHnEISXznsG47CH5fqfzUU9CxL/i/wjZPSvDCN
         bFzAWkIJzfdT0z7zuBFrnsORdOUJRCr0ODxAwqJJFJD/PQ5w3wUKJ1UzuXTUGTVzsWOa
         TGFFhTbr4eDbjSQd4f9YqwWxusOB7aRUUIk9I83ZiFZ6iQwAuNxTKpso3y5YrFXC/mN+
         zn1g==
X-Forwarded-Encrypted: i=1; AJvYcCVNzwRLRcFJbmPwql2nHiFDwfcQG2pjAIPLAvyetWUfEI9wTQSU/168TSATKn+66q3/xQDVEanE8bxquGBWLPKgZGp5TmQWBL1qGA==
X-Gm-Message-State: AOJu0Yxtb2DI7omuH52ekkKgLL4qt41mSELPKr1iT5rdXowIxkncK9LM
	IH1uux7j8P79m9qEWbslnQFDy6qj7hnnMkQkRHTaFerRpGBkc8ojY6F+9vROC3c=
X-Google-Smtp-Source: AGHT+IEDlVFd7kl5C+vof0MEb3VDTlRDAS5XNzmB52reOMOJbyeBtmd3oZrv9o3ThLxa2NHyICVOgg==
X-Received: by 2002:a17:902:d4cd:b0:1dd:5f54:f157 with SMTP id o13-20020a170902d4cd00b001dd5f54f157mr1427594plg.64.1709981530444;
        Sat, 09 Mar 2024 02:52:10 -0800 (PST)
Received: from localhost.localdomain ([180.150.112.31])
        by smtp.gmail.com with ESMTPSA id l8-20020a170903120800b001dcf7d03824sm1070608plh.55.2024.03.09.02.52.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Mar 2024 02:52:10 -0800 (PST)
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
Subject: [PATCH v9 4/5] dt-bindings: iio: light: Avago APDS9306
Date: Sat,  9 Mar 2024 21:20:30 +1030
Message-Id: <20240309105031.10313-5-subhajit.ghosh@tweaklogic.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240309105031.10313-1-subhajit.ghosh@tweaklogic.com>
References: <20240309105031.10313-1-subhajit.ghosh@tweaklogic.com>
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
v8 -> v9:
 - No change

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


