Return-Path: <devicetree+bounces-12223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B37667D86CC
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 18:33:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A99C4B210E5
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:33:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E75382EAF4;
	Thu, 26 Oct 2023 16:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ISyTzMa0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE1A381D1
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 16:33:46 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D783D18A;
	Thu, 26 Oct 2023 09:33:44 -0700 (PDT)
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7FC3B660732A;
	Thu, 26 Oct 2023 17:33:42 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698338022;
	bh=RxGzKjaqcqxuS0FirV3zeZru2nvyMZcNoxUgFAWaSIg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ISyTzMa0eeGyKSF0iGiAsBo4JqxXr1uU6AoYhn+BLXMWSJbEs++B3bT4wuhAptrI5
	 UYuKv5hOo9f+vRc8K+UtO5jCAAFRrAFQUfmQsuBA4i9MCTDQ3HPIK3AtPxu5EqcJqp
	 c6XUvQgAT2nIUOW9Nc6efsrUvUB1XmhZUWVSxeiMAcd+MVw596rtaB012tg/h4MeZ5
	 6NMBZpGbVTFKjNesxlXJnjK5tNPO/Obf22RwipC+AyxqmPgq7eP17f8ti1dTLX/i2K
	 yoMxJvu6V2n79ZmOF/W5i2pZr3lSWEei5otn32aPdaJIsv3ySO+tc74L3IvVDBjtNH
	 bn+PewzhvciiA==
Date: Thu, 26 Oct 2023 18:33:39 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Devarsh Thakkar <devarsht@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jackson Lee <jackson.lee@chipsnmedia.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Nas Chung <nas.chung@chipsnmedia.com>,
	Fabio Estevam <festevam@gmail.com>, linux-media@vger.kernel.org,
	Tomasz Figa <tfiga@chromium.org>, linux-kernel@vger.kernel.org,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	kernel@collabora.com, Robert Beckett <bob.beckett@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Darren Etheridge <detheridge@ti.com>,
	"Bajjuri, Praneeth" <praneeth@ti.com>,
	"Raghavendra, Vignesh" <vigneshr@ti.com>,
	"Bhatia, Aradhya" <a-bhatia1@ti.com>,
	"Luthra, Jai" <j-luthra@ti.com>,
	"Brnich, Brandon" <b-brnich@ti.com>,
	"Pothukuchi, Vijay" <vijayp@ti.com>
Subject: Re: [PATCH v13 6/8] media: dt-bindings: wave5: add Chips&Media 521c
 codec IP support
Message-ID: <20231026163339.n6ngsleiycsn4jyw@basti-XPS-13-9310>
References: <20230929-wave5_v13_media_master-v13-0-5ac60ccbf2ce@collabora.com>
 <20230929-wave5_v13_media_master-v13-6-5ac60ccbf2ce@collabora.com>
 <4c557cbd-33e9-a0df-3431-04ade12b6f07@ti.com>
 <7d40c242-7779-45de-83c5-06db9983dae1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <7d40c242-7779-45de-83c5-06db9983dae1@linaro.org>

Hey Krzysztof,

On 22.10.2023 18:12, Krzysztof Kozlowski wrote:
>On 17/10/2023 15:39, Devarsh Thakkar wrote:
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - clocks
>>> +  - interrupts
>>> +
>>
>> Is it possible to keep interrupts property as optional given HW can still work
>> without it if SW does polling of ISR using registers?
>>
>> The reason to ask is in TI AM62A SoC (which also uses this codec) there is an
>> SoC errata of missing interrupt line to A53 and we are using SW based polling
>> locally to run the driver.
>>
>> We were planning to upstream that SW based polling support patch in CnM driver
>> once this base initial driver patch series gets merged, but just wanted to
>> check if upfront it is possible to have interrupts property as optional so
>> that we don't have to change the binding doc again to make it optional later on.
>>
>> Also note that the polling patch won't be specific to AM62A, other SoC's too
>> which use this wave5 hardware if they want can enable polling by choice (by
>> removing interrupt property)
>>
>> Could you please share your opinion on this ?
>
>You know, if you do not have interrupt line connected, how could it be
>required, right? If the hardware does not require interrupt to be
>connected then bindings should not require it.

Alright, so I will make the interrupt optional in the DT binding.
By simply removing it from this list:

required:
   - compatible
   - reg
   - clocks
   - interrupts

Is it possible to make it required later on for certain SoC by adding
something along the lines of:

allOf:
   - if:
       properties:
         compatible:
           contains:
             enum:
               - soc_compatible...
               ...
     then:
       properties:
         interrupts: true

?

>
>Best regards,
>Krzysztof

Sincerely,
Sebastian

>
>_______________________________________________
>Kernel mailing list -- kernel@mailman.collabora.com
>To unsubscribe send an email to kernel-leave@mailman.collabora.com

