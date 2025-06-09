Return-Path: <devicetree+bounces-183763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FDAAD1B57
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 12:17:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E60EF7A6529
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:16:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 552222561A3;
	Mon,  9 Jun 2025 10:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="YnKzJWRP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A35172550CA
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 10:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749464216; cv=none; b=dyrM4UOVUbcb+sqRu2jkWf5ZXb+1+9gXPyDEek+jJVSpLjb7ZdX2rJnSL3HTgpVSGp/trOzOf/kw1CRoHgeVHZxbj9Yh9d2ikHyZOimYB6Ry3sK4q+nuwxu6TGdl1uveAbow3cHV9MLp9RrZ40++aDqxEsROrRmLUwjyd+/PFpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749464216; c=relaxed/simple;
	bh=s6LKkZfapvI7MnBTrIqeUsxITzDRXn8euJLSIzRNxCE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mrgJrF0RPxtHnR34doS61Ru9ZMdmtBb/MhzaI8O43ZeWbFKKVG2f08Jh1W2EegHhg1EHf6XUO/PehfyQxTJoU2rglsVLXd9+JJE8Cz08g2SFS5xok7JA0+LqC1U/NmSWUS8MgXdUdh+rvyvK9FAufvwA7NRfcBPplVX6tYX23Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=YnKzJWRP; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ade30256175so482903366b.1
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 03:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749464213; x=1750069013; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FYF/Nuv4YsITgHfVkZ6mdpU41q/1njXFGt7R6uHs5Pc=;
        b=YnKzJWRPJq/h/vROQbopeGNl8vBiH4obyP3yT+6nd+CLDjcECrxYRGluWnn6HJ7WaA
         e8qCv5j/H0CbJcCLbTeX1mMW1nlNSDUSVFGgAfhNcBpqMAvEk9nr9maE0kaW22NUKDB1
         igrOC5iIWiYHyooT6lnisA7W3tjh2IIG0Hxgo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749464213; x=1750069013;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FYF/Nuv4YsITgHfVkZ6mdpU41q/1njXFGt7R6uHs5Pc=;
        b=rjI8qCTxjXgIz//oKWo6/Nfi+ET24Foi2/MwfxFkiUKrWlW0Bo43EVYhHPdDuvR2bJ
         FO8/NkYkTemkyg2LWOYZVqDeQ9ReUh4SszFi+z9J0wfBOdJ/3lqUCuEIs9qne/E/6+7b
         8aBgGiU4KlqkjQDa6HaB6/Jy30pDnFMHGlA9okK/V2PSjbkqf8Vr2gm3JxjCI+a2BFXY
         JutAUSF+H3DlYgDnOO5e5qpCuYzs7+Bp4tYskY5Ok81DYLTpZbbw2r2QyGRpl0ApaH/N
         9BExqXCGRwJ/JTDMgKZEC1fZPSK+5xyL9wcA3MV/gcXcXr7MfcA+ikS0Tt1gaR5TDB+/
         7gSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmpWQylXZd5tUG1LQPDrN2jPx2q039z8CrV1DmTjbGH7JOrBsYyYXH5O1lPXMtgi3QoMQnRNOpdqOu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz54Xw24OyqK5nHF8tdO7GNbguMW1ctDFcGn+SLGZgZVuDgJ6Ww
	sUmyHVsNNvvROc6tFko6875yDFWpuPr9Ma7/ZxdAJ0BQFDQxONiuxQq+B0z+8KXKnT4=
X-Gm-Gg: ASbGncsSMV8PBqcuhCZ1XlGadbDPRxHfAyudbbfSal/wTCG91r3XWqFgMACzTSt3Rpl
	Ytu4qVCdvkCXgBYjR0PwuWl3kLJZm663HepDRz0kE59Y6yY6XeDFR6iiu4lgghBFTjJHsBJEcz3
	ABQsdCTAGlQGGa+vKCeNnzb2o+xc8Jc5gIpk9qknNEOiR9IWewWNM5jlRo/bd/eSxE/aQGPvvps
	NMC/hoVIeWZWAJ91ZGZlI5rhoOABspIQirCYWH7lhEopI40bVgSRRIhYgpkSbFPSG1SRMF2lCm/
	SnOWHsphnj7vM0HDwxouUl6l/dX/mF7ryA++feOT8/nR/ZcrSBQt3SwRy+DUeQ0dJf2Ke0d9MK6
	7bTPGZwrb7tU/p0kTG1OgS+7Me0gyj/AqTVKYm02K5FjQU/UKKZw=
X-Google-Smtp-Source: AGHT+IHKKFXCGNXdjWNzxGqJXdSd6NPHPT2S9VoQbor5KMg8rGZUplkeNNbvsImx0hccGmWvP5prVw==
X-Received: by 2002:a17:907:3f89:b0:ade:4121:8d32 with SMTP id a640c23a62f3a-ade4121a383mr759217666b.3.1749464212993;
        Mon, 09 Jun 2025 03:16:52 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.40.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1db55c7esm529257066b.49.2025.06.09.03.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jun 2025 03:16:52 -0700 (PDT)
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
	Primoz Fiser <primoz.fiser@norik.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 06/10] dt-bindings: arm: fsl: support Engicam MicroGEA RMM board
Date: Mon,  9 Jun 2025 12:15:39 +0200
Message-ID: <20250609101637.2322809-7-dario.binacchi@amarulasolutions.com>
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

Add devicetree bindings for Engicam MicroGEA RMM board based on the
Engicam MicroGEA SoM (System-on-Module).

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

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


