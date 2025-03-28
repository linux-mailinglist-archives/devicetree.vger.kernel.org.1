Return-Path: <devicetree+bounces-161601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7388A74B36
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 14:43:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 565E63B6243
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2359235C01;
	Fri, 28 Mar 2025 13:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q9gVDs8P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5907821B9F7
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 13:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743168671; cv=none; b=cEiX422HXZRqrqo5l9ySw7KNn+50REPW4e1jgt+RtF0sNYKcr62jupjVdX2I3ZjNJrBB7GCF1/KexqmnvDuOrCoIY3GBQdEqWRxBuNhnNvRJm62vztaQGqqFCB4wzIP/IWiBEHHQkVNiRTU/TSyxdc5etSTZxq+wnihktnVlerg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743168671; c=relaxed/simple;
	bh=UlkZld/wRLMptXmKQwcze511hrG+hJRq5bCGkApcG9o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hcLRLwlMlsKV3YDXQxoS1+UT2/KYZJs43OmZ2BS9fZ3I7cBpjVpHo3f9bEqB/4ilpSLUK3Mdos28gPte2tRH1GLeMsxbqxWQBXBnLFFlZFkLAmO5KxgRge/uBAblHC8wwxjAEUJvqI+qsgdqzGd/D+glawgZiPiwUh2k+UZ56Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q9gVDs8P; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e5dce099f4so2961151a12.1
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 06:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743168660; x=1743773460; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zvnZunCYyaEwV4fUoehy+lbIydvSzIujDoR6jNNiKRw=;
        b=Q9gVDs8PrKzZC0ysMxUV2BFkJszOmakjQy6CI1sBU3o1oXot13zMxp79g9k0qeYmI+
         TfPK63cFY8NWhoZ97pYGyLzxK/yRaNZ+Ur+Hgur7g8TpYTBHG6BC6Bi9YPhFBoHlogpH
         HzvhbWhVBZX+fqFn5p1rhYPpKJb5tjwn8NAbLTCm4YF3q9TxKY0eeN765iBbwdEj9Aqj
         3Mv1jaH4OH+CB90IAHT5PMxz6t3tlxQsUAJNBxo3HgJ5DvOE9cngphwUByhMyrWoh4YY
         Nk7UdXeHiJJoFG5lZwPRPnd8f7lWunyk5L1EesAcq3hL8nV3OTkdE7uf2x7yIg4ijd1d
         8cQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743168660; x=1743773460;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zvnZunCYyaEwV4fUoehy+lbIydvSzIujDoR6jNNiKRw=;
        b=Z/e1Q3IwqKHvOx14NCGXLC9rdERVUdVOEkgDX95q9HiNrY805WNGr93QQ6KroueBjA
         n7PCEwa5K8wLY655rlE8XNQiRaCsvCs5iCANEiTVdFWRNEHHWgz+N3cHkfNdoNJ2QKhj
         m65yWJjF36Ouh6sj/HolzGzTsndch7105wNBTzQJhxl85/1UVSKXRC1TztWC+apq+UDM
         gTAA1U9FqxLaMJ3D16wSPXjxy7axVqCk8ZUq3qzpxh/e6IoxcOtP4/nEfgZ6crlj2gZ4
         H9syf3m7UGnfn0gIZo7/LQsV20FjKdZMYOknJ9lI1QAIqdPy5dnXmbV3eyHxIX8criBS
         vXMg==
X-Forwarded-Encrypted: i=1; AJvYcCVaqTpAj1bOAOURu8lHM0/QgiTLBfz+BJR9KD2U0p0/mK3qx3paXiWnFw/6Djdohavy5ZuvFSVnwdZ/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+Hh9F81Njl+AEmDl79CgcZpFxtHUk3WiCuSuOqoUngr51unt+
	wHuqsQPE7XYMa7H0YdC1NMxPFCaiaqeVVmTJgcdEYZw3ZQ+7Wg2yDuK6pG0FmNM=
X-Gm-Gg: ASbGnctXcLEM3IRr+7FykEmiKZdL7COWxE43vYt5JdIjVUeYGfvOWVJ5WHh5j9VdxKJ
	r7ysxB2IZ0Gtv1CEoNWrwNckpI4edsw/fQK2kqH7fwbQWK0eZTimSC/ntbPJKfgHw0+GUIOYQr5
	GKGChAAhSG8J0zo/kVDBzvcXiBrs9KwvSJIpNch9JdEaKnWzWAwTiybFoFl5xBjQ3Z3NpH2Kqf7
	Nok5w/RmatD69slCb/0W7hj2TPKKR4Ztxl5lKiOx7IKCH5JJj7I2CDU6h7vENlUzqp5QTmWnxeT
	n/4EZ8dYACQaDSknFc4DRqi0hSJv2ZHbo3G77QXwLVE6vSEuzU6SKT9NoVn7uEfbU4eeggumusD
	dAFPWEDjCIHbob2l7busdn3FXqln3
X-Google-Smtp-Source: AGHT+IFSv1dN8S6YvQdBhrut9H7MyYLkPc2NAR/e3xh+ZGzELkDUwfqEGTXxlFtku9FFJFYLhMO6Ow==
X-Received: by 2002:a05:6402:278d:b0:5ec:9e9e:3c3 with SMTP id 4fb4d7f45d1cf-5ed8e256dd6mr7177184a12.6.1743168656056;
        Fri, 28 Mar 2025 06:30:56 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17e01f7sm1355284a12.79.2025.03.28.06.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 06:30:55 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 13:28:51 +0000
Subject: [PATCH v2 05/32] mfd: sec: sort includes alphabetically
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-s2mpg10-v2-5-b54dee33fb6b@linaro.org>
References: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
In-Reply-To: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Sorting headers alphabetically helps locating duplicates, and makes it
easier to figure out where to insert new headers.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-core.c | 14 +++++++-------
 drivers/mfd/sec-irq.c  |  5 ++---
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/mfd/sec-core.c b/drivers/mfd/sec-core.c
index 3e9b65c988a7f08bf16d3703004a3d60cfcb1c75..e31b3a6fbc8922e04a8bfcb78c85b6dbaf395e37 100644
--- a/drivers/mfd/sec-core.c
+++ b/drivers/mfd/sec-core.c
@@ -3,16 +3,10 @@
 // Copyright (c) 2012 Samsung Electronics Co., Ltd
 //              http://www.samsung.com
 
-#include <linux/module.h>
-#include <linux/moduleparam.h>
-#include <linux/init.h>
 #include <linux/err.h>
-#include <linux/slab.h>
 #include <linux/i2c.h>
-#include <linux/of.h>
+#include <linux/init.h>
 #include <linux/interrupt.h>
-#include <linux/pm_runtime.h>
-#include <linux/mutex.h>
 #include <linux/mfd/core.h>
 #include <linux/mfd/samsung/core.h>
 #include <linux/mfd/samsung/irq.h>
@@ -23,7 +17,13 @@
 #include <linux/mfd/samsung/s2mps15.h>
 #include <linux/mfd/samsung/s2mpu02.h>
 #include <linux/mfd/samsung/s5m8767.h>
+#include <linux/module.h>
+#include <linux/moduleparam.h>
+#include <linux/mutex.h>
+#include <linux/of.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
+#include <linux/slab.h>
 
 static const struct mfd_cell s5m8767_devs[] = {
 	{ .name = "s5m8767-pmic", },
diff --git a/drivers/mfd/sec-irq.c b/drivers/mfd/sec-irq.c
index 047fc065fcf17f5bde84143d77a46749111ea5b8..5c0d949aa1a20f5538d8baf7a8aefc1160ffa14c 100644
--- a/drivers/mfd/sec-irq.c
+++ b/drivers/mfd/sec-irq.c
@@ -6,9 +6,6 @@
 #include <linux/device.h>
 #include <linux/interrupt.h>
 #include <linux/irq.h>
-#include <linux/module.h>
-#include <linux/regmap.h>
-
 #include <linux/mfd/samsung/core.h>
 #include <linux/mfd/samsung/irq.h>
 #include <linux/mfd/samsung/s2mps11.h>
@@ -16,6 +13,8 @@
 #include <linux/mfd/samsung/s2mpu02.h>
 #include <linux/mfd/samsung/s2mpu05.h>
 #include <linux/mfd/samsung/s5m8767.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
 
 static const struct regmap_irq s2mps11_irqs[] = {
 	[S2MPS11_IRQ_PWRONF] = {

-- 
2.49.0.472.ge94155a9ec-goog


