Return-Path: <devicetree+bounces-133447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2259FA990
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 04:02:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE9C0165406
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 03:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5028017BB6;
	Mon, 23 Dec 2024 03:00:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCCE15383D;
	Mon, 23 Dec 2024 03:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734922818; cv=none; b=A8z6wMEcnd/lPGW9OrNqq2XGwpGDVWCmuNEROWZIuKHk6V4PDF14/2nFrtuIZC/EbAP8vPtXjKHIhxsaXh8WZeuh4NUS6ArSm1OLquEHnHkONOfzeXPCMj4gBaxyw5ad+kmytnZkRCUUXkk9v2RJnA+9fuIFLjz75fNktypkRpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734922818; c=relaxed/simple;
	bh=73A9atQHRZIveqIcOktrdDbBHO5FZgLxSugaD9Rn1kk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PmDJiAkPKyzyH7CfYIVQWgB1sminwdPXxPIhQZ2GToDy4jEzq26fCfqQa7ygyYauvahf1QjsvQ26ckxUhQpampiYJYhnqFJfknH9bV7LjWeIRkN6ANMr2wwi2/hAmLIOPBjMFDQsXVoN4ITez1OYQGzB5G6TxCLXBonHHw+cnXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:2500:9a4a:8d89:5df0:cf6f])
	by smtp.qiye.163.com (Hmail) with ESMTP id 67eb317c;
	Mon, 23 Dec 2024 11:00:09 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: default to host mode for USB on Radxa E25
Date: Mon, 23 Dec 2024 11:00:06 +0800
Message-Id: <20241223030006.852427-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <4D8217DF36191C3E+be8bbb4f-ea52-4f81-8501-ff551f54621c@radxa.com>
References: <4D8217DF36191C3E+be8bbb4f-ea52-4f81-8501-ff551f54621c@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGEoYVkwZH0xNQk1JSkJCTlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQUlOS0tBQhpPGkFDH0NCQU4fHUtBGB1NHVlXWRYaDx
	IVHRRZQVlPS0hVSktISk5MTlVKS0tVSkJLS1kG
X-HM-Tid: 0a93f1752f1703a2kunm67eb317c
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PDo6Hww*OjISTQMwFj4jKh4*
	Mj4KCQlVSlVKTEhPQklJQ0pLS0pIVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBSU5LS0FCGk8aQUMfQ0JBTh8dS0EYHU0dWVdZCAFZQUhNSTcG

Hi,
> I've been using the uSD card for a long time as a bootloader only,
> so I don't know what the problem is.
>
> Do you have any information on how to reproduce the problem?
>
> Best regards,

Not stable on openwrt/lede, sometimes falling to sd-highspeed.
Maybe it would be better to switch to sd-uhs-sdr50 mode.

Thanks,
Chukun

-- 
2.25.1


