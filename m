Return-Path: <devicetree+bounces-71119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A89E88D5D4B
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 10:56:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D296B1C23925
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 08:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA36155CBC;
	Fri, 31 May 2024 08:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="Wx7+K9I9"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469C2155CAE
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 08:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717145782; cv=none; b=NBEwzb/aVFOXUMwtq/2kVwS4Tc3ZHfxLLl/TGtqxPZSihs9nDUbDEfgHeRWMDmsyLXVh9+DhaWV3+qWkyo5tYNDMgHfa+Gz4wrHMI46czAzZQGqIaKVsX7o+R8UFRErUfsPUdWLmHqJXTD9gLTN/G0Cthx9Bhm+ADZcWeSKNdE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717145782; c=relaxed/simple;
	bh=jSkjoXfPxbztsavIR1Y+otMrT78U4JrWKZqw4zxCY/U=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=cWw5g7go/bc6UqIOyMIUOLsLBuVBanoSZD9FqvYSVfo7HCXx/1RcY2Gh2yDWmr60pZWsiWs84yiAdo44LUl+ol1V0Uh+ZRvajlhjMw/HLnz5f16ZXlR6e8/T8j3ZWTKvknlOK6bL9vIR57WIEh/7xQgd2s5Ot5X1Bxj+EVxwqAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=Wx7+K9I9; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1717145777; x=1719737777;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=jSkjoXfPxbztsavIR1Y+otMrT78U4JrWKZqw4zxCY/U=;
	b=Wx7+K9I9f5R7c91j9uFfAM5oQhAv6MrwIDkINTQUeShH874rdzLWk31ii6iqkU5y
	ifm6JEqw7pFtcoB78JjwmkTGD5kSvozLJY8QLZTiaKWXL3JkAeltrjJnlSrLsydg
	sQ8jKP9vAdEBGqpwJFRV0BlQnv3LC2v+vTQGRDvxHGM=;
X-AuditID: ac14000a-03e52700000021bc-d4-665990b14a7c
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id B6.75.08636.1B099566; Fri, 31 May 2024 10:56:17 +0200 (CEST)
Received: from [172.25.39.28] (172.25.0.11) by Berlix.phytec.de (172.25.0.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Fri, 31 May
 2024 10:56:16 +0200
Message-ID: <bc928849-7026-47b5-9160-908bfc6daecf@phytec.de>
Date: Fri, 31 May 2024 10:56:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] Add overlays to disable optional hardware in
 k3-am6xx-phycore-som boards
To: Nathan Morrisson <nmorrisson@phytec.com>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
References: <20240528225137.3629698-1-nmorrisson@phytec.com>
Content-Language: en-US
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <20240528225137.3629698-1-nmorrisson@phytec.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIIsWRmVeSWpSXmKPExsWyRpKBR3fjhMg0g7XNghZr9p5jsph/5Byr
	xfLPs9ktXs66x2ax6fE1VovLu+awWbz5cZbJ4kPjZjaL/3t2sFt0v1O3+H/2A7sDt8emVZ1s
	HpuX1Hv0d7ewevy5+I7V4/iN7UwenzfJBbBFcdmkpOZklqUW6dslcGX8XP2JrWA7V8WCXa0s
	DYyHOLoYOTkkBEwkZnW+YgOxhQSWMEl0vwnpYuQCsu8yShxYtYwJJMErYCMx6dwbZhCbRUBV
	4m77KRaIuKDEyZlPwGxRAXmJ+7dmsHcxcnAIC6RJXO4zApkjIrCUUeLxqh1MIA6zQBujxJOH
	B5hBioSAhl67XArSyywgLnHryXywXWwC6hJ3NnxjBbE5BWwlPj5czQJRYyGx+M1BdghbXmL7
	2znMEEfLS7y4tJwF4hl5iWnnXjND2KESW79sZ5rAKDwLyamzkKybhWTsLCRjFzCyrGIUys1M
	zk4tyszWK8ioLElN1ktJ3cQIijYRBq4djH1zPA4xMnEwHmKU4GBWEuH9lR6RJsSbklhZlVqU
	H19UmpNafIhRmoNFSZx3dUdwqpBAemJJanZqakFqEUyWiYNTqoEx1SZ75ot9TkxuKmmdLfPl
	H/wqPG/74wvT5gd6lsftDE599no/ic2xSWS3VH8cqwP7zWoVRa5dNcbyny0rxfQNTJmFAo3u
	8h7e0hC+/hL/0mePNh58/f7LSpeCO5eO3r7Utpqp7qrl7CsLXjNVzToZxKU067RKt5Xd/paz
	zR8LmKVFHetuv5FSYinOSDTUYi4qTgQAESXbtaQCAAA=



Am 29.05.24 um 00:51 schrieb Nathan Morrisson:
> Add three overlays to disable the eth phy, rtc, and spi nor. These
> overlays will be used to disable device tree nodes for components
> that are optionally not populated.
> 
> v2:
>    - Add build time tests in makefile

For the whole series,

Reviewed-by: Wadim Egorov <w.egorov@phytec.de>

> 
> Nathan Morrisson (4):
>    arm64: dts: ti: k3-am64-phycore-som: Add serial_flash label
>    arm64: dts: ti: k3-am6xx-phycore-som: Add overlay to disable eth phy
>    arm64: dts: ti: k3-am6xx-phycore-som: Add overlay to disable rtc
>    arm64: dts: ti: k3-am6xx-phycore-som: Add overlay to disabl spi nor
> 
>   arch/arm64/boot/dts/ti/Makefile               | 17 +++++++++++++++++
>   .../boot/dts/ti/k3-am64-phycore-som.dtsi      |  2 +-
>   .../ti/k3-am6xx-phycore-disable-eth-phy.dtso  | 19 +++++++++++++++++++
>   .../dts/ti/k3-am6xx-phycore-disable-rtc.dtso  | 15 +++++++++++++++
>   .../ti/k3-am6xx-phycore-disable-spi-nor.dtso  | 15 +++++++++++++++
>   5 files changed, 67 insertions(+), 1 deletion(-)
>   create mode 100644 arch/arm64/boot/dts/ti/k3-am6xx-phycore-disable-eth-phy.dtso
>   create mode 100644 arch/arm64/boot/dts/ti/k3-am6xx-phycore-disable-rtc.dtso
>   create mode 100644 arch/arm64/boot/dts/ti/k3-am6xx-phycore-disable-spi-nor.dtso
> 

