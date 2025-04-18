Return-Path: <devicetree+bounces-168441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C07A93199
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 07:36:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BEF4D1884AE6
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 05:36:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26A7A26A1C9;
	Fri, 18 Apr 2025 05:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="mg+puudG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B179C268C78
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 05:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744954485; cv=none; b=QkUZ989hOLssPcr+lKf5pUdG+vemKrLB/WKHm7qd6BojhTItp/y//lOYgZ3bJfqHlD/APMaoEqkohNRcrr1EPSgKe29PPUc1ffF5KCUxP+FCD/Y+kvtz67MVStQIhdwe6GvkYuIillJD4EhzuHzLthWw6cXOcwwNb2lZZU/9WFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744954485; c=relaxed/simple;
	bh=rf7VTAibhA1rsd++vGyUgsQGxAKMW4BWzucsOsuCqgw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Gz9/p6jW3rIP2S1JIOUbhR7sQLQ1htOkxpqpEMxl8rYbc9M7Ko+UApUsLCANkKq365N75yReFH2/92JRz1v2HwNuY2HAjAtKdYu9RAAXFZHXRUcIFvyIUIN8i8ifCG8tcBj6tzp7BJqvsFdWMewAXD5V7sEhXYEwkjt61eSTjlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=mg+puudG; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7399838db7fso1602987b3a.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 22:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1744954483; x=1745559283; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XAvviClstwfzUPfEFvJI1cAxXcDrrh9fZc4W+cMV6/0=;
        b=mg+puudGqP9gb8norwO7n6fmFMcDMyBUzYUBl59uqxm48tUKaZpL6yuQJSdWWy/bq1
         stbi1O6irdsdaPhbHHwKByjAmy1EK3KG0pLm5JIthG/QLdYwKm6we4pGB8uiiRSPE0d3
         whYHfFF9vhj9jFoo8LU+bidCnDCoBuCQteQXD5JcqGnJoZgTcKBb7mCIluS1rkfNvGgV
         PLnmq1VEUNTvRd2q95WByHcu7NPVyOTVVTm9PLJWXJigfG9t+iMHlmTWvzVdGtNotY7u
         bZSDnfCx9etagvozMEWDxeATHX61ZKVUO2S79S0aFk5q58yx4Zv3oAgYXR7FgsdFgasG
         9BtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744954483; x=1745559283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XAvviClstwfzUPfEFvJI1cAxXcDrrh9fZc4W+cMV6/0=;
        b=NSSuiIuivpyGbTdXV8tx1iRpA0lrmG0hR7N4wOQwhmp8hEwTm5xUn21HVoXtXdlY6P
         si+Ayxm01S2albc6Fxqw7xCIMJaAJX5GrgnK+ei3CEMRO157+F/ZI7TDKF9L93r8wDjY
         2qOgLQzsCejORNFfc0oJvA+Pk4GuEJL4Fp/VulEdSADRGpEdf7rokAhC5158K3DPqdUn
         Cjrfut25Ke5Et3BE04prwhHTi8Z7MqVz3u/8yiP/uCxsPkN/pUdEsPfGjtCI7BK01bit
         +IfjQmEaRKk+QTvFy35fuhpjE3xZEIC7XKRAb6HuNKnWQwOqBtcHxnhiTvj1d8Wb8ZCb
         1J3A==
X-Forwarded-Encrypted: i=1; AJvYcCWTJSxMioZSRMXDG3fwoLr83B1H7hClYKHXWDWQ3LnIDpY3HCQ4KsBs9uocZKFZYYPLS0XcH/go8AR1@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb0E2GjL/oTBfoEAUGIwtgud41zVcHl4iP6iAJPOWvLTEi2YkB
	6Fig3qXm6mfaqcZFc9xHkyQIn2LeQJTd5H91SPb+ridTrDu3qkHX/FlRJoyeagA=
X-Gm-Gg: ASbGncv48lCHt1LqrLdPu2mXJeKARUppbP+RmsHXmF+zYThNqVHvfge8iCyi3b+g64X
	ZtzVOClJ1Ddtu4gWV/LVovwXmKCEV7yF3d/kCn1iFyZiwqYPZTTqUB/TNbKSjhFHHDpbuYQcDEm
	TVCBwHWQle4sgbVMMMW+QcAMjza8XK6dwDUeXSj6ekKkPARB3ffxiqzpwQy1nulGm00esiyPoKl
	uIbR4/Yb6kZ+Nadurtf3bBv7S98b5gSWi7QZUKONtI0V6iwWTgOhHTV3WJiGnDzqQ3kyRXz7OWG
	0oIo8v5lzdkW+bertt4eAJsk+NBeAquOhpmTREYcbob2scPOkkU+0Kb77qRwXVF85XMQ+gVKVv6
	l
X-Google-Smtp-Source: AGHT+IHQM1ft6hjpNMobm2/YoeNnotmxkTudlzgz2ZgJSZr49UA1a3+mNT2Kn2UrRzZ6aASVjmqjaA==
X-Received: by 2002:a05:6a00:1788:b0:736:3ea8:4813 with SMTP id d2e1a72fcca58-73dc17f7db4mr2280418b3a.2.1744954482861;
        Thu, 17 Apr 2025 22:34:42 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbfaed86csm834555b3a.180.2025.04.17.22.34.40
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 17 Apr 2025 22:34:42 -0700 (PDT)
From: Cyan Yang <cyan.yang@sifive.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	samuel.holland@sifive.com
Cc: linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Cyan Yang <cyan.yang@sifive.com>
Subject: [PATCH 11/12] riscv: hwprobe: Document SiFive xsfvfwmaccqqq vendor extension
Date: Fri, 18 Apr 2025 13:32:38 +0800
Message-Id: <20250418053239.4351-12-cyan.yang@sifive.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250418053239.4351-1-cyan.yang@sifive.com>
References: <20250418053239.4351-1-cyan.yang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the support for matrix multiply accumulate instruction
from SiFive using RISCV_HWPROBE_VENDOR_EXT_XSFVFWMACCQQQ.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
---
 Documentation/arch/riscv/hwprobe.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index e15405e12239..7c11351b1383 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -353,3 +353,7 @@ The following keys are defined:
     * :c:macro:`RISCV_HWPROBE_VENDOR_EXT_XSFVFNRCLIPXFQF`: The Xsfvfnrclipxfqf
         vendor extension is supported in version 1.0 of SiFive FP32-to-int8 Ranged
 	Clip Instructions Extensions Specification.
+
+    * :c:macro:`RISCV_HWPROBE_VENDOR_EXT_XSFVFWMACCQQQ`: The Xsfvfwmaccqqq
+        vendor extension is supported in version 1.0 of Matrix Multiply Accumulate
+	Instruction Extensions Specification.
\ No newline at end of file
-- 
2.39.5 (Apple Git-154)


