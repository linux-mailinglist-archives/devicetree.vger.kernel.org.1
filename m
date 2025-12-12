Return-Path: <devicetree+bounces-245993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5C3CB79C9
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 03:06:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39AB9301DBA4
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 02:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96312289376;
	Fri, 12 Dec 2025 02:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FEC5UXfX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0281E28AAEB
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 02:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765505171; cv=none; b=T8n3aykWaqYpm9XOMCoPFEBo/3FA3gqdB/Kaoswp+53vT4NRyQ/dcgKWa8YwJmNDWQwWxjhnMIfT8Gf2mfU3fKgawETUzFZmQgMcoAY0ZXaRqYNMOqmYciNrOy4CmPFomOrMYwpKvuuYz0hXO5zJ/lVRJqzwxnZ6IbOIsbC6hxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765505171; c=relaxed/simple;
	bh=5C+xuJE/8j5c4wzd7i8X2a/0lBR3bC/ArFxnUHcal6o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gd0kkq1ySlhl3+9ZNrcFFQ9dGajbh3rCaU6Y1twxPEDt00gvCwwWNUTg5Skk9gxzDSKfNAU8a4izW/gUW5wGUqz5w539ndqmtU5zfVJeAGE4UdqSClRmJDf1tyWE4XBnKRP6aH0c6tyrIeCsoKKnhzAH7PktBfZNe7F6PzPptqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FEC5UXfX; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-3437c093ef5so768777a91.0
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 18:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765505168; x=1766109968; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EcCzUiXMsxI84pITFnN6DrkZDZAsaj1mZ+yE52KyDfA=;
        b=FEC5UXfXEJNIck0prfwdyJ/U0/6c5T5IjgChrQTp9uYkGdkTiZnJ+5MhBlxl2LSjK8
         M00Z4gUBpyPV5+S/p4DNF8kW1iGmWgQnDhjeUNfCEhIcp1C7T58oZYFOMUV6NVRxZU4F
         Lzi6avNOELWJQWJyM1si6sgO/7I2rgZIzr0CpkxSpXuadwFzKuAIgnGPnFh6E7UAl/MY
         MAqTl5G2koZEbm6c7Cffyn086ko4s4wnV5do1M1O6ZNEkcoUtd1XiNrNTFP56mDyZ3wD
         gZhFXjPaQPImBwgGiGL9GZYhUhizO6fa5fUKBFKdaix+3xQCjfbOeswGNWdrgJFeZ3jm
         WzWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765505168; x=1766109968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EcCzUiXMsxI84pITFnN6DrkZDZAsaj1mZ+yE52KyDfA=;
        b=a9JNQjJQV3VBv9WVd/PPvivjg/TH3bOHubIMyrGhGff75zVAWSTj7jIPNNdI8ycOqe
         luIaH44EngylqBSB04fvwbGw5BPESfX54JTmWBog43V5g8kn5iO/NlujvM6Iyd9vkVKi
         vtKEtlhPY9vL55XLuhteyHgbc4iYkV4MCOc92DzOLklfvbm6UJJDOmmjAa3TPUfm/3Xu
         qtFTmPPVnUrn9boe1x8tnu5yt8Bj18rcSaEczBiCbX55oLTAzBoyN/XtR+GIafFrCaFI
         OhWJs0iEVKLbAySlJXhB73NYIafMgxVZ1oerl7AV1H0XzHV26FKXNLxjAbpPyngx5dRG
         6SqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUUUNdyH2zCvtKgEAosTKW5Od3D4jy/a/sOtlASOmYjXp236xjy55R2d/cgQckKJOBfSr25Vyzt1C0@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw9eJavfuiVYcaCaW+FGXL02CGzu5sQ471OqkLzcD5nOC5XCm0
	51yphJ85FN9v9DTSPCWGGjEj+UFwavtq56DB+oIkGLqTrghOjtMiy3Ee
X-Gm-Gg: AY/fxX7VLQkXMGA2JJl/PDa4hpt9+j5uyTT3n8UgWiQB95rAdRflLyxon/E5cv6HfrX
	EflZvHMtX1w3TTEnSW/Kxs02KqmUV49zD809HbhyDZVmemB7KGcMA2om7pGcrtciJal+cfsu3q+
	kYHUS6s+jUKukPHq0fTIRwPPXY4MMGvLQyUj46DjrBab2rQbkGdAWiJiMN0X0VCPbEgWwar/FzQ
	e4pIfj1FTWIO8WSe1DuCc5I7g2+AFGknFitckaDhlszXopjh0zocOqVQUqE8A3lGGX5/orwuEt4
	PBRta1xwdNa/W1mYhpkkqpht6PLapYejBNOHFWz2Gmyrh+X6pMsjkyQznFiui0BcP19IdUtyPe6
	dSpuuvDfgt+YZVoChpTHwHkQIdnD0yCJGyl7ooVu946yNXTB8VpyybINl72fZmT0buZa7ND6WOi
	sKLkOYRwOk1w==
X-Google-Smtp-Source: AGHT+IG4OglOWBlD1VKepmk+tiFRagNZMAVHPJzfqBDDWkRcGZOlcpelbUg9zYKtD/uPOdqR748juQ==
X-Received: by 2002:a05:7022:e997:b0:11a:3a1c:6c5c with SMTP id a92af1059eb24-11f349a48c3mr530798c88.3.1765505167760;
        Thu, 11 Dec 2025 18:06:07 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e2ffae2sm10501159c88.9.2025.12.11.18.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 18:06:07 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Longbin Li <looong.bin@gmail.com>,
	Yixun Lan <dlan@gentoo.org>,
	Ze Huang <huangze@whut.edu.cn>
Cc: "Anton D . Stavinskii" <stavinsky@gmail.com>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev
Subject: [PATCH 1/3] dt-bindings: dma: snps,dw-axi-dmac: Add CV1800B compatible
Date: Fri, 12 Dec 2025 10:05:01 +0800
Message-ID: <20251212020504.915616-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251212020504.915616-1-inochiama@gmail.com>
References: <20251212020504.915616-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DMA controller on CV1800B needs to use the DMA phandle args
as the channel number instead of hardware handshake number, so
add a new compatible for the DMA controller on CV1800B.

Change the DMA phandle args parsing logic so it can use handshake
number as channel number if necessary

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
index a393a33c8908..0b5c8314e25e 100644
--- a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
+++ b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
@@ -20,6 +20,7 @@ properties:
     enum:
       - snps,axi-dma-1.01a
       - intel,kmb-axi-dma
+      - sophgo,cv1800b-axi-dma
       - starfive,jh7110-axi-dma
       - starfive,jh8100-axi-dma

--
2.52.0


