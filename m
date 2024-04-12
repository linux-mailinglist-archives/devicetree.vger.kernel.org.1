Return-Path: <devicetree+bounces-58608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D17D38A28B7
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 10:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E6C61C21C4A
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 08:03:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C3E550A65;
	Fri, 12 Apr 2024 08:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WSklixnt"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0209150246
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 08:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712908986; cv=none; b=f+6lGMesabW5pkhkjra1POCZumw3Q816uHwXzR7aIT2JpNiXAGWlmi33/pSAp6j13aeilMuzCKNvHqQuIeo8tScLRVPgf39GztF/csluguNNLmf6DZ1rJWA969BlwRSjPyJDz/9HWs6BizzRCrQcNJV9cPJIJVH/kCKG1HW8Pqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712908986; c=relaxed/simple;
	bh=OpO8oB2yCRllOLrXtydV1XjyFATr3uDCO6/EuRZx4a0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FtKlUtdznAc0vjNQEMXWEY9F2JxdogUDUmIIAc5fr1F2DA0CJmlblUGeHAx/jzf5UUA59sC4zhWFGRJMlgsaRFyVh0j/BEAsoODChAQjSy+vC+LUl09WqAx3l3JwfqPc8l1VxdQRrg0rsOXxkPlArfGRnyXazkoYduMIx/zwj74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WSklixnt; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1712908983;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lECrQISwTyfiQuZfzhaacIj2l/HO/4HjKmgRSsbNnU4=;
	b=WSklixntNXbvHU3nK/qbaXUyQjf2NuAb6SYqL3vpxX0hS33DVo+o4VZNk4GMcgQhrJpvnU
	28HmSVeMeMPxy5ePh0L7GAcD0JulNyfV1Remds7iaKYKZekFbEIN2gVi81QjRUbEGYNANe
	Axuemh8/flyx+q9TMSbZ/samNL8yaCk=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-213-QPFj1mTNPVK3-vdcywg9Ew-1; Fri, 12 Apr 2024 04:03:02 -0400
X-MC-Unique: QPFj1mTNPVK3-vdcywg9Ew-1
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-2a4a2cace80so563080a91.3
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 01:03:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712908979; x=1713513779;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lECrQISwTyfiQuZfzhaacIj2l/HO/4HjKmgRSsbNnU4=;
        b=adSU8O1MywjQstTl0xw9c+xX8p2RRIalPjmFztJS9Df9f9dlNfYYYT2qPmfkZKnTtt
         WKE2ZJ2i7fbQH+BRUVWArCurL1ebfUQkFZMXAwYXWR5qDu0okdicSluGCb55qP5P4ZFa
         u9PTZHWdOJUCYsQf94tuGe1LURPWNPQN/R27f+IcU1iBThka52dakBpRC1oV/FwKP7Qo
         ymcZs4Pm/cdroDxSh5+cMHriSbzgXC2EZQfIdCdbst4KXAPa4BpWv5mJ+cE6IKwPYq3O
         3HM0heRbIfic6XPaoDO6NnEnB53xRUBQ+d2NH2rlu1rsLE6EGsXd/yCDG15b6ejkxsTx
         m1vg==
X-Forwarded-Encrypted: i=1; AJvYcCWHmgZiFlaXTUxVVZUOgSi6OhNvR/xgpiuvWkOQfaASR3EWJOoJ6QSTxCrm6qqEB+Oy/M7uP3nP7KpXFXwwV2Nn/7MbwNTHGY1QJw==
X-Gm-Message-State: AOJu0YxqYUCf5M9AcggXWXnQwzJ5dkqz/UrOp/EScFOQldLNkS++l4qf
	67EsZVj0td1KtkuoBdLwTp4pcrsE8QgeFpkut8fX9q/ViojG7XVNWQqjh2LAd7m5buyBphEAYAI
	E0cITAJdMu0X/oSReuO2jJD/xuPnC0X6AJf+Z1r4qRQIGigvkL++Q/xJxOSU=
X-Received: by 2002:a17:90b:1001:b0:2a2:775:9830 with SMTP id gm1-20020a17090b100100b002a207759830mr1909392pjb.11.1712908978905;
        Fri, 12 Apr 2024 01:02:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF24h9XG4blfy/RFGcd4FjC17Unma1YbnMvxv8GsHe0ou75G0czKI/fwNaCpVH6a/ltnSojBg==
X-Received: by 2002:a17:90b:1001:b0:2a2:775:9830 with SMTP id gm1-20020a17090b100100b002a207759830mr1909371pjb.11.1712908978644;
        Fri, 12 Apr 2024 01:02:58 -0700 (PDT)
Received: from Samantha.redhat.com ([43.228.180.230])
        by smtp.gmail.com with ESMTPSA id c9-20020a17090abf0900b002a610ef880bsm2601514pjs.6.2024.04.12.01.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 01:02:58 -0700 (PDT)
From: wefu@redhat.com
To: jszhang@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	guoren@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Wei Fu <wefu@redhat.com>
Subject: [PATCH 3/5] drivers/rtc/rtc-xgene: Add "snps,dw-apb-rtc" into the "compatible"
Date: Fri, 12 Apr 2024 16:01:45 +0800
Message-ID: <20240412080238.134191-4-wefu@redhat.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240412080238.134191-1-wefu@redhat.com>
References: <20240412080238.134191-1-wefu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wei Fu <wefu@redhat.com>

This patch add "snps,dw-apb-rtc" into the "compatible".

Signed-off-by: Wei Fu <wefu@redhat.com>
---
 drivers/rtc/rtc-xgene.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/rtc/rtc-xgene.c b/drivers/rtc/rtc-xgene.c
index 4d6f1629b973..5163682f9816 100644
--- a/drivers/rtc/rtc-xgene.c
+++ b/drivers/rtc/rtc-xgene.c
@@ -287,6 +287,7 @@ static SIMPLE_DEV_PM_OPS(xgene_rtc_pm_ops, xgene_rtc_suspend, xgene_rtc_resume);
 #ifdef CONFIG_OF
 static const struct of_device_id xgene_rtc_of_match[] = {
 	{.compatible = "apm,xgene-rtc" },
+	{.compatible = "snps,dw-apb-rtc" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, xgene_rtc_of_match);
-- 
2.44.0


