Return-Path: <devicetree+bounces-10539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6DA7D1CE7
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 13:53:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4776B1C20963
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 11:53:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C832D528;
	Sat, 21 Oct 2023 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Lt4imCyU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45C210F3
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 11:53:49 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C699A1A4;
	Sat, 21 Oct 2023 04:53:44 -0700 (PDT)
Received: from localhost (89-26-75-29.dyn.cablelink.at [89.26.75.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 04A88660734B;
	Sat, 21 Oct 2023 12:53:42 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697889223;
	bh=6RRGq7dtsDUYF+lQ+Zt4IpjIt/PofZwGotEJ0ImmOQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lt4imCyUAXHE/aVO8kWHutl7uB1wKalMAHhy4/9VY8jSanNaXzNkTQAlh1CPY+DrT
	 iU2gjiOKYrDyHLoEaqIzyWv8u7Q1nBXLGS9W4foa2I4zkY4jVggfehJjWDyVfhsYaG
	 wweOoUAfg2OaewES/D6nQ8lvO+AnMvZd0M4U00KVvqFgqeaQ71fyhIJfN0SyojpY8m
	 tbwuLD1VbqYXzudaCgVAaQnt2Z90JOMgPZk4+wMrGc4kdM4AoOFPCxdvPCDid2hSCe
	 O5BUM5ksgwrCVaKp3wbyHnmKoUtmUMOztIFl0LUy0GEE6A/h+OvhteVA3LdYSbl6qy
	 OmobyL3K8WgtQ==
Date: Sat, 21 Oct 2023 13:53:40 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Devarsh Thakkar <devarsht@ti.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
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
Message-ID: <20231021115340.kgjmz6fr5av6ne6s@basti-XPS-13-9310>
References: <20230929-wave5_v13_media_master-v13-0-5ac60ccbf2ce@collabora.com>
 <20230929-wave5_v13_media_master-v13-6-5ac60ccbf2ce@collabora.com>
 <4c557cbd-33e9-a0df-3431-04ade12b6f07@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <4c557cbd-33e9-a0df-3431-04ade12b6f07@ti.com>

Hello Krzysztof and Rob,

this question is quite important for our next version and for the
overall direction of the DT bindings, could you have a look at this?

Thank you and Regards,
Sebastian

On 17.10.2023 19:09, Devarsh Thakkar wrote:
>Hi Sebastian, Krzysztof, Rob,
>
>On 12/10/23 16:31, Sebastian Fricke wrote:
>> From: Robert Beckett <bob.beckett@collabora.com>
>>
>> Add bindings for the chips&media wave5 codec driver
>>
>> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
>> ---
>>  .../devicetree/bindings/media/cnm,wave5.yaml       | 60 ++++++++++++++++++++++
>>  1 file changed, 60 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/media/cnm,wave5.yaml b/Documentation/devicetree/bindings/media/cnm,wave5.yaml
>> new file mode 100644
>> index 000000000000..b31d34aec05b
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/media/cnm,wave5.yaml
>> @@ -0,0 +1,60 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/media/cnm,wave5.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Chips&Media Wave 5 Series multi-standard codec IP
>> +
>> +maintainers:
>> +  - Nas Chung <nas.chung@chipsnmedia.com>
>> +  - Jackson Lee <jackson.lee@chipsnmedia.com>
>> +
>> +description:
>> +  The Chips&Media WAVE codec IP is a multi format video encoder/decoder
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - cnm,cm521c-vpu
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    items:
>> +      - description: VCODEC clock
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  resets:
>> +    maxItems: 1
>> +
>> +  sram:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      The VPU uses the SRAM to store some of the reference data instead of
>> +      storing it on DMA memory. It is mainly used for the purpose of reducing
>> +      bandwidth.
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - interrupts
>> +
>
>Is it possible to keep interrupts property as optional given HW can still work
>without it if SW does polling of ISR using registers?
>
>The reason to ask is in TI AM62A SoC (which also uses this codec) there is an
>SoC errata of missing interrupt line to A53 and we are using SW based polling
>locally to run the driver.
>
>We were planning to upstream that SW based polling support patch in CnM driver
>once this base initial driver patch series gets merged, but just wanted to
>check if upfront it is possible to have interrupts property as optional so
>that we don't have to change the binding doc again to make it optional later on.
>
>Also note that the polling patch won't be specific to AM62A, other SoC's too
>which use this wave5 hardware if they want can enable polling by choice (by
>removing interrupt property)
>
>Could you please share your opinion on this ?
>
>Regards
>Devarsh
>
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    vpu: video-codec@12345678 {
>> +        compatible = "cnm,cm521c-vpu";
>> +        reg = <0x12345678 0x1000>;
>> +        clocks = <&clks 42>;
>> +        interrupts = <42>;
>> +        sram = <&sram>;
>> +    };
>>
>_______________________________________________
>Kernel mailing list -- kernel@mailman.collabora.com
>To unsubscribe send an email to kernel-leave@mailman.collabora.com

