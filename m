Return-Path: <devicetree+bounces-15433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D11107EA12E
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 17:21:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D1DB1C20878
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 16:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6795322313;
	Mon, 13 Nov 2023 16:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A079C21A0A
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 16:21:14 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 778581715;
	Mon, 13 Nov 2023 08:21:11 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id CECE624DFC2;
	Tue, 14 Nov 2023 00:21:08 +0800 (CST)
Received: from EXMBX172.cuchost.com (172.16.6.92) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 14 Nov
 2023 00:21:08 +0800
Received: from localhost.localdomain (202.188.176.82) by EXMBX172.cuchost.com
 (172.16.6.92) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 14 Nov
 2023 00:21:01 +0800
From: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
To: <conor@kernel.org>
CC: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	<jisheng.teoh@starfivetech.com>, <krzysztof.kozlowski+dt@linaro.org>,
	<leyfoon.tan@starfivetech.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <mark.rutland@arm.com>,
	<peterz@infradead.org>, <robh+dt@kernel.org>, <tglx@linutronix.de>,
	<will@kernel.org>
Subject: Re: [PATCH 1/2] perf: starfive: Add StarLink PMU support
Date: Tue, 14 Nov 2023 00:20:47 +0800
Message-ID: <20231113162047.2213725-1-jisheng.teoh@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231113-grip-unstamped-7d5cb2e39d3e@squawk>
References: <20231113-grip-unstamped-7d5cb2e39d3e@squawk>
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

On Mon, 13 Nov 2023 13:45:00 +0000
Conor Dooley <conor@kernel.org> wrote:

> On Mon, Nov 13, 2023 at 12:22:30PM +0800, Ji Sheng Teoh wrote:
>=20
> > +config STARFIVE_STARLINK_PMU
> > +	depends on SOC_STARFIVE =20
>=20
> Please s/SOC/ARCH/ so I have one fewer instance to delete.

Thanks Conor, will change to ARCH_STARFIVE in v2.

>=20
> > +	bool "StarFive StarLink PMU"
> > +	help
> > +	   Provide support for StarLink Performance Monitor Unit.
> > +	   StarLink Performance Monitor Unit integrates one or
> > more cores with
> > +	   an L3 memory system. The L3 cache events are added into
> > perf event
> > +	   subsystem, allowing monitoring of various L3 cache perf
> > events. =20
>=20


