Return-Path: <devicetree+bounces-1768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF137A837E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:35:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79FDD281054
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F8943717E;
	Wed, 20 Sep 2023 13:34:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D04B328C2
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 13:34:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C06CC433C7;
	Wed, 20 Sep 2023 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695216896;
	bh=Ze8kp/+7IbXTggqFK3LA6za8oqj1BVOOG3H/awXtntA=;
	h=From:To:Cc:Subject:Date:From;
	b=YfNZ000jzNQ/dRnvdDMm4qRb89YMSvrmXK7yKDJMUmcfKze+bdUnE5WglCrYOi0EL
	 ys0VHJr1g6y6qYv1gSKOBU9bR5WC7CxuE+kUR6ZVjftVnqhSIDFhUiJeNba8zLV8Zq
	 J1DRTA2mm+BryMb9h7P+8qqVsntLnJ3BL8/Eu+STZlOeNfQbIqJ5udX94OAY2s1WWv
	 K7s7WX5lXvCJj15xP3GaRL5ApUeLVH04kVrkHrYS3NWzkD8gJclRDTuqetyunuqn3p
	 JJfhsXnNqWNykFdMzae2Zeb0WrPpfGnjTonJEQBd2DHy943M5bPDw6J2mYs6Psr/Fe
	 xomaUKdN80lTw==
From: Roger Quadros <rogerq@kernel.org>
To: nm@ti.com
Cc: vigneshr@ti.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	srk@ti.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Roger Quadros <rogerq@kernel.org>
Subject: [PATCH 0/2] arm64: dts: ti: Add overlay for AM642-EVM NAND expansion card
Date: Wed, 20 Sep 2023 16:34:48 +0300
Message-Id: <20230920133450.54226-1-rogerq@kernel.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

This series adds overlay for NAND expansion card for AM642-EVM.

cheers,
-roger

Roger Quadros (2):
  arm64: dts: ti: Enable support for overlays for relevant boards
  arm64: dts: ti: am642-evm: Add overlay for NAND expansion card

 arch/arm64/boot/dts/ti/Makefile               |   9 ++
 arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso | 140 ++++++++++++++++++
 2 files changed, 149 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso


base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
prerequisite-patch-id: 93eee303ffcec92f977eaab80e91fe900d85638e
-- 
2.34.1


