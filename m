Return-Path: <devicetree+bounces-93724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9906952025
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 18:37:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5C90282947
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 16:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6EF01BA86A;
	Wed, 14 Aug 2024 16:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="COD635PM"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C857A1B8EBA
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 16:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723653450; cv=none; b=DP/8GWwvaHrIFvHLD1yU9jyec0ttdi8od2Fwu4EO8VTpWExKEc9U7U70+rZsyjUPC1RcR7yE8/sjFRPQA9jrrauF6+tCTr6dzggas34vpu2oWCuuqJ3YOqIkTOCFMEL9hLPYFTMcoBHQ+pqJaI6m9tw7BjMCDIMnlsMCRGNNGjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723653450; c=relaxed/simple;
	bh=WfccF6PVC8IYhj4/abe/tVXNOJ9FQC/oddV5w+IfXOM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XHk8mo8SnEh7Sco4JQmKxcAWkLble8aNojf/L1/34W9PqHfSxWB0kjjviRr+OOTdZGOL8hpvdVmxuapQ/lD8nAf8k07+INN64z321Z5L2K8AGrZYSfMp8UNOuLZQc+Fb9lFCAtIrTUX5YyHJq+0K9mjG50S/0KNRNDJEmQQsHdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=COD635PM; arc=none smtp.client-ip=185.136.64.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 20240814163720305765ec8356304813
        for <devicetree@vger.kernel.org>;
        Wed, 14 Aug 2024 18:37:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=xiKkndwGTiqTiGjhe0LqvURAnZUJY84+eH1QxxCVHBY=;
 b=COD635PMk3OQiID795px3fPI0SPvt1phyMZMtYuZsiYfJ2HMWGS5W/LdXSJD/LG1G0A63y
 e55idg/i2/Ss2nFX4hUEH1onerx41USP5p5IgBfCPyKGCkqFvxE7IdT0kR00oxFaO2yEeeLQ
 iJchrTfkXPudxfPsJtAAP6fMA1DW7yTAugWJV4SwGZYacz3E9bhCvLwU21y9ZKeXool8WpDy
 lgWfB6LA60fYBgkxERdjhIsWjp1jUqBrmXr5qpkZuyik7dOaDQrCbVzgQ+Q9YEgza0SB5gqG
 yoLb0ThpdXVSzPSNWbz5mfD1E6Ik4kNG/hd2sFZX3sZPgAWrDtnY4ZiQ==;
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
Subject: [PATCH v4 0/3] arm64: dts: k3: Resolve remaining dtbs_check warnings
Date: Wed, 14 Aug 2024 18:37:16 +0200
Message-ID: <cover.1723653439.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

Changes in v4:
 - drop no longer applicable mux-controller
 - model dss-oldi-io-ctrl@41e0 and clock-controller@4140 as regular property

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

 .../soc/ti/ti,am654-system-controller.yaml    | 19 +++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts       |  4 ++++
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      |  2 +-
 3 files changed, 24 insertions(+), 1 deletion(-)

-- 
2.43.0


