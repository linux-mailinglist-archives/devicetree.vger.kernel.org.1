Return-Path: <devicetree+bounces-186609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FACADC853
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 12:31:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2348D189904D
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 10:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4B042C08C9;
	Tue, 17 Jun 2025 10:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="HFYNO20N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6AF1F09BF
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 10:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750156267; cv=none; b=sRdxy5DC8x6dabIBoEIEFn5Z/UO2q+8Z0HQ9KsvqdIKl1yXfwswA0dGZygkUQQrZR0v6fo2+jXvTIBS2rMZXXOVn+TVhbCIADMoMRyezubS4K+NglrDr2LAX6A5hCBcsrQKPJ/UB6unATp2ebibXDMG+K0cz9ZC7G3fojsY9HdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750156267; c=relaxed/simple;
	bh=h3UPqbe4sHsIOrKmfTrEkvLZUI22mR3WiPaH1WtZ+Lc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EwOwOuDiO/eMOD/e+xU7Az9iFDTpDhRxM2Kg7utVN8IdB/bTtd9mcbuu+Dk9DrcpAi1xiqCCFU/GG4PxKn3Wx4tMfpFg/D3l3nehh+pm82/BiEVGAuyzj23/XN0nUZ2HcTXXZihzafuDtn/8PhlMXUhfGfLT4qvt5vulszXIfyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=HFYNO20N; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-453398e90e9so29420005e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 03:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750156263; x=1750761063; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UqIJMZJtR2MozSAlBaEIUnoVSAIXjXDAyYywqzDZ/go=;
        b=HFYNO20Nej9tmolIz56r9+n7s1pJzU21ti5c3eKAj0bESw6A+H+1JWTj1/bWbAWwec
         Zi3DcfPHM7dnLs/plIdSh8ShVhWAPKU1k/zFB8bD4h5OMj/UqtL+ZyOyzVUYHYo+FKeg
         IFyjxXlCX9pMthLkm9Gj6rpZ0wYIQ7QGPJ5z1akFvSmSztHix9xBPrw3PjJ6OLVwousT
         85w/eTfj2IQYKFohlLfJxRIKn1vANULBc5hvU2dYwSNI74fLz/K3k9xLhqXwc0YpQKhb
         awYgcLjChtwLhBS5BOocdo3Zg6hs9cvIEnEnFtlYi0/ourOaQ2TjAjgfFfSxy04svwKh
         +A/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750156263; x=1750761063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UqIJMZJtR2MozSAlBaEIUnoVSAIXjXDAyYywqzDZ/go=;
        b=PbRONPUxVdLaiNH12ZdmHZ8fojw5kiW8P/tmYjOs9NS7LjKHdXmqaezDeqfvbtXqe0
         NSKy2Lzi/kodhViSlB8shZDMfrACoDgBGXUcjlr3IzcehIb7CVtpJhFBg9ZNNtgssliK
         EAWh69zJ7mBPon6lrlfpa6LIxCPkzE68tOOxUsTnzM9HlKABXmyl7Y8E0Qjb0EcFSQRm
         kUG0jCnyF/qdO9QwRc7KpZGN1f6hyxMZ8GNmXr2NAw+6nyoPVLKceCNLbh4TydsQTzLi
         63yvxD/SEdwNNC0+Gu5r6sKT1rmi8Mg43zr0ZlmMyws/VEe5winuccGr46m2UiFgp0iQ
         iEsg==
X-Forwarded-Encrypted: i=1; AJvYcCXb87B4KrvoGsRbwaaSWlkw8gIeU6B50oSkOHqy4vHOxGeSX/DmqkWVf9GyQoue/WRjz3FHf2Urklz4@vger.kernel.org
X-Gm-Message-State: AOJu0YwbEmMXrUXAlyKZ7g6O5NiOPIw2w1IcAYmhPNLTR9fw5ESFjgf2
	CWpptgIBZIUiPyFr9vWHU1+hsCy4OjBT2PNEms8YQXL2MJGa99RlkP5anQDUTzkQpDA=
X-Gm-Gg: ASbGncuveStxVo1rk/HOMH/1imvql1hHOZI3lV/8N5WATHA3HfI/ZlfhT+dyVUQpot+
	DX/8L5/m6cg6zb21/AbyDqnPs9077+I9/FLMlCoNG1RjHRdagNBb7t0kSmedWJM4KazkEC1tXUB
	UuDcrydgDgR7fWO1wIFKv4hdOucQFU2zrjkt5Rpv9ZLUrSucP1wbMQTuxftBzNsMxBNwzNzgdHd
	B9QCDIRRCFQRrB22L/Z6Kw1nBkUzIHuxV5qN6/OUA1a3EJMDbAzMI9hXXpmSqkvny/gLjz6DRNy
	wVAmr2+mlihPcMZFET2jbJ+7w/1cpQOngh7An/YQ00TIWyxu0iRjcm2PYFw=
X-Google-Smtp-Source: AGHT+IFckKe3byVNm1QEfEuvovCTkRMrtIRrkEAwuikE34eUnr0Dr4YPk54ws5E2rachMpTIg39dGg==
X-Received: by 2002:a05:600c:1c28:b0:440:6a79:6df0 with SMTP id 5b1f17b1804b1-4533cb4bc8fmr94802615e9.22.1750156263263;
        Tue, 17 Jun 2025 03:31:03 -0700 (PDT)
Received: from fraxinus.easyland ([2a02:16a:7402:0:b1a7:bc8:262a:3102])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e16a097sm176749215e9.33.2025.06.17.03.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 03:31:02 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	devicetree@vger.kernel.org,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v2 2/4] MIPS: dts: ralink: mt7628a: Fix sysc's compatible property for MT7688
Date: Tue, 17 Jun 2025 12:30:56 +0200
Message-ID: <20250617103058.1125836-3-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250617103058.1125836-1-ezra@easyb.ch>
References: <20250617103058.1125836-1-ezra@easyb.ch>
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


