Return-Path: <devicetree+bounces-93151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 117CA94FD8C
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 08:05:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90A14B21376
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 06:05:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DB423BB47;
	Tue, 13 Aug 2024 06:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="DpnU5RZb"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7926035894
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 06:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723529108; cv=none; b=Mdg6kN2RX3bEgZ/J60iONtI1kjM75Im+NQIaCotwrvv4QhX8TJprFEpU2AchlOAPNaS4dBb9yFCIFE1POaKP6Ah92yefWwVKx0MyFXBY5aJmbqEIaHGCsOvlvbKDLAHxXXi2/KLlrFBcbATzhO7742hs6A+KZDzsLYnETLfyqN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723529108; c=relaxed/simple;
	bh=L4C2kemsFJ/aRTZGqY7wqPfseEpmmPH97V4Tq7rxc9A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bjAfOBwaFTRbR1A20zQK+jd1D8uFkw3oJmAnu+wD2cx/qbKnb6tTHGF0/wzQET15fEt8t/t0bE4c/5G+0o2qbEcboiz11N+kycAq2IU1ceQjmCNuHf4QJnG3wEZKCXcVZCO112CL8Ejz7Y8mwqyHUjacjRSyQpM9IMKquvBSRWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=DpnU5RZb; arc=none smtp.client-ip=185.136.64.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 20240813060501b2777208d13e8890a9
        for <devicetree@vger.kernel.org>;
        Tue, 13 Aug 2024 08:05:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=D8CWtl+CMMRhFOKlrhB6XtjwsLMJTz++GOplxaN/+NE=;
 b=DpnU5RZb69n88O4kUPkPwevlmfsH3mSA7gJNeAiewrzu67jWcQV18OGLINjCur7yRDZBJh
 Lb10UHmwQJLxN/nB5iJhB1ohnoM+b96W5wV9ZtyN094sNgLacEMfl+ke/Typ7gfNeKzdIBRp
 9hAIBvlsXrFFSpzWnY0YW+IwwtA5y2a1/IQ+iiq0673/sStOc1y6QV0FZXbDYF7K1EXR+df+
 QSPU811wvsiDv+4KlojuhmKeD8LUa7XAEEI4WIovl8WLmcOy9XXyNjRybDqAc4YJSxvCywyE
 vfoSDlowppOOYO0CkXbPSbbl0/tl+sfZkIjb8QnOvTL1rnVygmTdCIRQ==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH v3 0/3] arm64: dts: k3: Resolve remaining dtbs_check warnings
Date: Tue, 13 Aug 2024 08:04:57 +0200
Message-ID: <cover.1723529100.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

Changes in v3:
 - convert mux-controller from patternProperties to regular one
 - dropped k3-j72xx-mcu-wakeup patch after simple-bus conversion

Changes in v2:
 - reference reg-mux.yaml in am654-system-controller child node
 - base on top of dedicated am654-serdes-ctrl schema patch

This goes on top of
https://patchwork.kernel.org/project/linux-arm-kernel/cover/20240518-dt-bindings-ti-soc-mfd-v1-0-b3952f104c9a@linaro.org/

As we are working in this area, having a zero-warning baseline helps a
lot finding own issues quicker. Maybe not all of the suggested
resolutions are optimal, open for feedback, just want to have them all
fixed now soon.

Jan

Jan Kiszka (3):
  arm64: dts: ti: k3-am642-evm: Silence schema warning
  dt-bindings: soc: ti: am645-system-controller: add child nodes used by
    main domain
  arm64: dts: ti: k3-am65-main: add system controller compatible

 .../soc/ti/ti,am654-system-controller.yaml    | 25 +++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts       |  4 +++
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      |  2 +-
 3 files changed, 30 insertions(+), 1 deletion(-)

-- 
2.43.0


