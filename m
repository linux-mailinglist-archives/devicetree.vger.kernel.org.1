Return-Path: <devicetree+bounces-35822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF7E83EE64
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 17:21:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87E722849AF
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:21:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 185BB2D046;
	Sat, 27 Jan 2024 16:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="JRJeqNhY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72AD44C68
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706372352; cv=none; b=My4xNld60HqtM9tTJHnWUr71XiygprPKrznkE1cu/0SBmejdJIny9wu1MXeeFp7Xtq3vUNRojFJyyCelKNqbhxS7LmZur5jo7Z/gqG7DUP42fT3JSYZuDGErek27fSgQBzlB/wjqpsHYW8A8UPbA9gzvs15Oazv2f4IMbo/aF44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706372352; c=relaxed/simple;
	bh=Q3rBGV+pgrEfKQs4sIgL09+u14n+Sa+WhQ7vAVT4hvk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Qvs0bz0eZiUQXBp0ZsA4iyBDC4PA8Lb/SvAYI7WS7c4Op2GCqHhfmyM0piohKxlxQKCyJAtx+ammRZDk9bhvAIvVKAIg/1AdHsldjuh56+VPQMDU5QHPV/26e/IBENS8Hcrnyq6m5ylXdHo0f7xHvFKX8HwLhYrLq25HMOlXnEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=JRJeqNhY; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1d7858a469aso8711695ad.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 08:19:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706372350; x=1706977150; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Aon1Rb6AZmHyR8DhDKG8+17ET4YMl25ggX5aln3DKEY=;
        b=JRJeqNhYqb6+THDOgWcIHJ8YSBdSx7WTaECMYTzXbH0GFkn5i6raVy9DLr+XDns1l4
         DZYLY5LmhId5kEJ7allY+HiyBmoz+2hJObnnniEJDfciO16ntGSSESAPj25UxHJJWzgi
         g8Cee+JS6Znu5iwo+tYOdRO45f2XAJE6gTgzOrH7FBSWPm1sXwDSNvSh1gcNiaJ8Y+TU
         oIPMG1uVFkk7eyOFy0Xh3pCbME4XF3RaxcwivHNlLVdmNBZBIruYhbMHddtzYD4IBRl7
         pEiuff3sKca515euYWqIVnRMoCJJ5dLBcgkpULxhiZdqwPnYoRD6gYKzHGyvGVZxH8t1
         bMtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706372350; x=1706977150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Aon1Rb6AZmHyR8DhDKG8+17ET4YMl25ggX5aln3DKEY=;
        b=w1a8VsACCZ2NKT4xiHOr1eCnf753zUE6iUpliq+DLx/wY6bG0A3Kpc5F2XjzZV5GEr
         b+GZcKZU+WQVapgy8pl8RxrmpWwtUrvUxrxCQ09wblS6PqcdbQkmuH+v3t7n5KB4pLxg
         OnGoReeXwb6dsNoQ/GKLPvCe9U4L228AUNGpDZYhu9p7bCa/qBvYBOhqluYz+KwaLaG1
         8PWDykM6Bf9UBUMzMaSdqdp8n1q4PDqwbWz2yjNxgwbbAtnKp28MCr4LlsX/9v5eiVHH
         nfBl/Q4b9P7hFSmh6FlbcNLNuDNltTt2c0WfW/o8qaeCXnpK8rSw8FIWmO9HrJjfpYQl
         yYuA==
X-Gm-Message-State: AOJu0Yz9uTkuwEe9VWLyHYPY5sBqfYF+xjcEqdlAy9aHDjBntcvY2ZuD
	q2J7Nvu+EQgbYmD9FLIukJUJWZj4rRFs19mzXOnpSvKGma/ASRI9td7ddvZHutY=
X-Google-Smtp-Source: AGHT+IESNQpMnkRheaXf4Iny97ASS+tysV2T2yQTW1r5Ok8Ym8c2y+pgCA3LcaRphHbCd/cF/syjDQ==
X-Received: by 2002:a17:902:ecc5:b0:1d6:f4d7:ed13 with SMTP id a5-20020a170902ecc500b001d6f4d7ed13mr1046044plh.83.1706372349939;
        Sat, 27 Jan 2024 08:19:09 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.17])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090ac24b00b00290f8c708d0sm5091620pjx.57.2024.01.27.08.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 08:19:09 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v12 09/25] genirq/msi: Provide DOMAIN_BUS_WIRED_TO_MSI
Date: Sat, 27 Jan 2024 21:47:37 +0530
Message-Id: <20240127161753.114685-10-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240127161753.114685-1-apatel@ventanamicro.com>
References: <20240127161753.114685-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thomas Gleixner <tglx@linutronix.de>

Provide a domain bus token for the upcoming support for wire to MSI device
domains so the domain can be distinguished from regular device MSI domains.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 include/linux/irqdomain_defs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/irqdomain_defs.h b/include/linux/irqdomain_defs.h
index 4c69151cb9d2..f59d2e9941a2 100644
--- a/include/linux/irqdomain_defs.h
+++ b/include/linux/irqdomain_defs.h
@@ -27,6 +27,7 @@ enum irq_domain_bus_token {
 	DOMAIN_BUS_AMDVI,
 	DOMAIN_BUS_PCI_DEVICE_IMS,
 	DOMAIN_BUS_DEVICE_IMS,
+	DOMAIN_BUS_WIRED_TO_MSI,
 };
 
 #endif /* _LINUX_IRQDOMAIN_DEFS_H */
-- 
2.34.1


