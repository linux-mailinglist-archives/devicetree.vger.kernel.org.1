Return-Path: <devicetree+bounces-185173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C092CAD6BC4
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 11:10:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7167A172804
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8F52230D0E;
	Thu, 12 Jun 2025 09:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="UxMBGiFI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A03B22FAC3
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 09:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749719319; cv=none; b=KGXJDx5bKQW1dAjjbtoycMOxx0DC//BhTcYqCRRDbA6DhlJ9LRSl2uUdB3qHDCuvwxYklzrmCUdAGOTs1mVZA+WDzdnJ+thQBrwxJqi3+B5C30aBVkuOG4zqjmeDTkNDnA2Pg5qzLy4pa6YFNShcCMP+HIT4y3nA3YBSyN/VVUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749719319; c=relaxed/simple;
	bh=YxFgDvHxfy4wrScb+l1g58rALcetSmeE8HAFFojcXp8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=noibw08Gh+NX8v8FgjTFc3G4inlTlZJ5TL+HY97kHRLT5emeqqlIWOFxv9uObTwj7HapkjVFFu/N67C+31Yl60wmrpjR0MgUyXnEw5tVuODOpaYSfuz0uWtELcFFuC/QAe15LQ6ai7RNcsNTQu/3dNJYD0rYsEujOnAOYIyuFGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=UxMBGiFI; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ad89333d603so145562266b.2
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 02:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749719316; x=1750324116; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OE60H8an/td5GcTGMnbuvQU05tobHbDXITR9FPp9RlE=;
        b=UxMBGiFIM6O8F1G0NbhpWzlGfRLqfAfm2cKeoWB9i5/+LtZWO1VNZ+tB1sBUM8E5pE
         E6yXu7iJuhccFEpMF2XxFfDKSu1TufW9Ss0i+zojxrWyye7q82tJL4wz8sEfTwnwIgy2
         388gzMeZmbzZA0AGsVG7jsfs+dPeI1o13GcO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749719316; x=1750324116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OE60H8an/td5GcTGMnbuvQU05tobHbDXITR9FPp9RlE=;
        b=M2zxxiwUhuPt/3NzqXe38j1yt14XjCleGmTYhSt63NQIoOEOurKmQk9zMYNvPALYWo
         532x2RdnByOGhSMIxwKFxY4sbyaxHGjDwplzGhqOyPs98biLRBtdv72M4/iO2CMvA8aO
         sXFgA/49PpQjhfAhFussEElmDW+OUhQKdtJT+3Gp3lkw3WiLJocn+wV6sQDoQ8SO6r9n
         atlA+MAxAO98S/DniWH+okJl2t19W/xSUnjKViIUes73J/r7i4h9ja5fHW/6p9IFPQ9x
         s79M16k+i8DIZDyJN5fwYe6iD9XzqZx6VotphSCHSHQlKKPAGRE3HIYX2HCSg6J/gRVJ
         iKfg==
X-Forwarded-Encrypted: i=1; AJvYcCU+6nAjcgX0WWWwrGlIyjfqs1Sq0Xb2fmR+tUSmV2uzFIZ6nCoQR2m+KYGzrklQUycpJAUKuVvnMLCQ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywja61hoCs7LiGcOJnfyqXc1lkMU4s4XMooC9VZtwLsAdrQhx+J
	Vbp15ipOPqRd0ryG1Fn+B8EhPbmXSd8wvVwO+oMa7AT0Zv5kt3Sh21no2EEc7DnB54U=
X-Gm-Gg: ASbGncucm9DOTou3ne++7A7FPGOWUI1J/yYTCkrAH7/+U3ObqCGpNDELnSDJecqaKJ/
	CyLe7CWyj3nlUbvggNhumXOu/xJdrSf3slb0qfsTg0r2SbWI7T5TlTbS+sfIZBRevzSuxInT1nP
	MvQQ4O96sgZLZTPJk92kUM8xzb39NofkDIs/8iFe7FjMuLUFvdnNofQ9yOLDWmLD9YVM0eHEODi
	hx/9uQaBVNEfXT8TMphbBxZFoalByH2GHT5aSoozNt0JiFJL8tDxPgaQM7g5tjZIoLGcQdFyVda
	bFc2DjYwp8UwmZgSyygap0o1WPzGNTNhYM/YmxjW+NNq8PegJfmC2EQO6Zkr+GsJFM6nSUuPD1j
	fE5JTXEjvPMiZUSvA4fiUJmeZHw2BPnftF7sn
X-Google-Smtp-Source: AGHT+IFcDn8H6yXePDjRLYWwZpyHkFaAuz+TfNP7U5ZpLT7TwfQNs0Ve8Q5TEbBgBhShu+X5lj3DUQ==
X-Received: by 2002:a17:907:1b1b:b0:ad2:4da6:f58c with SMTP id a640c23a62f3a-ade897ab542mr699899466b.46.1749719316389;
        Thu, 12 Jun 2025 02:08:36 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.38])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adead4cf274sm99933366b.31.2025.06.12.02.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 02:08:36 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
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
	Primoz Fiser <primoz.fiser@norik.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v4 06/10] dt-bindings: arm: fsl: support Engicam MicroGEA RMM board
Date: Thu, 12 Jun 2025 11:07:51 +0200
Message-ID: <20250612090823.2519183-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250612090823.2519183-1-dario.binacchi@amarulasolutions.com>
References: <20250612090823.2519183-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree bindings for Engicam MicroGEA RMM board based on the
Engicam MicroGEA SoM (System-on-Module).

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

(no changes since v3)

Changes in v3:
- Add Acked-by tag of Conor Dooley.

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 5feb62611e53..58492b1cd468 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -773,6 +773,7 @@ properties:
         items:
           - enum:
               - engicam,microgea-imx6ull-bmm       # i.MX6ULL Engicam MicroGEA BMM Board
+              - engicam,microgea-imx6ull-rmm       # i.MX6ULL Engicam MicroGEA RMM Board
           - const: engicam,microgea-imx6ull        # i.MX6ULL Engicam MicroGEA SoM
           - const: fsl,imx6ull
 
-- 
2.43.0


