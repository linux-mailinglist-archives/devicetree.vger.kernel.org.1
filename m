Return-Path: <devicetree+bounces-113263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8FE9A4FCC
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 18:28:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 740AC1C24E0A
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 16:28:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A8C118E028;
	Sat, 19 Oct 2024 16:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="UY9izS8k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1207724A08
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 16:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729355271; cv=none; b=Ud3kN94qKhu740U96U1onWCWfL5wOjnquEXw5c5w30YRAy0KLDltZ1XVoerOePrhQq2/qsxEfDEVkLJf5CcfAWxMyxWIp7S530g/u9sRlykUlj4wRjpmPbXlFOeOQVF9XiCmJiIb1TWrcOyY+g/FdSbisqUBQfq4PhEFwi+VD+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729355271; c=relaxed/simple;
	bh=2QWlxf7+gAhVvRG3k5VPkJmnqUBJn3gQSo3pXC3zq2s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IFOUyNuPm1LcrM7S7pJI8o2J6ntk9WtXHLUHDwuomeaCDEAevGF5waAaLmgv8aK7iOAjE4oHO9fSjpBRAAPQzZzh9/Jke82+SRoamKnPIIEi3e8Oe0IVE8QCILdUtd+r/UfZc7og+5FsUeP/TP+hziQcZPXiMwzr7o7+8JGDwiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=UY9izS8k; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-20c6f492d2dso36817925ad.0
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 09:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1729355267; x=1729960067; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PSdP3C8YdR1jmbqfSauKDLLYk+KUcp0Cb8mVBlRfeWA=;
        b=UY9izS8kjOfVVhyVSqIY+LEpLeGW+ONAjrf3SKyeCKp4Ed++L8pMyeLiShJS0zQ9hL
         E+FuXcMkie06vbhhFqo9NC7Dt48xM4L0bqkuXEBo/TZLNw+ao6S8XNGth25ifja4FVq2
         +nA8D/MAHo6v5Sq6CKh85/FeNUAAP6tt1UpH4+6g8eqgObrR7jK4pm16thuB4o6/PiCf
         OfWmMdafMDX7dzrXk/o0KHqaKqVkdMwnpQV5TRzdKZNjMOoU6Q9w23/kR98wz9vxaYlg
         DEXhTXXG5SpF5ND7EI2YHXppzaLDBJRqhkPjVw0sXb5KCr5vEMX2m6YRv006PNxRSgAD
         g9OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729355267; x=1729960067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PSdP3C8YdR1jmbqfSauKDLLYk+KUcp0Cb8mVBlRfeWA=;
        b=L1JNbhBngz2UCpDO6ZenjJVkEmI2wuhaeOT9Rhaq9WTGMsxpnv62bGKvvur8rab+e9
         iK31susYSFaSpTNgjA4xaxGdCM5mt2bbOl2bWJvyBmNWjZ0kLEayfJSFORmmmKecXPVK
         wRb9Pe7z3yRRxNnpTGq4F3xAbX/76dcFi8iXfRzjPxJGUBHIN+osCjCaknUiU7gAdGPs
         9ashBu8EUoVv21QbJlZR8YQLJ4FdvT+0ejWgA/aKL+fpOGW/We4kAa6QLN3b2T7oAaJg
         3Dd6ktUzFKe06HedjS77nFBUZQCjwEKV5M+F/RWjSRU/jDhGFKUOa9NVlULuMIR2h4d+
         NFjA==
X-Forwarded-Encrypted: i=1; AJvYcCUoPcFSLkGioOMlDQZPkj0vr3wxR9c6HPWN5GYE8JInQoPc2Lajy7JYHhUzM+yhIIh7x3zZUsaFJj5G@vger.kernel.org
X-Gm-Message-State: AOJu0YyUgrdcxDEOpQXZv19rSBW43S6TD6VXSIme4XUG8kHLXLioYcAU
	3DqTsW8a2NORctQbvYt4vWlwRHXQOJWQv40/kyugg/fVwY3FxMS5C1RsGEEaH/g=
X-Google-Smtp-Source: AGHT+IFB/lgLKenWFczXSTZ1QqSP6gxMxesJeEKkKsnhxr1xTnsZpi3fsqyNQ8NSXbyKQ9CWcBpXjA==
X-Received: by 2002:a17:902:db04:b0:20c:9062:fb88 with SMTP id d9443c01a7336-20e5a70d863mr80409155ad.1.1729355267302;
        Sat, 19 Oct 2024 09:27:47 -0700 (PDT)
Received: from localhost.localdomain ([2a11:3:200::30df])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e5a8de4bdsm29567625ad.180.2024.10.19.09.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 09:27:46 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	rafal@milecki.pl
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	Drew Fustini <drew@beagleboard.org>,
	Alexandru Stan <ams@frame.work>,
	Daniel Schaefer <dhs@frame.work>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sandie Cao <sandie.cao@deepcomputing.io>,
	Yuning Liang <yuning.liang@deepcomputing.io>,
	Huiming Qiu <huiming.qiu@deepcomputing.io>,
	Alex Elder <elder@riscstar.com>,
	linux@frame.work,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v4 2/3] dt-bindings: riscv: starfive: add deepcomputing,fml13v01
Date: Sun, 20 Oct 2024 00:26:04 +0800
Message-Id: <20241019162605.308475-3-guodong@riscstar.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241019162605.308475-1-guodong@riscstar.com>
References: <20241019162605.308475-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sandie Cao <sandie.cao@deepcomputing.io>

From: Sandie Cao <sandie.cao@deepcomputing.io>

Add "deepcomputing,fml13v01" as a StarFive SoC-based board.

The DeepComputing FML13V01 board incorporates a StarFive JH7110 SoC, and
it's designed for the Framework Laptop 13 Chassis, which has (Framework)
SKU FRANHQ0001.

Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
[elder@riscstar.com: considerably shortened the description]
Signed-off-by: Alex Elder <elder@riscstar.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v4: Added Rob's Ack
    Updated description
    Changed board name from fm7110 to fml13v01
v3: No change
v2: Add deepcomputing,fm7110 into model compatible list

 Documentation/devicetree/bindings/riscv/starfive.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Documentation/devicetree/bindings/riscv/starfive.yaml
index 4d5c857b3cac..7ef85174353d 100644
--- a/Documentation/devicetree/bindings/riscv/starfive.yaml
+++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
@@ -26,6 +26,7 @@ properties:
 
       - items:
           - enum:
+              - deepcomputing,fml13v01
               - milkv,mars
               - pine64,star64
               - starfive,visionfive-2-v1.2a
-- 
2.34.1


