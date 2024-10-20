Return-Path: <devicetree+bounces-113340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4E59A5467
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 15:51:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C63F1C20D7C
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 13:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51ACA192D87;
	Sun, 20 Oct 2024 13:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="aUofd4HK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8BF1922C4
	for <devicetree@vger.kernel.org>; Sun, 20 Oct 2024 13:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729432295; cv=none; b=VqzqcBasm6Qx6wUGzX3I/4eqOtRF70kqqJezTHOWp+CIoBR7PocOZV1bziOMwXYjqYZZ9KDrp/tcxHy0iBOy+G8IfVzwy3qc3AB84MQDP+6/4LFIVtB+HnDbyNV88ykjn8UBQF4ESrNDifuYrxiiw1hkc4iPm2R+9j04b60peZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729432295; c=relaxed/simple;
	bh=Nfh7rWqnoxxbqHpU8HwBNwP19da+82wDt6YRKqwykeM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bNQpy3LPIyRaMsNUBjFVdNQfNEyYXTWs/+f5CzYAAbid6j78Gw5+Uoz4qkBhHE6EO9RSPA3Dipho9AjnzLjFaqr6bldGH4cpcDbeXfCaSTL3UclHamG5pLhj4hYlReEFDv81ShHYpHHbWZ8qmqyQZecmfPPVBLjvJlUYVNnimBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=aUofd4HK; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-20cf3e36a76so35343045ad.0
        for <devicetree@vger.kernel.org>; Sun, 20 Oct 2024 06:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1729432292; x=1730037092; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MPBMoaM3chALe3soUlbHbpvyGeNDa4lLSyXt5tFikcU=;
        b=aUofd4HK3MafyVY9IrBmYMYoAhq2oEOkESA6620WL8A2cvQzwb9Qh0SkuUpILOgifs
         wyTcbZkLGGoCMaZW3OpC9pXo4leXTBM457qXBX4RmfLmTabqLuk73CROUcmTN7njLqgY
         VquHCuJY/8QxAU/G8H7ODwrAPggyXYeImw5rdSoPHqCBZGdYhlcYF0+CaByPYrza2QRH
         MjHmGnO9c1jmJM+hkiLSAcUFeEaMAyRBEHPgstCWNL8/WbOaAMJ+lDpMqytMB91jhi0P
         +Cpxn5IepqDSkdgiQZYgKQ+/ScMU8v83PmNIktJE7NoH3h349Y19aWbrxsfM+doOr053
         GLVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729432292; x=1730037092;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MPBMoaM3chALe3soUlbHbpvyGeNDa4lLSyXt5tFikcU=;
        b=fh7Vm5KYIBmPruNik+cw268O0R7VNg0crF618VTN1/333VVcbXvYdsLas25gnfwPWX
         dT3OfmGo1/kmuWiQcRhYYd799t8K5h/6oLKIJOd1ICXJzijWzlRctnkAr+Lx4ejLUfCv
         Mmpj4LqfwgG1laScWabrNCIVyDRtkE1yGGciKPKK87mTy1sp0HxdKXeL05DfSPjUA+X1
         2qmzYVHEBhCfLwFutC8TK3eQO2bB9BFsqNIQDfSIEApv98r3RPS08hGkJJl05HZL967A
         WUqk97eGvv7eXLXnNT/p4Hni6dTTwKDfwyemOmiSU8NzZQIPhNXHJLzCd9iBqkuGXNDC
         D3rA==
X-Forwarded-Encrypted: i=1; AJvYcCVyVaFFsWRhHZWDBkY6+FhO01SmH7U/KQTtiHuM6whjDGMfDFZJ7HrUEgoZxSBaMcluY8ja6noQb4GK@vger.kernel.org
X-Gm-Message-State: AOJu0YzN8uzJ+eUZ8kCyaxZr/gDb+fBh1rtVHqZKPaUOTc9wArSreHUH
	Wh+s3SzwHbjXBSmvDxw4hbrQcOK28r2m703io/GJLyP1tMoz358E6nTWbcwKuro=
X-Google-Smtp-Source: AGHT+IECw/I0U1e01X7oBf0kcDMUr1gGhs11sh52KTHDqUQ3c8u7qUnUBttq9f379hVt7YOOIKw4Qg==
X-Received: by 2002:a17:903:41cd:b0:20c:675d:923d with SMTP id d9443c01a7336-20e5a8f23cfmr114568735ad.39.1729432291432;
        Sun, 20 Oct 2024 06:51:31 -0700 (PDT)
Received: from localhost.localdomain ([2a11:3:200::40df])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e7eee63f0sm10554935ad.3.2024.10.20.06.51.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2024 06:51:31 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	rafal@milecki.pl,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	Drew Fustini <drew@beagleboard.org>,
	Alexandru Stan <ams@frame.work>,
	Daniel Schaefer <dhs@frame.work>,
	Sandie Cao <sandie.cao@deepcomputing.io>,
	Yuning Liang <yuning.liang@deepcomputing.io>,
	Huiming Qiu <huiming.qiu@deepcomputing.io>,
	Alex Elder <elder@riscstar.com>,
	linux@frame.work,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v5 2/3] dt-bindings: riscv: starfive: add deepcomputing,fml13v01
Date: Sun, 20 Oct 2024 21:49:58 +0800
Message-Id: <20241020134959.519462-3-guodong@riscstar.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241020134959.519462-1-guodong@riscstar.com>
References: <20241020134959.519462-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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
v5: Removed extra "From:" line in the commit message
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


