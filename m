Return-Path: <devicetree+bounces-183760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 529EBAD1B4D
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 12:16:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DB4416B9F9
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8296625291D;
	Mon,  9 Jun 2025 10:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Zqd0psO1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8AE19D880
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 10:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749464208; cv=none; b=s9FCAJ4eGp7IzoGRhQdRURhOv1ChLP9glJw4pyHXz5DDcmjttQIBQ+QPWbzk+oeuc0xP8wjv4gX8PCfAg806q+veu96Lxd+xGs90Xr+ag9ypH1xyjqvr+U6fcPGrr1smbXN9nlp6fS3AGHpJQkSYwPCerT4vhKrGqLCFGMubZhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749464208; c=relaxed/simple;
	bh=PIXsigzhpaZTAE27MAczpJvgQdw5iQTaoN4gsyWHgXg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=knIvbp9Z/fu1IZdilCAWOppMgKlBFR8aVaStv3OFpTjTxqZbMj/0ISLQ5/sqTLjRfaKj0sb7hSQ/VT817+6N05mABF2c2SA1l+8PepLVoeFJDekCVpeMj6hWByeKIbcdj9INQdwaBm1wEm6eko6yupw4f0XHjiV4qOxEchiFBW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Zqd0psO1; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-adb4e36904bso803102966b.1
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 03:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749464205; x=1750069005; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yicwNTagJmvvj5A4ShfxxiK3V9ru6zwPujeU6NtiIN4=;
        b=Zqd0psO1T6qlOsFHv4V7K9jVF5aZZ8xutWtTcpMx3e/DGV6oWX6U/RwFu/ARPo9RGe
         yAt3Zi5c6W8JUTdtfRI6rHRD+g6QPN3DgT+7yl5UqPQ85q0Kk5DCaVG7K2LwymruRbKj
         8xcYkWkWaLoMhA4f1d45OGg8jeaCGq1aIkZXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749464205; x=1750069005;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yicwNTagJmvvj5A4ShfxxiK3V9ru6zwPujeU6NtiIN4=;
        b=QddIHx57OZugMua8R82/yjDqFyVHWzRK/9bAq2OzMl2/JT312HqSMFs8hkhrw2yRt5
         xFCG0bMOUHaD1zrOxs32PL42pI4h8CdOwyniSUHY+rpFYDplOCL/kr5Hbmao9oIR6Ng3
         kSczdQ5RYfrEfhQIMLE7hAHVcQ5fzZ8AdB8Ht+lz72h8uxO7MSVjUfrnBs9BNed/Qpck
         2+41BaC2DSs31ysGWOjWaT3pqs3cwvf5XYQwx4twNPpTkzTPHm0cSr0quJ7rDMAknAFc
         p3KLLyBflvATBkZc7ySm73b+/RxR3czO3yHvzjaCmVQgUiRpfnTNVFqc2TAmvquq3T9J
         S5/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUdPNBuMAdvHU80lMuemEn/HrnGU3XIgkX3MmSeDK2RNHhirP+8raWeFoRgiNpdk7apHGu+Y0zFlciv@vger.kernel.org
X-Gm-Message-State: AOJu0YzfLq2Ul3vH8Msb45HKFs0jHaR5zJfiXUt8vmNCgDoDzraXaAs0
	8SUBgtUswROI6hL9fNojGACAi5p9/cXB/O1/Ff8FXlpeCNc4ytixRfNpBbSLm1QKCSQ=
X-Gm-Gg: ASbGncttgyv7osg6FdCJBE9MoWbyG1JFqV1V4N2Rl7B8LmiEBLB5fiHOBXXB2AHNJt4
	boQX66MhuCvlpYGuWy30UHpIJlc9aLEtIN+JoudMI28S/amLGHq0rlTuf5ydr5PfFhGssytZgzO
	C4C+tbevRA6xcdOdGAmwtEiIw/p4mMkvY+PEBuRLZ5Pdv71+pibwOi/lTQXOIj4vUL9bIg8WoNw
	ZqvdPuEE4NlWrJ64s9b/YFQVEYHIjJr3KhG8WNE7BeHulTNNySPtBc2E8Zoz4SmxXgxzSPilGG+
	oVcBtu2Im6RiIRTCaBR25G5QyM9COUj/5oL27R7rJU2rdN90iNgFEsydZRSbX915dHM9vhtBZIr
	3pAak4UKvNNcnzeM8XV1Zz0hrVrkIDsiplAVT7e6cu+68zo8J57Q=
X-Google-Smtp-Source: AGHT+IFdGH+Ca3nOF3jsrfTN5mBnN8GlICWVgOgFiG1/Xv4yRCclCqVY5ksTupdhLtEfg0nqQsZ/vQ==
X-Received: by 2002:a17:907:72c5:b0:ad8:9645:798c with SMTP id a640c23a62f3a-ade1a9ed94emr1034602766b.51.1749464205040;
        Mon, 09 Jun 2025 03:16:45 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.40.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1db55c7esm529257066b.49.2025.06.09.03.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jun 2025 03:16:44 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@denx.de>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 01/10] dt-bindings: arm: fsl: support Engicam MicroGEA BMM board
Date: Mon,  9 Jun 2025 12:15:34 +0200
Message-ID: <20250609101637.2322809-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250609101637.2322809-1-dario.binacchi@amarulasolutions.com>
References: <20250609101637.2322809-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree bindings for Engicam MicroGEA BMM board based on the
Engicam MicroGEA SoM (System-on-Module).

The use of an enum for a single element is justified by the future
addition of other boards based on the same SoM.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index d3b5e6923e41..5feb62611e53 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -769,6 +769,13 @@ properties:
           - const: dh,imx6ull-dhcor-som
           - const: fsl,imx6ull
 
+      - description: i.MX6ULL Engicam MicroGEA SoM based boards
+        items:
+          - enum:
+              - engicam,microgea-imx6ull-bmm       # i.MX6ULL Engicam MicroGEA BMM Board
+          - const: engicam,microgea-imx6ull        # i.MX6ULL Engicam MicroGEA SoM
+          - const: fsl,imx6ull
+
       - description: i.MX6ULL PHYTEC phyBOARD-Segin
         items:
           - enum:
-- 
2.43.0


