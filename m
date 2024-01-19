Return-Path: <devicetree+bounces-33178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA298327E1
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:46:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83A27286E83
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 10:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EBF84D58D;
	Fri, 19 Jan 2024 10:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Wyoq+dIw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFF94D102
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 10:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705661139; cv=none; b=kZIIeOn90ZM/4k5zprrz/RONJvxPcvgcE5bWIM/W5KbStA9dJ3IT21rTeHOG357Xahg5xjtpWeLKDX7FbVx32nW1CUUq+KZnJUgJl0Immbna2Cpyy8RLhGWbWffBczpw2NiQ79gxbNoLBnpPDnhBr+7S2uCYxAKS6hQI0ASULd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705661139; c=relaxed/simple;
	bh=ehREIwN8Zk3qCp4noF1X7poNbyaZwIdmBpSJicE3XRE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ozHu+kKBWEs1BvkU1F/LJ9BqPl0VmYQ93cdwo/8xuBH2CHTDSJDP9CeF9H4dHsyTY8RbHuxVoR/kYVXNraDLGSeIrtvimrpB22ZbpnbD81Pvg+w3oKpPC9in0q4UQQo04X8dvuZxEsSotz1+2k5lBjrurS4nI6FoO1LhpD74t30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Wyoq+dIw; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40e884ac5c8so6776325e9.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 02:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705661135; x=1706265935; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pIbZuKCi3c1voBLaFczjMA5Q6as8L4OLAkz7Vvuwfes=;
        b=Wyoq+dIwqDKdVxlvfhOTeKqDLBiRFe+8u+xTNy7anI1LXB9tt+T9h19EpOtJ/EOlcZ
         otnHAsuMLUYi+ICpEwRkcu1qbJkRZHH8fH+y/e1LVbkuw6/y0MgqGOEImGIABD4j6BEq
         3+zDskCh1yTouCXPUqghsr8mfYN/gbWHD9MT0Zo+AfsUfqJsOnUI479rIHPdxH2NAtDw
         YXHVWwFNIYDKhqVB9vMABZPt5o/Xil6SNVrSS/PQY/gYVhaNm9cprWraWgXyMmv/zxHS
         /ZbBEN5B86aGCqAAOu+zptUT4XCAC3hKSFXWCFQVr80YvnHizzREH6GHGj6z9+JTqYNS
         ROHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705661135; x=1706265935;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pIbZuKCi3c1voBLaFczjMA5Q6as8L4OLAkz7Vvuwfes=;
        b=mrgqBD4sjXs8KLII7es9vlrpl+DQpKTVHJPepY/suh2O4k13gVkpVatwTVGgguLZy5
         ZuekBBqgdzznTclklIvCZfmjdVAGXmWltMsd91kj4h673ETFhJyRQylNQV5H6iWxuZCG
         3wMDGgOE4Qj/0C7KC4qNIuSbGBSpj+WBmM2+ocnWib8YjqM5lMwtwQk8vI/BHpOuXEVT
         RFRHL+1n26UjpwLLCqKZgYN3f4RMT7MNqD2ehL5kglFQWeWR0AbnBX7R40+/DVVqIBu4
         4606+kfE/Jav6MgmzxEpM2x0uwss2szVJm9wcIASgdMyonSrHZk1pnS/hV+PblwPj5MI
         UVOA==
X-Gm-Message-State: AOJu0Yz/kFGSGADAsRSTUMrw3N7ioFDERFTuMRwz7xe5BybwYVe7Xcq5
	Xqay6wiWKQCt4beUmhUJE3THbgjDOWP3WS9f+SE9k/vFSRFQWN+2WUQQxn11JPg=
X-Google-Smtp-Source: AGHT+IFLmA7d8ltm4h9XYmmFH/I/kevgVOWIIn/k6BbTcCgt0ohwTpBHM8yPPxHqUedz/2sHd4eFSg==
X-Received: by 2002:a05:600c:310f:b0:40e:76f4:8cf1 with SMTP id g15-20020a05600c310f00b0040e76f48cf1mr681769wmo.221.1705661135759;
        Fri, 19 Jan 2024 02:45:35 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id fm16-20020a05600c0c1000b0040ea10178f3sm77470wmb.21.2024.01.19.02.45.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 02:45:35 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 07/19] tty: serial: samsung: explicitly include <linux/types.h>
Date: Fri, 19 Jan 2024 10:45:14 +0000
Message-ID: <20240119104526.1221243-8-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240119104526.1221243-1-tudor.ambarus@linaro.org>
References: <20240119104526.1221243-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

samsung_tty.c uses u32 and relies on <linux/console.h> to include
<linux/types.h>. Explicitly include <linux/types.h>. We shall aim to
have the driver self contained.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/tty/serial/samsung_tty.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index bd9064d4efe7..b9b91ff6a1d7 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -41,6 +41,7 @@
 #include <linux/sysrq.h>
 #include <linux/tty.h>
 #include <linux/tty_flip.h>
+#include <linux/types.h>
 
 #include <asm/irq.h>
 
-- 
2.43.0.429.g432eaa2c6b-goog


