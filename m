Return-Path: <devicetree+bounces-171344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDF0A9E662
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 05:00:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB8367AA6B5
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 02:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34C8529D0D;
	Mon, 28 Apr 2025 03:00:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5EBC440C
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 03:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745809231; cv=none; b=ur1HSNEqKggFryPEqTxdvskVZUAgRN8/rwpIChzj0WoJ77fPPOQY7cts7ziqFl61irn5EA3RmsAP6n9JGn3pdB5debsgZduMbv30h3BQd/9Epms2bRzOlVzopsIeRRJi/XHwjvVt/puqXJXuCLyC2t98cF/Wmx5RGlKSCNPHr5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745809231; c=relaxed/simple;
	bh=CtUXV0mQGTIfcUY2YyNONZFmUZy0TvR6ETuJjqvz6Yk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IO2yiweT1cLXCh7BdzM0TSMq0nQM2b2hAtYZUU0+3F4KQypidHb8sPAoZAtA4m5d/C2bPztJFWS97T+cFfuVPvZOPyMXr4ywpvKWqV6l5pmyN1MNn3qCOT2oy+TawspKwydEC6FTY3UgJKiMCl8thw5zjBWbKm+jBquFG/557+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c02:4b80:f94c:5522:c71d:5af2])
	by smtp.qiye.163.com (Hmail) with ESMTP id 13549a7de;
	Mon, 28 Apr 2025 11:00:17 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: wens@csie.org
Cc: andre.przywara@arm.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	jernej.skrabec@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	robh@kernel.org,
	samuel@sholland.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH] arm64: dts: allwinner: a523: fix SD card detect pull resistor
Date: Mon, 28 Apr 2025 11:00:15 +0800
Message-Id: <20250428030015.20915-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAGb2v67=aENryhsQ6VBPwPXskMvMDZpzzeHz2LTUt-VDMTyzGQ@mail.gmail.com>
References: <CAGb2v67=aENryhsQ6VBPwPXskMvMDZpzzeHz2LTUt-VDMTyzGQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCQ0JDVh5OGkpOT0oYT0xPH1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtJQU8ZQ0tBHUJPGEFOTklJQRhMSh9BThodSVlXWRYaDx
	IVHRRZQVlPS0hVSktISk5MTlVKS0tVSkJLS1kG
X-HM-Tid: 0a967a5696cc03a2kunm13549a7de
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NCo6FDo6FDICSjY#Py0SGAFO
	GBUwCxhVSlVKTE9OQ0tCSUpDSEJIVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0lBTxlDS0EdQk8YQU5OSUlBGExKH0FOGh1JWVdZCAFZQUpJT043Bg++

Hi,

> Fixes separated and squashed into the original patches.

https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git/commit/?h=sunxi/dt-for-6.16&id=dd97ddc4da0af02139b0e97e98c210219631e161

In the above commit, dts was renamed but Makefile was not changed.

> +dtb-$(CONFIG_ARCH_SUNXI) += sun55i-a527-radxa-a5e.dtb

Do you want a patch or will you rebase again?

Thanks,
Chukun

--
2.25.1


