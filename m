Return-Path: <devicetree+bounces-92290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A4294C9FF
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 08:00:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96B35289288
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 06:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A95716C684;
	Fri,  9 Aug 2024 05:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="WEZmWbwv"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900542905
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 05:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723183177; cv=none; b=MJpia31Ry86txv9wwV2xTrSr+OVbA6GmQm69fGPuIlCK2wbWGGQqb6WcOUqHi7AMuSR/mEb4977++Hs4tiwHEOVr41+hJOT4cb7BeGaI0HioM5k7U7TQ/EVXZSKNBI74TBaif/6gJcCWmYSTakf9xchrvaIuIYAgy3qSghzXsj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723183177; c=relaxed/simple;
	bh=IRJTj9W/vld/XNSGOfrnUGWvbNOA1LaKUOwG0fK+yaE=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=Cfk+PMabMKG8rgR+VFJfTBxUGYMWAyKpkC1D7nIffK4SIMS/qYH7W7M8ojjwDfTlQh8ry5qSGvhVAgzHtVdWjOpIdy7Yi2dwWnW1myM0QhEFocmBXQpTsTx3WtMrHqqwXrskzYKqEpAxr/5ehvOMVt8kkudxFS+bpRqR3606/ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=WEZmWbwv; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 8803933a561411ef9a4e6796c666300c-20240809
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:Subject:MIME-Version:Date:Message-ID; bh=DK3RG1xlccT5+i/2W06EzPdel3h2UwVh8rKWTqzIxxE=;
	b=WEZmWbwvL5cpoQm9hgKjpo8kmieO1AfeZtKCcH3i+wg0OK8EXXajZCcJrahR7G4ppiqbPko1sbKXqLGMqb/84iA1Baj7tfjPbLfuZscZijIM+OqFWUjeiha8Rhe8BmBHaCAJNA4qIhHzawtjAlrvpELe9a1aXRj9zKqfe1VYn5w=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:62c3bdc8-e3d2-44cf-a3cf-287327b5257a,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6dc6a47,CLOUDID:d7c0eb3e-6019-4002-9080-12f7f4711092,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 8803933a561411ef9a4e6796c666300c-20240809
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <macpaul.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2043850360; Fri, 09 Aug 2024 13:59:25 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 8 Aug 2024 22:59:26 -0700
Received: from [172.21.84.99] (172.21.84.99) by mtkmbs11n2.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.2.1118.26 via Frontend
 Transport; Fri, 9 Aug 2024 13:59:25 +0800
Message-ID: <340d52e0-43b8-73db-7308-3ffbe4217419@mediatek.com>
Date: Fri, 9 Aug 2024 13:59:23 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH] dt-bindings: regulator: mediatek,mt6397-regulator:
 convert to YAML
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: =?UTF-8?B?QmVhciBXYW5nICjokKnljp/mg5/lvrcp?= <bear.wang@mediatek.com>,
	=?UTF-8?B?UGFibG8gU3VuICjlravmr5Pnv5Qp?= <pablo.sun@mediatek.com>, Macpaul
 Lin <macpaul@gmail.com>, =?UTF-8?B?U2VuIENodSAo5YKo5qOuKQ==?=
	<Sen.Chu@mediatek.com>, Conor Dooley <conor+dt@kernel.org>, AngeloGioacchino
 Del Regno <angelogioacchino.delregno@collabora.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
	=?UTF-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?=
	<Jason-ch.Chen@mediatek.com>,
	=?UTF-8?B?Q2hyaXMtcWogQ2hlbiAo6Zmz5aWH6YCyKQ==?=
	<Chris-qj.Chen@mediatek.com>, Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Chen-Yu Tsai
	<wenst@chromium.org>, Rob Herring <robh+dt@kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
References: <20240806122507.2766-1-macpaul.lin@mediatek.com>
 <dcc40975-93f6-440e-8887-7a40a0cb3898@linaro.org>
 <31f7251a-7759-1260-7cb7-e239c9baa0a7@mediatek.com>
 <ce5757c6-0bd9-47b9-b5f5-dd5a33953fdd@linaro.org>
From: Macpaul Lin <macpaul.lin@mediatek.com>
In-Reply-To: <ce5757c6-0bd9-47b9-b5f5-dd5a33953fdd@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 8/8/24 20:05, Krzysztof Kozlowski wrote:
> 	
> 
> External email : Please do not click links or open attachments until you 
> have verified the sender or the content.
> 
> On 07/08/2024 12:32, Macpaul Lin wrote:
>>>> +  - |
>>>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>>>> +
>>>> +    pwrap {
>>>> +       pmic {
>>>> +            compatible = "mediatek,mt6397";
>>>
>>> Messed indentation.
>>>
>>> Use 4 spaces for example indentation.
>>>
>>> Anyway, drop top node or better move the example to the parent device
>>> schema making it complete.
> 
> Look at this comment. I asked you to move to the parent device schema...
> 
> Best regards,
> Krzysztof
> 

I would like to ensure that the progress can be made step by step.

Since I am not specifically responsible for this driver, I cannot 
determine when I will be able to modify the next file after completing 
one today.
Will it be tomorrow? Perhaps in a few months?
There is also the possibility that I might have to pause midway due to 
other job assignments.

Additionally, I need to obtain approval from other internal colleagues.
I am pleased to have received permission to modify 
mfd/mediatek,mt6397.yaml the day after I submitted this conversion of 
mt6397-regulator.

I was intend to split the example parts of the patches into 3 parts 
seprately, mt6397-regulator.yaml, mfd/mediatek,mt6397.yaml,i
then moving the examples from mt6397-regulator.yaml to 
mfd/mediatek,mt6397.yaml, move the content to parent device step by step.

I will include the example part in next version patch in 
mfd/mediatek,mt6397.yaml.

Thanks for the reminder.
Macpaul Lin

