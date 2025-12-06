Return-Path: <devicetree+bounces-244954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A4483CAA770
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 14:47:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD6713094E13
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 13:45:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 532782FE044;
	Sat,  6 Dec 2025 13:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FTIveRDT";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="myl3GGRR"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9251C2FDC52
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 13:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765028749; cv=none; b=dJcVs0WaCLsWzYjDIIPNuNYNuID5dd4LtWA/UG8jOx9RsmRrT53zuZ/f92HzfDKfs8SsgLe/+GGbAfAzCNZvXlv1baQ7L0p5s/CO77uUzCS0CuuJe9e4UJuu2EgN4fJNSWSOVNQa0vbYjrB/p6zCX24Dk1Q33SNYfbCJXJXhb1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765028749; c=relaxed/simple;
	bh=nyKdGstoW0qnQQu0e2bc18eMwwgKdIJLvnupPfwhtzE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TVBtr4/Uaqr4Wfzh+k9rdXYjItzWt5/m3Saio5keb1NgY94eygYarUtPDD0Spxz/xyf4vcsrkm75AgXu5bZlTswltUJhXiRPJRH4EPnRh8Gu2HYpBTscwcm0X/8ziE580mgyPgwisgfbAGe5HDyPc7DFnroGzY4J1+sJmgGbWwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=FTIveRDT; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=myl3GGRR; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765028746;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7PpSxu0uoTQw/bfHDFduC0nyICCWSnMwL2fSnPGX/mU=;
	b=FTIveRDT3bFh+JvfHmpm9Q9ALjuRpR2sICEho0QTXgxHCeBOTlOHHj//7oDe1vtMznVtRD
	4SnzKOB5aGsVUHH5KVc0PGsrgPh1Q9nrH+lW4iMFte8ZuFs/+hfy+1yG1336pCxutxrsP9
	EuM2Tf3vsxNZqPlBTummI1+SYfh+q2s=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-681-bum0w11oOryeFQ9LzaniYA-1; Sat, 06 Dec 2025 08:45:45 -0500
X-MC-Unique: bum0w11oOryeFQ9LzaniYA-1
X-Mimecast-MFC-AGG-ID: bum0w11oOryeFQ9LzaniYA_1765028744
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-42e2b9192a5so1524283f8f.0
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 05:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1765028744; x=1765633544; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7PpSxu0uoTQw/bfHDFduC0nyICCWSnMwL2fSnPGX/mU=;
        b=myl3GGRRi9TZB5QWA6rxzqOP/Mqzy03UMb0mJYukHn9LphDg9KzlTNxoKWH6vjnsG5
         i1SnXkHR+lAUhc4jscBWQ0FHRNPkbvphhroZLcNoxaH+vokwkdvirco16bJCd0Hv4+UQ
         KJLYgbnpBRQ+iMHDcW7/hxAxskupjuuuRpTawdA5IrbKjWhl8lT3oRcVT1+PfLyTWS+X
         nlnPrd03V3wOrBP1MpOHfUN5UhPT5Qo1waHisF25ef999MZERLhRrpIvO7kAuR+wC1Yl
         3dAXO7vik64193MhP5+llsH9XEFcRxQJvzy5W3dOxiomnbUlWIj7q8LpPZcbUr3GWA7H
         ptmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765028744; x=1765633544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7PpSxu0uoTQw/bfHDFduC0nyICCWSnMwL2fSnPGX/mU=;
        b=LbFvyJUgURJtB1NDo2rZ4f+LBg2cojRKlpHXxh+a8Z0ovPwb3d9tehrTAmC1DrYuk+
         QNcP54MaPZ6p5fXDCGhZTgsWvXHPwB8VrXLIcx6+QiwItHN+ORUxkBKlLA81tykFx4W+
         nhCbHsQPN8nuvdPNWfC4aBOme6vCZwrSkeeW+2ND2YbTqF6HSi0CfM5aNcFdROpRZZAA
         qBcDRjlwt3PhNmZflniyrPWKP65sINFt6bXRDyQ8ZWBYhsSZzDlhTl4fpfBsJHICc2Vv
         r9Bcvr4S0Pt/+LaEJ0TBXqMJUCPUdP9pbekrk+lvAPJ9BLDCexsJYIRqpTZQhAPI+cFQ
         5ABQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaDbS2sFKjy+p6GxVQPUC0Q0SBsrbgid2XRazIisxPTcEpCEoTzw9syRXe5hRStmZu67ycJ56pT0q2@vger.kernel.org
X-Gm-Message-State: AOJu0YxJH/uOw39D707xBFe++MgiYjveUug4SdWfCB69cazejHtWcKOi
	IICmsH4sG5nGyvMbd7ENIDvolGzLhBgzEgUfQAlzTHPQwLZOq5bxLqzAt8XUbX0x+WaEUVJjHiB
	4FshegMf9uSil9Qy7d/NMxhxyGZZzfbV2wdP1Rfj4cft2u0ndAqe2xHyJfkQaRsw=
X-Gm-Gg: ASbGncu0T4lC4kPBaGsK8t2lnW7Z076NpETHXFam5XK9XZu36RjGghmaPh8g4/1aIhR
	8lHM8tygCc728BXpPPEj7IV837CywLUtFcF/SRwJWJg7gx0x5vlKAlZfis0ebjEjCY4WpYGWDJd
	0HRujDaSaA9SPL9MtE4HXnCjS5OGXerGT49vigd7imxbRj0sfC29zb1bqvzLeZQh+KyUYjX7uhU
	ENAOr4k0zONUiPr3Y2xQMvvEnlzfmtcNP4cQnAeF4dit1fyMGLAmyQiUgqIdIUrnW085ZY2qbTV
	eUawM2Fb1xJTCjAoOKLiy3g2QXLEPmmdM/6AOQG3X7lr7owHfovCbMTAHSaPxF+rHqGkH7ENtC8
	QeP6/OLAke2g48EDTj4CgT1f0vM8SvtpPnJU=
X-Received: by 2002:a05:6000:208a:b0:42b:3afa:5e1d with SMTP id ffacd0b85a97d-42f89f0e1f6mr2491528f8f.20.1765028743885;
        Sat, 06 Dec 2025 05:45:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjfQ9aaQ81hkEvl/6jCgpaRsHR00kuYXGCail9JraZcQS5ddTMpKEXXaLIqt5hbjfEo6K8hQ==
X-Received: by 2002:a05:6000:208a:b0:42b:3afa:5e1d with SMTP id ffacd0b85a97d-42f89f0e1f6mr2491511f8f.20.1765028743424;
        Sat, 06 Dec 2025 05:45:43 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7cbfee5bsm14698899f8f.16.2025.12.06.05.45.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 05:45:42 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Alex Elder <elder@riscstar.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Yixun Lan <dlan@gentoo.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 2/3] riscv: dts: spacemit: Define fixed regulators for Milk-V Jupiter
Date: Sat,  6 Dec 2025 14:44:54 +0100
Message-ID: <20251206134532.1741648-3-javierm@redhat.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251206134532.1741648-1-javierm@redhat.com>
References: <20251206134532.1741648-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define the DC power input and the 4v power as fixed regulator supplies.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 .../boot/dts/spacemit/k1-milkv-jupiter.dts    | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
index aa425f02c1f4..5babed4d7094 100644
--- a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
@@ -20,6 +20,25 @@ aliases {
 	chosen {
 		stdout-path = "serial0";
 	};
+
+	reg_dc_in: dc-in-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_in_12v";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_vcc_4v: vcc-4v {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_4v";
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&reg_dc_in>;
+	};
 };
 
 &eth0 {
-- 
2.52.0


