Return-Path: <devicetree+bounces-137162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DD6A07BF3
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 16:29:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36A383A4044
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 15:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8303B21C9FB;
	Thu,  9 Jan 2025 15:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="MK0ZJC8W"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4DF21B8E1;
	Thu,  9 Jan 2025 15:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736436575; cv=none; b=blrOx7TKnbzpE2ECw+QuDWkI4JxKRXjZbQi7ZOMV6kKqHb0F5V7UhbFF2TDWMPGgf37rxatACZztuhzeR5BBQ1923pZ2NBjE136FZ5AM3ey0ORLCn6yuw+WG/aPY0x152JktqlhE4/ylFc+SWlRY97MthMNFCsdKX8YegrKEmj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736436575; c=relaxed/simple;
	bh=58HVzZDTeeq12T3m5Pqmj8JqNJNkcnkN3ln5yGhsGDg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GEFwD5APdEuZEs2xd0KBKYjH1fO0HV2x4GKRnUsyJ0L7GN6Q3X2GVaT3c2/462JTKHmrwy6Q/rgCiAZ5E9uSCl77km35IndZ7+9gq1A3d00SGa5fkxKz1TKwn+h+EzTPeVDlaqLr0f852kH3WVby1/8CPjLnVHB0za5R7q4Wdgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=MK0ZJC8W; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=wcaRzf1RZiP/gm4yLAggbk3sbQOwg2d/qtzzehpcOxk=; b=MK0ZJC8W5UcLMhS3mEZHKpkP5j
	jcsIassyc/rfjr2EjrAMMQHB7Nb2vg8/skeP/V5yyjfMd/0QSWIEETM8DhVJztGwcyh7t9ad/Qhgq
	6F6NXhYb8ZJ0UtlaYAbbmQ6VQiY2/cTJIGHTB3/XsFJjufqaln3BBsehb7Pb7ghGJ9FzQfCb2pC/n
	d0OeknWls6OHOLJtsS2YAZ3Glp7BPrvltxCRrnfz8sX2lwsphvKQumtejtI1MoFoNJBkQ3TuJ7LF3
	22WYO0zQ0POflmMsm/mkDlcv8VxO1iep/HpIwaNOgUPcmKOJc4EFhO9Yw1aTpv2Ej+NECmTY77q7S
	uqJlzNuQ==;
Received: from i5e860d05.versanet.de ([94.134.13.5] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVuTN-00034G-R7; Thu, 09 Jan 2025 16:29:25 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Frank Wang <frawang.cn@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 william.wu@rock-chips.com, yubing.zhang@rock-chips.com,
 tim.chen@rock-chips.com, kever.yang@rock-chips.com,
 Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add usb related nodes for rk3576
Date: Thu, 09 Jan 2025 16:29:24 +0100
Message-ID: <2261019.ZfL8zNpBrT@diego>
In-Reply-To: <20241210085053.64294-1-frawang.cn@gmail.com>
References: <20241210085053.64294-1-frawang.cn@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Dienstag, 10. Dezember 2024, 09:50:53 CET schrieb Frank Wang:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> This adds USB and USB-PHY related nodes for RK3576 SoC.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
> The compatible string "rockchip,rk3576-naneng-combphy" in the patch
> depends on the following commit which has not merged into this branch.
>  - https://patchwork.kernel.org/project/linux-phy/patch/20241106021357.19782-1-frawang.cn@gmail.com/

just as a note to myself, Kever picked this patch into his series adding
the rk3576-evb1 board and I used the one from there.



