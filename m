Return-Path: <devicetree+bounces-203653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BB4B222C0
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 11:19:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8AF182A3DE9
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 09:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 973732E8E13;
	Tue, 12 Aug 2025 09:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QTjSGt5r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A99F2356DA
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 09:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754990195; cv=none; b=ruim2n+QDGDxguE/o+6xAbUY3z97PcKwFP0uvmxidZdI5kY05fDsz3J0ngH4rm3vxWdXMCZZM63UB4DmcewHFg34j4iBX14dTloMTNtXrmM8vdRfAgn4QtBvcUuxIRw5BcD+YIUFUXG/KMku3Xr6RcZkFjrq7Vv/DyVpMCNr15k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754990195; c=relaxed/simple;
	bh=y8z/VznqSYDTiS702Oe43jqdo48jHiNSRwg/JgsiCBQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L1sd+RDRsHaOGhALB0vauV+iIWQ8Xs/i7200A5p7IeYQhP0SJpuCJtaRIzJxT8KTUgIl9WXNl42lu1qkFUENmvSKN+H6uMBcKB2FtZV9i5Dj1xb8S4f87iuA84U6xndj3Mbm25+JIWnEihRYxIcndL90d1e5BXAYrKkoTGLs1ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QTjSGt5r; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-60bfcada295so8631978a12.1
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 02:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754990191; x=1755594991; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XpyRTrxPweNj7vM7NPNQrMhG4svc0bcCinaeeoiCyfo=;
        b=QTjSGt5rpDO04ehsWa9PpB8NuMA58asOQF06OoQw6oPsqYmPYYjhLuiwYkum/D/BUs
         ElUe9EpwUVpZtAKkG1PTN4GVyd+ds/TGredRbPDWZRm7kfHDXjL2CIegDJvcrLtSZ1Sf
         gek0jZ47//wmblAKfGET2LUYS1NBwb8T+WWmHqgNp3yMmPDiMEwK5YjM+WJRer/tONLB
         LLqmsusTmdq2cDSFRz4sLnOiIr73IWES6JBC93AW2noJNuLbihYpIY9mGRmnYbXmPDGm
         xNKBjE6jHPznJqV0oBeM55yejygU5GN23TkBl8+AYqdpYATu0WYIhWliNuHZBk4r+JrJ
         Zdkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754990191; x=1755594991;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XpyRTrxPweNj7vM7NPNQrMhG4svc0bcCinaeeoiCyfo=;
        b=hZCvH/ZqmmyA7tPpXOTZvWxuBt8gSy4k5JxB7nce4v9qEiDyi4IDolw+mty6Xbvya6
         vTl0qciwt2t8lkPN3F9BM+TyRvIw1iP1rB5aInD3AnA2Islc0ysB4AO6nMQwnIHf3taB
         DqwYMRZE6lPgtXC9Hb5H8NqrhtbIuNyc9pVcNGDKlEalPLj3VL15noFEcMB3VpipDa/Z
         L4e3KBHUVyqEmDBuI5wWm5weL9JuwyLAyYUY7P5M1hijiIBe/cx/aXOrd/oeEhuzqDAB
         Qm0IxxsxW5ZJCPywkSvSISU9BR2BWIfJmXiuV9K7B07FfriMlP5UMlIhEjJf2aYifOuN
         6K3w==
X-Forwarded-Encrypted: i=1; AJvYcCXwn1bx0K+UjcbGhzs8p+29GSeNY6WvjIQYgvf6Ar8VUUPsH6p73Xp57fDgfIXnR7EhD7KLEoM8uLMU@vger.kernel.org
X-Gm-Message-State: AOJu0YxO5YjUq/pyNq2rUKO905k8kPyc6Lo9y/uCj8bo/795+oD6fIas
	iuJqnjqDUhYmQGwS3fVyd/s1ED+amM62dt6f2wpZ7uexnuWCUSFIy2IG3N/Mmpcv1Q0=
X-Gm-Gg: ASbGnctyK0XkiDgjJwHhuFyW6JOk4zttOkZ/5qgMdvwKTYFrp3u7pVB8OfOyJSs/1PC
	LXaejSmEF1nUL7x8IG6DsCE05UV/7P6GB7SlA/3i7c3BhmIQApjgw0VNF2+B3e0hH/TP0L9hI5d
	cmjr2F9dtiouCH7z+rJTKth3GufOYDfMl4d8j83FLAr9YDhdG2wISAxV5d2G/X8nWdJyLpF6+bz
	F9QkzeOXl5H/w+Qeacf5VxJP4qq8P2XhbLhI8lscIsb23po6Vu95x3caoaKXb2AKgi6jRC2tjOq
	HnfZutIZ+FeDstIqorsg3uPgJaE4fSAFEjZ7qh/v+lnK1BlbpGhpRwGB9UPIX1+lh0fgEH2p/Ps
	oay/T7QYWgwR/d14q0g==
X-Google-Smtp-Source: AGHT+IFUdPtxDW0i1essizBgmFTXB8SnaSppFE9xYLgAQXzcYuMdaQchhqUon0sWY56fd1fLtjkqIA==
X-Received: by 2002:a05:6402:5186:b0:615:cb9c:d5a2 with SMTP id 4fb4d7f45d1cf-617e2e56225mr13393239a12.18.1754990191490;
        Tue, 12 Aug 2025 02:16:31 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8691:4b7a:7bbd:bac:c56e])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-6183b154241sm2417273a12.27.2025.08.12.02.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 02:16:30 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Tue, 12 Aug 2025 11:15:20 +0200
Subject: [PATCH v2 1/7] arm64: dts: ti: k3-pinctrl: Add WKUP_EN flag
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250812-topic-am62-dt-partialio-v6-15-v2-1-25352364a0ac@baylibre.com>
References: <20250812-topic-am62-dt-partialio-v6-15-v2-0-25352364a0ac@baylibre.com>
In-Reply-To: <20250812-topic-am62-dt-partialio-v6-15-v2-0-25352364a0ac@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1111; i=msp@baylibre.com;
 h=from:subject:message-id; bh=y8z/VznqSYDTiS702Oe43jqdo48jHiNSRwg/JgsiCBQ=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhozZbLaFaldzZCZe9VdfahElrGB23bfR+UDI+q1MGpdXR
 bPe3Xmoo5SFQYyLQVZMkaUzMTTtv/zOY8mLlm2GmcPKBDKEgYtTACYy7wTDX5HC5w+dz5w1KziX
 Pvnl++OGeZwVrvGeJxw/Wf23P64rv5CRYTYz58mMzAmns57uf+q1Utjt9VnJTb/yVpo7dCgsylG
 YzAoA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

WKUP_EN is a flag to enable pin wakeup. Any activity will wakeup the SoC
in that case.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-pinctrl.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-pinctrl.h b/arch/arm64/boot/dts/ti/k3-pinctrl.h
index c0f09be8d3f94a70812b66c3f91626aac35f4026..d3b0ecdf1a4a4de25ee6121ec9e62d1c7df26eb9 100644
--- a/arch/arm64/boot/dts/ti/k3-pinctrl.h
+++ b/arch/arm64/boot/dts/ti/k3-pinctrl.h
@@ -19,6 +19,7 @@
 #define DS_OUT_VAL_SHIFT	(26)
 #define DS_PULLUD_EN_SHIFT	(27)
 #define DS_PULLTYPE_SEL_SHIFT	(28)
+#define WKUP_EN_SHIFT		(29)
 
 /* Schmitt trigger configuration */
 #define ST_DISABLE		(0 << ST_EN_SHIFT)
@@ -65,6 +66,7 @@
 #define PIN_DS_PULLUD_DISABLE		(1 << DS_PULLUD_EN_SHIFT)
 #define PIN_DS_PULL_DOWN		(0 << DS_PULLTYPE_SEL_SHIFT)
 #define PIN_DS_PULL_UP			(1 << DS_PULLTYPE_SEL_SHIFT)
+#define WKUP_EN				(1 << WKUP_EN_SHIFT)
 
 /* Default mux configuration for gpio-ranges to use with pinctrl */
 #define PIN_GPIO_RANGE_IOPAD	(PIN_INPUT | 7)

-- 
2.50.1


