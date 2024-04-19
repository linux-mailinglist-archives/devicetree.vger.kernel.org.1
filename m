Return-Path: <devicetree+bounces-60928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D41348AAFC7
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 15:53:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 900AD282578
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 13:53:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FC0412BF1C;
	Fri, 19 Apr 2024 13:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="d5UBILp8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4944200D3
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 13:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713534815; cv=none; b=FyiYh+Osrc1ujCyrrfGFsU47B4H3Sdojmr5VI8tTO9hZVZ3PRPOBC2FMZGl4ciFZMsPFwPnvtInZAxv5tKv3QoIqve0+TOOrQhceTPTH8UG/qMeZ3vaGGI+HC/yJTTQtKIkPft0L0Lxvhq7azFl26KhOZoq/t4ucoCMYyvR1wzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713534815; c=relaxed/simple;
	bh=sxvf32/JpNtPHFVEpEj3h9lpXz108v2JRtAY8b9TiXg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-type; b=Vlq8Gc9QPNu8H+vvzspN+hXHcNJeNqw9ntn7Oq2TK3+HobPiPHhZyfQILdYbyRqmNOhGOqRzlFNKUTnDQ5Tet+kR3YllmS0iCgkk+yxUkf62wsIob8KA/7ixczrCke8iBpgknSqyErXP2foRvrYqMRIj0zh6D+Sx73MREZX8U8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=d5UBILp8; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a5200afe39eso219742866b.1
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 06:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713534812; x=1714139612; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L/o9GJYOsp32C4ZK5XVSIqlhvuJ+jgCOlcUd/wXUyPQ=;
        b=d5UBILp8s1FC/U1QePfAyVMrE9kPFGvNtZnItOgY3htE4fMcqdY3MEjDXDpDKYyzFV
         1qqc1G99WjVFFCSjbzQ7FrRLLh4j6QG9lXpU+0XRRwaISNNcteM+Ql08IfoLV5vtVHGS
         S3NObrL6hPCDpJAqqAHavDetfX5q74uYZ5EI16FQVsOPJv9v1UOeOtlunmVxornTSiC4
         MCQ7cuB3vFpiKrEwx6RvryxD+A41RVkIntIZ6J8MOVlh2JTBwxmxvFvHa9jUSpILUvrL
         ZhfuO0vJyG9MfMCCaDAiwwlFgu7OeKvl8RaLhJBDaUNo3bYhj0h2RtY8zFzYhMMdqkyQ
         tb7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713534812; x=1714139612;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L/o9GJYOsp32C4ZK5XVSIqlhvuJ+jgCOlcUd/wXUyPQ=;
        b=aI02FcMxQlu3vnZ9gq/tGnQ/Z67AhUeety1DGGdCQPx0AYqJMTXkHT2DZXzbeZgQn9
         0vMcxs9dUz4KEHOf7hGX+pbprtmcO0aloCz+Jbu3q2IfPWTrZbYxUN3BqNoz2S2xr9iI
         X53dlW7nT7Q3EWHObVFW3iuKN0ZO09F44juyA7++sjfE/gXTDY5P+6S+E9xglMstlQK5
         3SuG8VZ2fKUWd0k0nQAyqQ3F6444jTwpm1y197OWlj+BlmwKCOtgRiYHOGqXNcui2mWZ
         JTCZgPPr/ceDskUkeDYoQvaJ8hHcTI+pJLpIeeYhY3KVIz36jvqaYEFN853R8MZBVL1J
         ftuw==
X-Forwarded-Encrypted: i=1; AJvYcCVxrZAmjoUgYVWOTtwHI6bjc3pW5353ie/K14ulftLE/sNvCk1M58YmCdB5cBCa0xQxeCweJiq9jI+E1SlZdoex5bz3fdwPrh5k3A==
X-Gm-Message-State: AOJu0Ywaz3fBUe4RwBPBGP0tLteHvmuipPAjEcXOn0ZmFmtvNGgPmQzm
	2FLhSNzXK87D+zEzqa3CZ8o2yTF1RXnhZz+Qhejb/nH6dR5OjRHJFlHo0/SiImg=
X-Google-Smtp-Source: AGHT+IGBQ9t0lRGzscQAhpOHuvu3T6H/3CaUBbGTMF7yl3wKq7mI9JkjJ8Ug9d+DetW6DEe2LgbkcA==
X-Received: by 2002:a17:906:6d54:b0:a55:7837:b546 with SMTP id a20-20020a1709066d5400b00a557837b546mr1941644ejt.57.1713534812041;
        Fri, 19 Apr 2024 06:53:32 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id lk19-20020a170906cb1300b00a526418d0ebsm2233256ejb.74.2024.04.19.06.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 06:53:31 -0700 (PDT)
From: Andrew Jones <ajones@ventanamicro.com>
To: linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	conor.dooley@microchip.com,
	anup@brainfault.org,
	atishp@atishpatra.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	christoph.muellner@vrull.eu,
	heiko@sntech.de,
	charlie@rivosinc.com,
	David.Laight@ACULAB.COM,
	parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: [PATCH v2 6/6] KVM: riscv: selftests: Add Zawrs extension to get-reg-list test
Date: Fri, 19 Apr 2024 15:53:28 +0200
Message-ID: <20240419135321.70781-14-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240419135321.70781-8-ajones@ventanamicro.com>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit

KVM RISC-V allows the Zawrs extension for the Guest/VM, so add it
to the get-reg-list test.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
 tools/testing/selftests/kvm/riscv/get-reg-list.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index b882b7b9b785..8c4c27bd4b88 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -48,6 +48,7 @@ bool filter_reg(__u64 reg)
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SVNAPOT:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SVPBMT:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZACAS:
+	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZAWRS:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZBA:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZBB:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZBC:
@@ -413,6 +414,7 @@ static const char *isa_ext_single_id_to_str(__u64 reg_off)
 		KVM_ISA_EXT_ARR(SVNAPOT),
 		KVM_ISA_EXT_ARR(SVPBMT),
 		KVM_ISA_EXT_ARR(ZACAS),
+		KVM_ISA_EXT_ARR(ZAWRS),
 		KVM_ISA_EXT_ARR(ZBA),
 		KVM_ISA_EXT_ARR(ZBB),
 		KVM_ISA_EXT_ARR(ZBC),
@@ -936,6 +938,7 @@ KVM_ISA_EXT_SIMPLE_CONFIG(svinval, SVINVAL);
 KVM_ISA_EXT_SIMPLE_CONFIG(svnapot, SVNAPOT);
 KVM_ISA_EXT_SIMPLE_CONFIG(svpbmt, SVPBMT);
 KVM_ISA_EXT_SIMPLE_CONFIG(zacas, ZACAS);
+KVM_ISA_EXT_SIMPLE_CONFIG(zawrs, ZAWRS);
 KVM_ISA_EXT_SIMPLE_CONFIG(zba, ZBA);
 KVM_ISA_EXT_SIMPLE_CONFIG(zbb, ZBB);
 KVM_ISA_EXT_SIMPLE_CONFIG(zbc, ZBC);
@@ -991,6 +994,7 @@ struct vcpu_reg_list *vcpu_configs[] = {
 	&config_svnapot,
 	&config_svpbmt,
 	&config_zacas,
+	&config_zawrs,
 	&config_zba,
 	&config_zbb,
 	&config_zbc,
-- 
2.44.0


