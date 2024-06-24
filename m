Return-Path: <devicetree+bounces-79379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 126E3915113
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:56:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BAB2F1F25F0F
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 14:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E513D19D068;
	Mon, 24 Jun 2024 14:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVtos7LJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC3319D063
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 14:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719240857; cv=none; b=CVSFUJDSBr94F2aJEA82fBOnufVVRGoA51TH59sJ4Jtu8j3h0nZWttYnA95wO+8JkcbwEpvx2OM0NeyGSzQEb3xtGF7lmxL3UueVtbAtKg0riQiE3GMrFgxdaKXEwr9VWdCQrIG3bt7v7kHzHF/T0GA9o250zOimf7C7y9jZH/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719240857; c=relaxed/simple;
	bh=BC9yarDnJyUOHbaY84weYpK/EoEfY2Ipnz1RqePlCGI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=tzd73s1+jMMsgI4MsHaMR57h7E4lr6i8xh3LwEIHT3NLrD1s6wxhRuJjJSFCtUI3R/OUqi32hMbd1S4HPf9xgjECv/UkASNkWE9DGZALs97nmfdvAvMBGn76f1/8UOmDdZ+uu1b1t+LFMR1l4UMGJcEK2ZDPpw1/da160EMDy0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVtos7LJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDF17C2BBFC;
	Mon, 24 Jun 2024 14:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719240857;
	bh=BC9yarDnJyUOHbaY84weYpK/EoEfY2Ipnz1RqePlCGI=;
	h=From:List-Id:To:Cc:Subject:Date:From;
	b=DVtos7LJBETNThO8XJAg/pAKk5j5ZIVhTDud+EVzKBNYVFSPPZFq5VnNu1/NGmaEC
	 wOcvKd4XTN+ZJnM6O30DABxpWVU1SpJvpht+Dvd+h3uD+2IJUFpsd6U6xsQzS9n6gd
	 SGk/TeObk8uu2fnG88SRX52qxV1zVzxNmdIO0uNGx9vDJrnraHxKAED0bXbq5bQGWZ
	 7DOGqe7vCDLjg7PmW5bKN43gOqj3V9pFStXoddTKU58bnANb50AEVhUfyix+8t4LpR
	 AJwvQ43uo/UYhxGLhyRkmuBdL2y7RMysev9eIN51YWo6tzHugl93g9txstC9yB5LxU
	 dJJwUglSpuWQQ==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	soc@kernel.org,
	Thomas Gleixner <tglx@linutronix.de>
Cc: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH v2 0/2] armada-370 irqchip DT changes
Date: Mon, 24 Jun 2024 16:53:53 +0200
Message-ID: <20240624145355.8034-1-kabel@kernel.org>
X-Mailer: git-send-email 2.44.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Gregory, Thomas et al.

this small series coverts the marvell,mpic irqchip binding to YAML.
The conversion patch is preceded by a fix of 4 device-trees, removing
the #size-cells property from the marvell,mpic node.

v1 at:
  https://patchwork.kernel.org/project/linux-soc/list/?seriestreba%20za=864184

Changes since v1:
- #interrupt-cells property is also required

Marek Behún (2):
  ARM: dts: armada-{370-xp,375,38x,39x}: Drop #size-cells from mpic node
  dt-bindings: interrupt-controller: convert marvell,mpic binding to
    YAML

 .../marvell,armada-370-xp-mpic.txt            | 38 -----------
 .../interrupt-controller/marvell,mpic.yaml    | 63 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 arch/arm/boot/dts/marvell/armada-370-xp.dtsi  |  1 -
 arch/arm/boot/dts/marvell/armada-375.dtsi     |  1 -
 arch/arm/boot/dts/marvell/armada-38x.dtsi     |  1 -
 arch/arm/boot/dts/marvell/armada-39x.dtsi     |  1 -
 7 files changed, 64 insertions(+), 42 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/marvell,armada-370-xp-mpic.txt
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/marvell,mpic.yaml

-- 
2.44.2


