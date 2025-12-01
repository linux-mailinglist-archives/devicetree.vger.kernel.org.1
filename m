Return-Path: <devicetree+bounces-243404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 24372C9777A
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E775E3A3008
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 13:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E991830DD35;
	Mon,  1 Dec 2025 13:01:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CDF30FC1C;
	Mon,  1 Dec 2025 13:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764594084; cv=none; b=khvrY/2kWmNivUSp1apn6sv568lPtQwqMkUWzicBvjJfuXrYKEwVALdcEYWG2Z6NuDijq1uS3c4+bCxRiJR6V1Zo02t3yMs2aNEnx3d0QDGOwYJTQsDgfrFgAY9+sxRE8qF2KAPOkUkvfuOydBGWZTOGHnal29pCtjNkIEFzKc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764594084; c=relaxed/simple;
	bh=AnX7suPMOHZ4sA2weyZU5deC0NdJjWeH3iIjEczM+F8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZQbvkpDaqBzL2CkSUJfvubyBLJB/IpXWx+RnNF9jjEVhf0OVYsTSnGWThyp3gPn8XVQ7j5NDzlyyrUX74uTlpglwaixxx/DpHddnNagmGQFhMtq2PYwITQrEtqdUYKViGPwV8PuRsT3wjmkPiKwafnfcTRx+WhpI4V5J5+FYMOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [119.122.215.79])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b8a20103;
	Mon, 1 Dec 2025 21:01:13 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: krzk@kernel.org
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: arm: rockchip: Add HINLINK H28K
Date: Mon,  1 Dec 2025 21:01:06 +0800
Message-Id: <20251201130106.236903-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <f27dc5ef-1c60-4724-8e18-33bbc4230d3e@kernel.org>
References: <f27dc5ef-1c60-4724-8e18-33bbc4230d3e@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9ada00be9203a2kunm2a36c62d3110
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCT00YVk1DTksZQkhKTU5PGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVMQllXWRYaDxIVHRRZQVlPS0hVSktJQk1LSlVKS0tVS1
	kG

Hi,

> Just squash these two binding patches. Way too much churn.

However, they are different SBCs manufactured by different companies:

HINLINK H28K - Shenzhen HINLINK manufactures
MangoPi M28K - Beijing Widora manufactures

So should I squash them into a patch?

> Anyway, looks like duplicate - two devices with same model name.

These two SBCs are indeed very similar, both in name and configuration.
So I put them in one series. Perhaps splitting them into two series to
avoid confusion would have been better?

> You have entire commit msg to explain that.

Thanks,
Chukun

