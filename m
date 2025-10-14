Return-Path: <devicetree+bounces-226686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BB173BDA71E
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:41:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75FC619A0205
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D103E3009D4;
	Tue, 14 Oct 2025 15:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="C5w30qTC"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4CA3002A4
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760456479; cv=none; b=saEfTMMOO40MvvpPda7dPTM2knC27q7SfDKNQTg4pjjY3Yk+MskyVgOEVqk3VAdPxmerEQUC5PiJ8HFmP2mDSB/7l4eU1jrKLHijhkhsUgpIAnJwCn7uwl0ElhRmCKY5XjVZoyV3sFxsMIqd8kgpGR1wlk1Y1kt9SHeFCYKPdZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760456479; c=relaxed/simple;
	bh=FksEnlu5WCU0cg/YHpcnAOATZshUl2DJHKfj4doZvaY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Gd3P8lo2+kB2lzqOxGaTLBuinQfWgBln2UqJxCd9ZPoOkPcCVHez9Ns2vwOvaGI/5EXUjg2oTemI5Ky3BnqJztucZxkzdbFXfWls6a6ULZW8W8KKNh+0UDev6QoOHYP00WiYqgF7VDPtm+hH9AEwcVxSG1bF8kmwY5hhGCvBy5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=C5w30qTC; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760456476;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NyZc7IIr5uPHqqlmg8fs1xLiepRwuPem5qvpkm3Ay88=;
	b=C5w30qTCataExdjshCx4WV52kUC1eCmFqColoJ7+lDRMPhG8Zn38CFXdcsAnjAoYiaohVf
	Rppu4JWMRKXVia1IPnMw4wZkX55U6d0kwEsy0AFy3nCA/jzec0tjmctbaN96cahxasBjOR
	8nNacv5WdurzYWA1JkJcm2kVrqc8gp4=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-578-9xEQYhaNOiuB2xywpMRN6w-1; Tue, 14 Oct 2025 11:41:15 -0400
X-MC-Unique: 9xEQYhaNOiuB2xywpMRN6w-1
X-Mimecast-MFC-AGG-ID: 9xEQYhaNOiuB2xywpMRN6w_1760456475
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-b3d6645acd3so552061766b.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:41:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760456474; x=1761061274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NyZc7IIr5uPHqqlmg8fs1xLiepRwuPem5qvpkm3Ay88=;
        b=DiyeKqrNU/3Hp2SG8VbLbFH7v3sZ/0vfquVnwdepsKpeRmjqrn6p1e13HFLGwlihfq
         joBXls218Sp814KE8i1TWLhSOuR2JQx3ZdQukN80QGpGggQfnt1ubZ977w8BqzVIqtxc
         meKn2f9DoahofqMazNVWlPd6ZXyMX7f0Qn1fdeO4ktqXR0eioDlfxGGnL/I3OZmi5ZAP
         TUZnZ4+utyu8B7GcMvvIzEH/Uhdz9f7FDdUiFR3YjKoADER3wItOTxN/e+M1eFjU04OX
         RPAzeqcE21751kpZf7L8BRzWghj7SLmF/YrvQWxxmLvGm5n0mcPMVehKCXORifFTfrlu
         1+NQ==
X-Gm-Message-State: AOJu0YwzEvCTGW+56RgBGY+fcpurJJVDyiJ1s0YvESZ/Kq5HJ5ilCi9o
	dk17wFgePr+/4eFuqIW7gLLq8ELHue8nB/c/XaNbFKdTIfksHCLfQ07yrEajdox/dm9wuzUrhph
	QidmfPfd7ayIRZq1P4RYkmdrIzgJUqRR7cUQzw6ihNF20YDAFWGOqZgaP5bPrdPlVQ+hX8qeWwO
	zbO9itU1K+RwF5n+wnFqjXerGALWT4rA6Ytkk9PAW7JMgscUUa+syi
X-Gm-Gg: ASbGncvz2g43ysWCvYZ2y6yO7lrpcvAB7e8zsVaBliiIypkKgAyZZhU5M0zK/XQZTwP
	QyD/8wlJevRGZ1w1ZC5SjW3d4n4ttWVafGJhMfYloRTBFiVlo4hZNoFp9bruMzIy6HDtGiwcw9R
	rkDjycn+RLyA2eoTuDQptJ50N9ZMrA2fPT33yD8sRW2gLxD/DM+vdkImzAgPny1FfYzw2n+yn53
	Ofjm8r+b67vR0fVx5HG1raVftdlq7gdt6CZ/rPFjBl9PNu8/7MWoxkRXVIX2fh/2xYvPBviuM/y
	z59GzwI8Dnt8tGnzpB5k1d6T2vOhGPwBNF6avCS+VLEMK2PWng==
X-Received: by 2002:a17:907:c09:b0:b3f:5513:5cd0 with SMTP id a640c23a62f3a-b50aab9d5f3mr2865073266b.19.1760456474428;
        Tue, 14 Oct 2025 08:41:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8YOUunm+yEdapdiiXzS/U6J1+P8DXbhA5H68j2co2OB4jD8IFwOvDPZjUIyGKLQUCNJRn6g==
X-Received: by 2002:a17:907:c09:b0:b3f:5513:5cd0 with SMTP id a640c23a62f3a-b50aab9d5f3mr2865069366b.19.1760456473894;
        Tue, 14 Oct 2025 08:41:13 -0700 (PDT)
Received: from holism.lzampier.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cba45b3cbsm7897866b.40.2025.10.14.08.41.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:41:13 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: devicetree@vger.kernel.org
Cc: Lucas Zampieri <lzampier@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vivian Wang <dramforever@live.com>,
	Charles Mirabile <cmirabil@redhat.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: add UltraRISC
Date: Tue, 14 Oct 2025 16:40:55 +0100
Message-ID: <20251014154100.168236-2-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251014154100.168236-1-lzampier@redhat.com>
References: <20251014154100.168236-1-lzampier@redhat.com>
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


