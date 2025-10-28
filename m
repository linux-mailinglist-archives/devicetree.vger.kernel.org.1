Return-Path: <devicetree+bounces-232274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3D6C15F8E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:54:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A1EA94F69CE
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8646B34AAF8;
	Tue, 28 Oct 2025 16:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hA3f8ekH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC42A34AAF2
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 16:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761670333; cv=none; b=kq6GnAQZyMk+Fp692JZTq4f+OIgvulTJjV3eul9f1Bzvw+Gv5Y2vYp+2P1DMuAioCuQ4uwhM3T2wZXBCpNFhWnOC2FZcystu2oefnEB048tWu/EA+702taY+SZRPhDz8LUKHmmWOuaeAmLn2ADHBOOaHLTM44RT85caqMhGTwag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761670333; c=relaxed/simple;
	bh=gzhh/UeAH1T9kvsMnrnAYMspbqlc2xJ5quWu/5dmr9A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QjvXkdHHFNBwTsedd1tZjgab+CG4jBoleyty0Uyl647dbniS0hR+fQ3w5ypeN+8iFauwTQihamqVB0lqQAy53qA/Tr9ADKPnpvgd23XiV2iBu51B0ztQYKp/qqrFEBzOtCICFPxDarfckPSemntrFoG74Zo/Qq7BsgcMtqBHBzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hA3f8ekH; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b6ce6d1d3dcso4288403a12.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761670331; x=1762275131; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ojXgjHdopbMba8HLrtZWP804VXrMf9315iM7O/XSMpM=;
        b=hA3f8ekHYdCKEGNxdx4zGuze9R/vqrgSmjopBVbM4lAb42Co4L22zOifVlU9K0TbXC
         NNDiy5p6pFDEdTuHlT5Zm/CgW54YA3/KMIj0SOJtZlDe99UxSaDojov2g+1nfp5ejHBV
         c6qLzeK6CmmTFmj+VJwyKitDVhOgiuBQDQ8l5b1izzcEunpZCtvondu/nTFNlumXDceb
         57cbuoTMxxV4wFTjted+QH1SBuLy63lkMitgqSijn1sxg/w/STOwlTtDKOBUqBxr+FLU
         cFam/qKyibFbW2aPaLd8UZf/BuvIPzY7GKwi3gOdzbuaQyPzpLPIi6xBxtFlimLnkLuy
         9o8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761670331; x=1762275131;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ojXgjHdopbMba8HLrtZWP804VXrMf9315iM7O/XSMpM=;
        b=v9DkFWT5hm0pqiy1lpQclldVW8hFloZqpMbxwu79WRmKlTotNVIIUS1ZMxrP1AxTqi
         0cfl8UNj4EH5/ezOdE47Uzq7OFKPQ+6ATerCMkiO0D7qT874IECZ3l8kME+vR++dmlRi
         qmvek27YHslkCjSfWAj+ZN8L2WlsITbX32o7pHlxpHIMb73hy8WfMIeHr2B1yFgcAHkx
         atRBgs0u9dHEuUQX2cRD70fNFMevarDgHt9pywATHmjZadSnSki7qmQupN7MMY96tR4o
         Z5YZTD/hil+X+mIKDKQqK7rqTas60a3Tp1d4tL7ba+vIu0gY5llqXua0hX0PY3bkdVqZ
         bBnA==
X-Forwarded-Encrypted: i=1; AJvYcCUwKWgEZMwy8g1vhKa3JXs39oLtFzIzDtiC57T5u8JIUyQsXAVZjfMqFDRAmoxHCyh7jinghnYq88CZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6jao4aXnGdFbPqRwZuzJyup+Wj6ojgMhP7MK8jBnAJ/AvJaQT
	rgYjCPriXVWCY9B7vV/GVkTnqdDxh8THI8RUYnmj2oZhaUhOARtHvOP2
X-Gm-Gg: ASbGnctN7+08hQx7PxQQDTp9LuWoI52m0rmbgA88UD/VNN4GcgPilYH0foqonOb8Psm
	QlIlE+s00UDWbMiSWUCgey+86MMDNhlKsez4elePb57WHOy6+gK+W+SHzlpMGCsDM63Ghm3NlJW
	c8rtt633wkZQnARES3ZAcrQ9Z7PMATORmkpH/1AqfPnUNIcF/gaqZsTKMKn1tw2RV7xcDPPzfn0
	ltSM1wmHAW6xmmzJ/fB3Yk7H16KOFrix9JBWFBEqLrL1Xvf+rE3/B1J5d73JRLkolB0ofZAauan
	ZluIh7bw0MHKRs7VHXaoKkpOftmkm1Ijps8ARKK7NsSyLuyUZCY9fFiZZAvGrflIIMA9IL6xO2v
	kvDoeYhus6M3bTC0zYBvb6uQiAGhuwlzlUjJWcRq1hTQJDwQboLG3zGZ76EgldzgbVgfJ8HIvuC
	uOyRzg7YyFWyVhaTvxy/hLgA==
X-Google-Smtp-Source: AGHT+IEvbcR/Suumy9Jm69zfLX73WbjC1gaV/SLo7s80s4EswBuoqKMd9xQyKmFR209kVMWXKteMEA==
X-Received: by 2002:a17:902:f682:b0:27e:eb98:9a13 with SMTP id d9443c01a7336-294cb3d7202mr46784325ad.22.1761670330905;
        Tue, 28 Oct 2025 09:52:10 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:77f0:168f:479e:bf92:ce93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498f0be0esm122123665ad.96.2025.10.28.09.52.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 09:52:10 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 4/5] dt-bindings: clock: renesas,r9a09g077/87: Add XSPI0/1 IDs
Date: Tue, 28 Oct 2025 16:51:26 +0000
Message-ID: <20251028165127.991351-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251028165127.991351-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251028165127.991351-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add clock definitions for XSPI0/1 to both R9A09G077 and R9A09G087 SoCs.
These definitions are required for describing XSPI devices in DT

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v1-v2:
- Added Acked-by and Reviewed-by tags
---
 include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h | 2 ++
 include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h b/include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h
index 2a805e06487b..9eaedca6a616 100644
--- a/include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h
+++ b/include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h
@@ -31,5 +31,7 @@
 #define R9A09G077_ETCLKC		19
 #define R9A09G077_ETCLKD		20
 #define R9A09G077_ETCLKE		21
+#define R9A09G077_XSPI_CLK0		22
+#define R9A09G077_XSPI_CLK1		23
 
 #endif /* __DT_BINDINGS_CLOCK_RENESAS_R9A09G077_CPG_H__ */
diff --git a/include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h b/include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h
index 09da0ad33be6..606468ac49a4 100644
--- a/include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h
+++ b/include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h
@@ -31,5 +31,7 @@
 #define R9A09G087_ETCLKC		19
 #define R9A09G087_ETCLKD		20
 #define R9A09G087_ETCLKE		21
+#define R9A09G087_XSPI_CLK0		22
+#define R9A09G087_XSPI_CLK1		23
 
 #endif /* __DT_BINDINGS_CLOCK_RENESAS_R9A09G087_CPG_H__ */
-- 
2.43.0


