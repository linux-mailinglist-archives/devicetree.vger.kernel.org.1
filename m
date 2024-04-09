Return-Path: <devicetree+bounces-57459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B76A89D8AF
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 14:01:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6591284392
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 12:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D8BC129E80;
	Tue,  9 Apr 2024 12:01:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A622129E81;
	Tue,  9 Apr 2024 12:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712664112; cv=none; b=kj0Nj8OCXaHwfl1LyZ8D6ecOjin3AmhxAkbA0cDThTv5oggHRZPRLii3xUDtpdagytSgQtUVv9cGRQZ2+M+3PSvRsYW0RFWp5roh4dcLulmmYxOn9L/hZFBS+P7Mtz8EiVW+TR/t/eLuuDsUbgl38CHCIJKqWUTMDoxg31yXfwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712664112; c=relaxed/simple;
	bh=9xIZi0QpnO1RKIMpvzvyKziMtxWWeU7GiJ1MO/7yK/M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iDwmnmPP/qSCHh71AC5Afl9Jxh6T8UB1swlYLLvQkp3CW99a8LY1Aavprry0xSx42wrST9QjxlnzEBs3EwAL2EXHXvDF/ytaJDbpQ2qif921MN8yJ2OlRgDjn6a1AAmaW2BtrJjbJ+ObJ853dbpuINFlb+pNEn5kRi8v9Vt9JUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9BB4139F;
	Tue,  9 Apr 2024 05:02:19 -0700 (PDT)
Received: from pluto (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A9A323F766;
	Tue,  9 Apr 2024 05:01:47 -0700 (PDT)
Date: Tue, 9 Apr 2024 13:01:45 +0100
From: Cristian Marussi <cristian.marussi@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	"Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/6] dt-bindings: firmware: arm,scmi: set
 additionalProperties to true
Message-ID: <ZhUuKajQbce2AI9f@pluto>
References: <DU0PR04MB9417932A6208128FBBB22C4188012@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <09f6b752-6b72-49d7-b248-6faba2fd13a7@kernel.org>
 <DU0PR04MB9417C5B9BDD9E0B47E7494C088012@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <5b9e0e44-0b9c-44fc-9d18-21c47b46dc63@kernel.org>
 <DU0PR04MB9417839C42681F57366003EF88012@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <ba4c9f20-0391-4ac2-a236-d6930285cd7e@kernel.org>
 <DU0PR04MB94176D02B90528913842B76A88002@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <e6333665-8051-43b1-9e98-f76262ddbc35@kernel.org>
 <DU0PR04MB9417C8C5013C72AB1F61F1C588002@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <AS1PR04MB9431BE4B2BFE05507A2D93F288072@AS1PR04MB9431.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AS1PR04MB9431BE4B2BFE05507A2D93F288072@AS1PR04MB9431.eurprd04.prod.outlook.com>

On Tue, Apr 09, 2024 at 09:25:10AM +0000, Peng Fan wrote:
> Hi Krzysztof,
> 
> > Subject: RE: [PATCH v2 1/6] dt-bindings: firmware: arm,scmi: set
> > additionalProperties to true
> > 
> > > Subject: Re: [PATCH v2 1/6] dt-bindings: firmware: arm,scmi: set
> > > additionalProperties to true
> > >
> > > On 08/04/2024 08:08, Peng Fan wrote:
> > > >> Subject: Re: [PATCH v2 1/6] dt-bindings: firmware: arm,scmi: set
> > > >> additionalProperties to true
> > > >>
> > > >> On 08/04/2024 01:50, Peng Fan wrote:
> > > >>>> Subject: Re: [PATCH v2 1/6] dt-bindings: firmware: arm,scmi: set
> > > >>>> additionalProperties to true
> > > >>>>
> > > >>>> On 07/04/2024 12:04, Peng Fan wrote:
> > > >>>>>> Subject: Re: [PATCH v2 1/6] dt-bindings: firmware: arm,scmi:
> > > >>>>>> set additionalProperties to true
> > > >>>>>>
> > > >>>>>> On 07/04/2024 02:37, Peng Fan wrote:
> > > >>>>>>>> Subject: Re: [PATCH v2 1/6] dt-bindings: firmware: arm,scmi:
> > > >>>>>>>> set additionalProperties to true
> > > >>>>>>>>
> > > >>>>>>>> On 05/04/2024 14:39, Peng Fan (OSS) wrote:
> > > >>>>>>>>> From: Peng Fan <peng.fan@nxp.com>
> > > >>>>>>>>>
> > > >>>>>>>>> When adding vendor extension protocols, there is dt-schema
> > > >> warning:
> > > >>>>>>>>> "
> > > >>>>>>>>> imx,scmi.example.dtb: scmi: 'protocol@81', 'protocol@84' do
> > > >>>>>>>>> not match any of the regexes: 'pinctrl-[0-9]+'
> > > >>>>>>>>> "
> > > >>>>>>>>>
> > > >>>>>>>>> Set additionalProperties to true to address the issue.
> > > >>>>>>>>
> > > >>>>>>>> I do not see anything addressed here, except making the
> > > >>>>>>>> binding accepting anything anywhere...
> > > >>>>>>>
> > > >>>>>>> I not wanna add vendor protocols in arm,scmi.yaml, so will
> > > >>>>>>> introduce a new yaml imx.scmi.yaml which add i.MX SCMI
> > > >>>>>>> protocol
> > > >> extension.
> > > >>>>>>>
> > > >>>>>>> With additionalProperties set to false, I not know how, please
> > > suggest.
> > > >>>>>>
> > > >>>>>> First of all, you cannot affect negatively existing devices
> > > >>>>>> (their
> > > >>>>>> bindings) and your patch does exactly that. This should make
> > > >>>>>> you thing what is the correct approach...
> > > >>>>>>
> > > >>>>>> Rob gave you the comment about missing compatible - you still
> > > >>>>>> did not address that.
> > > >>>>>
> > > >>>>> I added the compatible in patch 2/6 in the examples "compatible
> > > >>>>> =
> > > >>>> "arm,scmi";"
> > > >>>>
> > > >>>> So you claim that your vendor extensions are the same or fully
> > > >>>> compatible with arm,scmi and you add nothing... Are your
> > > >>>> extensions/protocol valid for arm,scmi?
> > > >>>
> > > >>> Yes. They are valid for arm,scmi.
> > > >>>
> > > >>>  If yes, why is this in separate binding. If no, why you use
> > > >>> someone
> > > >>>> else's compatible?
> > > >>>
> > > >>> Per SCMI Spec
> > > >>> 0x80-0xFF: Reserved for vendor or platform-specific extensions to
> > > >>> this interface
> > > >>>
> > > >>> i.MX use 0x81 for BBM, 0x84 for MISC. But other vendors will use
> > > >>> the id for their own protocol.
> > > >>
> > > >> So how are they valid for arm,scmi? I don't understand.
> > > >
> > > > arm,scmi is a firmware compatible string. The protocol node is a sub-node.
> > > > I think the arm,scmi is that saying the firmware following SCMI spec
> > > > to implement the protocols.
> > > >
> > > > For vendor reserved ID, firmware also follow the SCMI spec to
> > > > implement their own usage, so from firmware level, it is ARM SCMI
> > > > spec
> > > compatible.
> > >
> > > That's not the point. It is obvious that your firmware is compatible
> > > with arm,scmi, but what you try to say in this and revised patch is
> > > that every arm,scmi is compatible with your implementation. What you
> > > are saying is that 0x84 is MISC protocol for every firmware, Qualcomm,
> > > NXP, Samsung, TI, Mediatek etc.
> > >
> > > I claim it is not true. 0x84 is not MISC for Qualcomm, for example.
> > 
> > You are right. I am lost now on how to add vendor ID support, using
> > arm,scmi.yaml or adding a new imx,scmi.yaml or else.
> 

Hi Peng,

I dont think in the following you will find the solution to the problem,
it is just to recap the situation and constraints around vendor protocol
bindings.

Describing SCMI vendors protocols is tricky because while on one side
the protocol node has to be rooted under the main scmi fw DT node (like
all the standard protocols) and be 'derived' from the arm,scmi.yaml
protocol-node definition, the optional additional properties of the a specific
vendor protocol nodes can be customized by each single vendor, and since,
as you said, you can have multiple protocols from different vendors sharing the
same protocol number, you could have multiple disjoint sets of valid properties
allowed under that same protocol node number; so on one side you have to stick
to some basic protocol-node defs and be rooted under the SCMI node, while on
the other side you will have multiple possibly allowed sets of additional
properties to check against, so IOW you cannot anyway just set
additionalProperties to false since that will result in no checks at all.

As a consequence, at runtime, in the final DTB shipped with a specific
platform you should have only one of the possible vendor nodes for each
of these overlapping protocols, and the SCMI core at probe time will
pick the proper protocol implementation based on the vendor/sub_vendor
IDs gathered from the running SCMI fw platform at init: this way you
can just build the usual "all-inclusive" defconfig without worrying
about vendor protocol clashes since the SCMI core can pick the right
protocol implementation, you should just had taken care to provide the
proper DTB for your protocol; BUT this also means that it is not possible
to add multiple DT bindings based on a 'if vendor' condition since the
vendor itself is NOT defined and not needed in the bindings since it is
discoverable at runtime.

So, after all of this blabbing of mine about this, I am wondering if it
is not possible that the solution is to handle each and every vendor
protocol node that appears with a block of addtional properties that
are picked via a oneOf statement from some external vendor specific
yaml.
(...in a similar way to how pinctrl additional properties are added...)


NOTE THAT the following is just an example of what I mean, it is certainly
wrong, incomplete annd maybe just not acceptable (and could cause DT
maintainers eyes to bleed :P)...

...so it is just fr the sake of explaining what I mean...

diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
index e9d3f043c4ed..3c38a1e3ffed 100644
--- a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
+++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
@@ -278,6 +278,22 @@ properties:
     required:
       - reg
 
+  protocol@81:
+    $ref: '#/$defs/protocol-node'
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        const: 0x81
+
+    patternProperties:
+      '$':
+        type: object
+        oneOf:
+          - $ref: /schemas/vendor-A/scmi-protos.yaml#
+          - $ref: /schemas/vendor-B/protos.yaml#
+        unevaluatedProperties: false
+
 additionalProperties: false
 
...with each new Vendor coming to the party adding a line under
oneOf...which would mean probably also having a protocol@NN for each new
protocol that appears...

Thanks,
Cristian


