Return-Path: <devicetree+bounces-60455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3438A95BA
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 11:12:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0BE0B1C20A6E
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 09:12:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11C9815B117;
	Thu, 18 Apr 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="Ey47FnVg";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="EJRlq9/s"
X-Original-To: devicetree@vger.kernel.org
Received: from e3i51.smtp2go.com (e3i51.smtp2go.com [158.120.84.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5268715ADA7
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 09:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=158.120.84.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713431543; cv=none; b=V+61dkCywjSJZiUu6xSvbLB9aD8ZEbFUzpRZA6CORTAzrJZR0MQwqtwx00pJbjpHjns131uEQtNZL2ejKgsCCP/7PCWJRB13TCJJPHUQxf925kVHKJuUcKPvzQSgA4VwTyGBGJsG/0Umy+XitYIcitFj+NFfvjYNidyZIiaSg/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713431543; c=relaxed/simple;
	bh=wCjv6Xzm1cjaoi/YRo8jMzIxyS8oq6XhXdIspfSmHM8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JaqbhW0+g+0Ek25ZSC+yxXWPAvnapWkLuKWLyg6lJCu4hN2kXGUUR88dGI7CQUtL1rYK/tsSRAMom1JPCu+iebgJA2HBJiSGfhaxzI0yhri22QPnBBGLMNE2ixV/zSpZrzuoTY9/gQ8mYcQ/uYrxax1qfaxS+Q/CfpgO6ovFiN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=Ey47FnVg; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=EJRlq9/s; arc=none smtp.client-ip=158.120.84.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
Received: from [10.86.249.198] (helo=asas054.asem.intra)
	by smtpcorp.com with esmtpa (Exim 4.96.1-S2G)
	(envelope-from <f.suligoi@asem.it>)
	id 1rxNoQ-wSS1uD-29;
	Thu, 18 Apr 2024 09:12:10 +0000
Received: from flavio-x.asem.intra ([172.16.18.47]) by asas054.asem.intra with Microsoft SMTPSVC(10.0.14393.4169);
	 Thu, 18 Apr 2024 11:12:09 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: "David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Flavio Suligoi <f.suligoi@asem.it>
Subject: [PATCH v2 0/1] dt-bindings: net: snps,dwmac: remove tx-sched-sp
Date: Thu, 18 Apr 2024 11:11:47 +0200
Message-Id: <20240418091148.1968155-1-f.suligoi@asem.it>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 18 Apr 2024 09:12:09.0319 (UTC) FILETIME=[7DC3A770:01DA9170]
X-smtpcorp-track: 1rxNoQwSS1ID29.mDeouQBEXb_hd
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smtpcorp.com;
 i=@smtpcorp.com; q=dns/txt; s=a1-4; t=1713431532; h=feedback-id :
 x-smtpcorp-track : date : message-id : to : subject : from : reply-to
 : sender : list-unsubscribe;
 bh=SBklWFLQQtr8jhC7pbpaMUNxe5f++YTA1y6M3WTcp0U=;
 b=Ey47FnVgocQFrimK4KV7HA3hWjRFH9pmqr6EHQ8iZ89nuA4FKwriREGI0Kd6E/bOoi7FW
 vnOYbLCgqsmix8f8SkPNePH5BJePo7fNZTb10WadNdFufzrQ6n1a5NnoIdmyXA+wwi3eIp9
 ldLad+fTkSyQhrMT6cT/cmofHkkczwZb4JuVxD1gW68PBuQCfQfjZ3qIcGI+wp38Bgk/jV4
 i8/EcUmLv0BVOY2D7fOU5nnEwIWnQYDYBF5ECspWAfdjd9f+aYlY/iONEahpuGlet7mCNn0
 nIkA2KqqpJtQL3xSxnZqMpQ7K+vB2fvYLaaTam/066Sj4dKzjRPu6hhd+1FA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1713431532; h=from : subject : to
 : message-id : date; bh=SBklWFLQQtr8jhC7pbpaMUNxe5f++YTA1y6M3WTcp0U=;
 b=EJRlq9/sdF5hg/75qNnkbIWori14p/twESBSfFyGSETluX1kx7rKcxH9bQWGQ4nZ2vqmh
 65jjjHKsQthZYLWmI4heW5cl5LJjZi3vOUyUlYibR8aikfFHGV8ZSWQGiz41CcNChsw35EO
 VN32leuKgBanmDlvrQrT7QX0whWY8gfwJAZ297tbUTfQqRh+8IaBSnTCERwehHY7bxw5YDx
 U1rjxRTmMsIAR/oXgzaAkqYdL75PJFAzWSfuOJbkM4zkvgNzsZ2H8u8dVgwY+YkCOaBk5iq
 k39Yddc6xICE54roXpmIJponQm0na3L26P837aJab/7gog9e7/R5UqEzZOHA==

Strict priority for the tx scheduler is by default in Linux driver, so the
tx-sched-sp property was removed in commit aed6864035b1 ("net: stmmac:
platform: Delete a redundant condition branch").

This property is still in use in the following DT (and it will be removed
in a separate patch series):

- arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi
- arch/arm64/boot/dts/freescale/imx8mp-evk.dts
- arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
- arch/arm64/boot/dts/qcom/sa8540p-ride.dts
- arch/arm64/boot/dts/qcom/sa8775p-ride.dts

There is no problem if that property is still used in the DTs above,
since, as seen above, it is a default property of the driver.

Flavio Suligoi (1):
  dt-bindings: net: snps,dwmac: remove tx-sched-sp property

 .../devicetree/bindings/net/snps,dwmac.yaml        | 14 --------------
 1 file changed, 14 deletions(-)

-- 
2.34.1


