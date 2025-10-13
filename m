Return-Path: <devicetree+bounces-225992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C264ABD2C09
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 13:16:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7971D3B650F
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:16:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF0A42609D9;
	Mon, 13 Oct 2025 11:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="eg9qG0qd"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2082925B1FF
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 11:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760354167; cv=none; b=mgdVMfEdmuDbQV/owsKSBJvFcXLx9YyfCoW3jn57ApwNrAAER7NiwnXyfg0iQPRlYhxy+VZO5DQcXTbgotM1/g05BnIgwB59H4fsWjYtfLNRxQit4azwDOoaNRe1Xp2gB5g1ZatZly/qnRXPUhHlR+Zv/2aCRRkFcJxhcwtF7uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760354167; c=relaxed/simple;
	bh=mh4KQfHpTRyfwbrzSn7QR9HBsuPqnWl2zeRlyQz9EUI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mmGo1JZNNSu6LJVKbutkhTihbrjnscjCunaZSFGVIPFz4FwFfd+aGrvjrxG90Mn35AJ7BJ3Nll9kkk6hTyeidOPo6wE8lNNkD4GPcF4eS6Lswo7yiFUQW4Dmz0BsTbnlqke5iCl0aafGpBJq2Fpnjp08iTfbgGeZBOuSF7UCP24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=eg9qG0qd; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760354163;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PXbaRxtuztYp/s40WDhl1rowOsrsCdyuZCaCXhLX8Gw=;
	b=eg9qG0qdhC2R9lqyiRi151xz6qLOrUQyjhirS0WinhSokY5WTsAStGnNQip3Iz5KH2qcax
	KSvnvKArOb73Yk9E7kkJWDJqsCxMgkMbNjfxKR9lRI9iY9T8BLYx+XR+C/TSzo8r+U+w04
	+mw20hbzyOHwg6rnbhkdNQRtAvHOELo=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-385-BVOut7kYN3eEBM1UnfOpSQ-1; Mon, 13 Oct 2025 07:16:01 -0400
X-MC-Unique: BVOut7kYN3eEBM1UnfOpSQ-1
X-Mimecast-MFC-AGG-ID: BVOut7kYN3eEBM1UnfOpSQ_1760354160
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-b3d73e1ed87so566411466b.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 04:16:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760354160; x=1760958960;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PXbaRxtuztYp/s40WDhl1rowOsrsCdyuZCaCXhLX8Gw=;
        b=p2vCXMlzXSHXReSMNMvRKHm5mFe9nRWiwOU7d5S3UIdO3OdKBuVv2JLJ1SD1lnZ1v1
         HcYMhfVUe/E+qiXp5Z7T1Z5NhFwXMfarIhObzGUfHParXDb6C91SCjWHONbZ+kx8Nd6Z
         zHi7fc6Tib6OSS9CdBtHjxK9R8S6Lm7/CC/rhxYR2GiIqXeqZprj+YAr+dv3yVxUVRq7
         XWt5Z8fSGtfUGsh+FQobQdqC6YIj4ZPJx8TDUPOJ9kmXkporrj5gWNMBKoWBaFtKRH98
         0uGbSWcIU3ahmQ4lspJdgGQYv0KTGadBmCYdmYPDF8CUhklhXdK2hvmRLB5ekkmMvqHk
         L4jw==
X-Gm-Message-State: AOJu0YwUjrSW8uf+gV7mp0dwFd8QbYBz9Km8Tvp134AWY/fy1ON9vVyd
	Ik8w9WNEzKHTvYxA8MTKF4yN4Iu1t/gBS479fP8RYSTPokWPZnTahE+vi5iY9wCGm5Psofb0VWH
	ms4w5Rif2lrgJOX7m6xiNJcdmeIoSlTLZsFLoJWFHO7aSC7v+hyLFw/2/kd2QFHBf6banfbcgqC
	/pVJQG7mnDSP3MvMDdJS8MHkz+LrRj3CTl4tJ4j5Hu6jXmAZsDbg==
X-Gm-Gg: ASbGnctOoHHlF3ClZYWz+Oj4sNzsEwMddOCYcn8rjh5PRCs7+W7i+LDPXKyV/cjIfzi
	RuFdMIT1STLM6xUCqtBf4M5LMtf3vNyMw1gj12MzQhiHeo88F+WqqcUe9TmgK8F5eMfZoHmI5sm
	ioO7x9/e6idlqbsutFLkM9o9iTbEpWZ6w9lNRNBq+p/SLKRtaG3PTDqudmjnYwkseuJeMMYOPMK
	ipQVqXUiM9Cz6sPZUKrxOcGuSpYJT8JeJxtQhBMcwaRPtx4Z/6YPAJzjyqmU1QrS1uG167rpNSL
	a57yYViqK146rRexGqeNE9Q83QSktQJfVfQlV2eQ5vwT
X-Received: by 2002:a17:907:3e14:b0:b0e:83e7:f6e1 with SMTP id a640c23a62f3a-b50bedbf399mr141599566b.15.1760354160012;
        Mon, 13 Oct 2025 04:16:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuUdQXqYYYnB0IxjzxM4QXupFhWiFIY6GmjbzKu7BcvIGOI8cjNpSplnLC3KbMobuV7VWnOg==
X-Received: by 2002:a17:907:3e14:b0:b0e:83e7:f6e1 with SMTP id a640c23a62f3a-b50bedbf399mr141594866b.15.1760354159482;
        Mon, 13 Oct 2025 04:15:59 -0700 (PDT)
Received: from holism.Home ([2a06:5900:814a:ab00:c1c7:2e09:633d:e94e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d5cad8adsm917336966b.7.2025.10.13.04.15.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 04:15:59 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: devicetree@vger.kernel.org
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
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Lucas Zampieri <lzampier@redhat.com>
Subject: [PATCH v2 2/3] dt-bindings: interrupt-controller: add UltraRISC DP1000 PLIC
Date: Mon, 13 Oct 2025 12:15:37 +0100
Message-ID: <20251013111539.2206477-3-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251013111539.2206477-1-lzampier@redhat.com>
References: <20251013111539.2206477-1-lzampier@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Charles Mirabile <cmirabil@redhat.com>

Add a new compatible string for UltraRISC DP1000 PLIC.

Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
---
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index 5b827bc24301..a419de50f5a8 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -74,6 +74,8 @@ properties:
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


