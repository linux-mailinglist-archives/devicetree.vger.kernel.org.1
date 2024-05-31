Return-Path: <devicetree+bounces-71120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0218D5D54
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 10:57:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EEFC81F24FBC
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 08:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0108A156641;
	Fri, 31 May 2024 08:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="FdFmxZna"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59214156231
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 08:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717145832; cv=none; b=IBI6iF5mj8irwDxIZLptV5fLBNiCEYc3+WGgJ+8UdRDlDd3F2yu16xuCvAOHUqTUc9WI4YOq+1S+eWPJP4G19srZVOV68XtwT5vF2VnlaiTfeOMFVToqdVOy1JxEQIOsPffcvlIizvfd9rY27kCGWZ0VBp2umwTtEuu3ANr3F8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717145832; c=relaxed/simple;
	bh=ZYOlG0hwgWe5lrDt9mHHOsFVcz6sCCOwrpcikGWc4S4=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=fBeRPJmJazH+kTCeWUZ8b79/w+Kcwo9CdtZgnVadJqLZ8A5VvGplMT9Q1QzXDl2cgoX/fH3QDDkmfQcgLMmlRZM/ehfJD7OMBVimBLUtbrjySrgOAW0qZBYJ9plSb9SlziF9rfV4SLKA+EnHyWj+Z1iF2QM0TmCGyh3KzMAsiC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=FdFmxZna; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1717145827; x=1719737827;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZYOlG0hwgWe5lrDt9mHHOsFVcz6sCCOwrpcikGWc4S4=;
	b=FdFmxZnawh/TD1MkaccEmqqS5OL7MJqgwaXPUNa4v/l80ym2oVBsnMXvUjII3d3N
	lwekOINCl2ltiMV4rNtA+nkNjB/QGoSJLm+EeuUmXw2yt0EmhVTafzuC4DU31Zug
	NGntx3Vl/8yTtA3R3UlsGit6EBhU0Vm/H0P1pElwKok=;
X-AuditID: ac14000a-03251700000021bc-e1-665990e346f9
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id D9.75.08636.3E099566; Fri, 31 May 2024 10:57:07 +0200 (CEST)
Received: from [172.25.39.28] (172.25.0.11) by Berlix.phytec.de (172.25.0.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Fri, 31 May
 2024 10:57:05 +0200
Message-ID: <158261b3-bf77-46a6-836b-c996267d8d16@phytec.de>
Date: Fri, 31 May 2024 10:57:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] arm64: dts: ti: k3-am64-phycore-som: Add
 serial_flash label
To: Krzysztof Kozlowski <krzk@kernel.org>, Nathan Morrisson
	<nmorrisson@phytec.com>, <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
References: <20240528225137.3629698-1-nmorrisson@phytec.com>
 <20240528225137.3629698-2-nmorrisson@phytec.com>
 <bd062517-4756-4ba3-b937-c3a2db7a9855@phytec.de>
 <99bed183-9b3e-437a-8c35-8a345f4a3558@kernel.org>
Content-Language: en-US
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <99bed183-9b3e-437a-8c35-8a345f4a3558@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsWyRpKBR/fxhMg0gy9X2SzW7D3HZDH/yDlW
	i+WfZ7NbvJx1j83i/PkN7BabHl9jtbi8aw6bxZsfZ5ksPjRuZrP4v2cHu0X3O3WL/2c/sDvw
	eGxa1cnmsXlJvUd/dwurx5+L71g9jt/YzuTxeZNcAFsUl01Kak5mWWqRvl0CV8bVFZtYCv6x
	VFxc/ZO5gfE3cxcjJ4eEgInErK+fgWwuDiGBJUwSG44cYAJJCAncZZRoeeIHYvMK2EjsmtLB
	DmKzCKhKNG7fywYRF5Q4OfMJC4gtKiAvcf/WDLAaYYFIie+vZoANFRE4wyixc8ZVRhCHWaCN
	UeLJwwNQ664xSlz+3Ae2jllAXOLWk/lgNpuAusSdDd9Yuxg5ODgF7CTWHtKHKLGQWPzmIDuE
	LS+x/e0cZohL5SVeXFrOAvGOvMS0c6+hXguV2PplO9MERuFZSI6dhWTbLCRjZyEZu4CRZRWj
	UG5mcnZqUWa2XkFGZUlqsl5K6iZGUOyJMHDtYOyb43GIkYmD8RCjBAezkgjvr/SINCHelMTK
	qtSi/Pii0pzU4kOM0hwsSuK8qzuCU4UE0hNLUrNTUwtSi2CyTBycUg2MAf4JL1Z9E54iuHlR
	/NUzZ9leFT4K1Ls+qS1x6VG7i0+4V5wRLH9h1qU1STqD72wP8wzbgOw/a7l3cijN1i6afdLS
	wi5i5V7DR11Rsw+yLXa9eWlS6bSv0ZNtTxVdLA5h32WY9OTV35cb65p64x9P4li/vYd3yY+T
	QXP/evJs1D6tePiJrPN/RiWW4oxEQy3mouJEANh+KkerAgAA



Am 31.05.24 um 10:53 schrieb Krzysztof Kozlowski:
> On 31/05/2024 10:28, Wadim Egorov wrote:
>>
>>
>> Am 29.05.24 um 00:51 schrieb Nathan Morrisson:
>>> Label the spi nor as serial_flash. This allows us to disable the
>>> flash with an overlay common to all am6xx-phycore-som boards.
>>>
>>> Signed-off-by: Nathan Morrisson <nmorrisson@phytec.com>
>>
>> For all 3 patches,
>>
>> Reviewed-by: Wadim Egorov <w.egorov@phytec.de>
> 
> Tooling does not work like this. You need to review each or provide tag
> for 4 (not three) in cover letter.

4 patches, you are right. Missed that.

> 
> Best regards,
> Krzysztof
> 

