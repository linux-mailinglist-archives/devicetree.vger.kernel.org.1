Return-Path: <devicetree+bounces-6983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 001467BE3E3
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 17:06:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3BBA1C20B8B
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 15:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 400C635892;
	Mon,  9 Oct 2023 15:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="WW5SOPBZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2539B7493
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 15:06:49 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73B0AA3;
	Mon,  9 Oct 2023 08:06:46 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0CFFE1BF204;
	Mon,  9 Oct 2023 15:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696864005;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tCB7PBjPghhtGGaMQSET+YPO1C+yT+1TK7jvy0WeIO8=;
	b=WW5SOPBZrrGbuhivAx3X3wkx7ln4q7mmk70oHfbr054HS82qeeZmD3teMCpYqabVZaATMK
	zstXDb8/cgR1zoYE09ljPFVUKgZyGHbu4U1JV1bSVHJ28K/CzZ/b5QYMp234eJAHbBllAS
	v3EZ0uUbbzj/PxwflmvX3sz9c5UYuY/WSdt/fC6hDTYUn8aVh8TKeAHeXTfhXmH+OyhfwU
	C1XJEv0VFAn7A3f9QPQ3W9+8XOw99A59t0uJSW1Z0w9CSdmdMWQHHKkCbDR02XWpT3IT3p
	Y73mBeNlcM493saoGFPij3HMOm15T7Wc9wrMcxnBLSEt0LVpOHBbAbGcEQbLXQ==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Paul Burton <paulburton@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 linux-mips@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Vladimir Kondratiev <vladimir.kondratiev@intel.com>, Tawfik Bayouk
 <tawfik.bayouk@mobileye.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, =?utf-8?Q?Th=C3=A9o?= Lebrun
 <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 11/11] MAINTAINERS: Add entry for Mobileye MIPS SoCs
In-Reply-To: <721f56db-8e36-44aa-8984-48cdbcdc271d@app.fastmail.com>
References: <20231004161038.2818327-1-gregory.clement@bootlin.com>
 <20231004161038.2818327-12-gregory.clement@bootlin.com>
 <721f56db-8e36-44aa-8984-48cdbcdc271d@app.fastmail.com>
Date: Mon, 09 Oct 2023 17:06:43 +0200
Message-ID: <87mswrbzss.fsf@BL-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: gregory.clement@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

"Arnd Bergmann" <arnd@arndb.de> writes:

> On Wed, Oct 4, 2023, at 18:10, Gregory CLEMENT wrote:
>> Add Vlad, Th=C3=A9o and myself as co-maintainers for the Mobileye MIPS
>> SoCs.
>>
>> Signed-off-by: Vladimir Kondratiev <vladimir.kondratiev@intel.com>
>> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
>> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>
>> ---
>>  MAINTAINERS | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 90f13281d297..6aedeab5f07c 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -14423,6 +14423,18 @@ W:	http://palosaari.fi/linux/
>>  Q:	http://patchwork.linuxtv.org/project/linux-media/list/
>>  F:	drivers/media/dvb-frontends/mn88473*
>>=20
>> +MOBILEYE MIPS SOCS
>> +M:	Vladimir Kondratiev <vladimir.kondratiev@intel.com>
>> +M:	Gregory CLEMENT <gregory.clement@bootlin.com>
>> +M:	Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>
>
> Is Vladimir's @intel.com address going to stay valid in the
> future? I would have assumed that after the spin-out, all
> remaining developers working on eyeq would go back to a
> mobileye address.

Until recently it was an intel address but now the mobileye one is
available, I will update it.

Thanks,

Gregory

>
>      Arnd

--=20
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

