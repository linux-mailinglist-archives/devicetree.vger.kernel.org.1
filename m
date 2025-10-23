Return-Path: <devicetree+bounces-230356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7E5C01A8D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 16:11:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1E8B5580C2D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:01:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6952B326D42;
	Thu, 23 Oct 2025 14:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZFOphPMY"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4960314A79
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761228073; cv=none; b=SXbkZ3S+yzZKN8BUM2NzTWTK13me/FHhg+ONCHUStSuCpMLovWuXGfS4i4bWcXSt+K2BsMkJSw/ferMfjhnAB4zqA1XvLmCqUdJKQeawbr6iMMBSSs5+EFwuW4jQNu4fdT/kOZApEdzgf4SsL7YI4Dh6EPTQjKDQa8v543HEVa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761228073; c=relaxed/simple;
	bh=7nF+zX1/zT0vgaP6R4vsmssJvlMwk6TNzjt/SjKQqOA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oimYlfOab7rsGHaBbbwJbEoFjngYMnJSbRJvjilXH5FZbUlpx4WEUg27HY64Z+WIPg+mRVyCWRJMzTIPx59roy4B55aQWsR3xYO7Ln1uJXEVZNPUkk8zuYFObu6yOVEqb7NBM+2clL2Eux0ADTz2HD2/y81P/7RbsICEqPhOkx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ZFOphPMY; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761228070;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iSXzVZNzjEJV0QCm7fFsQIpGaaXg5MfSXavQS0cQlLY=;
	b=ZFOphPMYTPxLbRML82qOYN0jfz4aiWoEP8A8YOkWjbYjZCWELbM6SvFnh2KgeMVuhf433I
	WZdYfStVFkciGl2KbtQ53rddz1tJV7hvy92Dfiz3JOd1u3BN94WdClV8ObMWBoVA9TXBNo
	UVBBHr+IwztvqcVHhXDFhTS4XQYcXvo=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-76-hPKIsoFjNoqOq4wabR8v-A-1; Thu, 23 Oct 2025 10:01:08 -0400
X-MC-Unique: hPKIsoFjNoqOq4wabR8v-A-1
X-Mimecast-MFC-AGG-ID: hPKIsoFjNoqOq4wabR8v-A_1761228067
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-428566218c6so587951f8f.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:01:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761228067; x=1761832867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iSXzVZNzjEJV0QCm7fFsQIpGaaXg5MfSXavQS0cQlLY=;
        b=t20dnEN9irXk6YMqgQME2twtKWKRBzPvKxgw9lEPB1jjJc35eKqrZYH2pd1jlKfUQ/
         658sORx9/reKncs/U5zU/NdF8FdJbA/1JG/Czb1qNvS+ks96WHyFxP3LoMjwR55oc3AV
         Tl0HKv45TXz3mBQLO/1I6dNH1fg6t0lkzhVKjpG5xxl+20sQ/pJZinxZjiGVBe1TL0r0
         lUBOFp2tzBC1f4HQ1+KsySLBK4/V+9zGyLxgdqNY4Hw2qZ9CGUPN4fL/FpzPCUEIyodq
         fKbO9gM1U/QdyUUFYtHqrKjid2pwJ1YRqiCYxpZjxwbM+vyF2+lNX5POHf8Q3yM2l6Fm
         C41g==
X-Forwarded-Encrypted: i=1; AJvYcCXasRrLufGlmI0y5IcfhP6Ccs6tLtI1XKPO76TBPWheBetIYCJkaIEms6zZ+O42UEu/2D3oy/T8bKoU@vger.kernel.org
X-Gm-Message-State: AOJu0YwSm0hTeZ0fWCa+WlakNScjGFvxvpWoSVqAcjPCEdth8+EBv+iK
	U7IQxZ7wNDYqip5NLKtQR1mGLM5ziUPKcQ3NoxXZr2HPzKQ0MWvfgrYv8Q8WqHwDBKKVQhewebW
	GRkN1QC8/Bh1qY9abdLipJkIdqnjfq1PCXUy4svcuel+ogq6PKOa/tTskt2HHFGY=
X-Gm-Gg: ASbGnctb+4MsFKx+6On/N3z6KfFWTOlGRtyF9nqV+1k4nxTJ5aFLfWnAtcmA64M2PTH
	GPC77WCqpHiO6EHA3s3eR80jvp9uZRev3YY8oquQQA0w4UpZIuBa9BtwT96P0yWtRwUctFCAHSs
	29vAvfGOmzj1yjPoVvgirzFH8jALvO4XnM1AI2/4dpUiFXjWh12NkjhkMhmVIzDjRLz1h4Y8XYd
	pcZl4yNaUK+7lgFkBe4pc9r9EYYXbuZAoHWXhcuiHxdEPqQQvrrFWlLR5TBBDkYPqG6jGC7UCjs
	iJwd2CIaIkwkJuEkGrHMXYyuvP7KP3Lrw/HhUMGXa3kYXbsPMMhySMKZczG6G1bECPaYq3LgNTi
	GFm8=
X-Received: by 2002:a5d:64c5:0:b0:427:55e:9a5c with SMTP id ffacd0b85a97d-4298a04e8f8mr1738171f8f.23.1761228067010;
        Thu, 23 Oct 2025 07:01:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQN5z1R3xUC1t8+U1Lp9SBqdA78YpSkYVZfQPRbMaP928lyLVm0iuMC51fQt6oNyhBCt5xuA==
X-Received: by 2002:a5d:64c5:0:b0:427:55e:9a5c with SMTP id ffacd0b85a97d-4298a04e8f8mr1738120f8f.23.1761228066468;
        Thu, 23 Oct 2025 07:01:06 -0700 (PDT)
Received: from holism.Home ([2a06:5900:814a:ab00:c1c7:2e09:633d:e94e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429898add96sm4116154f8f.30.2025.10.23.07.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 07:01:05 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Charles Mirabile <cmirabil@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Vivian Wang <dramforever@live.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Lucas Zampieri <lzampier@redhat.com>
Subject: [PATCH v6 2/3] dt-bindings: interrupt-controller: add UltraRISC DP1000 PLIC
Date: Thu, 23 Oct 2025 15:00:51 +0100
Message-ID: <20251023140057.204439-3-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251023140057.204439-1-lzampier@redhat.com>
References: <20251023140057.204439-1-lzampier@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Charles Mirabile <cmirabil@redhat.com>

Add compatible strings for the PLIC found in UltraRISC DP1000 SoC.

The PLIC is part of the UR-CP100 core and has a hardware bug requiring
a workaround.

Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
---
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml       | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index 5b827bc24301..34591d64cca3 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -74,6 +74,9 @@ properties:
               - sophgo,sg2044-plic
               - thead,th1520-plic
           - const: thead,c900-plic
+      - items:
+          - const: ultrarisc,dp1000-plic
+          - const: ultrarisc,cp100-plic
       - items:
           - const: sifive,plic-1.0.0
           - const: riscv,plic0
-- 
2.51.0


