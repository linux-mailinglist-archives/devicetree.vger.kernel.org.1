Return-Path: <devicetree+bounces-131288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F1C9F2C37
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 09:49:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BF961889333
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 08:49:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF034200B98;
	Mon, 16 Dec 2024 08:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="c8ddOrWh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8FA20012D
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 08:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734338923; cv=none; b=U+N4f7Nacacj4vvtvuuB3nxEnE+nqRhRMlnLqE3ZXRZJvWeqgVPUJgtCBjW5IaNm9A/ZvWPf1RXsu7jK3KsqoAid0GKAHMip5OXjlm1Q9wxOhRVxJIR9aEQW64SdvyqA2ODx3l9K2vnR1kClFmy5EYNB85XormQcSPgdkMGGI/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734338923; c=relaxed/simple;
	bh=WUNE4+/vgYu5ic9c+DmiHQY0R8adpw80lkuC6ZFbCtI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OmDjPhJ9TamYvNY8FK/2paaomtrTZgOv4ZmQuMGfecYyEk8gmhbxdIDvVKvTlj/0hTr3ZDjgrPrDDwIodil8sUAzb6iV71P8qk2SEbVIzUy2Chc3BHrYgTyaPcmehvEpnE/EAGJSqHdwCg2vDzvSRRlzy9wkGFjLbD/3+cbRyqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=c8ddOrWh; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-216401de828so29581235ad.3
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 00:48:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1734338920; x=1734943720; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eei5CeEAyNvf2PS4xwdFaq29ZOKnFWm89T3hqpCmQHw=;
        b=c8ddOrWhz/YN8EN4xP/LzezHbkEEeYwwFofldTa+UX3v1ZKc/xOR5thbXheHuQaaQx
         KKNdaMTqFjCMEZeLEigC5qxwMbdeCLbAP3/SCysHbZoU9UmGFtlLt2z2VCWrJeiL+c6M
         dG6YXGsdz2Fij6aMYX/VMNyRgknwoGeixQYjAVkV2u8EmFxBP+bAHIFPradgB/xXLseN
         SKGb73MS9gXiQtZrEV5Y651FRTcrpplFtycfpvyOiJ5GufHuGLE99EvRUJzEzHQZin9i
         9+0u8T1Ld7PeCne5RIH4OUNbFxBs00i+H3thX4038V99WgYAXCFCco7ok5MpXprLIVoc
         jxHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734338920; x=1734943720;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eei5CeEAyNvf2PS4xwdFaq29ZOKnFWm89T3hqpCmQHw=;
        b=avwqVL8g39jo/cUrUIULwbWnGD7Rppoz1+IMIwOztcBmH+m6Cx4J0AfH+oJMGlnzSW
         B51Exq0OwS3cRKxINo7YFpVHBzcQAk3dRI1tjaQvycRWaDtI0S5FoE+f79qv3gd+YqaA
         kBIc3ojulS8y8a9542B+PPgn3uY3nWz9XHdcTBhRt0BQuEMRiiKQWMKVT6pBcB73gZJw
         NLPv83Fz2zoxcKIjAXfz11DJ/hKfbzPijK12fjp6lwrillcuDmLiqdlcNAPA+ZoCZlgi
         2/9taT/j+dNYdR68fsKK1SEvGIdElYmsxgnKMg6bDWClZBzaJV+xRlmO+Dg3orQqKXdl
         +WUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVx1d7ukZYWASRQQ+ENWUzpIcY9mPwurTLaOIcSuphJGgi1/I0KKt6N/oYsXkGRd8EDegiFX4mYRwgK@vger.kernel.org
X-Gm-Message-State: AOJu0YwHi4DpB6bY0BIGrZ2yNsHMas5dO9eLM6QKGj2qNOcF4yrkg25U
	W2fgSuRA8XE7uUeXTI/rHfS6LZysHGrb6Nigr5hxYbWv5hnri+VQ0rG/KhLSmNs=
X-Gm-Gg: ASbGnct0HejR+IF2jr+9Hh0WVDISrRELWU6RcdZ/EiRX0nwcuRU4Goclg/q/s2d+f3I
	JxrRS5r7Lx4um0Uq/samLijlgGHCQGPjVYkA73p9HtBpTOyM7Pbh2LEy929djDHE6oanML4NJLi
	vK2/ZJ29hS1PdMYRe4w0cau4cAnEmnq9oIThDRu6KuVX25xToDIC6sgv6m75QI6FnzHafxPA3qD
	t2kxvHA6bM69a/kh3ZdswBU51w77OvL7AePvFOE5iU9LdJkRLUbucWvMUmDZP58clxDCUCmgTbG
	niCgdb8Br3UrrKw=
X-Google-Smtp-Source: AGHT+IH23xFB2kNx/gOskLUHtyyFSXX+WD7siqR8qRzGwZ+oJpSpIMc4NvB33gu7U5vEEvlRMs2S/A==
X-Received: by 2002:a17:902:ce85:b0:216:7cbf:951f with SMTP id d9443c01a7336-218929c72b5mr138434115ad.21.1734338919985;
        Mon, 16 Dec 2024 00:48:39 -0800 (PST)
Received: from localhost.localdomain ([223.185.130.105])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-218a1e501d0sm37711495ad.116.2024.12.16.00.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 00:48:39 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [RFC PATCH 1/8] riscv: Add new error codes defined by SBI v3.0
Date: Mon, 16 Dec 2024 14:18:10 +0530
Message-ID: <20241216084817.373131-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241216084817.373131-1-apatel@ventanamicro.com>
References: <20241216084817.373131-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SBI v3.0 defines new error codes so add these new error codes
to the asm/sbi.h for use by newer SBI extensions.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/asm/sbi.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 6c82318065cf..bc35ad750e28 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -418,6 +418,10 @@ enum sbi_ext_nacl_feature {
 #define SBI_ERR_ALREADY_STARTED -7
 #define SBI_ERR_ALREADY_STOPPED -8
 #define SBI_ERR_NO_SHMEM	-9
+#define SBI_ERR_INVALID_STATE	-10
+#define SBI_ERR_BAD_RANGE	-11
+#define SBI_ERR_TIMEOUT		-12
+#define SBI_ERR_IO		-13
 
 extern unsigned long sbi_spec_version;
 struct sbiret {
@@ -504,9 +508,15 @@ static inline int sbi_err_map_linux_errno(int err)
 	case SBI_ERR_DENIED:
 		return -EPERM;
 	case SBI_ERR_INVALID_PARAM:
+	case SBI_ERR_INVALID_STATE:
+	case SBI_ERR_BAD_RANGE:
 		return -EINVAL;
 	case SBI_ERR_INVALID_ADDRESS:
 		return -EFAULT;
+	case SBI_ERR_TIMEOUT:
+		return -ETIMEDOUT;
+	case SBI_ERR_IO:
+		return -EIO;
 	case SBI_ERR_NOT_SUPPORTED:
 	case SBI_ERR_FAILURE:
 	default:
-- 
2.43.0


