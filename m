Return-Path: <devicetree+bounces-35917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B150383F2EF
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 03:19:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66D881F22200
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 02:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF48A1DFF0;
	Sun, 28 Jan 2024 02:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJyz3Z+/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E371DFCE;
	Sun, 28 Jan 2024 02:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706408257; cv=none; b=X9imKtIh32TeReug9xtNHLhNAn8tUs/weafDaexV+pT32/o0VOSL+RitvMpV3AoAa4Kj6zdxFYKqqMQ7ssGJjdgtvTHK8DkgxpDviCr/AqhkFt3ZfliFq33U9QGeCwqWILLQ0KQXjMPFQgsnK4OvbGwYDOf7dgmQlXnuBewvVRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706408257; c=relaxed/simple;
	bh=cVJL8MyIxr5BmjqCluPciO1Iot2tHS7Io9JALEBbMo8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=p22GNzwhPRIxNUJkstXwkNY1FdBqja6ucGATrPJDTGTr2hR1iK4SrERJtQaY+fZBOd/7IAJXoDulP7LiSY8AEJY3JMXSzBXiGH5FuE222PruLdbbYA99ksdtyyXtU7SLRxF93CmzYDBL2oQy4NK/lq6W2JUBs1iA4fYd3BJN76A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJyz3Z+/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40009C43390;
	Sun, 28 Jan 2024 02:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706408257;
	bh=cVJL8MyIxr5BmjqCluPciO1Iot2tHS7Io9JALEBbMo8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nJyz3Z+/gnVA9EHGR5xVpo1mLlPVvJmRxyCw4+TlTTzDWyUpd54dsdc0uD0epbc/H
	 BtAAk0zsCyPrdoUkaBdXrHzXYcZF8q/eewgKjlZd/KGQq5BSCsL1n1PbvM5BLFkOhl
	 q/Hk7iJD8XPmN+y+cB+ArMOKQArZLP3oxFBiCPXTSGFMKdmXzw3Bv+Li5nVmrE22+V
	 bNtwhnIeb/xbBpfyGtuKhB3oSKzF6Ql3NXkWYFyvQ0y1qsxMPFVdB6Idd+y8PYaWHH
	 wp8JoxnhUa/KHGhqK+8TCN1yo7qr4CXOwp3rz4Ca1EuyIXKbT05Q5ijnlFlJfbkdAp
	 SXKnEg5QhqZ7w==
From: Bjorn Andersson <andersson@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	quic_ppratap@quicinc.com,
	quic_jackp@quicinc.com
Subject: Re: [PATCH v2 0/4] Fix USB Interrupts on Qualcomm Platforms
Date: Sat, 27 Jan 2024 20:17:23 -0600
Message-ID: <170640822832.30820.5935978325598948079.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240120191904.15408-1-quic_kriskura@quicinc.com>
References: <20240120191904.15408-1-quic_kriskura@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 21 Jan 2024 00:49:00 +0530, Krishna Kurapati wrote:
> Currently the interrupts mentioned in most of Qualcomm platforms
> are partially faulty because of following reasons:
> 
> 1. hs_phy_irq mentioned on QUSB2 PHY targets is actually qusb2_phy interrupt
> 2. pwr_event irq is missing for many targets
> 3. Actual hs_phy_irq is also missing for most of the platforms
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: qcom: Fix hs_phy_irq for QUSB2 targets
      commit: 2c6597c72e9722ac020102d5af40126df0437b82
[2/4] arm64: dts: qcom: Fix hs_phy_irq for non-QUSB2 targets
      commit: 6bf150aef236fbb6d9fd299081fa8f1f0f6fde6f
[3/4] arm64: dts: qcom: Fix hs_phy_irq for SDM670/SDM845/SM6350
      commit: 7c9afa1fd84ba1fb5b80eed490bfcde2206ef5b0
[4/4] arm64: dts: qcom: Add missing interrupts for qcs404/ipq5332
      commit: 927173bf8a0e36d3ec47b808652822c594807fc2

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

