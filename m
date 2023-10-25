Return-Path: <devicetree+bounces-11526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6687D6186
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:17:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDD5F1C20CAA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 06:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 098F514AA4;
	Wed, 25 Oct 2023 06:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="KTfwTaUF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71040156CC
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 06:17:20 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 090AE12F;
	Tue, 24 Oct 2023 23:17:19 -0700 (PDT)
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9064B6607346;
	Wed, 25 Oct 2023 07:17:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698214636;
	bh=5ZLsWC7aMFDc9fj82Ydoi62rViJ6tOPBBk38bEeyRxU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KTfwTaUFwmhVTV+6Qk+sViNOWO44Ta8yu8IvFrHewMq3uU3/3phR+gFLeH9A8+Pi6
	 E2cut+25qlAwEoHIXElSrMMTyctFoRRBTZVNrfYsWv06t80DqIBxoOmAJKKSoCkGIl
	 0DWlZjFshHwmRY4s9jKbfzD2BoK0xU22inHoas0XeNkifHoVmmBMh1H6bmc4SdhgNm
	 Nbm0ozTrKr+r7uby3JoCoFuBeLA81BxtMAg433HvtRrEpmKqF8jEvN0DB1bcoX+ML4
	 TPSg2KYIvLdjh+Q3KQdDCJFcJNX29X8K5p3vguBS4kH1wmprtWBaDxKcOYe9B7lmD9
	 YDJ9+B5jF4s3g==
Date: Wed, 25 Oct 2023 08:17:13 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jackson Lee <jackson.lee@chipsnmedia.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Nas Chung <nas.chung@chipsnmedia.com>,
	Fabio Estevam <festevam@gmail.com>, linux-media@vger.kernel.org,
	Tomasz Figa <tfiga@chromium.org>, linux-kernel@vger.kernel.org,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	kernel@collabora.com, Robert Beckett <bob.beckett@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Darren Etheridge <detheridge@ti.com>
Subject: Re: [PATCH v13 6/8] media: dt-bindings: wave5: add Chips&Media 521c
 codec IP support
Message-ID: <20231025061713.kmmu432q76t32iv6@basti-XPS-13-9310>
References: <20230929-wave5_v13_media_master-v13-0-5ac60ccbf2ce@collabora.com>
 <20230929-wave5_v13_media_master-v13-6-5ac60ccbf2ce@collabora.com>
 <b94e3561-f5ef-443f-98c7-9b79a8bbceec@linaro.org>
 <20231016134720.GA2650973-robh@kernel.org>
 <20231021120526.eqe3esyxyi5b3e5d@basti-XPS-13-9310>
 <3d465d3c-386d-467b-87e9-806962464ac5@linaro.org>
 <20231024051745.d663ekj7klrl4yzj@basti-XPS-13-9310>
 <7240fa39-1a8f-4338-b5ae-b469dfaeb7e1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <7240fa39-1a8f-4338-b5ae-b469dfaeb7e1@linaro.org>

Hey Krzysztof,

On 24.10.2023 09:24, Krzysztof Kozlowski wrote:
>On 24/10/2023 07:17, Sebastian Fricke wrote:
>
>>>>> It needs an SoC specific compatible (TI something...) as well (or
>>>>> instead). Unless there's a public spec with details on how many
>>>>> clocks, resets, interrupts, etc. there are.
>>>>
>>>> Okay so how about this, a bit similar to the Coda driver supplying both
>>>> a general option and a SoC specific version:
>>>
>>> Can generic compatible be used alone in board designs? If it is licensed
>>> block, then most likely you want a fallback.
>>
>> Alright, so a fallback seems appropriate, how do you like this?
>>
>> properties:
>>    compatible:
>>      items:
>>        - enum:
>>            - const: ti,k3-j721sX-wave521c
>>        - const: cnm,wave521c
>>
>> Providing a fallback and adding a enum which can be extended later on.
>
>This looks almost good. I wonder what is "j721sX" - Google does not find
>it. There is thouhg j721se.

Well that was a misunderstanding from my side I thought that both j721se
and j721s2 have the Wave5 IP block and wanted to describe both with
j721sX. But as it turns out the IP block isn't present on j721se.
Additionally, I was only able to test the codec on j721s2 for now and so
I would opt for calling it: `ti,k3-j721s2-wave521c`

>
>Best regards,
>Krzysztof

Sincerely,
Sebastian

>
>_______________________________________________
>Kernel mailing list -- kernel@mailman.collabora.com
>To unsubscribe send an email to kernel-leave@mailman.collabora.com

