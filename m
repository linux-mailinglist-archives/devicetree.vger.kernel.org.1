Return-Path: <devicetree+bounces-233981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 23440C27809
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 06:02:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CD5304E90C0
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 05:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31D18223DCF;
	Sat,  1 Nov 2025 05:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aGmNCzlz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC46221ADCB
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 05:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761973257; cv=none; b=jrVFphgsho5ADZeDUAlZlBfeTddvdJKWzNI8yrog9JxjizzagbsEo/1qFQUZ+FLH5mrgpf2olyUuXUsZXZoyBvyatJFTrA4ffG6B0XUfntRQtAF84OcOf7a1yNp2RytNAvw+Y/7uQ1PsnQ+w5lIuXbi3kpviB8mGBi2rbPPexys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761973257; c=relaxed/simple;
	bh=16CUY4BHukYrONigdNf6hHwKpWDcA0Nh385BQ5R55XA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=betIHz/ggBqS63N8to3//x3CLnpfDmYjqZbDUGTmKUcxKjKl6zFtnOTtJWwPq0APWaZnXrlVRUJ5kYpb0Dct47a1SzIVDpmYU6uDWA7JAKuYdS+FZ1nE2kUChTdB1PRuRIzTaU4pc96H01ff/aiV3U1jKdfiwaZmM2YdH8WK3Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aGmNCzlz; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7a27ab05a2dso2760744b3a.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 22:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761973255; x=1762578055; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oiw7k5BoI+E1avLBAbhUpCYSAa1PLmht1gV7sVpOsMA=;
        b=aGmNCzlzq7yYoC2K6jmqxllEEan/sdZdJHhvtVZj1vHUpGCPUv8s29CfFDD2Gs15ny
         5jVCw+cg9BgI0HMElFeZuhWkVQfGNxJXz0C3wUKyKcrIharSt5dMBdAFAsqAu6/R8515
         VKn5x6KjmnmMC8+n88SpTnPapc1se7M60tnFUxYmSZEx4wAwLuBnUP1m9xZDdiEqdeRf
         TO2GC5YI4X1+Kl+xTwODewTtU4NbYkv3q/SiQTWm4PRsg6QsGg3Lt6sxNE1RpG8dzybe
         Qmtuox+KBCJvy+fPO+y8SkGACl7ObB5ZYz6zhwEcKE3uW62k1IOPYdI+Om33ayLmgBJH
         wJLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761973255; x=1762578055;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oiw7k5BoI+E1avLBAbhUpCYSAa1PLmht1gV7sVpOsMA=;
        b=DehVpoHPw6JGEznAjH7carajzSRi9ETcVvl8YJgFpq05Ob31OCC0BGnrlgfnVdOgd/
         08azU+tI6BtyemiIsYIX1VKjKPW1XMHAUBgFnCdEioyleWWZnsSTqNVR80afGMfN0hoM
         O3ytYISaoujeVvxiKoaIFDmzATvdczqJK939O6zZy60c5m+aEdJAxrF88CLsOLhWY2ze
         EYq6QJyaKbv/JD5rKy8y57Q/deZw9ddjSbVZHt7rHwlxO0gE6QrtAHPVrSH6FkETNOi7
         QQN1Y11H793yeaLA+zsZ64qPVHwhVbcpeozJ3oL14qTcdrznFy3oTFCzs6yyCRy72AH/
         oA9A==
X-Forwarded-Encrypted: i=1; AJvYcCVysu/gIdMRdWffbSdX/ZjfiCamWCQp79Bc97WnTcMgBs1STYa3ds/JCkXBu+rFpmC4z+1KgGq+cCTg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1myvM2U7pLs7JcREaPAOV8DvI5nWzeJPGx5T7Bma8pIrVKRIH
	JWBtOZ5XLhCEA4ysOy8FSU9MiwTTXmnL/UBrFIUh8YfRKpkFFnHFd7Zf
X-Gm-Gg: ASbGncszV5bcIv6IiaoyBcr1BgVHwyq/LMDLoelMKlpw7lcNc71BZB+fmqiQoiOkxHv
	VPUvJRHw+wMMXobDyJa5ZaYueR/faLTLUwysTHqISZPQXzhUhQMTq1Kg66V26jHaIYuzeZ+Dkmh
	eT9tx8q28GJnYq5nFQ6+AeAH2++/ozi/P/SxtGzwOqM5f0EFk5+n/Uij8Asvxf4vpxs+5bs3AVu
	GNRH43zgyee8Wr2bXkNMvfiZY4XqLh2ruwI1ljZzJa0x7UmGLqne1le6loZwnvVw7zrqABQ2YTX
	NQIBBhSeoOkjSgEtQN43W4tbyWSyg1lOosMGTeaVA3K/OvfX5Ywu3GImP5VGFGeb74OZpRDkxNv
	NiR/H8dpSllifxDnT7H4I92/WwLdEQMHv2K0F/vl/FpS30A2p5/A4DkQ/DVVcpn+ZMOIn4NmDAh
	ef6ObM5J45ANdxg8TLS3wJzevh9X8tklA=
X-Google-Smtp-Source: AGHT+IFd2bk88eDysEPUx421uqVUQRIoZmTj+xtwyXu5exUwOlKOq6uKKxTjYZHf2N0IRzsbcLrjcg==
X-Received: by 2002:a05:6a20:549d:b0:2f3:b278:eaa5 with SMTP id adf61e73a8af0-348cd213c93mr8457177637.60.1761973255036;
        Fri, 31 Oct 2025 22:00:55 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:600d:690:cbc4:d4d9:22c2])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93b8aa3ff1sm3761095a12.14.2025.10.31.22.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 22:00:54 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org
Cc: linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 2/4] dt-bindings: clock: renesas,r9a09g056-cpg: Add USB3.0 core clocks
Date: Sat,  1 Nov 2025 05:00:32 +0000
Message-ID: <20251101050034.738807-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251101050034.738807-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251101050034.738807-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add definitions for USB3.0 core clocks in the R9A09G056 CPG DT bindings
header file.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 include/dt-bindings/clock/renesas,r9a09g056-cpg.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/renesas,r9a09g056-cpg.h b/include/dt-bindings/clock/renesas,r9a09g056-cpg.h
index a9af5af9e3a1..234dcf4f0f91 100644
--- a/include/dt-bindings/clock/renesas,r9a09g056-cpg.h
+++ b/include/dt-bindings/clock/renesas,r9a09g056-cpg.h
@@ -21,5 +21,7 @@
 #define R9A09G056_GBETH_0_CLK_PTP_REF_I		10
 #define R9A09G056_GBETH_1_CLK_PTP_REF_I		11
 #define R9A09G056_SPI_CLK_SPI			12
+#define R9A09G056_USB3_0_REF_ALT_CLK_P		13
+#define R9A09G056_USB3_0_CLKCORE		14
 
 #endif /* __DT_BINDINGS_CLOCK_RENESAS_R9A09G056_CPG_H__ */
-- 
2.43.0


