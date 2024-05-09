Return-Path: <devicetree+bounces-65930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5AA8C0B0B
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 07:36:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8867E1C22CB0
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 05:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F04C0149C4A;
	Thu,  9 May 2024 05:34:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8E8149C47;
	Thu,  9 May 2024 05:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715232860; cv=none; b=Hc3W165PMaAwp8mS6fcj2RMzsj/G8IwPvqsRp/tdvfzBlN4Yg2zvkZFz7SiQr04bvX2lqIQIr0cg/VzdnsGUGziKrvdpzwReN73SrefdcBSMPkrHFbiPVpOdDthkzTZsvsvVkuQtSctDbm9+DqAOrSkdAp4KYl8pKAcHSZzMXc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715232860; c=relaxed/simple;
	bh=2/t3Z4b0GAOUkX6lvbYOVj/e6wNgV+ILmPK3JK4zn6w=;
	h=From:To:Subject:Date:Message-Id; b=QRyqO/ct7NkTEluu5K1VGZOpxRG3FN2Dv7O53eq0pGUmclzZ0V582ddz+hz8pGuRMHYXtKIsi2b9/FebDpURZQDj7GvI06atzMSwXXrR92zZ6VjtEJjlagIpDlSvzk36MbS+V4CjZkBGXgE/ZxybtaKxx5iYBS3gNvufcReCJYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2120C1A1FFC;
	Thu,  9 May 2024 07:34:17 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CE2191A1FB1;
	Thu,  9 May 2024 07:34:16 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 0063C180222F;
	Thu,  9 May 2024 13:34:14 +0800 (+08)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	shengjiu.wang@gmail.com
Subject: [PATCH 0/2] arm64: dts: imx8mp-evk: support bt-sco sound card
Date: Thu,  9 May 2024 13:14:56 +0800
Message-Id: <1715231698-451-1-git-send-email-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

support bt-sco sound card

Shengjiu Wang (2):
  arm64: dts: imx8mp: Initialize audio PLLs from audiomix subsystem
  arm64: dts: imx8mp-evk: add bt-sco sound card support

 arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 44 ++++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi    |  3 ++
 2 files changed, 47 insertions(+)

-- 
2.34.1


