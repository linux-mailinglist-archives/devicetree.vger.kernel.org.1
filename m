Return-Path: <devicetree+bounces-16437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B41D7EEA52
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 01:29:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04173280F83
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 00:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28A59632;
	Fri, 17 Nov 2023 00:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85D11129;
	Thu, 16 Nov 2023 16:29:29 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id A85EC24DBD8;
	Fri, 17 Nov 2023 08:29:21 +0800 (CST)
Received: from EXMBX172.cuchost.com (172.16.6.92) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 17 Nov
 2023 08:29:21 +0800
Received: from localhost.localdomain (202.188.176.82) by EXMBX172.cuchost.com
 (172.16.6.92) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 17 Nov
 2023 08:29:17 +0800
From: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
To: <conor@kernel.org>
CC: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	<jisheng.teoh@starfivetech.com>, <krzysztof.kozlowski+dt@linaro.org>,
	<leyfoon.tan@starfivetech.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <mark.rutland@arm.com>,
	<peterz@infradead.org>, <robh+dt@kernel.org>, <tglx@linutronix.de>,
	<will@kernel.org>
Subject: Re: [PATCH v4 2/2] dt-bindings: perf: starfive: Add JH8100 StarLink PMU
Date: Fri, 17 Nov 2023 08:28:30 +0800
Message-ID: <20231117002830.1762079-1-jisheng.teoh@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231116-paycheck-upstairs-8147b6137f7a@squawk>
References: <20231116-paycheck-upstairs-8147b6137f7a@squawk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [202.188.176.82]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX172.cuchost.com
 (172.16.6.92)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

On Thu, 16 Nov 2023 17:27:17 +0000
Conor Dooley <conor@kernel.org> wrote:

> On Fri, Nov 17, 2023 at 12:23:30AM +0800, Ji Sheng Teoh wrote:
> > Add device tree binding for StarFive's JH8100 StarLink PMU
> > (Performance Monitor Unit).
> >=20
> > Signed-off-by: Ji Sheng Teoh <jisheng.teoh@starfivetech.com> =20
>=20
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Generally, there's no need to submit new versions so quickly - you can
> wait for feedback on multiple patches before resubmitting the entire
> series.
>=20
> Cheers,
> Conor.
>=20

Sure, Thanks for reviewing.

