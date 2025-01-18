Return-Path: <devicetree+bounces-139455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8A0A15D4D
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 15:30:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30A3B18875D1
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 14:30:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04C06149C53;
	Sat, 18 Jan 2025 14:30:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A54D40849;
	Sat, 18 Jan 2025 14:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737210626; cv=none; b=WOMWeMqqdKFI0DTt8JEKwLRHMM6tMX4zpSgBmy60+62Fz4zC/ZfLrK2JWMxw03nxgLaa3/g+TD+y/xK4ALWEWob5mq1C/rkH7yfRGNg9yg/3FhNmBZbIKpC7rs1i5NZS6shUzXVbSUvHxYfvvFYiS3S8JGKnHwXLXFqluaJmLiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737210626; c=relaxed/simple;
	bh=oPv2OqFOxa3uDQG2p/G0wAmox6f//0JANu+KVpL/E5s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dL5GvyBOXAdyLN3JdqvTZAViqxKXwwxRZMn9bse9HqfK9HxrJjkYe+L0nJV3V3GJAARV/wGaCBx7deAFwq2Mq4dpE5Py1oQ/lcfG7THxWs1AfY3o0JKFvu5FDHsRgJQpy8yJdKULmKX6pXgOr+CTVzYmnMSRpv3DPSZNhF5Rqe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:370::1])
	by smtp.qiye.163.com (Hmail) with ESMTP id 910c6354;
	Sat, 18 Jan 2025 22:30:12 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: bigfoot@classfun.cn
Cc: amadeus@jmu.edu.cn,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 3/3] arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
Date: Sat, 18 Jan 2025 22:30:08 +0800
Message-Id: <20250118143008.49352-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <000e447d-a1bc-4118-865c-8c0b70146ab6@classfun.cn>
References: <000e447d-a1bc-4118-865c-8c0b70146ab6@classfun.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGR0ZVh5DSE1LTx8ZHU8aGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQUhMS0FBSllXWRYaDxIVHRRZQVlPS0hVSktISk5MSV
	VKS0tVSkJLS1kG
X-HM-Tid: 0a9479d2498503a2kunm910c6354
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PTY6Dgw6HDIJTzNOTk4rTgws
	NEoKFCtVSlVKTEhMSUpLTUpJTU5PVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBSExLQUFKWVdZCAFZQU1LSjcG

Hi,
> It really helped me, I wrote first dts with reference
> to it and other devices in mainline.
> Could there be a better reference link here?

No need, subject to the schematics.
My previous reply was also based on schematics.

> In the schematics for that slot I saw that it only has a PCIe3.0 x1
> connected. I think maybe max-link-speed = <1> is wrong.
> Now modify it to the following, it should look correct?

'max-link-speed = <3>;' already defined in rk3568.dtsi
I'm not sure about this, can you test that it works?
Without splitting, num-lanes should be 2.

-- 
2.25.1


