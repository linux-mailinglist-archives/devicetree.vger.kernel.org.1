Return-Path: <devicetree+bounces-227137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E10BDF175
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:34:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1DC6485683
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6497029BDBB;
	Wed, 15 Oct 2025 14:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="CuoFStBS"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F7A28B4FA
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760538683; cv=none; b=X/DSyYXNtGmARf2RYoMiW1s+pvJEi6ppnyrxoBpyt99mMzqXJ08kP2d4sI4AQDe7uyJB7YRwFKjI8NOIYARzuhxarWzAEn99no8MyP7d2XWGv7h8xHXoD2bDiUJ4j3cZ7j8l4cfNdJzwO6enAQK2ZvhX3y8oblpRkxXQ4FxyEg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760538683; c=relaxed/simple;
	bh=7nF+zX1/zT0vgaP6R4vsmssJvlMwk6TNzjt/SjKQqOA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mWoxIM5v2t2clia3TCD3YaOMFZjenKpoOElbWzvp2pWCaNMcW7V26qpb6o0VGgyswIhZA1NX7WWpRjE2YdphL7G9dT2fceDDWUzvrnw4OPgtr+q7pSYJuUKKWubcy6WWFvtJ3QIscesaAgz9LxddrCx8UjfG1pMnwksrq0SWinE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=CuoFStBS; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760538680;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iSXzVZNzjEJV0QCm7fFsQIpGaaXg5MfSXavQS0cQlLY=;
	b=CuoFStBStusN7UrTHSgc9u0wce+m726EUyb22gYXVTBmd1gMphXleAk5R9rfZPnMRj4soA
	tmzlg9E8A63LGtGUt5lZSnAKPvxbGtMR2ULx+/l+EEZyYTSyp5ur/Bc4CVjTnn5fPC0HFy
	hyDKyF3LtSJKaWHcr0D+1mlF/vhxUAM=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-68-zrGorYSfNTavhezYR7N13w-1; Wed, 15 Oct 2025 10:31:19 -0400
X-MC-Unique: zrGorYSfNTavhezYR7N13w-1
X-Mimecast-MFC-AGG-ID: zrGorYSfNTavhezYR7N13w_1760538678
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-470fd59d325so6090905e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:31:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760538678; x=1761143478;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iSXzVZNzjEJV0QCm7fFsQIpGaaXg5MfSXavQS0cQlLY=;
        b=lNP/jf7TtfZBxkudhs5QRCO1BQhwWscTuSnGJJbtJyESXDDpiNnHnX0kCwY5CqQtG4
         u72JEBOsFxW/+ChvbzkFB7OsPnBypPkmfeVuTNFa/EQYWoRtKgpp9jJ6HiD5wvHos0/g
         AmSxs6LarxYHcTNpnRpUtkWvVkID6lliKW5bKJR+QFLlDjRAJy2m/Yp+jTS0x3OoT70s
         5yixP3TRGoJSpxw5j6rBwqnh438KiEneDF1kF9wOyxHYMmJRMizYcSYL+yEBSwseg4ap
         ivnlKxnlxK2XUHlfmoM2PSUTnmdBXhBwaX8+2+/NZkt4O8RM4yldJVpt29l1vFy/0hFg
         M0Kg==
X-Forwarded-Encrypted: i=1; AJvYcCWIjnYj5kfGIqbh5fyv0h2f77lCpfblgoH6QPxcmuwYgZ6tlQ++oh41PLUB8XmL0hMzWmguOtBRdEbJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yze2nEY3KFRCzB5vlnO2tYLxwQKi9ugeaVV2ypxrS1K9la0+F50
	c32R5UiMnGyiklPHyDoh8xOTZwgjjcm3/LrMtYQk9nQGUoY60DwHJnrp0cjCAPEQYYWvtdzwc8j
	0taUwtj6ZapEbHO1psG/db8FF/fRsxPJbRC2kGmQYF82zIgfxx0Maj//qLW+9ZU4=
X-Gm-Gg: ASbGncssMMXXJFwzSf7WzG3YjsIIsFuFd8mThyAk/A5tLCbKn1y1Gp0J4Xy3i5I4HXr
	K9Nd+Ua0ifoYicesuMwEx5AyZxW3BlFk2y3PKH2EAgDPHD8zwwXhvuT33ZdQbkP3WOSbfWrJ9Au
	F7MfyeeGNCn4zRmyRjzuAmdrvckiuUdBJ+F3UFJPamosABmcBJBhBJcZBsUU0wGGu6oDlzLj3XR
	eC3cGrRty5BdPfalcvIIruTQxH3NjTUWVoBJQ0S0PlE2vBJnt9sAWLiPY8y3B3LkgAyx3NwjXef
	M3wGwD+lyh5iOcFk3ouXetG04WhYUGK75RG6kkyPzj9Blvqc9D3txf4=
X-Received: by 2002:a05:600d:11:b0:46f:b43a:aedf with SMTP id 5b1f17b1804b1-46fb43aaf25mr108180755e9.38.1760538677939;
        Wed, 15 Oct 2025 07:31:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG683Uu0GDZc9bo630j+NWQaTw6T0Q6n9Za7jgl4kwN5Wnz8kfYe9OZzC9Ddj1aZld04KGuRA==
X-Received: by 2002:a05:600d:11:b0:46f:b43a:aedf with SMTP id 5b1f17b1804b1-46fb43aaf25mr108180605e9.38.1760538677489;
        Wed, 15 Oct 2025 07:31:17 -0700 (PDT)
Received: from holism.lzampier.com ([2a06:5900:814a:ab00:c1c7:2e09:633d:e94e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47101c02377sm32617005e9.6.2025.10.15.07.31.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 07:31:17 -0700 (PDT)
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
Subject: [PATCH v4 2/3] dt-bindings: interrupt-controller: add UltraRISC DP1000 PLIC
Date: Wed, 15 Oct 2025 15:31:06 +0100
Message-ID: <20251015143108.441291-3-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251015143108.441291-1-lzampier@redhat.com>
References: <20251015143108.441291-1-lzampier@redhat.com>
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


