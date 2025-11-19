Return-Path: <devicetree+bounces-240304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 413DEC6FE5C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 17:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 898FC4F6A8F
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3376836CE1D;
	Wed, 19 Nov 2025 15:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rAnSdbFB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1261A36C0AB
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567146; cv=none; b=s8a++cGWZu8ZiQ9TozYrt9cmJSqqItn5luBQeqLQiI0vBTImcn34rGNrgKmE1wWQRfrBjBN10ZKzDRaRzUiVuHpW+2SI+A0KxQvbikl+46+E5kMQA9gVE6rn94USTD9ZRoj4zSrtp375N9CGvKc1TWgZkNvhx0dKzqaMiYKTX+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567146; c=relaxed/simple;
	bh=JX9G2IddNBochneGYWQCKynmuHEMYdz6GZlhqVo2tUg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kR083njQb9G+QQsz23Qd7hoUZQrGwH1+jyFGiJ01UwBt202/YIGJETkdZK32nPqpe7FmU33147fjWlYBT0Tz7QdRhJChoZH1P5foC9fZGQV14HxAzMi3t4yBdFT11FSx9Zu+0y1uKJjXVcdoqRSAvGzmatwzrMbLxFHTo1WCsQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rAnSdbFB; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42b2dc17965so5618252f8f.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763567139; x=1764171939; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JjJbR05GJTjvP4eC8iuNclWxk1mMm5RuLT4aWNn+uIg=;
        b=rAnSdbFBCLvJLjGUsRP/QcCxvZOZSBH0Zgq71o4AlrJ42jn5rslMLmFXW2AxVikkjc
         TCFSyFvag+KDqaGb+sGs6y6Xav09Zyp10l3ZPFhA94o2Ri3OzwIj02xzj+m0FuSPn/Gv
         hD1RwrF7bt3oyLRQ5AQJ5JdP2XYKa+DRSBQ8FahHCby8Rmw4HIxn1MEMOVXs7a2B6/2u
         EVKQhhdTnuxBtaFrS4GyTGu+YV6B791L869p/wQHxmNOdi+WqgZOXrqw3s6bGiwy5FTy
         Tw6bwTM4dfJLyCpzNUExW1r8gLRr75kF8oll6wI7RdBr3kTbO/KRsqKSb6aLjhuH5/bX
         l6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763567139; x=1764171939;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JjJbR05GJTjvP4eC8iuNclWxk1mMm5RuLT4aWNn+uIg=;
        b=IUCHI4axMtPOR2ApOpCmuUC0TM9IsEpLlgfETfvIJCr3kGqwdpVVyg8LcvnaBJ+Oty
         GUQM5QSEYnBC0B0W2U6/7bStuYLZC7B2glQ3Xf9+dInfMqx2BtFbax3RNKaF5W2zjJDc
         LKI2QPOmemmzlU4MAGbzWXPCpDqEaPag0torwnUqjEfiXjtht/O4GzLD68z9XodvX2Ju
         tjcfMplqFHCEkHI75WaZG49PS/a6jz8Ckp+u2kqYEV/LjNN2KKM9dhL0PP95z3F4wEDl
         9narrumIYpzS4Prb00q43OO2Y+9dD2Mbe79pyymmbFyFtdDsZqijnt9pMBh2B1CfYAwJ
         fXjw==
X-Forwarded-Encrypted: i=1; AJvYcCUVF/CjpgOlZPv5HHm0uS/Wje169wnykaiFyisAVPS1oAMO7CqCaCePPkUabrkpH1mpWq50kfKkzm+C@vger.kernel.org
X-Gm-Message-State: AOJu0YygVHKq1UFaewJgb9BeTb0hWkIN510g+Gbp7CQIHdP01uH8hHyc
	eYM8pUePJs7WfCPwR/NqcrQy+Xc/IdOnuS0A9UiCjCDBjwpu6pE4oBBmW4hbU7qxciw=
X-Gm-Gg: ASbGncsBKD+Q05ibge/VjtiMka5ounPa60/VVjty1MCxFPVN7bDuUhV9QGn7dPgxM7d
	UQVoJw/1jJ6OThlnGsuv5VInU4E3lVMmOsd1Njgxyi4p+ZpLWoTFtYlTNtnWpTbHYiJss9bS1jV
	WWwJVvbWCC9TVMzDE6+mU/MVCWpOPYYTQSXJm2OIjKa0cSbUDvTOwF0Fg0me3yTX3xWj04/xfDs
	2QlKVCJk7ZiG5rhxwS+tyb4JLe9K9LklB2WH7UkeTXltsi/hfEtr3q708RN/7QiWJ8Nif8kWVbi
	YNoisRZe4N1NwBa+ylzh9poL5Gl4FghTF2OjF4ItdW1SnvwNqwb9kGF3NXhSBXn4QX+JJjUbC6+
	42JmxL2uLxLpsLDuAfkr+XCLQ5dS808UJx86YJGzCUJWJhrESUvD9HUPLKfyaQYx5V9pyB36m2Y
	ywZyE2BFYMeirBg0Gmk+g82PYzkmf4XA==
X-Google-Smtp-Source: AGHT+IEyhedKwAlBM3EiuchJNsF2kJSsWS7yZo6BNIFhuE+C/7ka0URI4Q7HQ+TXxvH0Bkqj0xsuVQ==
X-Received: by 2002:a05:6000:2c11:b0:429:cd3f:f43b with SMTP id ffacd0b85a97d-42b5933e404mr19233459f8f.4.1763567139371;
        Wed, 19 Nov 2025 07:45:39 -0800 (PST)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53dea1c9sm38765632f8f.0.2025.11.19.07.45.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:45:39 -0800 (PST)
From: Eugen Hristev <eugen.hristev@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	tglx@linutronix.de,
	andersson@kernel.org,
	pmladek@suse.com,
	rdunlap@infradead.org,
	corbet@lwn.net,
	david@redhat.com,
	mhocko@suse.com
Cc: tudor.ambarus@linaro.org,
	mukesh.ojha@oss.qualcomm.com,
	linux-arm-kernel@lists.infradead.org,
	linux-hardening@vger.kernel.org,
	jonechou@google.com,
	rostedt@goodmis.org,
	linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	linux-arch@vger.kernel.org,
	tony.luck@intel.com,
	kees@kernel.org,
	Eugen Hristev <eugen.hristev@linaro.org>
Subject: [PATCH 13/26] mm/init-mm: Annotate static information into meminspect
Date: Wed, 19 Nov 2025 17:44:14 +0200
Message-ID: <20251119154427.1033475-14-eugen.hristev@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119154427.1033475-1-eugen.hristev@linaro.org>
References: <20251119154427.1033475-1-eugen.hristev@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Annotate vital static information into inspection table:
 - init_mm
 - swapper_pg_dir
 - _sinittext
 - _einittext
 - _end
 - _text
 - _stext
 - _etext

Information on these variables is stored into dedicated inspection section.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 mm/init-mm.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/mm/init-mm.c b/mm/init-mm.c
index 4600e7605cab..6931549bb7a2 100644
--- a/mm/init-mm.c
+++ b/mm/init-mm.c
@@ -7,6 +7,7 @@
 #include <linux/cpumask.h>
 #include <linux/mman.h>
 #include <linux/pgtable.h>
+#include <linux/meminspect.h>
 
 #include <linux/atomic.h>
 #include <linux/user_namespace.h>
@@ -19,6 +20,13 @@
 
 const struct vm_operations_struct vma_dummy_vm_ops;
 
+MEMINSPECT_AREA_ENTRY(_sinittext, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(_einittext, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(_end, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(_text, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(_stext, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(_etext, sizeof(void *));
+
 /*
  * For dynamically allocated mm_structs, there is a dynamically sized cpumask
  * at the end of the structure, the size of which depends on the maximum CPU
@@ -48,6 +56,9 @@ struct mm_struct init_mm = {
 	INIT_MM_CONTEXT(init_mm)
 };
 
+MEMINSPECT_SIMPLE_ENTRY(init_mm);
+MEMINSPECT_AREA_ENTRY(swapper_pg_dir, sizeof(void *));
+
 void setup_initial_init_mm(void *start_code, void *end_code,
 			   void *end_data, void *brk)
 {
-- 
2.43.0


