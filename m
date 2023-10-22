Return-Path: <devicetree+bounces-10590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 725DB7D22D7
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 13:18:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23FA9281293
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 11:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 947BC17E6;
	Sun, 22 Oct 2023 11:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C3F23A8
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 11:18:47 +0000 (UTC)
X-Greylist: delayed 582 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 22 Oct 2023 04:18:45 PDT
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 920B4E5
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 04:18:45 -0700 (PDT)
Received: from Vostro-3710.lan (unknown [58.61.140.248])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id A9001800084;
	Sun, 22 Oct 2023 19:08:15 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jernej.skrabec@gmail.com
Cc: andre.przywara@arm.com,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	samuel@sholland.org,
	wens@csie.org,
	devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 2/2] arm64: dts: allwinner: h616: update emac properties for Orange Pi Zero 3
Date: Sun, 22 Oct 2023 19:08:11 +0800
Message-Id: <20231022110811.1109389-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <3254946.aeNJFYEL58@jernej-laptop>
References: <3254946.aeNJFYEL58@jernej-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGBpOVk9KTEkaHUJDHkJPHlUTARMWGhIXJBQOD1
	lXWRgSC1lBWU5DVU1KVUpPS1VJT0NZV1kWGg8SFR0UWUFZT0tIVUpKS0hKQ1VKS0tVS1kG
X-HM-Tid: 0a8b57124132b03akuuua9001800084
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PyI6PCo4MTw6UUIxNjcvPC4f
	KQgKChVVSlVKTUJMQkxJQ0JNTUhLVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWU5D
	VU1KVUpPS1VJT0NZV1kIAVlBSUlJQzcG

> Can you also explain how did you figure out that additional PHY properties
> are needed? At first glance, based on description of motorcomm,keep-pll-enabled,
> it's not immediately clear why it should be needed. Same goes for second
> property.

This is based on a search for
'motorcomm,clk-out-frequency-hz = <125000000>' in the kernel.
Refer to device tree of other devices with the same properties.
After a simple short test, it seems that it is unnecessary.
I will delete these two properties in patch v2.

> 1800 ps delay basically means that rgmii is not correct type and rgmii-rxid
> should be used instead. Indeed, schematic confirms that's the case. With that,
> allwinner,rx-delay-ps can be 0 and thus ommited from DT file.

Thanks, rgmii-rxid works for me. Will be corrected in patch v2.

Thanks,
Chukun

-- 
2.25.1


