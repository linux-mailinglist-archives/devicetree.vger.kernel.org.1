Return-Path: <devicetree+bounces-224785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A972EBC8037
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 10:21:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 03D6D4F53BD
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 08:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD3027B327;
	Thu,  9 Oct 2025 08:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="be4/9rcN"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C8A27B4E8
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 08:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759998076; cv=none; b=I/HM4PBB54mZVQiv1EpE/gphHzfzqY42MDu2dJIO444qe503haI93Zf2QU4zNAKCyOtnFHbd4By+crRLiCQwlvuQ/63W0K/hkOHlhnlSwukIeycFI2tRDtdziPQJFXk+qKn5jo0LYW8EtbJysajMLuI1E1X7yAKW2yaTQUUXgAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759998076; c=relaxed/simple;
	bh=snoFO8G+uXqlWN8+HoOWz781yCyHMMZV9qYqnC1ulwg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OqcjbZ+XPBNq82oCXuJftpeifX3YzegcJoHJb+o7UAu9CWqJXNQcLXpkRt1odt/X8VM2ZRu2j9WZkEYYBrowvmg7Y/AXmOt79jr5NkxGQjHC4oern7MG3GWb+H6DDjbe8Uze2ZvWAI8lB/L8G5sdIpNIjnye8IvbSkX4FaB7PCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=be4/9rcN; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759998074;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=uAS+qkMsvlrGMvDE3IZzNp7+IP/1UAMbFrv7U9a54xQ=;
	b=be4/9rcNpYJTgC5YAFzpVwEkcdVngLIKNFSJYEdbTJcorDyQ8nU4GFK852H+wLkDzLQgAd
	E2HrusazEV9tpZpg/74Zn1Tv8KCmydV312lWtkmj2XISiPw0sSebYUXTrUTWCkI2FOaZ4E
	AGLdyD07/TebpsJiZenUCg9r8OLjPTM=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-586-k3GakbKXOiSxZ7Fhig1xTQ-1; Thu, 09 Oct 2025 04:21:12 -0400
X-MC-Unique: k3GakbKXOiSxZ7Fhig1xTQ-1
X-Mimecast-MFC-AGG-ID: k3GakbKXOiSxZ7Fhig1xTQ_1759998072
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-b448c864d45so56133766b.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 01:21:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759998071; x=1760602871;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uAS+qkMsvlrGMvDE3IZzNp7+IP/1UAMbFrv7U9a54xQ=;
        b=tvP0fxybEl4wjRyWKJ5SsShFs2ZVrbk8eBfyNQeK0chfaMXRL1PQwgywo2QzRw5r6O
         iy/v7jJn4GutFsd5yuODnZ3lF7y09KsVcf3mqyZrWJ8Iw7/SVriYTFFGlncr986OrvlN
         H4Fb8QdABpmDSaBtkP+m8a35iI9WkL5XC3R4JFzcKbBMRGzJan5eBaH+T8BJi5EvgY5T
         TbQU8QAjKw1uKyaUr38842Arr4DG0ByQN6Qjsv6h/WSNxBTcLuD9Dd3aZkAE87GcYTXL
         a/4+2FGIxowrHt4e+5Db5NkehKEabjRP3efyqhykxr8wfAr8lGuy6/o/ATB4TYgbaAkC
         Du7w==
X-Gm-Message-State: AOJu0YxhQyFG1Thm6Xln+mngxAmBbny6o09lWwzfQV7ijX41gFTPNjPG
	2qXWl/oEc22ectsvUacCE93eA4Ljk3Lrfu5c/JBEhFzw1uAlA6WPY9FBUacOyVFBitWdhcOT3Lx
	ys9MdkRRgfniJtAI/383BME8pMO5NlHzVSLk4Ul+WrScg2feoM+Or5LuwJV0rOFI=
X-Gm-Gg: ASbGncsiUlrFJ+JkzyIs6thKQkO2zBu4T7HRWlnGigPPz2GI+3+rA5g4MGMJmGOa8eb
	xY2ClMcojE7LZj/oktiLGzQuS3Q3m0Vda0YK/imG7cu76qQ48EAHF7XcwW//49GHM2FSIi5zkDR
	Ec0v8FdjPasFHAF2hXqnHeOwfuod3otCNJidslXwer8YLL/K/pW1f4XvGyL2u1j6N8Cd/xiA1fK
	lAjyQBtdLK05a8A9c0nFjtzD4S8bEK9XMw8oplWvMk/sOAC60Xhy3i6ClFhSK7sp/XNM99nme0g
	ULfG3B7E+LV7iMwJt9H0GcXPaUk2ZTo8fx0dZzkRa2kmDv0/FMAP
X-Received: by 2002:a17:907:961b:b0:b0e:d477:4972 with SMTP id a640c23a62f3a-b50aa7a086amr745874966b.25.1759998071523;
        Thu, 09 Oct 2025 01:21:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2yb0GW1Dmb4of5uiYM3V2RwnL7r4BajO4YJiE5GftpOYhzsHAtgMNkDAR7AnfSfgfWS6gIw==
X-Received: by 2002:a17:907:961b:b0:b0e:d477:4972 with SMTP id a640c23a62f3a-b50aa7a086amr745872566b.25.1759998071078;
        Thu, 09 Oct 2025 01:21:11 -0700 (PDT)
Received: from holism.redhat.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869b4e27dsm1832988266b.70.2025.10.09.01.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 01:21:10 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Lucas Zampieri <lzampier@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>
Subject: [PATCH 0/3] Add UltraRISC DP1000 PLIC support
Date: Thu,  9 Oct 2025 09:20:10 +0100
Message-ID: <20251009082013.1331361-1-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for the PLIC implementation in the UltraRISC
DP1000 SoC. The DP1000 PLIC claim register has a hardware bug where
reading it while multiple interrupts are pending can return the wrong
interrupt ID. The workaround temporarily disables all interrupts except
the first pending one before reading the claim register, then restores
the previous state. This is implemented as PLIC_QUIRK_CLAIM_REGISTER,
activated only for "ultrarisc,dp1000-plic" compatible strings.

Charles Mirabile (2):
  dt-bindings: interrupt-controller: add UltraRISC DP1000 PLIC
  irqchip/plic: add support for UltraRISC DP1000 PLIC

Lucas Zampieri (1):
  dt-bindings: vendor-prefixes: add UltraRISC

 .../devicetree/bindings/vendor-prefixes.yaml      |  2 +
 .../interrupt-controller/sifive,plic-1.0.0.yaml    |  2 +
 drivers/irqchip/irq-sifive-plic.c                  | 83 ++++++++++++++++++-
 3 files changed, 86 insertions(+), 1 deletion(-)

--
2.51.0


