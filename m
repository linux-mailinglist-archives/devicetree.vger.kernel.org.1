Return-Path: <devicetree+bounces-224210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A022FBC1A1A
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 16:05:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C38F23A43B0
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 14:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11D302E266A;
	Tue,  7 Oct 2025 14:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="NuoqihyM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f225.google.com (mail-il1-f225.google.com [209.85.166.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9205D2E228D
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 14:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759845901; cv=none; b=eiXSpbadPe91n+93Vpos9H6FRbLSDrUL6vkQ0F9GaiCtlHGsCR1rrfyvhvZU9RS3DpSelvbnfaZ4YWxHtjAEoiZm4fo3u/yEXYDZ6GizDFXed7gcGbyB1VR7lnudDQeLgj4Woc9nZtiTi3e1KjepuxxEdgO6Xg4q1+vfIvCL2+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759845901; c=relaxed/simple;
	bh=vUUmEvlmkeV1irok1/nIhqLFK/Atv2L+zIdkEFj6r50=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=U7qL2IkQTmsfo3s4uy+X0CgRCs6QkMOeAM/gHpG1pBJYJe0c9gRDBBUTFWakd7fWqbaMa57dPqgoUedSwzKCyr3I6PdCCxblSkS+2lMXgd9/S5kv/9ovR4iVFGyp9yexhzzpq1nI7DEsN2x0Ta3761yUDL5fxH1cZ7yqzjI5ysU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=NuoqihyM; arc=none smtp.client-ip=209.85.166.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-il1-f225.google.com with SMTP id e9e14a558f8ab-42f68a0a89aso12252565ab.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:04:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759845899; x=1760450699;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SzHMYfimzskmCvhQZFOQq3Y8wAS1gFZFKB5XWvB1gEs=;
        b=Kr9YN1NEbkguDiBSYTdKpLhP9SS7hFvK1rCepjN9Yw4QFZ/pTZ4XJH2Pn6mH08cg8U
         bSFLqaQsh5mGIGWCngBwWifRUYh3YwMr5fvQdzIKlBcbLjXSBRUE//rLrT9czyOEb8A8
         bD3la2zvIPgv30Fv+LFFrqpYzk5w/JogM1fhblMY+V9cgX1RyNJB19B7cdI1IAuBxFEH
         g4dOMR9quhQ3J1wuCJkoece/dClML+Pzi/iyMnN994nm/5btywCpT4LzrDMHmkZjBPxj
         YV/e2KDakwTmpquAfD8rDL00bWTMR3uFUNP3urPzN94d8C2BNp9hcxxwpMVz4oWUxhAE
         Kxwg==
X-Forwarded-Encrypted: i=1; AJvYcCWKryHUKcvelhVedbaHjnAcEadXYN9HUBgxCX2UDSfYrZO3GzI7Y0EfCMvc4B+fOjyaEMLjy62YY9Oo@vger.kernel.org
X-Gm-Message-State: AOJu0Yz251CJNdi7V/fCf9x7qOblSa+Qb16VyOCpG2NuOSWZjzQ2aAm0
	mblUWEZC7jLcDizocB2sWgBtE+YC9D7YfA+P3hhHS/NHpUHPw8o5tsn674D+9ANYPFoizREXmuB
	Q5cuB0nb5gL195ayK/vouidF4XyZfYRvuoCKomzfVUq1oK1TkmPSF0hm9GD+L1TN+9elZJKRMp5
	lGc49TSojefiua3NCuwIz3+wcNcpDQStiwTYRMvHkPoOYv1Bpg7u6R3dIUpQv9rDWjkcXM8v8TH
	0cZ4mArmPnYKg==
X-Gm-Gg: ASbGnctOZazIUqNk5R7DRK0lMMgL005tYbwMjBj3lmIygSRjB4Gi8y6RRZJrdxTQ95S
	ri/IpuD7EfvcgaKxU2K1YPUZViS18eCqXy+pS3upZ+dBnTnDDIvznKXIZRJaSqVY2l7aV7cvhP+
	qW/cuupJlJ70xXQ+K5i0dNVo5v8ZkhdR0T9aJczPrx5w4yv9ZBUg5reUGO0r2Hq3UPU1LAScQlH
	rLZaA4eFebFUm74B3fc6OM996c/LQ1QGpQakFDqMZzLbnSv91ZCxKANDjFL/UvvIRpMXDTjFA1V
	SRGj9xM4yfxWO71G1GlzqD8hSmheraIXw/p8ItsrzXvtBN1APRbo0RYV0QMiC8Dl2WIsJBfoVmq
	u8a+ZVUVXxi/miLMFmCY7CeWqOUQ6cf8Yh5DOvwTGS78Q+ws115aLCoIYtu7u6WE0knZ0zoblDe
	5OxRaN
X-Google-Smtp-Source: AGHT+IHxt2BfSSqfKYA8gQU1AdxIK0lCROwvuJHoE0GWfjsc2Vhi3jrhZqwUN+O7vuhcKDW4JCd1O8uYEKcr
X-Received: by 2002:a05:6e02:164f:b0:422:a9aa:7ff4 with SMTP id e9e14a558f8ab-42f7c387bf3mr38559055ab.11.1759845898349;
        Tue, 07 Oct 2025 07:04:58 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-126.dlp.protect.broadcom.com. [144.49.247.126])
        by smtp-relay.gmail.com with ESMTPS id e9e14a558f8ab-42d8b211178sm12009065ab.17.2025.10.07.07.04.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Oct 2025 07:04:58 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-876ee102b44so151117656d6.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759845897; x=1760450697; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SzHMYfimzskmCvhQZFOQq3Y8wAS1gFZFKB5XWvB1gEs=;
        b=NuoqihyMDCEC+Ho30inYY3l85IznEQa1+z6KWRQ6EmB82zoWOjzqjwqzDZK0Q6mrQp
         gZYnoYrVHBZo4+DyTSIBCGp3+m0bu1NzFVUa3DdefRmpEbb+R12IJYq+Y5lTOBVROEBD
         U/+YXdIa6Q+LhUIAdZTdSElVIg4OdEbUah/pc=
X-Forwarded-Encrypted: i=1; AJvYcCWYZZZSVmRd3M+qm8z52R2vw8DDIUenT7TDvQ+2B4rbe1Qoi2kTJTPibMeVFPlbV/cfAlNED3lW/UCq@vger.kernel.org
X-Received: by 2002:ad4:5ca9:0:b0:78c:f62c:8eb1 with SMTP id 6a1803df08f44-87a052a7fc2mr39707556d6.26.1759845896940;
        Tue, 07 Oct 2025 07:04:56 -0700 (PDT)
X-Received: by 2002:ad4:5ca9:0:b0:78c:f62c:8eb1 with SMTP id 6a1803df08f44-87a052a7fc2mr39706726d6.26.1759845895821;
        Tue, 07 Oct 2025 07:04:55 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bae60b67sm142718956d6.9.2025.10.07.07.04.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 07:04:55 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	ulf.hansson@linaro.org,
	adrian.hunter@intel.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH v2 2/5] mmc: sdhci-brcmstb: move SDIO_CFG_CQ_CAPABILITY define
Date: Tue,  7 Oct 2025 10:04:30 -0400
Message-Id: <20251007140434.606051-3-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251007140434.606051-1-kamal.dasu@broadcom.com>
References: <20251007140434.606051-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

Moving SDIO_CFG_CQ_CAPABILITY register defines to be in sorted order for
better readability.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 drivers/mmc/host/sdhci-brcmstb.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
index efc2f3bdc631..f81cc1889ac9 100644
--- a/drivers/mmc/host/sdhci-brcmstb.c
+++ b/drivers/mmc/host/sdhci-brcmstb.c
@@ -31,13 +31,11 @@
 
 #define SDHCI_ARASAN_CQE_BASE_ADDR		0x200
 
-#define SDIO_CFG_CQ_CAPABILITY			0x4c
-#define SDIO_CFG_CQ_CAPABILITY_FMUL		GENMASK(13, 12)
-
 #define SDIO_CFG_CTRL				0x0
 #define SDIO_CFG_CTRL_SDCD_N_TEST_EN		BIT(31)
 #define SDIO_CFG_CTRL_SDCD_N_TEST_LEV		BIT(30)
-
+#define SDIO_CFG_CQ_CAPABILITY			0x4c
+#define SDIO_CFG_CQ_CAPABILITY_FMUL		GENMASK(13, 12)
 #define SDIO_CFG_MAX_50MHZ_MODE			0x1ac
 #define SDIO_CFG_MAX_50MHZ_MODE_STRAP_OVERRIDE	BIT(31)
 #define SDIO_CFG_MAX_50MHZ_MODE_ENABLE		BIT(0)
-- 
2.34.1


