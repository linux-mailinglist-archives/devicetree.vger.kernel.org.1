Return-Path: <devicetree+bounces-226688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1720FBDA721
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:41:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C448E4074ED
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:41:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 927A1301027;
	Tue, 14 Oct 2025 15:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="DJq2bTfw"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5023009C8
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760456481; cv=none; b=k6CEEgaBHX1lLIGtYZMG008lr6oFWP9td1rf1P9FG3rfJznBroGkLdyg5piSzV/f2cb4pbw71tOd0zyugOJbc7rMTSy9qRaiJbl6bg6wL4AVXfiJSFNi5lYq2vDIM5cOZKmbEugxHK0a+ox+fh2v5jY3rdw0w2oeh6utLvARjDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760456481; c=relaxed/simple;
	bh=DnYT6cZW9fted2smgmfWq/pC9oS6v5QIKBy6JH4IASs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hXttAI/bWYMInTxlSa8Kk0qC+PJfgMRpfREJUDTx96ewDG/PA3iQW7+cdl6N24+SMXX81GHZ2SzPjNKAUs0KjVSJmywBfg+/xDI4hKIE3jo+jUP1HaGLpZch90FdHC/UICyqByUoxZNTEocQsY5A8frnGyL842U/QIZ1xbqV5ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=DJq2bTfw; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760456478;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pTPFzDA4gqnwI93ROrI2z8yAKdVU1tIGagUjigwEBZY=;
	b=DJq2bTfws3sMd/4RsW1pb3utqI8MD/S7OAAglfdrnFBhWyiQ0DsIV2nckfmIh52R/R5kwM
	spwl2OrKLxSqY3H3RxyIlupKIqrykThIyS0nbSGqyEs8dQQx15o0OwzwFficobwozvyIMq
	DsGPMcPzbsnpkTLsjFlk/E+GfJKyqCE=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-127-D8LaWmc0PWiZRkkpEsaSAQ-1; Tue, 14 Oct 2025 11:41:17 -0400
X-MC-Unique: D8LaWmc0PWiZRkkpEsaSAQ-1
X-Mimecast-MFC-AGG-ID: D8LaWmc0PWiZRkkpEsaSAQ_1760456476
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-b3d525fb67eso702322366b.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:41:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760456476; x=1761061276;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pTPFzDA4gqnwI93ROrI2z8yAKdVU1tIGagUjigwEBZY=;
        b=LiDqUu86LJ8kSaK8KkztWMmwoJ4tOKxEf0j9128Uu5j75B3Sr1V5rhbsOQetebBFCR
         M6BoGyTtmvF6OysVNRcIBgSY5ItEPA4QlD+VihPaQ3JFPQJp/L9BMPAINhWy9UzoQlAC
         dknTDzy+VdLGC57ny7NfftkKmitIh4P/gzk1y+nv6WqydXKh+twezyuKqrfvR+s/Zweq
         gq3v2w/3LHW3NDMOWWcGrvgz/Vsa2j+5lS7lnpHkzFM67b8FC4IgfTeFComIOzDbGrmY
         yMNA5kjjRoL1kbUw/eF+GuVTcZeY/K/51uXH+PhB1kdNaD8QepQa6lgynYzD4tZVcfSA
         Bqjw==
X-Forwarded-Encrypted: i=1; AJvYcCWl60C2n412jcR1LcfhXVj7UE3z5MxxfaUnvJuQ8p8ngWUx93M/KJ6MKUW0/BIUsto/+RlkoPQyFpiN@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm2YLkyCr8utgbBppPiTd2OyEVejnzmFVkBogn9Mruf5o+XRlU
	BhWy9pTS+4wZqkylNVLQqFCId18bjS9zSe8gikSMfVWsqm1dbwIPOmJty2pi1PdvPHgcumh+jfZ
	/vZNREG8iDzlsfNPVKIqK1EBfs6WIR+qOKUW0WSwc5TVu5e4W0zQo+sUJCi6NS6A=
X-Gm-Gg: ASbGncv0hduzwix1O2qmtRnCUVicw/EIivGDL0LorBOLeZPkuXGYnVgyNRMgIT0ZcLX
	0xW7EuCm2UUjcNSU6t5nPRj4gsphsNI7CMy3SuUf3IQiSx7r39cjWkwVPeEuxh5hRBEl34mY0kg
	Tm5ob0KYxGHZ2QYrZDKWYRjPjsQcGrba/z6vuJUTP8cmyvxImm/VY2FAHRwYkd4oVBrLNG1+3nC
	sAjvWRSxgl+Cew4VGXuw1ln2AAYSU5dnOBr+7L2Rl0C/YR9AgvKLTAHXIl1I3x9Ka2TfEK/P5M2
	4INovSxCEDd23AlEqC8idWEE2s60yx/NClwuQgNqNn/NFEuZUg==
X-Received: by 2002:a17:907:3d16:b0:b38:25b2:e71c with SMTP id a640c23a62f3a-b50ac1c0d4amr2628103666b.41.1760456475845;
        Tue, 14 Oct 2025 08:41:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfFeX9/H7k1uzVn/l6kjjHIirn4aGl9X4QusGUQ7kYgf87fvv7Z8/GRDPfHH8l7QuEqSTXEQ==
X-Received: by 2002:a17:907:3d16:b0:b38:25b2:e71c with SMTP id a640c23a62f3a-b50ac1c0d4amr2628101366b.41.1760456475461;
        Tue, 14 Oct 2025 08:41:15 -0700 (PDT)
Received: from holism.lzampier.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cba45b3cbsm7897866b.40.2025.10.14.08.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:41:15 -0700 (PDT)
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
	Lucas Zampieri <lzampier@redhat.com>
Subject: [PATCH v3 2/3] dt-bindings: interrupt-controller: add UltraRISC DP1000 PLIC
Date: Tue, 14 Oct 2025 16:40:56 +0100
Message-ID: <20251014154100.168236-3-lzampier@redhat.com>
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

From: Charles Mirabile <cmirabil@redhat.com>

Add compatible strings for the PLIC found in UltraRISC DP1000 SoC.

The PLIC is part of the UR-CP100 core and has a hardware bug requiring
a workaround, so the driver will match on the more generic core-specific
compatible (ultrarisc,cp100-plic) to apply the quirk across all SoCs
using UR-CP100 cores.

Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
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


