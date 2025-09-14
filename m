Return-Path: <devicetree+bounces-217030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FB3B56B92
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 21:26:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 711CA3BF5A6
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 19:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88B7E2E03E3;
	Sun, 14 Sep 2025 19:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l4V9BjNL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C4FA2DECB2
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 19:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757877976; cv=none; b=IY2suWiGX2OcdnoXs8Dg7BTj61cWUJvlnHaVV5/CzypK7gwsRinVRqMalf8y6lByhCxMOPFZGR3PaOaYb0iutQ/hgDetuYHl167K2ZRSJOYNA/t7EM2AW/9vqSMq8ZYxhvoKcRzRXpvkrSs3YKnQ/ZCI27qmoAduF0ziEjsrz/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757877976; c=relaxed/simple;
	bh=Bwvc4rU78HriKtF+dQxnrLeZu3hmtBcOywpMflC+wr0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LppO2D1Z4c/6Oesg2Xpnj/6bfgQQE/ejX4TZLGdOedW14Kgw3CHM4oXMCK5IXwoy7+3k+CM0EK0z6e1ygDf5VYNhX/gg+dZX6DejUOEyGib3zUs0utLIYtvsjZJdihNG4wCxpdOLFXiUU+GG7b0faBV7cPvPSM8cGeuqTJhFRLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l4V9BjNL; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-afcb78ead12so462430466b.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 12:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757877973; x=1758482773; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+tWORggu1OBca7WXmFFjWgrVVhHzQJbGxIik7S26mM0=;
        b=l4V9BjNLhZlpd4omsZNmvmgPSoNxOTVQxMXjz9UqBAyP15KYGyQO9FMvuAcGQteykF
         +AF4f+CdDZXwh/Acgp8/Nrn8uo+fsnlgzaPeJ1uHSqwH+p4WUfefRZSi0g7Gr/2qprjJ
         tUcWfxvywzLNSmd0sU6GHJ6avOmsoV2ItaMd5OZPYYJS3mseXWR0HFnPHSz3c+ol97Gj
         Q2mZnRvge2qrSvtNuqixXrrv3ZxFg/S20HIIprZGCBwjBnVT29rN1byQCBFPjSEMS74L
         I17zTqpY5enWVa83cFhvwVny9zCiiRpNagHonBGep/olBISvgFP8vfA00xFGw6LmHIBb
         AEHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757877973; x=1758482773;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+tWORggu1OBca7WXmFFjWgrVVhHzQJbGxIik7S26mM0=;
        b=PiU7+2bY77F6eUa3sR0ir80ABWhISade5Sfla99r1i4NApvJ7kL1ccrT8TNzDyFzNI
         NY8L2dSZbc0kMDFwa61DjsR/wB3QIgbJouYCiDYeECc6Z/iidPN6JLBVQRDJWy1Dw2lh
         20JaLdL958fJmYdtNuXD/cm8yydYyHpzTVa+ETSqpCOOD/oGo1ukdyJfEzFlL24uJRQA
         1W42wUQqQr3WeKbeONXGY+kcbs3Qq+YHRifJoyUWQBlLTfR752Iw4mfg8kbpNPrVga0T
         vSiFxkIobvKmJW3SkRD8QKZHzLUtZMEUcZhD2lmixNGr0rvLms5PJR5O0bJ3yPshzxdJ
         N+uw==
X-Forwarded-Encrypted: i=1; AJvYcCVFq/gUBXlFUEnPLna7pjCFdcj9PWa/co8KURINDQ5jqIKpv/9Ri7dbn+lRqa+wo2pGWJDer5serh3E@vger.kernel.org
X-Gm-Message-State: AOJu0YxsYBc+cZxVl77otSB+6abMCH+1IfiQh3+sI+79K2r6l4BgBm3e
	vA66dC8xOoY3GmiBMr63lh+elUCIY46T6t81p84Vp0Zz24/XUUO+gdZ4ARYVsvM=
X-Gm-Gg: ASbGncuh2MoIQVCVRkSO8CkXQzBiP/2nv+VEIKIrZP/82BP50frnn1B1GJZwCF1wutH
	mwqaChTxfg7y3r6mZST8iZByWMTxG6LEkOY53FDh3TiSkEhdCxbu0QAS0NXNMYXUdkOjs2rP7Ad
	SmKaavml1jSmdZJfX3BUk1Zci1d3ieePKPLDd7Lb7mEh3HyTIgeOVgSSBGqBQP/AtsgUGVDuEBC
	W4+Go2VOFe9aGCK/M4ywNT5pXhSELKbdhw4uO+1kVEcSs2fVQLNnsyXKuwLmwbbMwli6/r4kkQm
	YBO4n+lMzK1eRq1pMiCUeactQC/SCSlqXPt19NDbpkxDAObL5hmsvrNX/bsYwqgn77Dl0p5jLil
	wf6wIZNZNr9zMEa/qRWh9Ipp53QLF+BLsjgv80E2HuDPvRzLRNKJlSklFYA==
X-Google-Smtp-Source: AGHT+IFol1c2OgKrSsYSL0V4fY6x5qf+hsaS07Lg5SpcRo2Kco6q28gBupc4uxTJENFANQGaH+5BLA==
X-Received: by 2002:a17:907:6d0a:b0:aff:fe6:78f0 with SMTP id a640c23a62f3a-b07c3a65e38mr1054189466b.54.1757877972891;
        Sun, 14 Sep 2025 12:26:12 -0700 (PDT)
Received: from localhost.localdomain ([2a0d:e487:226e:7d72:f695:46fd:3aef:7487])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07baf35488sm707841066b.38.2025.09.14.12.26.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 12:26:12 -0700 (PDT)
From: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
To: andreas@kemnade.info
Cc: lee@kernel.org,
	krzk+dt@kernel.org,
	tony@atomide.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	ukleinek@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-omap@vger.kernel.org,
	jihed.chaibi.dev@gmail.com
Subject: [PATCH v8 3/3] ARM: dts: omap3: n900: Correct obsolete TWL4030 power compatible
Date: Sun, 14 Sep 2025 21:25:16 +0200
Message-Id: <20250914192516.164629-4-jihed.chaibi.dev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250914192516.164629-1-jihed.chaibi.dev@gmail.com>
References: <20250914192516.164629-1-jihed.chaibi.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "ti,twl4030-power-n900" compatible string is obsolete and is not
supported by any in-kernel driver. Currently, the kernel falls back to
the second entry, "ti,twl4030-power-idle-osc-off", to bind a driver to
this node.

Make this fallback explicit by removing the obsolete board-specific
compatible. This preserves the existing functionality while making the
DTS compliant with the new, stricter 'ti,twl.yaml' binding.

Fixes: daebabd578647 ("mfd: twl4030-power: Fix PM idle pin configuration to not conflict with regulators")
Signed-off-by: Jihed Chaibi <jihed.chaibi.dev@gmail.com>

---
Changes in v8:
 - No changes.

Changes in v7:
 - No changes.

Changes in v6:
 - This patch was added in this version
---
 arch/arm/boot/dts/ti/omap/omap3-n900.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ti/omap/omap3-n900.dts b/arch/arm/boot/dts/ti/omap/omap3-n900.dts
index c50ca572d1b..7db73d9bed9 100644
--- a/arch/arm/boot/dts/ti/omap/omap3-n900.dts
+++ b/arch/arm/boot/dts/ti/omap/omap3-n900.dts
@@ -508,7 +508,7 @@ twl_audio: audio {
 	};
 
 	twl_power: power {
-		compatible = "ti,twl4030-power-n900", "ti,twl4030-power-idle-osc-off";
+		compatible = "ti,twl4030-power-idle-osc-off";
 		ti,use_poweroff;
 	};
 };
-- 
2.39.5


