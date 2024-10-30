Return-Path: <devicetree+bounces-117414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2FD9B627A
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 13:03:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 85282B2254F
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B81BC1E7C11;
	Wed, 30 Oct 2024 12:03:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51FC1E7C12
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 12:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730289799; cv=none; b=nOuUjCTdLdNDmAXf/KDEYTA8mKOO+DrYDy+ijNrvHtqeIkjiVva9rXdzDQyURLGdVCG/lzJaIYpJcqqvk6q2WffCifFHD1tH9MZTjmrWWCMstEwqr8KaSTNwf+nrmPxqq9tyPMW1lkPpBaOGYVUq8DTA5oVgCoUABA13/6x05Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730289799; c=relaxed/simple;
	bh=JY2oCrHIfhPJlZMIwcdNkVKSXrp1Y2lDTuMSPbRIb/Y=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=cCEtbbMDccbNkOjCGMOiNhHa9IgSYPJiVqxTDEwhJNTJzVYndwzbP3ZAVbMMkudJx8UjGZeW+EL4vfQOGxeeLsWzR3e3aXiQ2lhRgVCZBDc/Tjna15iblhX2HSExeq8UQ2nkGGlbfzwH2q9J6q+sghDK5c2UnNoCKpgfS3u8Egw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1t67Pu-0005ni-4E; Wed, 30 Oct 2024 13:03:14 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Subject: [PATCH 0/2] clk: socfpga: add clock driver for Agilex5
Date: Wed, 30 Oct 2024 13:02:58 +0100
Message-Id: <20241030-v6-12-topic-socfpga-agilex5-clk-v1-0-e29e57980398@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHIgImcC/x3NTQqDMBBA4avIrDuQxJ9qryJdJNMxDhUTEgmCe
 PeGLr/NexdkTsIZXs0FiYtkCXuFfjRAq909o3yqwSjTadUqLANqg0eIQpgDLdFbtF42Pnuk7Yt
 Px7ZraXST66FWYuJFzv9hft/3DyzwQ+RxAAAA
X-Change-ID: 20241030-v6-12-topic-socfpga-agilex5-clk-7bea43c8b9b5
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, netdev@vger.kernel.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Teh Wen Ping <wen.ping.teh@intel.com>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The Agilex5 clock tree is compatible to the existing s10 drivers.
Therefore the pll,gate and periph drivers can be reused and only the
main clock tree is added.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Teh Wen Ping (2):
      dt-bindings: clk: agilex5: Add Agilex5 clock bindings
      clk: socfpga: Add clock driver for Agilex5

 drivers/clk/socfpga/Kconfig               |   4 +-
 drivers/clk/socfpga/Makefile              |   2 +-
 drivers/clk/socfpga/clk-agilex5.c         | 847 ++++++++++++++++++++++++++++++
 drivers/clk/socfpga/clk-pll-s10.c         |  48 ++
 drivers/clk/socfpga/stratix10-clk.h       |   2 +
 include/dt-bindings/clock/agilex5-clock.h | 100 ++++
 6 files changed, 1000 insertions(+), 3 deletions(-)
---
base-commit: 9852d85ec9d492ebef56dc5f229416c925758edc
change-id: 20241030-v6-12-topic-socfpga-agilex5-clk-7bea43c8b9b5

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>


