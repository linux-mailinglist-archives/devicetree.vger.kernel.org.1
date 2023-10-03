Return-Path: <devicetree+bounces-5398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C114D7B62E0
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:56:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6FC762814FD
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 07:56:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBF7DD30F;
	Tue,  3 Oct 2023 07:56:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC48B6AC0
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 07:56:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CB0BC433C8;
	Tue,  3 Oct 2023 07:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696319789;
	bh=WJrq9pvqjjq+UgwdFJc03n5UstUwK2CTaZTIfJNnE60=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:From;
	b=Qy6vYmF91Ai1mQb1GLlAghMU9z7UOEwYSDAVtsMuuyoKVY3/ox60QqCsxrAstnMiU
	 nSJ1yDf2h0X534Nj2e1OjKiDXV6z35/fipVku89/CG41TGN2yGqklL4VpB7Zy7/fZb
	 Tx6F7i8e4DT/b8zeDxFppHMi2AWzvUTtdziyrh8QT6617OXE8qmKbdwqwCQAt9C1k/
	 01z2JGboHR7C8sidyXX2ZH6C8NxGcXa9C1+/iCBqR2e3zRtfsBRlqGYy/RsjutjGX7
	 5IrqOR3/DQL8f6CJC83npj6u6AaQlMUeIDQye9JfLRb2VPh2xUPOp6UtRE4OKWpf31
	 QdbCvFPG3iqCw==
Date: Tue, 03 Oct 2023 08:56:25 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen Wang <unicorn_wang@outlook.com>, Jisheng Zhang <jszhang@kernel.org>
CC: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Anup Patel <anup@brainfault.org>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, Inochi Amaoto <inochiama@outlook.com>,
 chao.wei@sophgo.com, xiaoguang.xing@sophgo.com
Subject: Re: [PATCH 0/5] Add Milk-V Duo board support
User-Agent: K-9 Mail for Android
In-Reply-To: <MA0P287MB03323A58B068D400E8225E80FEC4A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
References: <20230930123937.1551-1-jszhang@kernel.org> <20231002-slurp-anime-a2308245174e@spud> <MA0P287MB03323A58B068D400E8225E80FEC4A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
Message-ID: <F026F534-26E6-4EEC-BC93-2C85D6F9E446@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 3 October 2023 03:32:20 IST, Chen Wang <unicorn_wang@outlook=2Ecom> wro=
te:
>
>=E5=9C=A8 2023/10/2 20:22, Conor Dooley =E5=86=99=E9=81=93:
>> Hey,
>>=20
>> On Sat, Sep 30, 2023 at 08:39:32PM +0800, Jisheng Zhang wrote:
>>> Milk-V Duo[1] board is an embedded development platform based on the
>>> CV1800B[2] chip=2E Add minimal device tree files for the development b=
oard=2E
>>> Currently, now it's supported to boot to a basic shell=2E
>>>=20
>>> NOTE: this series is based on the SG2042 upstream series for the vendo=
r
>>> prefix and ARCH_SOPHGO option=2E
>>>=20
>>> Link: https://milkv=2Eio/duo [1]
>>> Link: https://en=2Esophgo=2Ecom/product/introduce/cv180xB=2Ehtml [2]
>>> Link: https://lore=2Ekernel=2Eorg/linux-riscv/cover=2E1695804418=2Egit=
=2Eunicornxw@gmail=2Ecom/ [3]
>> Other than the comment I left, this seems fine to me=2E I'd be happy
>> enough to pick up the pre-reqs from the other series & this one if one
>> of the Sophgo maintainers acked these patches=2E
>
>Conor, just FYI, sophgo maintainers are located in China, and they are in=
 National holiday vacation these days=2E I think they may reply to emails l=
ater this weekend=2E

Firstly, there isn't some super rush here that a few days holiday will int=
erfere with=2E
I'm actually on holidays myself at the moment :)
Secondly, you're one of the sophgo maintainers,
right? It's the people listed in MAINTAINERS that I am talking about here,
being an employee doesn't matter=2E

Cheers,
Conor=2E

>
>Thanks,
>
>Chen
>
>>=20
>> Thanks,
>> Conor=2E
>>=20
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists=2Einfradead=2Eorg
>> http://lists=2Einfradead=2Eorg/mailman/listinfo/linux-riscv

