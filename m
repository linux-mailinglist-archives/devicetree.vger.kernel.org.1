Return-Path: <devicetree+bounces-16306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0887EE42C
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 16:25:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4AF721C2084E
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 15:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F9FA34573;
	Thu, 16 Nov 2023 15:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A95C319D;
	Thu, 16 Nov 2023 07:25:30 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 84ABC24DCA6;
	Thu, 16 Nov 2023 23:25:13 +0800 (CST)
Received: from EXMBX172.cuchost.com (172.16.6.92) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 16 Nov
 2023 23:25:13 +0800
Received: from localhost.localdomain (202.188.176.82) by EXMBX172.cuchost.com
 (172.16.6.92) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 16 Nov
 2023 23:25:05 +0800
From: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
To: <conor@kernel.org>
CC: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	<jisheng.teoh@starfivetech.com>, <krzysztof.kozlowski+dt@linaro.org>,
	<leyfoon.tan@starfivetech.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <mark.rutland@arm.com>,
	<peterz@infradead.org>, <robh+dt@kernel.org>, <tglx@linutronix.de>,
	<will@kernel.org>
Subject: Re: [PATCH v3 2/2] dt-bindings: perf: starfive: Add StarLink PMU
Date: Thu, 16 Nov 2023 23:24:56 +0800
Message-ID: <20231116152456.1039195-1-jisheng.teoh@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231116-penalize-turbojet-bf8ea2a9a2ad@squawk>
References: <20231116-penalize-turbojet-bf8ea2a9a2ad@squawk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [202.188.176.82]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX172.cuchost.com
 (172.16.6.92)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

On Thu, 16 Nov 2023 14:34:00 +0000
Conor Dooley <conor@kernel.org> wrote:

> On Thu, Nov 16, 2023 at 10:10:35AM +0800, Ji Sheng Teoh wrote:
> > On Wed, 15 Nov 2023 20:03:53 +0000
> > Conor Dooley <conor@kernel.org> wrote: =20
> > > On Wed, Nov 15, 2023 at 11:36:08AM +0800, Ji Sheng Teoh wrote: =20
> > > > Add device tree binding for StarFive's StarLink PMU (Performance
> > > > Monitor Unit).
> > > >=20
> > > > Signed-off-by: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
> > > > ---
> > > >  .../bindings/perf/starfive,starlink-pmu.yaml  | 46
> > > > +++++++++++++++++++ 1 file changed, 46 insertions(+)
> > > >  create mode 100644
> > > > Documentation/devicetree/bindings/perf/starfive,starlink-pmu.yaml
> > > >=20
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/perf/starfive,starlink-pmu.ya=
ml
> > > > b/Documentation/devicetree/bindings/perf/starfive,starlink-pmu.ya=
ml
> > > > new file mode 100644 index 000000000000..a9426a7faeae ---
> > > > /dev/null +++
> > > > b/Documentation/devicetree/bindings/perf/starfive,starlink-pmu.ya=
ml
> > > >   =20
> > >=20
> > > btw, since you changed the compatible, the filename should have
> > > been changed to match it. =20
> >=20
> > The intention to keep the filename generic is to allow addition of
> > new version of StarLink PMU in future if any, similar to what
> > arm,cmn.yaml is doing. Hope that makes sense. =20
>=20
> No, please keep the filename matching the compatible. Even if the
> filename contains "500", there's nothing stopping you from then adding
> other pmu variants. There are many many examples of this in the tree.
>=20

Sure, will do that in v4.=20

> > > > @@ -0,0 +1,46 @@
> > > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > > +%YAML 1.2
> > > > +---
> > > > +$id:
> > > > http://devicetree.org/schemas/perf/starfive,starlink-pmu.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml# +
> > > > +title: StarFive StarLink PMU
> > > > +
> > > > +maintainers:
> > > > +  - Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
> > > > +
> > > > +description:
> > > > +  StarFive's StarLink PMU integrates one or more CPU cores
> > > > with a shared L3
> > > > +  memory system. The PMU support overflow interrupt, up to 16
> > > > programmable
> > > > +  64bit event counters, and an independent 64bit cycle counter.
> > > > +  StarLink PMU is accessed via MMIO.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: starfive,starlink-500-pmu   =20
> > >=20
> > > So this is not what I had in mind by a "device". I was looking
> > > for a compatible representing an soc in which this IP had been
> > > integrated. A soc-specific compatible, rather than something
> > > generic, is requirement for devicetree - we don't want various
> > > integrations of this IP to all be using a generic compatible when
> > > there may be subtle (or less subtle) differences between
> > > integrations.
> > >=20
> > > I'm trying to come up with the syntax for enforcing having two
> > > compatibles with your current one as the fallback, but I have yet
> > > to come up with the correct syntax for that that works correctly.
> > >=20
> > > Hopefully by the time you get some feedback on the driver side of
> > > this submission I will have a concrete suggestion for what to do
> > > here. =20
> >=20
> > Thanks Conor for the enlightenment. In the meantime, to fit the
> > requirement I would suggest going for
> > "starfive,jh8100-starlink-pmu", making it JH8100 SOC specific if
> > that makes sense. =20
>=20
> Okay, you could definitely do that!
>=20
> Cheers,
> Conor.
>=20

Ok, will use that in v4. Thanks!

