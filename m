Return-Path: <devicetree+bounces-91571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 386D1949EC3
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 06:10:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD021288B63
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 04:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27FA018FDAA;
	Wed,  7 Aug 2024 04:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="LzU3slES"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A5FB1C14
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 04:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723003816; cv=none; b=QJe1iGsLZ/YxNrPkx+h6aTm3KX1FSJrtp1KRPCi9wDcaoSA6Lm79JBR0WR2P46Wi44B0dxKsT/f78b3tFfeNY4XrZlUmMFa1hnlI5yrePvt1J1oB/UxWJThkSFkcU+xdhrgPIsTw6M3E4L7VUOFwIxHBwtZUwew1yhlYYL4A8ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723003816; c=relaxed/simple;
	bh=9OPlRTMItGVRMhIBPXCNMUGgELH3Fj68HlwhDm2ekQ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=ZXDs7Rz4aVi5deeErKqVkEvixQIq5bEwIeUIQoIeqmg1rgFQvjOS6YiKOKgNyeLJU/MEKvZSgbb9PbUsO/9VfikLObtA4Awug8reSoPU1fobkjZ2mfIfp9UcI3Z0HX+r8rjyR//IKOSkWTNQGRYJu8t0phvwIlNHKLE7NjUScj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=LzU3slES; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: eb1fa6aa547211ef87684b57767b52b1-20240807
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:Subject:MIME-Version:Date:Message-ID; bh=RwtWu0DCUQcqL2AbeV9o6E8LOIY/Guz8mm3XwNfsN8Y=;
	b=LzU3slESov7w1FttuPxNBpm8NRLUXzQtbkDIjxDA000v524OJAqfofbtksL1N5PGPzPeLk3G10vvClG8rudRVFN+ejeFUZ2GUX/9CKdfOEzWxSmS0FIZNyqP2Q4ZxyH9Fc028MORaLlhWDzVnNahHH6tpr+0tJuHd6vdaDoE3xo=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:5013a0f2-4610-4308-a684-f147a76153ef,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6dc6a47,CLOUDID:49a07b0e-581f-42a8-8c8e-0df96f3eec79,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: eb1fa6aa547211ef87684b57767b52b1-20240807
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <macpaul.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 572516197; Wed, 07 Aug 2024 12:10:01 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 7 Aug 2024 12:10:00 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkmbs13n1.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.2.1118.26 via Frontend
 Transport; Wed, 7 Aug 2024 12:09:59 +0800
Message-ID: <578f5419-f3b1-5df9-5deb-73f66ed25c32@mediatek.com>
Date: Wed, 7 Aug 2024 12:09:57 +0800
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
To: "Rob Herring (Arm)" <robh@kernel.org>
CC: Macpaul Lin <macpaul@gmail.com>, <linux-mediatek@lists.infradead.org>,
	"Sen Chu" <sen.chu@mediatek.com>, <linux-arm-kernel@lists.infradead.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chris-qj chen <chris-qj.chen@mediatek.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Bear
 Wang" <bear.wang@mediatek.com>, Chen-Yu Tsai <wenst@chromium.org>, "Conor
 Dooley" <conor+dt@kernel.org>, Jason-ch Chen <Jason-ch.Chen@mediatek.com>,
	<devicetree@vger.kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
	MediaTek Chromebook Upstream
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Pablo Sun
	<pablo.sun@mediatek.com>
References: <20240806122507.2766-1-macpaul.lin@mediatek.com>
 <172295218959.1231449.7916299490960765265.robh@kernel.org>
From: Macpaul Lin <macpaul.lin@mediatek.com>
In-Reply-To: <172295218959.1231449.7916299490960765265.robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--20.697700-8.000000
X-TMASE-MatchedRID: 6otD/cJAac0OwH4pD14DsPHkpkyUphL9meN8m2FdGic3xO2R3boBWFbu
	qIY+/skQkABPgKBt/0pW7W9TrAIvEcRBLZ5x+SkXH5YQyOg71ZZaNaxZBRbNWpa8cECJFHXJbdK
	+n9eiUFuoOfBxbEbJZsdXUSvQT1NqQgUInkqQBs+dtRmRhPNchi6GDroi1vrlS3XbY42OdY3Ff4
	ZsEWDa/T0jXWQJyI+B/oc9sHLpOHV6bMYbioM9qXvBWikXzNqDv8jdqvFOu+L+TXZJvYxoebEQi
	kyj8N/gkupALizK9LIS8F73QDbKA76KewI9xZOBRlqShqb35p59LQinZ4QefL6qvLNjDYTwsuf7
	RWbvUtyrusVRy4an8bxAi7jPoeEQftwZ3X11IV0=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--20.697700-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 81A0E1DFA0D1BF9606B50FA8970F21AAC54C95C6ACC0F14E377C752C0DD6CF022000:8


On 8/6/24 21:49, Rob Herring (Arm) wrote:
> 	
> 
> External email : Please do not click links or open attachments until you 
> have verified the sender or the content.
> 
> On Tue, 06 Aug 2024 20:25:07 +0800, Macpaul Lin wrote:
>> Convert the MediaTek MT6397 regulator bindings to DT schema.
>> 
>> Signed-off-by: Sen Chu <sen.chu@mediatek.com>
>> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
>> ---
>>  .../regulator/mediatek,mt6397-regulator.yaml  | 275 ++++++++++++++++++
>>  .../bindings/regulator/mt6397-regulator.txt   | 220 --------------
>>  2 files changed, 275 insertions(+), 220 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/regulator/mediatek,mt6397-regulator.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/regulator/mt6397-regulator.txt
>> 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/regulator/mediatek,mt6397-regulator.example.dtb: /example-0/pwrap/pmic: failed to match any schema with compatible: ['mediatek,mt6397']

Thanks for the reminding.

I'm already using the latest dtschema (2024.05).
I've found the difference that I find this error because I'm always 
using the command to run dt_binding_check.
"make dt_binding_check DT_SCHEMA_FILES=mediatek,mt6397-regulator.yaml"

After I've replace the command to full dt_binding_check, I can find this 
error now with "make dt_binding_check".

Just report the difference of running checking tools.
I'll fix this error in the next patch. Thanks!

> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240806122507.2766-1-macpaul.lin@mediatek.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 

Best regards,
Macpaul Lin

