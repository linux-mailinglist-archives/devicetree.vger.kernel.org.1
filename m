Return-Path: <devicetree+bounces-146761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F28D4A3614F
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 16:17:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AAE5C1890360
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 15:18:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A00CD264A8C;
	Fri, 14 Feb 2025 15:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="iimcNvQl"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC523151999
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 15:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739546257; cv=none; b=RJVtaLF4OLZFZRVA/Xn9OMWPM2BHaMpWDGz46/6w3etSxootul+vrD+A5K+PLO/EXPL8aFP+n2i21sYwaP6fKY8bv2+Vhy7TpXJwwtnu2b5BVSFaLYHVaxLlqcfXcTztGf7YYIzsEo9BlHjIGa3jLurBAbQ4Hp9s6iC9yGWbavc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739546257; c=relaxed/simple;
	bh=tUTcWT3xY0aNKKrpAIhOmqVWKwDSg0YFK87E6/nR7Qw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nOSkUSyIZ+fotLCv1m1iGCNsJBcKBoJsp9unn+lH15txdkpUw0mx0lcRA4Q8DQpNgxu/IojncLUc7emR3txubY6lQNEn1gmygVtm/O77a4F/Tqze4TXopS9OE8CbrJjEpgenPmjaJM8zRuyGuvejwl1X7dDhF73QmFLvMKZkhxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=iimcNvQl; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739546255;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dfZVegvU6qk4m7FwzKbbRj/0F95Jye2At6/Y/AuatDM=;
	b=iimcNvQlzGQXs+oFBaVy+I0kyTa/sah7vmHGFdlqPgc6u54pDR2cLZopZTcNo10nQ27QDD
	pu9Ms6b4yVu5eF1hKMdaq1uZCm6fHsAJtS7q/OvmjeS7t4sw8P8Qt2VVtdRaajD0eASEUP
	IBQTnFGQf9mYldcHET/fdZzquSf9LaA=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-244-rK--AfhRNveqiHXPB_eWdw-1; Fri, 14 Feb 2025 10:17:33 -0500
X-MC-Unique: rK--AfhRNveqiHXPB_eWdw-1
X-Mimecast-MFC-AGG-ID: rK--AfhRNveqiHXPB_eWdw_1739546253
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-38dfede57feso1536658f8f.2
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 07:17:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739546253; x=1740151053;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dfZVegvU6qk4m7FwzKbbRj/0F95Jye2At6/Y/AuatDM=;
        b=mpy6p5wDVNrM11GB8IcV5BYBGA4BaxveM5jxa2UxcPkBkPziq/n2KvoEWsIF7gkpgW
         XhNBQkGWY4wTi8druMSu+Q3GOrziUOhyAeF0Zp9CI0iEB6N/AX/mzjb4Mz9RCbkgVyGl
         FJOE1/D3A8LXs7ERWe193Gd57wjNv6y2zQVC7sPmW6DrmrrzmskahpROAUOuql9N+Dc0
         1AmSd6a25RV5gkTFX9r893x0KTK7lQjme1PPtCyg6UI6i8vT/6rQGClzw28xGeV9Odww
         XPHKwef9X8VsMa8mddJ8QAUDTg22BW5SuP3ZCz/yEy0Ym2O/oxh2YfimVpsqBVZdjdWP
         WbRg==
X-Forwarded-Encrypted: i=1; AJvYcCVe8rghZoi8qCFY7AkSCj3S71VvqXdEupy7gUsytVI1rM0KRxkcdRdIMjlZEj2HAuyhppa9T6gMBPUI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4tIlHnmlGW9gqbjJKxrh2d2UaiH62y+C5PttNjQvhveHXVSu2
	a6Mm3JyMkA29BOhy8Lf3OxcoCPPPpPCTCVOdiueb5Dyd+tYf3tonuMDuc9xYjefrU5O61zlNjEc
	hesLTAiWwUtDD9hwqgOiy7yUeJfHTOTxov0cf4GCvB6NSfUTTU96Ij7q1PB4=
X-Gm-Gg: ASbGnctfYU3Z55X9GlwFPEWab8e067LRCMzwFGltJQ9KAiCWEoMPzDGObWxtzVyTU+6
	ldpUsxuhpnYwAGIKJWF4PBPCRB+IGDHpSap3aSna5/3Ss7U0HsR5nYfkqTANcV17nUsLGSaWyRi
	d74RnwxuYMWzlQG+BLEXHLVgo7UVIMrS6BkgRudCbsPUM5Z71SdE3bbefpbAMEARbODAdEpmtmr
	ion1x71ikF6xmHlk2NVG/Uy3T3fCr+nDru2ut/Tas9q83SapiYrMJ/FT5/tLFOZMsk2mNyqlnCs
	QYunR2D0nNnqbCnvE3+rSAGM/JBW4A==
X-Received: by 2002:a05:6000:18a7:b0:38d:dfb8:368d with SMTP id ffacd0b85a97d-38dea2f76ddmr11997608f8f.50.1739546252648;
        Fri, 14 Feb 2025 07:17:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEqA4RqLrxgT7ylPsH/Tx2/hd3i/GaBHUNlAKmeVU3IYJ2UXCjv9nvu6wq2BY2mLXriK9b/Xw==
X-Received: by 2002:a05:6000:18a7:b0:38d:dfb8:368d with SMTP id ffacd0b85a97d-38dea2f76ddmr11997573f8f.50.1739546252260;
        Fri, 14 Feb 2025 07:17:32 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259d5655sm4855672f8f.77.2025.02.14.07.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 07:17:31 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: javier@dowhile0.org,
	rjones@redhat.com,
	abologna@redhat.com,
	spacemit@lists.linux.dev,
	Javier Martinez Canillas <javierm@redhat.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Herring <robh@kernel.org>,
	Yangyu Chen <cyy@cyyself.name>,
	Yixun Lan <dlan@gentoo.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH 0/2] riscv: dts: spacemit: Add initial support for Milk-V Jupiter
Date: Fri, 14 Feb 2025 16:16:36 +0100
Message-ID: <20250214151700.666544-1-javierm@redhat.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This patch-set adds a minimal support for the Milk-V Jupiter board.
which is a Mini ITX computer based on the SpacemiT K1/M1 RISC-V SoC.

The DTS is very basic but at least allows to boot into a serial console
and get UART output, similar to what exists for other K1 based boards
such as the BananaPi BPI-F3.

Patch #1 just adds the compatible string for the Milk-V Jupiter to the
SpacemiT bindings and patch #2 adds the minimal DTS for this computer.

Best regards,
Javier


Javier Martinez Canillas (2):
  dt-bindings: riscv: spacemit: Add Milk-V Jupiter board compatible
  riscv: dts: spacemit: Add Milk-V Jupiter board device tree

 .../devicetree/bindings/riscv/spacemit.yaml   |  1 +
 arch/riscv/boot/dts/spacemit/Makefile         |  1 +
 .../boot/dts/spacemit/k1-milkv-jupiter.dts    | 27 +++++++++++++++++++
 3 files changed, 29 insertions(+)
 create mode 100644 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts

-- 
2.48.1


