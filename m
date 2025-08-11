Return-Path: <devicetree+bounces-203256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DF0B20980
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 15:01:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5230D3B5FAC
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 13:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CED871A5B86;
	Mon, 11 Aug 2025 13:01:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB65139D;
	Mon, 11 Aug 2025 13:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754917289; cv=none; b=MOmq7jda1RtPeHPkdyXHGqNrIXoS2IVvkYAIr7CJ4rPiGkCqv24/ZPzWhaVgLz7tJVg8L79cAg2gS1/NkICZ1240Ngoj6AbOL4lI+/XJIyz5ppsVLevcDxNQ90KFkelwCt4kvoMy82euiQSsSUw+wJNXUZu9Oy+xi093qb0jClM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754917289; c=relaxed/simple;
	bh=DN3Xoj5hV5J7WPOgTXw3N7r4vCGLMAdWpO8ygJKqjoM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ttmzcuOrdb8DZ4CK59ywKT8/Ood3XnoiBTD82RChg9TLuN6/0u6ZrALP/FDTLhtFwGcI3QKd8bcKJdWf9P383v5RK1uGeNoQHDpN0H7vyaoQpEiDZtlmZOldm/cqOBDXpXuk4ZnzXu0dSbj/6uRPsGF9W2oja+iHQF76Vrnfg5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [119.122.215.209])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1eff292fb;
	Mon, 11 Aug 2025 21:01:16 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: heiko@sntech.de
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	naoki@radxa.com,
	robh@kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: disable display subsystem for Radxa E52C
Date: Mon, 11 Aug 2025 21:01:08 +0800
Message-Id: <20250811130108.462673-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <3125650.687JKscXgg@diego>
References: <3125650.687JKscXgg@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9899388b3703a2kunm7ec5851e6449
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGUodVk0eGkpPQ0MYHh5OH1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVJS0JZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVU
	pCS0tZBg++

Hi,

> What actual problem does this fix?
>
> For example we also enable on-soc iommus all the time, because they're
> on the soc and don't need board-level properties.
>
> The "display-subsystem" without users looks mostly in the same spot.
>
> So I do expect a description of what problem gets fixed that this needs
> to be disabled.

Disable the display-subsystem to remove this error log:
[    1.382440] rockchip-drm display-subsystem: [drm:0xffffa3985873555c] *ERROR* No available vop found for display-subsystem.

I will improve the commit message in v2. Do I need to remove the Fixes tag?

Thanks,
Chukun

--
2.25.1



