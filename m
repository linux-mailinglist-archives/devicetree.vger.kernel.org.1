Return-Path: <devicetree+bounces-54361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3EA890B3D
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 21:25:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 931491F25BB5
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 20:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EB31139CF0;
	Thu, 28 Mar 2024 20:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Oil/xswM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB032139591
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 20:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711657427; cv=none; b=Oh0mp2v7q9TEO1/VLA5RIT9Uvw1yACV5Pq407qdP80OsK1RMq7qJoK2AijLmMbS3sh2tymADNSrVwM47TNYPqzRZ7om1QCPVGfDdUPlKH/6NzvGiZXIwDN0zdcMwgvYCEC0KtlmirtdwfpuiOn9fzHpFipD2ZKMKlLfskNxeH1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711657427; c=relaxed/simple;
	bh=Bpn9BWZNH5PRThSfi4wPtUSACyo5xNzRrF/AQoUWk9I=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mtBxTGNbhdj4dOQ7n9fejBT9U5RhZQsWRCW3kPEjVnoqOdFnHtxpEmVo10CfbbsyMUINGFjoTeykOs/3QNk8czziw3CHKHh2rHAgLme0BPSa6jzO2MGiQUNf0NDBXeZGRYt0DLwParYrUYVBgX4wDZLfnt1tXIimcLzI1cib0H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Oil/xswM; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-341cf28dff6so966795f8f.1
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 13:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711657423; x=1712262223; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aN4PhuvWAnA2tTEHvF8Ua7mWUQaPffQCdMxsppNaWgM=;
        b=Oil/xswML2avQJxXvQuU1qN8Ks/QtJF9vC5SOIdJGtpoFN/ruDOAyfF3g0D88z+FPF
         nY/cgNRODoKQar1aUoxy9EQvAAfv04DS68JJMeSTRa4iQt9jBHEApS+hqoZhE9kMzBa8
         vY/9TZ83QQlqh1/sDK0EuGjUpcN/blrqvldZNMy4wIl3kuUtLENAQIGbe4rUF6dDUiVV
         Hfw7tVOUvlONCmDsSgB1/mOuxCSUB6WwzovaWHg9a8UWbxJdguh9cjz3LG4ShHPOmk/R
         dvWNsDAJ6uJbmdMY3krE3wxe+G61O12oPZSvhpi7sWiTCPzN+C7vcwnPE0WjB7VL4epK
         tyEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711657423; x=1712262223;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aN4PhuvWAnA2tTEHvF8Ua7mWUQaPffQCdMxsppNaWgM=;
        b=Nblv3sIWXx9Z3EqzdUessLhZ14RBD9npn4I4gRnXNqiZ3+9n+2jj+3dOO8iqbIYLc4
         eyaGi+bHcXw3gGTuD9WvQE2LOGfPKzDd8Ux4Not1H0ZxtgXILtW2Q2TavBW/EEkv45OQ
         5I0KVFHI5KoLwTzgAUPDGvZfNLNkLBNa/p/f9O+d95xBaZDjIMTDdZhOOIDR5x1A/WuG
         oc8D59rAUt9mdTHgihN5AE8cE8y316RLgpRWSiyVqVg04mZ1sCFvsyO1RvC6HKW9WxXQ
         83V0mnI5v4UHfoiwjPowNSOqVAQjvV3bjpSmhCjs2j/HwD9OzdyZJDQ30peJbcAze8sM
         Qp5g==
X-Gm-Message-State: AOJu0Yzef19+9YsrDIX6bDfD85wInJwkawsPLJbxxMsgo4V2EOXp1M9i
	2XtB4WSjVFiFCKhh6xe40tn8J/AaSEYDTcbycREJJbKsa+BbkAhclPMxrx2RcWjKew==
X-Google-Smtp-Source: AGHT+IG14NBt9Lfnp5zRiB//c/Nkx/NjUDrErRTTIGaXk/rXF9TdrJ2RsYII1laA0G/j1M2Z70tKLw==
X-Received: by 2002:adf:e54e:0:b0:33d:74f2:820e with SMTP id z14-20020adfe54e000000b0033d74f2820emr88912wrm.30.1711657423264;
        Thu, 28 Mar 2024 13:23:43 -0700 (PDT)
Received: from localhost.localdomain ([2605:59c8:6662:b310:26a7:2d64:79c1:dee4])
        by smtp.gmail.com with ESMTPSA id dp18-20020a0560000c9200b00341de138a2esm2538974wrb.94.2024.03.28.13.23.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 13:23:42 -0700 (PDT)
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
Subject: [PATCH 0/3] Add support for Emcraft Systems NavQ+ kit
Date: Thu, 28 Mar 2024 16:23:17 -0400
Message-Id: <20240328202320.187596-1-gilles.talis@gmail.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello

This series adds a device tree file for the Emcraft Systems NavQ+ kit [1]

The first patch adds a new vendor prefix for Emcraft Systems
The second one adds the board to the arm/fsl.yaml DT bindings.
Last patch adds device tree file for the kit.

[1] https://www.emcraft.com/products/1222


Gilles Talis (3):
  dt-bindings: vendor-prefixes: Add Emcraft Systems
  dt-bindings: arm: Add Emcraft Systems i.MX8M Plus NavQ+ Kit
  arm64: dts: freescale: Add device tree for Emcraft Systems NavQ+ Kit

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../arm64/boot/dts/freescale/imx8mp-navqp.dts | 435 ++++++++++++++++++
 4 files changed, 439 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-navqp.dts


base-commit: 4cece764965020c22cff7665b18a012006359095
-- 
2.39.2


