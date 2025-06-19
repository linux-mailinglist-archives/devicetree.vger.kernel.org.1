Return-Path: <devicetree+bounces-187682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BB7AE0EAA
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 22:35:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D66D7AEDF6
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 20:33:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E56724679F;
	Thu, 19 Jun 2025 20:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="LOO7vVlK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C44723814D
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 20:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750365312; cv=none; b=IODolpjLxCXEopHRcQ3lilappIyMEpTHQP6jhJ070oTiMiaj2rOvp1NbxBvVlBpt3aIIOF0aYkN6DGv8koHvXE87WRtUgGTEddXkrSIQQrYlueff+Ux6hOUgUE7GnAh7txbfHNI/gIVTWbM6tHqfFeCbgcwNHW3XrnhockUrOMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750365312; c=relaxed/simple;
	bh=h3UPqbe4sHsIOrKmfTrEkvLZUI22mR3WiPaH1WtZ+Lc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dAV6PyXFbM5FEsJEeYh5WUqiQFZ8d7yHvm7MH9nOJ/r3h3UqOO3i59S68z6qHqrnv9XOAMDxeBuRePm2C/Z86YniSz9/lt9757zO+GnjEm1T1njxpsEdhRxRVg/G/kx2vfUDfvl5+Od5IJ4ILcP1qSPw2gtSccHceLrn1oQkOwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=LOO7vVlK; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a6cd1a6fecso837758f8f.3
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750365308; x=1750970108; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UqIJMZJtR2MozSAlBaEIUnoVSAIXjXDAyYywqzDZ/go=;
        b=LOO7vVlK13PddqBStlK86Da86l+wfv9emJaLypWnAiL7AolWaJZHiBYRNZ/vHUJXPx
         PUdjummFJ/DUQq8Y/WUtFcgMWlZLS8ebMa1/bV/uSm7u6J7r9OFjpNSZcycshKXD/W5+
         6ho2tRtneeU28+do8Q94C+fT4G4fYKGYcwGodUBnbLI/g2h/VRA0Hm5mdvSY3xy9Pe8H
         Q/8fLe1bGnb0aeHDQxZWY2VnsIXO7vghYI4GBBOQ5qvATaQaR6z2+OYpSw43csKUloGI
         /E+pUwaYt/TFn3PrhU9GYxw35k1p5S5a1qfBwIbaupVi/oeXmWETnswB3RIIrdEGPx7n
         ghRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750365308; x=1750970108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UqIJMZJtR2MozSAlBaEIUnoVSAIXjXDAyYywqzDZ/go=;
        b=Awfyb44tZk4HqL7CiXeExKyG6lN7FrNAh1fPdJcdSdDYFh0p8cbNtBhTJeHPgFq29y
         1z7Mc6c775bfgUfzw3rqUD/GBYj+SyMH2gdHePQVuyYxPQuyA7oJPzqFXoEAptV0je9m
         auBSAsrypM5yDXcJh5spCXu3BfRJxmEq25w/hEqq2z/6wrItpUX8LGLNpiycJN+8LvSA
         zjQwx4bsMHxxRdFZrT3t8Fvpsj3PzaStFsGjCz4Kce42/3YP0Gid6suJHECKO5aoDzZz
         it+JcTUE27394bwK5pAHFDW+LKzEjgC6Rgk4gzVhfPkwr4M7+Oq5ba+htsx0SyVeI5hS
         9axA==
X-Forwarded-Encrypted: i=1; AJvYcCV/qH1tURgbf5dwGTcLJKl7+lGWUpxWWJxcs1VGSb9+Dp2U5qVTWqA6CPMwzvzlKLcjq/XZSPx3GBWn@vger.kernel.org
X-Gm-Message-State: AOJu0YxnQ/VR16xiiZOmRJf2sflTYLYTHm9ZKLsXC78FRDlrXUnlZd6E
	hYRmrJpMpgy2vVbN5E4R4uIUOaFXNKtFPty04sGGQHxGZBlOoQJirGelNcdUj+W9CYU=
X-Gm-Gg: ASbGncuxxu7XN0E5+mNSieh1x9w0WIK+TFC6Yyvqk3U3M1GcTpJxWz1ttcpQMXO0jQl
	CQ7CdLApH+Us15NXIQMgVWbGvuajx/MRBmitCLNrorfsTNZ5BKeGLOFVON/p6usNzJHu3tfkv6P
	slSOkbkT8TVYUdQc7D3Z2TlAlNdsXgmOKN/g8srAIgN8kvC0OClZZhUFKj4IoKxyFCVOPMDgL0t
	qyG/TeKY3J9Hro4IrJBnRfBJxy/6z7wpLe80Sncv0SQ/UXMrd4+HgY9D8dQRA6sdVAsESfpYrUO
	lWJJjmaYTXBlWI/Nop6E2N95wgUKc48GLkrsMZ8yvcBRbVaaDHrAMb6VBqti
X-Google-Smtp-Source: AGHT+IHaa/0DwyjqICRhYqGySJHbrarH+g1ieC9QlV5bX5bc3ypPAuIZ0V2lnIE42rr80V+RNBEoOg==
X-Received: by 2002:a5d:5f4b:0:b0:3a1:fe77:9e1d with SMTP id ffacd0b85a97d-3a6d12c1848mr307365f8f.16.1750365307710;
        Thu, 19 Jun 2025 13:35:07 -0700 (PDT)
Received: from fraxinus.easyland ([2a02:16a:7402:0:a60c:e454:f09e:79d5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6d0f1d91bsm288495f8f.42.2025.06.19.13.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 13:35:07 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v3 2/4] MIPS: dts: ralink: mt7628a: Fix sysc's compatible property for MT7688
Date: Thu, 19 Jun 2025 22:35:00 +0200
Message-ID: <20250619203502.1293695-3-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250619203502.1293695-1-ezra@easyb.ch>
References: <20250619203502.1293695-1-ezra@easyb.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

Otherwise, the MT7688-based GARDENA smart Gateway will fail to boot
printing "Kernel panic - not syncing: unable to get CPU clock, err=-2".

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Reviewed-by: Stefan Roese <sr@denx.de>
---
 arch/mips/boot/dts/ralink/mt7628a.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/boot/dts/ralink/mt7628a.dtsi b/arch/mips/boot/dts/ralink/mt7628a.dtsi
index 0212700c4fb4..10221a41f02a 100644
--- a/arch/mips/boot/dts/ralink/mt7628a.dtsi
+++ b/arch/mips/boot/dts/ralink/mt7628a.dtsi
@@ -33,7 +33,7 @@ palmbus@10000000 {
 		#size-cells = <1>;
 
 		sysc: syscon@0 {
-			compatible = "ralink,mt7628-sysc", "syscon";
+			compatible = "ralink,mt7628-sysc", "ralink,mt7688-sysc", "syscon";
 			reg = <0x0 0x60>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
-- 
2.43.0


