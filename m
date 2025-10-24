Return-Path: <devicetree+bounces-230716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 09550C05164
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:39:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 289FE188C728
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AB44308F36;
	Fri, 24 Oct 2025 08:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="I1J050ae"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA00306B15
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761295023; cv=none; b=G0gKSj/yubSY9P9FtTWJarTzK+42Mv3jelcGRqfn3kLgSM3QD+LSUCGiVSm2cMtL2uj+JYwTn/QZlX3Vl8yYvOVTDvjG7GegcpiceBeFFdc6UySVNt7duYzlwvbHevi5MxyB7/rCfJPaCxgbK7K8F3Om9dAih4fh0lNVJgWGZqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761295023; c=relaxed/simple;
	bh=GwdorghP7pkx6jrL0xNhcOjrQ7rW+RmSi107hDe95KA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tSkgAN20pYYsyRu3WKg1LelQnWZjv29HiNjGaLgQPAcU/His08gaEndmCQWU+y7p1TDzYyqCk+0WGzouwQeOhbG4W24ItcNXNpie3HhIuSq8qFhgop3FlU+zHudL4AY3obEh50qHgd/fi+NoYNcsA4Deqec7nfTk3Q4PbMK21iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=I1J050ae; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761295021;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NyZc7IIr5uPHqqlmg8fs1xLiepRwuPem5qvpkm3Ay88=;
	b=I1J050aeVgNe7yw+48j0zcwFtHwD7o7r2cb9hyQyXJ9odu+33A5ImraAnDTwp2msPuX1XB
	L5G9EO3wG7T/QULW6nQ+YHL6N8ZoaPX49w2esXWLuGAdbH2AnApSmqnNVdj4WuvHF8kLTA
	IMDsXbgK3zVRAyGxoThUHdjUNDDCHnU=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-222-QyJ678YjP4eZxGCHSS-SYg-1; Fri, 24 Oct 2025 04:36:59 -0400
X-MC-Unique: QyJ678YjP4eZxGCHSS-SYg-1
X-Mimecast-MFC-AGG-ID: QyJ678YjP4eZxGCHSS-SYg_1761295018
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-47113dcc15dso9482575e9.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:36:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761295018; x=1761899818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NyZc7IIr5uPHqqlmg8fs1xLiepRwuPem5qvpkm3Ay88=;
        b=HF5txIzo7gXFf/XHHICq/maY/NYyMvvwfYWlpdWKi4eQiRdhFdslhn20r3lWgVxMbs
         h+/WRnbjTyH904v5dK6tO8WQYDvi1u8gPyjVCPzxFMCYCY3w++TRAeaV4t5A0h3tc7Ot
         RryqlllgWTuXC8ef4gOmcIHYajOyLCrK2d7KvTN5lgyWQNzoGOMqdt7SRM5oHJVV0wFd
         au12BnMpCD0qqWXiFVclBdjpt/1jGRwTTudCvGtKgzc8tHZIVDt6PrJgs3a9wc2N9bn9
         gdqYS28j595YSNDrsblxbdPotg/amMwF5xa/E9S+hVVtatYJaOdSvCF5SEoLbNs6rKXD
         2oPQ==
X-Gm-Message-State: AOJu0YwSJsxhtLB5npi9SGBHzoDbo1VZbQQBAL5GXh1SL03LqyJ+LOQt
	+eJcMweB3CVzavgwBbOntA5rpx85laXwyG1BA30RfV79Yq+OX0x+HSVy6qhAolRI5foZAwi4bCZ
	E+jFLwNdc/c72aZJop4mARzINoP2lwZ74v3qHnpIOCpR6KO5YkNPOI96ibLc2Az+oJ7RudOpl3Q
	do6J4zgpSY8Ha0scM/HhL6CHPUKGh7k3K3c9YBWeengoJD8IfH3w==
X-Gm-Gg: ASbGnct6hLLXROdsNiJGOejDvgdWqHuOWYC6WJtiMPdbzZO3nwFE5UKM76jASJpIaao
	oq8/6eFjAU3+9/wD5kfZYXSwnBBmhx026TKcK0cI0+PKFsKLhQ7IHoeprIquegBA+vb1h3O+flC
	IE/haldcSqV0cxDI3tiqLwdN9hrALRWeYGk9vZAgeN36BcqtTTMNmMeLOv+CIlhW7oubBPKp/AD
	6fJnGwDenIrHKBefOSBGKNoTV1fkPtPaFXSpRtExcZnnVQWDDz5Xcm75wNh/JKQegZ4n4fqj1P7
	JxKDFqU0IUaEBwpdpJI9DgeeCg1DF8gydqpH4KMjuZuNZg9YbbfZZiymTamu9C2tx1BT3H4Znc8
	9tGaavY0N
X-Received: by 2002:a05:6000:420c:b0:429:8a71:d63 with SMTP id ffacd0b85a97d-4298a711381mr3025043f8f.37.1761295017893;
        Fri, 24 Oct 2025 01:36:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnbrpFOQzLgO88uWFT7Gj4PKWUmuhiIJyW/x5PkRHgKL2dskBgGMAezA2xHjRvsFnb6Zht+g==
X-Received: by 2002:a05:6000:420c:b0:429:8a71:d63 with SMTP id ffacd0b85a97d-4298a711381mr3025017f8f.37.1761295017487;
        Fri, 24 Oct 2025 01:36:57 -0700 (PDT)
Received: from holism.lzampier.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429897e77dasm8111636f8f.2.2025.10.24.01.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 01:36:57 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: devicetree@vger.kernel.org
Cc: Lucas Zampieri <lzampier@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vivian Wang <dramforever@live.com>,
	Charles Mirabile <cmirabil@redhat.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/4] dt-bindings: vendor-prefixes: add UltraRISC
Date: Fri, 24 Oct 2025 09:36:40 +0100
Message-ID: <20251024083647.475239-2-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251024083647.475239-1-lzampier@redhat.com>
References: <20251024083647.475239-1-lzampier@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add vendor prefix for UltraRISC Technology Co., Ltd.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9ec8947dfcad..887bcb792284 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1642,6 +1642,8 @@ patternProperties:
     description: Universal Scientific Industrial Co., Ltd.
   "^usr,.*":
     description: U.S. Robotics Corporation
+  "^ultrarisc,.*":
+    description: UltraRISC Technology Co., Ltd.
   "^ultratronik,.*":
     description: Ultratronik GmbH
   "^utoo,.*":
-- 
2.51.0


