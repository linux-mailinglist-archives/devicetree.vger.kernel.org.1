Return-Path: <devicetree+bounces-240296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 753C1C6FBC5
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:46:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 303522EBC4
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:46:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE416364024;
	Wed, 19 Nov 2025 15:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="POzM0FwJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18B532E697
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567131; cv=none; b=Ebx6lPUXYpDAlHrPjABFGJEW5c5H2kSNbH2X/AZ0OF4I0I5OW2XWjVj4LffyCEQtc3qQWJF4RB5OZYToq+26NUC1Niwmrrydn9x8+gZO1HdUaSngv1c8YKFAu+o5ePE4PwDFMoZtDthvgV57rp8J67202tygr3ueUbIfopctwiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567131; c=relaxed/simple;
	bh=uHw2K4abduiDzGpZ4eX0j1eSGliuYPoG3xQUhEMZuY4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RCkIi4CqV61qKcoPmGalZJK1iJ7c6r5gaiCnjpGlQmsXhQEPFhuDYyFKH3yBp5aEF5Tnd8AXFFqGoh23vkIDEPVuY4HtXoDgFY1nBfP+MX4lRO/X2W/SSTNNdak01zLAIJzm8wmkNhVK/6+6JEECOnNSYis04iINCOff6TDL5gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=POzM0FwJ; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4779ce2a624so36861505e9.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763567125; x=1764171925; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3irtgR9V6ILkzi6aCmzqNOzM4wzsrVUTWgR/+hcFNWM=;
        b=POzM0FwJqd/SdL87jP2GMAUIGjXey4fOCpL7ccvdQFlLBGoh6TpPgeAOPAXKPy3rC6
         2f3BvlcDX4lGoOR84lem+RbdtLt8RPGa2tbgMBuPxaKNO9opaYqdf80cop3Q/VowQgGH
         YYkotKtpK0JABL5JcU1bH7o5RsJIPKV6mp4ED0W7ecl9GKcdZ79YCxbL0muGEPLcKqMz
         V6THVAxGDvUJThgal+ibL1TYjlGAVALilt5bF29kE3NJAqCBjI75PkcU1CeyuwyN4uq4
         O4kcmlKLnYIOJl89JsWU9g848fXyvYpsKSEPvVHwlzHnJpQY5MTIgruFA6oe0bBx7Hqs
         kNYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763567125; x=1764171925;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3irtgR9V6ILkzi6aCmzqNOzM4wzsrVUTWgR/+hcFNWM=;
        b=mwY9l7V7ohAOcfsr+AXXOechZYAUEWdzElbMbhbTCUk6IrMhxsKfLJhg/qgGJMBRo0
         DJqk5BUl6N3EGYkgQBqyZhwduXAk1NTyDahYo9re8UDwKbK5STddXnUH9byub9QcsY9h
         pVNP9Vm/pXnYDI/S7TXj9XKyeDbru0+GeL+2VVFEiObMncWHFwKibmXjdcG4DHSue1NJ
         3HyNynopeXOnp/N3//+1I47bUY+9FV8SPaqzDlJuvvOv0xIfS+lbui1UWS+M1GwR/TKq
         yCXqXsrO7kI+gwL9nbempFw7Myh+bPpUad5eeZLuFut7/FJuTA/wteoEehn2X16ZWds3
         KPuw==
X-Forwarded-Encrypted: i=1; AJvYcCV8uWpswsxK1E6X3Mr6vpbc66vl70pxiO0v2MIASA8Vrl1A0SMO+T/fzg2T/lesXrYNpPCh4Qd6GYk6@vger.kernel.org
X-Gm-Message-State: AOJu0YybNoJvIRjNg8C7SyprJa3PAaFhObGPe6qUDh+6CrTK/R1iPL3/
	JNeQlos352BQ8jJuXhVNIq06cA22KwGU0hy/gYazkHTW/F+Y4z1ind9kDZNTKCahc3o=
X-Gm-Gg: ASbGnctpJlzUP/WfoUrYmrF7EBDeb9cUzDdVrrhv+JYq3MyVGNzlJ+2mW0c0a1IpnFR
	AawsOg7PTL4QDRtedYCpCEzN/uJTR6zpjfgckrp0Xw/zHbzzBPSf+8H6ihWr+gkeIG2jLwI9YZk
	EEhdN9kD+YMIEdjMMt/Q7dXVVuuhyHJf+y+kYnxJij5b1HlISjiw3uXnBX346ED2e8U4iACtO1b
	RUh1ejc7OopV4Z+0gOw1pgXdrDk2sVMt6wdz/Dw24Fivp3+HmRnV32wiSIPupxTFQ+wu0EN2AQQ
	6gDStBXWeuRIzbk/5HhqShMPNE0qo+2FjQiJuXRx/LFFUWbcAQRit8q1OK6ClcsgCh+4GCUDxIJ
	6setdyNDMlAn+CqGN41Smi51BCojQAK9COa15i0m63LUMtvsF8mvD/ytjVjabcgfYLuEKqvrAQJ
	tAaWADQENiBPpgIKu4mGS9bI8uwqB/wQ==
X-Google-Smtp-Source: AGHT+IH7OiMHuWdKqmUscjGj0hpAhy0+8U72IgAGXn7ATooehRTT7HxTJk0qp9VlE6dzqjBsHdcltA==
X-Received: by 2002:a05:6000:2901:b0:42b:3e60:18cd with SMTP id ffacd0b85a97d-42b5933dfdemr19022522f8f.11.1763567125510;
        Wed, 19 Nov 2025 07:45:25 -0800 (PST)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53dea1c9sm38765632f8f.0.2025.11.19.07.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:45:25 -0800 (PST)
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
Subject: [PATCH 05/26] genirq/irqdesc: Annotate static information into meminspect
Date: Wed, 19 Nov 2025 17:44:06 +0200
Message-ID: <20251119154427.1033475-6-eugen.hristev@linaro.org>
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
 - nr_irqs

Information on these variables is stored into dedicated inspection section.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 kernel/irq/irqdesc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/kernel/irq/irqdesc.c b/kernel/irq/irqdesc.c
index db714d3014b5..89538324a95a 100644
--- a/kernel/irq/irqdesc.c
+++ b/kernel/irq/irqdesc.c
@@ -16,6 +16,7 @@
 #include <linux/irqdomain.h>
 #include <linux/sysfs.h>
 #include <linux/string_choices.h>
+#include <linux/meminspect.h>
 
 #include "internals.h"
 
@@ -140,6 +141,7 @@ static void desc_set_defaults(unsigned int irq, struct irq_desc *desc, int node,
 }
 
 static unsigned int nr_irqs = NR_IRQS;
+MEMINSPECT_SIMPLE_ENTRY(nr_irqs);
 
 /**
  * irq_get_nr_irqs() - Number of interrupts supported by the system.
-- 
2.43.0


