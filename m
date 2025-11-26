Return-Path: <devicetree+bounces-242267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3BFC88A9B
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:34:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 748104E9E86
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD70A3164AD;
	Wed, 26 Nov 2025 08:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="j+obtNP8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43E231812F;
	Wed, 26 Nov 2025 08:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764146053; cv=none; b=Wwaglrgfmb3k1iqwZhqIQb2MmPju6vHsgj5FgeUwbamdW4XoFK+f76GbjCcVGyG01O6vPs6M3WFq3t2KkjjmGQnuWZf1eBkxily1ZCC1cm6LsVyc+7OEwIMBc9fWHvM9AUsGEe9YN7u25RFSNhRCPFxE7UviCqCenSY4WpKeEjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764146053; c=relaxed/simple;
	bh=KgRTwc2MFmj/s3i+vvfmmeGQfS4eJ56eS9AJ0gMKIiM=;
	h=From:To:Cc:Subject:Date:Message-Id; b=QILduJvzNLkPJwchce362fCKF0VA0jIVSiCY6eH4maTfZvEx1OzyUKUeg3nUAxYco9cByJ9nwV8bStaFY+u24CZRYCzNUYLrlVMRbvqDcqqFF3hmb+g2S9deO/qmzLMcDcDrcL3SlAmUblX1P91A9acUSLEi39URsjFM7RmJ0pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=j+obtNP8; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1764146036;
	bh=6Msbg8SMAOfIyv4Wvtt34feTWVQ3E3vx5/EeCGtc5QE=;
	h=From:To:Subject:Date:Message-Id;
	b=j+obtNP8r673Ajtjl2aSRsUSgM3asknm71ICmYElKxJMkfT0KpmrLKRWianh+oVD2
	 0qgOxUMU2k9IKkpKG1Ymg2w7+mGV4f2w24g8ArAIoCyYIi3mo2YUHb3eYzdzs2oiRn
	 QAYQtk1jIF0g33pSD0XAXEZlY8e0F/ljF2p+Q/qM=
X-QQ-mid: zesmtpgz4t1764146030tfcb12351
X-QQ-Originating-IP: etrN7Rhn/qcM/9hSFq6eDCga1Sjs5DbC09JbfnYxMzM=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 26 Nov 2025 16:33:48 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7926629937500190388
From: Chaoyi Chen <kernel@airkyi.com>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH 0/2] iommu/rockchip: Add support for multiple interface clocks
Date: Wed, 26 Nov 2025 16:33:43 +0800
Message-Id: <20251126083345.88-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MQ/e1nFgk5Lj4wfeMMMwAlnAl/6t/p48DbK4+ADBO0oISXh8hL3cMchf
	Pco0WVZ6fR/c4pPGN8CsMJgjxRCEBPwCqx3378g6N0UH5Q58YcC7rM5Kvo+yxdWfqft7iig
	pQQJJHglZR3vt/+bznLZQJBmJZ/a+E+bUp+oa8XC4ugjKU/DrL6Y4aDeHrC4NK0V4NsqQP6
	+mVVrOgfb02/uAz2W0G/kmTG0PzDrcFRaPdmo/AXEk+zEFJy1QLDWiefWbfSh8E5Q6VL9o/
	nnCOeKDqKfg+PtwPTZ1xSj2wdlCXMIgY4M8GcMf/Hc2t0OiI+P25maoTwPi8bb19y8LuNDE
	QbZrjbHq/ns20cWmcqH8D5zLXyEpt/kv5iqgTwQDrMsZlW3Gvplp4BPZ+cKW1oQKXo3iQh5
	S6THzE8p+RnUprB550RQtf2/FWZ+qwdmkGMoUmafaaoLLQg6oJkpJrX3QoaurgYkvpjTygc
	55KqIh/eB/8YSclqEsskMFadiRoGLI8s5oItooevyzVRK8wya1q2Px4bC70ezDw3FFG8EIW
	ad3KvkpxfxGdkAvSlgsPiWK56vaY1t/8zjOkHVoljYzEWUh+L26eL+wYcsdbwXv3Ba1dvD+
	bJKwmGRzbgsp9MjuTC614mM1Tulq7LbNRqo4Da0YGyl+iQFX45QJF0pSB4CVY/wGajtatVn
	U+2F1Jfw3d6V193Y1GgVlHWibo+PZIn+18V1iK7TEcNP4VqaPaHOdjaKLhh3nQY/eE+/HNe
	GOQOSO/ulQo8St/wwoJMPy3dmOOr7FwV9qIA/LTsMDiXevDEga9C2oHwiClNPARIEIY4LxX
	kBeFPY2Fv498kkeo9/qqx829jFdOkke00vvWeyjzN+//XpSAc5sMxepBFdwZOuWra6lZ5up
	Msaay8bHuKJI+wLChc9eIfa9K7eNd1sFZdDUOkcly40NW6nvcrDZavIYnDKQ+Y5PnViZt3a
	sk2Mg/Orzq6jrZoBo+BZdJb8baRYm3gJge22SojA96wKv7YLXPs/lkcZu
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Hi,

Some rockchip iommus require extra clocks besides aclk and interface
clock, such as the iommus for NPU and RKVENC in RK3576.

This series adds support for these extra clocks, which are called
`iface_x`.

Chaoyi Chen (2):
  dt-bindings: iommu: rockchip: Add support for multiple interface
    clocks
  iommu/rockchip: Use devm_clk_bulk_get_all() to get multiple iface
    clock

 .../bindings/iommu/rockchip,iommu.yaml        |  8 ++++++++
 drivers/iommu/rockchip-iommu.c                | 20 ++++---------------
 2 files changed, 12 insertions(+), 16 deletions(-)

--
2.51.1


