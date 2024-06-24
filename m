Return-Path: <devicetree+bounces-79155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A1E9142BD
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 08:31:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2CFEB1F22F16
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 06:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4823222097;
	Mon, 24 Jun 2024 06:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="m74dkdwA"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-227.siemens.flowmailer.net (mta-65-227.siemens.flowmailer.net [185.136.65.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5522239FEF
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 06:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719210667; cv=none; b=PyhJwSFRACGH2JbDJUatZPk9k4Hng2r+rAomato8YkgCWHZOVNrTZwxBg23kHI9TS8MlY94E7w9xOihNZCcZVWqjWVksdwsDoOrA6wMdHIOxhalZ5CiJxFn2bBS5CJEA698+DuC6Tsp3UO81NAwInAp6ON0IAwRBWXvfzI5YXLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719210667; c=relaxed/simple;
	bh=SzW6cn9eF2sLMVyLCIwKgHrm9CzWs0jupIthfanDrvE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Kv9icVpXI62q5pNMb33kStcSbeakUhLYHaA46dX/7PtpIfF2N+upa/V7BTskvhJ54/Mhb9HpXKwuOL+pHFnx8nvbUFAX0wgdFIhtW6hi2GOMjAUPiaK0QLX8t0PgDQc1pLbgLzPwiJbhajvvbqrvQ9j/O+maSGnbRfy3OWQ40KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=m74dkdwA; arc=none smtp.client-ip=185.136.65.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id 202406240620519be8b526065bc1efb8
        for <devicetree@vger.kernel.org>;
        Mon, 24 Jun 2024 08:20:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=U5Al01NInRE5eNw4cY1NN/SMc3B+GgOjVG6GYVB63YE=;
 b=m74dkdwATXboj70ZO3PVscC3eIk3io9SYRXzvgyYZlQdon2ozrfNnAmtwm6Npfr9mbV1T4
 WTAu33LoT3R/8xBxq5nUi8IG2nxbt16vZBtuIZ5m3qwoacpbKRIwPQg0YxWnESFQJJCADCQl
 C04SiKFSPteduKgreApoqRNmJv/ig=;
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
Subject: [PATCH 0/4] arm64: dts: k3: Resolve remaining dtbs_check warnings
Date: Mon, 24 Jun 2024 08:20:46 +0200
Message-ID: <cover.1719210050.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

This goes on top of
https://patchwork.kernel.org/project/linux-arm-kernel/cover/20240518-dt-bindings-ti-soc-mfd-v1-0-b3952f104c9a@linaro.org/

As we are working in this area, having a zero-warning baseline helps a
lot finding own issues quicker. Maybe not all of the suggested
resolutions are optimal, open for feedback, just want to have them all
fixed now soon.

Jan

Jan Kiszka (4):
  arm64: dts: ti: k3-j72xx-mcu-wakeup: add dedicated wakeup controller
    compatible
  arm64: dts: ti: k3-am642-evm: Silence schema warning
  dt-bindings: soc: ti: am645-system-controller: add child nodes used by
    main domain
  arm64: dts: ti: k3-am65-main: add system controller compatible

 .../soc/ti/ti,am654-system-controller.yaml    | 29 +++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts       |  4 +++
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      |  2 +-
 .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      |  2 +-
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  2 +-
 .../boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi     |  2 +-
 6 files changed, 37 insertions(+), 4 deletions(-)

-- 
2.43.0


