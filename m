Return-Path: <devicetree+bounces-69900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 432D38D1E83
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 16:23:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72EA11C2256E
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:23:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3179716F8F7;
	Tue, 28 May 2024 14:23:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55DA16F859
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 14:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716906191; cv=none; b=ZuBMXH9PN2RvwEFRdpXTrGfX03s6JiYR6djHny6jgqxBb94F9VzxpHK9nj6Oz/mA5Fo8N+6Hgu7qloH5OJnlFCIXexEpkVmAPgWb4QMAgO/eYemk2qU370pmOQvPpXMRjMPghjBidajZ6Esy2sHBCPssvZJ7va3NGnfRZhMSrJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716906191; c=relaxed/simple;
	bh=HgCEuiw35Jxiwv8ofxb5YM7iUm3ierq5CHq5XOnJo4w=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Oiq00zVPhajeFn+pmwAO32zpsbp00jRupWXQ1NlO4aC2bqd3KX5aeZxYZ9T2Amdc4hGajtqT8kk/usH2J75tHQzRKkzIkc7MxOO6XnH1IRo1n885JuPkqUFZMJUmBGZa7QoNepup7JX76wB7kWbdTb4ySXdxjKh78/TJJutmXZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1sBxjB-0008WT-0L; Tue, 28 May 2024 16:23:01 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH 0/2] arm64: zynqmp: fix CHECK_DTBS warnings
Date: Tue, 28 May 2024 16:22:52 +0200
Message-Id: <20240528-zynqmp-dt-v1-0-a5db9054885a@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALzoVWYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDUyML3arKvMLcAt2UEt1EE3MDS+MkE9Ok1CQloPqkxOJU3aSixLzkDKC
 OvNKcHKBgQVFqWmYF2ILo2NpaAL2qVrhwAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>
Cc: Michael Tretter <m.tretter@pengutronix.de>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Running make CHECK_DTBS=1 for any ZynqMP device trees prints warnings a
few warnings that are caused by the zynqmp.dtsi file.

Fix the zynqmp.dtsi to fix these warnings.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (2):
      arm64: zynqmp: Align nvmem-firmware with dt-binding
      arm64: zynqmp: Rename fpga-full to fpga-region

 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)
---
base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
change-id: 20240528-zynqmp-dt-a47093b45beb

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>


