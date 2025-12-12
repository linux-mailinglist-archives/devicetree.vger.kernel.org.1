Return-Path: <devicetree+bounces-246188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF19CB9C24
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 21:26:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F09E306E039
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 20:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58A0930E826;
	Fri, 12 Dec 2025 20:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b="LaI18/Hl"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960E73101DF
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 20:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765571120; cv=none; b=Mb1Eo5nswjoZW2Dh/QCmCURxZi6T4Yj4NjWPgGhpt8maPklKeD7tiZZ1QKS5uvb1dAukVKTag9VWXWXMZs1lm1YHApjygeejdJRx0z7RTBH38SSVTLxwVKXwIGXd3dvyfd1t2tu79JGPcxBW1EznE7oAwlGSNspplB7sG0x3QcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765571120; c=relaxed/simple;
	bh=sr0I7GX+0/KZ5Qw5QXDqyGjdqDyDFrh3GHjNOtPm3rE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KbonJnP9qUK/kcA2sP8WjrWdc0uxnLqBP1jzMOtNq8wukKfrM4H2196tBgOsNUia54kX8twgYNusBd9elZ7EfzG3IJxjyarQCfX2LXsU/oc637sEXt4IyEsqbkJAl4vU8+a44HkNXrxD7UIQEjRKgiOy0QrsNq6yh4sV/5gseCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de; spf=pass smtp.mailfrom=posteo.de; dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b=LaI18/Hl; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.de
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id BD2AD240101
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 21:25:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.de; s=2017;
	t=1765571116; bh=10qdpGGqPeb9LfijJwwMefCJOSFYWatV7/F0eGW2+yg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:From;
	b=LaI18/HlQT6+y+oetKpJqw+T1INzQDbxJYtySCByp78RzrkxjzSs8fWzYcXnWkHK7
	 Trp/66cAucpheD6HoZ6rbuWRnCk+sYePsjiREBHDYJJukSJBH6foGYIxeim/gzPeJP
	 qNR0oMq4dRN83an58x0EMeeKpb9gI42qC/Z5BBcgKMRCz/62N0k4VYu+kZQBwiCfiA
	 nXBwwPn1Y2R11Pe3KQm7JGyQ1byg5qLpujbJJnMUd2NdTx3KhFUdNu8fcaQkY+gcLH
	 urZkW7+i5QwG7O6263hOHF8/QbWB8jdr9Va4N5no93IrHHWJqJCCsC64TjEjv+kRXP
	 5JDJTf1cKZTVQ==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4dSgtX5r0pz9rxD;
	Fri, 12 Dec 2025 21:25:08 +0100 (CET)
From: Adrian Kossmann <adrian.kossmann@posteo.de>
To: andrew@lunn.ch
Cc: adrian.kossmann@posteo.de,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add compatible for Ethernet PHY
Date: Fri, 12 Dec 2025 20:25:11 +0000
Message-ID: <20251212202451.556449-1-adrian.kossmann@posteo.de>
In-Reply-To: <8e4607b7-8045-413d-aa3e-c2c1a74f52a6@lunn.ch>
References: <8e4607b7-8045-413d-aa3e-c2c1a74f52a6@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Andrew,

> It is a bit unusual for phylib to get the wrong driver, so i would
like to understand this a bit more.

after double-checking my setup I found that the PHY is in fact always 
bound to the RTL8211F driver, even without the compatible string, and 
this was rather an issue with my setup. 

The link instability I observed was caused by inappropriate RGMII RX/TX 
delay settings in the mainline DTS. With the current values for 
rx_delay and tx_delay in the mainline DTS the link collapsed under load. 
I've troubleshooted this with a known-good DTB and using its rx_delay 
and tx_delay values fixes the issue. 
I will send a v2 patch adjusting the delays instead of adding a compatible.

      Adrian


