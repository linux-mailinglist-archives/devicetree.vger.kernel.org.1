Return-Path: <devicetree+bounces-226687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 57794BDA7EB
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:53:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 33EEB50924D
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A92B3009EC;
	Tue, 14 Oct 2025 15:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZMumbAO2"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DBB93002B9
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760456480; cv=none; b=FkTQjN0hJOAdz7FgPU4Vl4MpbUg+QjUxo2fDRlDWQx7GzbuVraLSKi9M/hVHnp93YjGbAC9xRE4CEQNbCcdm9HCmcttFrxdVVqS2wda8v/jaxzGod37t6mKa1RrdOzmvAyCarXBFzvTKlrUjrGUJq9LQYflCESFSEdEGoU2UISg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760456480; c=relaxed/simple;
	bh=pOuuayWNExUaEjiREKno3GIORZyip1/rQdst2hzkbMQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=D3GUcoTTj2yaLiFLvqB+1/mY2jgu4X7Kxr4NHqSe4nDqqIeMDqMxgUgVhfxwXEF85m4ezusXGNDXFexn1T+Q5ycOwkFHZGWkVqIIuC3sGTajmvnWShbLUdhEvgQcrLv0f4c3n+zPu+9tgWSYMwiijVxvV/B5pr4qXa/RDVdzxLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ZMumbAO2; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760456477;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xN6Ef1sp8hGiQor4Puf+nhx4w4uum6cowYv1M66MvxU=;
	b=ZMumbAO24KSIAkXaP1/7BTVFAnaVDW2qNFSIoF1X/YqYZzNbpeXXMJDTSa0A+C9EeG5BRe
	wq78UMiPechHvbtbQK8az5iZEkIVKI0swh5V9MklzW0JhHY9jnxLc5YOlPOi81AB/FyJBj
	jUEyOWJCRCejSpWa4CI1MZrTBRAVAP8=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-349-vcDBXi1YPQ2PqIX3gQso4A-1; Tue, 14 Oct 2025 11:41:14 -0400
X-MC-Unique: vcDBXi1YPQ2PqIX3gQso4A-1
X-Mimecast-MFC-AGG-ID: vcDBXi1YPQ2PqIX3gQso4A_1760456473
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-b5c6c817a95so25565366b.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:41:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760456473; x=1761061273;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xN6Ef1sp8hGiQor4Puf+nhx4w4uum6cowYv1M66MvxU=;
        b=uI6D0oJ2haIoZTQIRRpP6ZEVsB1oL7SeKKiYCI8a88Ofy9BwCOIzTJBSmr5qm5UO5m
         EQE+QrwE8HEY/BWGp1KVsfwA0jbKnMTiQZLeLIkYquD0RfcMPJOiUT3e+mZhGTukw0kt
         UPiBx0rDZImdf3lIZk0H5H5VD6ug0CdadHJkvNKruGiLUzy+tarVr2FNIleqoTkdR3uD
         nouRyBFXtBPsrVgCO6nyw6L84hjRPR/434EHIJXbGBXXS2PwzKGDWOJcvsmGdM43mE0k
         moJWy88BIyRHV6/29ubkDwr5Sc1ICv079Hlvi/KCDQ/ww4vIv6yisvGZfjyQARyAs2nf
         SSPw==
X-Forwarded-Encrypted: i=1; AJvYcCU+UCjruPZh02RpHH8AhFMccsf0hQ5it015ckDV1Y8ZvR4jnuh4K+a5VO28yuSRIjdwx5EF9dbMgC/a@vger.kernel.org
X-Gm-Message-State: AOJu0YybeRh6ftiddsVQowpEITnDmXHwhx76oJCcJeyxXRjnAQEFR+F/
	L19VnmvnOhb20D7r+42TY17/tisvRQ/xpmR4zKUjsh+tQE5Uj5Kon4dk6wTOWlX9PhqC4+H0KvZ
	JC0ROAN+xjnmHRpTksjECKu5noaYGHjiF21Q3q1DM1+426Hv9u6wC/COcxyiTpQY=
X-Gm-Gg: ASbGncsAtZuXnD+Tq8I7kaH4/k7oqm2ccZuW7lJzoKaWa96mIUrNFHl0jnN6LyzFS4A
	huz9zSjf/HYsdJm+fN3qHTCBhtVGjUGdbIgjv+hXYxOtItWk8LtRSJmHK+5/H8A4mpiWeMZl7H8
	PuYLT1U6JFJlQt6/JYXi36QoS3flBGXhPTemXkyWS6O7U/ioM6S9+d9P43WkoGSV8rqRuBJFOfS
	HEEJo/fpcWTTPKCJRbMWRxv5lNj1mSxFlyvsO1LqanNndCqypIZCoXluHF0TpsqFoXOkJiVH8iq
	Lt4LCX0bF16/EtGlKPXbuYqbnKcfmmnPIh0EK6kQOrYvjnvF1g==
X-Received: by 2002:a17:906:ee85:b0:b4e:f7cc:6346 with SMTP id a640c23a62f3a-b50aa08f852mr2493215466b.15.1760456472674;
        Tue, 14 Oct 2025 08:41:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7MKAgrKXHfanZDhLxk8qbmij1H4ExOUqyMqzBv4euyBsK4QKZM6PUBQShnN55eCek+WQ0jw==
X-Received: by 2002:a17:906:ee85:b0:b4e:f7cc:6346 with SMTP id a640c23a62f3a-b50aa08f852mr2493212866b.15.1760456472247;
        Tue, 14 Oct 2025 08:41:12 -0700 (PDT)
Received: from holism.lzampier.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cba45b3cbsm7897866b.40.2025.10.14.08.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:41:11 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Lucas Zampieri <lzampier@redhat.com>,
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
	Charles Mirabile <cmirabil@redhat.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 0/3] Add UltraRISC DP1000 PLIC support
Date: Tue, 14 Oct 2025 16:40:54 +0100
Message-ID: <20251014154100.168236-1-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for the PLIC implementation in the UltraRISC
DP1000 SoC. The UR-CP100 cores used in the DP1000 have a hardware bug in
their PLIC claim register where reading it while multiple interrupts are
pending can return the wrong interrupt ID. The workaround temporarily
disables all interrupts except the first pending one before reading the
claim register, then restores the previous state.

The driver matches on "ultrarisc,cp100-plic" (CPU core compatible), allowing
the quirk to apply to all SoCs using UR-CP100 cores (currently DP1000,
potentially future SoCs).

Charles Mirabile (2):
  dt-bindings: interrupt-controller: add UltraRISC DP1000 PLIC
  irqchip/plic: add support for UltraRISC DP1000 PLIC

Lucas Zampieri (1):
  dt-bindings: vendor-prefixes: add UltraRISC

Changes in v3:
- 0002: Updated commit message to clarify that DP1000 is an SoC and CP100
  is a core (feedback from Conor Dooley)
- 0003: Renamed dp1000_* functions to cp100_* and updated commit message to
  clarify the hardware bug is in the UR-CP100 core implementation, not
  specific to the DP1000 SoC
- 0003: Moved quirk check out of hot interrupt path by creating separate
  plic_handle_irq_cp100() function and selecting handler at probe time
- 0003: Use existing handler->enable_save[] array instead of stack allocation
- 0003: Use readl_relaxed()/writel_relaxed() for better performance

Changes in v2:
- 0002: Changed compatible string pattern to SoC+core: ultrarisc,dp1000-plic
  with ultrarisc,cp100-plic fallback (suggested by Krzysztof and Vivian)
- 0003: Driver now matches on ultrarisc,cp100-plic (core) instead of dp1000 (SoC)
- All patches: Added submitter Signed-off-by to complete DCO chain

 .../sifive,plic-1.0.0.yaml                    |  3 +
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 drivers/irqchip/irq-sifive-plic.c             | 94 ++++++++++++++++++-
 3 files changed, 98 insertions(+), 1 deletion(-)

--
2.51.0


