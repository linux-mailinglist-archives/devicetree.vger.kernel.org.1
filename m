Return-Path: <devicetree+bounces-10541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8607D1CF9
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 14:05:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 021462823FD
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 12:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1716FDF40;
	Sat, 21 Oct 2023 12:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Mw2uSNCq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100643D6B
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 12:05:35 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EA221A4;
	Sat, 21 Oct 2023 05:05:31 -0700 (PDT)
Received: from localhost (89-26-75-29.dyn.cablelink.at [89.26.75.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B2A09660734B;
	Sat, 21 Oct 2023 13:05:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697889929;
	bh=gQiUDCIXsORWlCdDXjOiPPc1M08qgxbtKkFrrvPre/M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mw2uSNCqgJe1DNmZxFDBfWUlzMEPXrYIBuOK8dxmeCYe1Rz/2GwyDbIBWjbWx77Da
	 rfUfsKcUZ4qWfDaLs41M57Hw9zN9VJHPCdY/pJwJ6LO62cnVZ9EIacybJ/WhkmjKOL
	 yNVaX/NLX43ctI2SLnZoo1pc671uk5ELg5gYH8gjP4iuVvDASV28NGKzsMRE1Sbvw/
	 6rzLPWThxLui5Jrb7POx4pqF3i4a0P0pis4pcQ5oZamCr9mC9KCydAPBmNR5t3y/rH
	 g+1hCFpw0Fqx+dOiStVVxarHi8GU7KOrAwY3/sXRSuf8ooMLky/YpokODXFWI4mFL7
	 LdWTSg8WPUmUg==
Date: Sat, 21 Oct 2023 14:05:26 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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
Message-ID: <20231021120526.eqe3esyxyi5b3e5d@basti-XPS-13-9310>
References: <20230929-wave5_v13_media_master-v13-0-5ac60ccbf2ce@collabora.com>
 <20230929-wave5_v13_media_master-v13-6-5ac60ccbf2ce@collabora.com>
 <b94e3561-f5ef-443f-98c7-9b79a8bbceec@linaro.org>
 <20231016134720.GA2650973-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20231016134720.GA2650973-robh@kernel.org>

Hey Rob and Krzysztof,

On 16.10.2023 08:47, Rob Herring wrote:
>On Thu, Oct 12, 2023 at 03:24:12PM +0200, Krzysztof Kozlowski wrote:
>> On 12/10/2023 13:01, Sebastian Fricke wrote:
>> > From: Robert Beckett <bob.beckett@collabora.com>
>> >
>> > Add bindings for the chips&media wave5 codec driver
>> >
>> > Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
>> > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> > Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
>> > ---
>> >  .../devicetree/bindings/media/cnm,wave5.yaml       | 60 ++++++++++++++++++++++
>> >  1 file changed, 60 insertions(+)
>> >
>> > diff --git a/Documentation/devicetree/bindings/media/cnm,wave5.yaml b/Documentation/devicetree/bindings/media/cnm,wave5.yaml
>> > new file mode 100644
>> > index 000000000000..b31d34aec05b
>> > --- /dev/null
>> > +++ b/Documentation/devicetree/bindings/media/cnm,wave5.yaml
>> > @@ -0,0 +1,60 @@
>> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> > +%YAML 1.2
>> > +---
>> > +$id: http://devicetree.org/schemas/media/cnm,wave5.yaml#
>>
>> Filename matching compatible, so: cnm,cm521c-vpu.yaml

With which compatible should the filename match? (see below)
And just to be sure, this means that I rename the file to:
`.../devicetree/bindings/media/cnm,wave521c.yaml`

>>
>> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> > +
>> > +title: Chips&Media Wave 5 Series multi-standard codec IP
>> > +
>> > +maintainers:
>> > +  - Nas Chung <nas.chung@chipsnmedia.com>
>> > +  - Jackson Lee <jackson.lee@chipsnmedia.com>
>> > +
>> > +description:
>> > +  The Chips&Media WAVE codec IP is a multi format video encoder/decoder
>> > +
>> > +properties:
>> > +  compatible:
>> > +    enum:
>> > +      - cnm,cm521c-vpu
>>
>> Can this device be anything else? Why VPU suffix?
>
>It needs an SoC specific compatible (TI something...) as well (or
>instead). Unless there's a public spec with details on how many
>clocks, resets, interrupts, etc. there are.

Okay so how about this, a bit similar to the Coda driver supplying both
a general option and a SoC specific version:

properties:
   compatible:
     enum:
       - ti,k3-j721sX-wave521c
       - cnm,wave521c

(ti,k3-j721sX-wave521c = manufacturer,SoC-codec)
(tested on j721s2 but should work on other variations as well)

Another alternative could be: ti,k3-wave521c (less specific on a single
SoC series but connected to a bigger range of devices)

>
>Rob

Regards,
Sebastian

>_______________________________________________
>Kernel mailing list -- kernel@mailman.collabora.com
>To unsubscribe send an email to kernel-leave@mailman.collabora.com

