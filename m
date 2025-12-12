Return-Path: <devicetree+bounces-246216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E708CBA114
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 00:50:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C39130977E9
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 23:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 693D02D0283;
	Fri, 12 Dec 2025 23:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b="nZPdF2MW"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB3A2BDC3F
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 23:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765583418; cv=none; b=eSnAPGTpYD4pDzCEv9vX8GbLRq7BRjIbmsysAQpkj3ORs9+PUEF2VGuxAPig5oJTnW5xTylhVvJZizZ4b8YOOPNp90JUgGzotqQoAUjdWYGDh4a0yf0Ut2KitG+O+NKaYOyLJ195GWQROUCrVxhhrFoptxYEbw+KgqsMWvL94+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765583418; c=relaxed/simple;
	bh=x45WV6B65y1LYkFFpwm5z3sjTt12/+FjgRk48u8KC4g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oNjw9Hi3hw/emVT8kv2LswfSDuqCUpjKcJZB0q84JeCFt9/6OjkvffyvuNJnQYlpKgQ7vhXOZflxY4Th7gzzowmStpLX6FLCp5KNpPyUHYeaR0jIfwGjwtGVCGj+/4E1VpZKAWoFh6aW2Uigt+u2Xfo96QjtjvOLDtM+6Vw1bNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de; spf=pass smtp.mailfrom=posteo.de; dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b=nZPdF2MW; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.de
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id CF7A9240105
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 00:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.de; s=2017;
	t=1765583413; bh=DhnIQJhYt6frMQDEzUl2UnGpUcZg2IdR59Af7tBLeXk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:From;
	b=nZPdF2MW6m9IOYyXzZtUd1r1ywjf1ar6h/Nu9iLH5p59ZV1kbnl+MCxCfolgg4V+c
	 Ri9ZgYds/qMSG5/FdZzclRlpmwDCzQ1xwZOSICj9ijbJuSqJTrIM5rmSbz+Ffx3hZm
	 4k0sounVbQms84237dOVjJ5ATDv09wnsNSl7uwLFHu/WuFNpwjAbOu+hdz+UIWDBXl
	 xwRAT8OByefuUaubsgl/b6CqGVnJ9sE1zrL+JcE9x2RWRFv8iyO7GjAR46XX3RBCPx
	 Lyek3tNctnSBtKOV6Brs2ZBLm8SuP9jCy9Iun6uyK7iy1Ws+CWinefw878SFocQ0V0
	 S3Nfsw7Buw4BQ==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4dSmR85RRtz9rxD;
	Sat, 13 Dec 2025 00:50:12 +0100 (CET)
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
Subject: Re: [PATCH v2] arm64: dts: rockchip: Adjust RGMII TXD/RXD delays for the Rock Pi E
Date: Fri, 12 Dec 2025 23:50:13 +0000
Message-ID: <20251212234957.591812-1-adrian.kossmann@posteo.de>
In-Reply-To: <57e99fa1-0e59-4129-bcae-b94df46447e7@lunn.ch>
References: <57e99fa1-0e59-4129-bcae-b94df46447e7@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Andrew,

> rgmii means the PCB provides the delay. I doubt that is the
> case.

Yes, however, to my understanding, there are two kinds of delays that
influence RGMII timing: Delays that are added onto the clock signal 
(TXC/RXC) and delays added to the data signal (TXD/RXD) by the GMAC.
The link provided by you describes delays that are either introduced by 
longer clock traces  on the PCB (rgmii phy-mode) or by programmable clock delays 
(rgmii-id phy-mode). Delays for TXD timing and RXD timing are described in [1] 
and are implemented by the Rockchip Ethernet driver which is bound to node 
gmac2io according to [2]. The example DT binding in [1] as well as other 
mainline DTS of devices that use the RK3328 seem to adjust RGMII timing 
via TXD and RXD delays and setting phy-mode to rgmii, despite having 
programmable TXC/RXC delays, at least according to the technical 
manual of the RK3328. So, in this case this may be an exception
from the usual convention that any RGMII phy mode other than 
'rgmii-id' is probably wrong.

Of course, I may have overlooked something or misunderstood, and I 
would appreciate further guidance in this case.

[1] https://www.kernel.org/doc/Documentation/devicetree/bindings/net/rockchip-dwmac.txt
[2] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/tree/arch/arm64/boot/dts/rockchip/rk3328.dtsi#n982


      Adrian


