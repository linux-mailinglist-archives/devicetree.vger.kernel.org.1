Return-Path: <devicetree+bounces-5552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDB57B69DA
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 15:08:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C18DA28157E
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C6D824218;
	Tue,  3 Oct 2023 13:08:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BDDB2915
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 13:08:12 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D985F90;
	Tue,  3 Oct 2023 06:08:10 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 393D7xtu090568;
	Tue, 3 Oct 2023 08:07:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696338479;
	bh=Zp1B+zFrIeVSClx3EFpcOSTc44sv/meIKlkORkGW3I4=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=GW2og72aWeylJQLIaR5npYOz2CojwYHS2ZG3DOegeb26K5qc5vB8YUqNyucAcUqZG
	 X9Lk31lKtTeNENwkIz9Oj57R0kSdCSHOg/8sMbw/WHoehoXuXeUhRTJ56EUqu0Ga8a
	 eMN5cq6GULauidqPkGFNU5QD8nzMnbyE4OD6D5fA=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 393D7xEG013176
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 3 Oct 2023 08:07:59 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 3
 Oct 2023 08:07:59 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 3 Oct 2023 08:07:59 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 393D7xQD010350;
	Tue, 3 Oct 2023 08:07:59 -0500
Date: Tue, 3 Oct 2023 08:07:59 -0500
From: Nishanth Menon <nm@ti.com>
To: Ayush Singh <ayushdevel1325@gmail.com>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <greybus-dev@lists.linaro.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <gregkh@linuxfoundation.org>,
        <vaishnav@beagleboard.org>, <jkridner@beagleboard.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v6 1/3] dt-bindings: Add beaglecc1352
Message-ID: <20231003130759.ipr5s7n573c3ijyn@sponge>
References: <20231002182454.211165-1-ayushdevel1325@gmail.com>
 <20231002182454.211165-2-ayushdevel1325@gmail.com>
 <55f63415-781a-4107-8643-9f77c7ee38d1@linaro.org>
 <2105b93c-0502-e909-ea09-dba73d43b912@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <2105b93c-0502-e909-ea09-dba73d43b912@gmail.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 17:39-20231003, Ayush Singh wrote:
> > > driver.
> > > 
> > > Signed-off-by: Ayush Singh <ayushdevel1325@gmail.com>
> > > ---
> > >   .../devicetree/bindings/net/ti,cc1352p7.yaml  | 48 +++++++++++++++++++
> > >   MAINTAINERS                                   |  6 +++
> > >   2 files changed, 54 insertions(+)
> > >   create mode 100644 Documentation/devicetree/bindings/net/ti,cc1352p7.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/net/ti,cc1352p7.yaml b/Documentation/devicetree/bindings/net/ti,cc1352p7.yaml
> > > new file mode 100644
> > > index 000000000000..57bc2c43e5b1
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/net/ti,cc1352p7.yaml
> > > @@ -0,0 +1,48 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/net/ti,cc1352p7.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Texas Instruments Simplelink CC1352P7 wireless MCU
> > > +
> > > +description:
> > > +  The cc1352p7 mcu can be connected via SPI or UART.
> > If over SPI, then the binding is incomplete. This is fine for now, I guess.
> > 
> > Best regards,
> > Krzysztof
> 
> Well, I added the line about SPI because the data sheet states that CC1352P7
> can be connected over SPI or UART when used as wireless MCU. But yes, I do
> not have much knowledge about SPI itself, so the bindings might be
> incomplete for SPI usage. Should I remove it or leave it be?

I'd suggest to leave it for now, we can expand as there is a need.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

