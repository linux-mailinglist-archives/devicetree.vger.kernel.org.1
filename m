Return-Path: <devicetree+bounces-26629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8858175BD
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 16:43:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80F921C248FD
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 15:43:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65FB84FF95;
	Mon, 18 Dec 2023 15:38:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278AD42388;
	Mon, 18 Dec 2023 15:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id C7E607FD6;
	Mon, 18 Dec 2023 23:37:56 +0800 (CST)
Received: from EXMBX072.cuchost.com (172.16.6.82) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 18 Dec
 2023 23:37:56 +0800
Received: from localhost.localdomain (202.188.176.82) by EXMBX072.cuchost.com
 (172.16.6.82) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 18 Dec
 2023 23:37:50 +0800
From: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
To: <krzysztof.kozlowski@linaro.org>
CC: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	<jisheng.teoh@starfivetech.com>, <krzysztof.kozlowski+dt@linaro.org>,
	<leyfoon.tan@starfivetech.com>, <linux-kernel@vger.kernel.org>,
	<linux-watchdog@vger.kernel.org>, <linux@roeck-us.net>, <robh+dt@kernel.org>,
	<samin.guo@starfivetech.com>, <wim@linux-watchdog.org>,
	<xingyu.wu@starfivetech.com>
Subject: Re: [PATCH v4 1/1] dt-bindings: watchdog: starfive,jh7100-wdt: Add compatible for JH8100
Date: Mon, 18 Dec 2023 23:37:38 +0800
Message-ID: <20231218153738.1054393-1-jisheng.teoh@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <1d7f9cbe-9ca1-4ccb-b90f-6e474c0740ad@linaro.org>
References: <1d7f9cbe-9ca1-4ccb-b90f-6e474c0740ad@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX072.cuchost.com
 (172.16.6.82)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

On Mon, 18 Dec 2023 15:41:37 +0100
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 18/12/2023 15:27, Ji Sheng Teoh wrote:
> >>
> >> I have real doubts that you ever tested your entire solution with
> >> this binding. Where is the DTS?
> >> =20
> >=20
> > Currently, the DTS is still in internal and yet to upstream as it
> > depends on [1]. =20
>=20
> Yeah, so you send untested code which cannot work or pass tests.  If
> you do not test your code, we need to be able to at least verify it,
> so send your DTS. Otherwise I cannot trust that this works at all.
>
Will submit it with DTS once things have cleared up.
Thanks for the comment.=20

> Best regards,
> Krzysztof
>=20

