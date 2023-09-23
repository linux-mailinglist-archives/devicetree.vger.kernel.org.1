Return-Path: <devicetree+bounces-2712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A497AC3B5
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:33:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C6C061C20829
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 16:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EF2A15E88;
	Sat, 23 Sep 2023 16:33:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000E92F4A
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 16:33:49 +0000 (UTC)
Received: from xry111.site (xry111.site [89.208.246.23])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6E1292;
	Sat, 23 Sep 2023 09:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
	s=default; t=1695486828;
	bh=tW1UN5jHVwKFIWyT0vw1qK7pjftSvUIwdEui3rNfxLQ=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=MTpBgURNlVSGSVUcFrKYPfa1WwaTtCLUyPldQ1iVEPl3Q0Xt/LCoNQLvX20/wUGKc
	 /87cdEmwPCKrPNpMdL3dAsroiPW9JlSCuRq2gJ+j/rz9MPwqhPUDXhmluoN5Sfp9xi
	 W0DEosDlGsa2C8dU/Yb3uSxobuiykb35ImF6dgVM=
Received: from [127.0.0.1] (xry111.site [IPv6:2001:470:683e::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
	(Client did not present a certificate)
	(Authenticated sender: xry111@xry111.site)
	by xry111.site (Postfix) with ESMTPSA id D5590659AC;
	Sat, 23 Sep 2023 12:33:43 -0400 (EDT)
Message-ID: <1caa7866e2a557d2da05adee29cb8ab8fe86ea25.camel@xry111.site>
Subject: Re: [PATCH 0/6] RISC-V: Add eMMC support for TH1520 boards
From: Xi Ruoyao <xry111@xry111.site>
To: Drew Fustini <dfustini@baylibre.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, Adrian Hunter
 <adrian.hunter@intel.com>, Guo Ren <guoren@kernel.org>, Fu Wei
 <wefu@redhat.com>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley
 <conor@kernel.org>, Robert Nelson <robertcnelson@beagleboard.org>, Jason
 Kridner <jkridner@beagleboard.org>,  Han Gao <gaohan@iscas.ac.cn>, Icenowy
 Zheng <uwu@icenowy.me>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org
Date: Sun, 24 Sep 2023 00:33:41 +0800
In-Reply-To: <ZQ2/eUKbW3wK7kHp@x1>
References: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
	 <c1a4a7ab5c68c00dd8b3bb249c0371dbb8bcb929.camel@xry111.site>
	 <ZQ2/eUKbW3wK7kHp@x1>
Autocrypt: addr=xry111@xry111.site; prefer-encrypt=mutual;
 keydata=mDMEYnkdPhYJKwYBBAHaRw8BAQdAsY+HvJs3EVKpwIu2gN89cQT/pnrbQtlvd6Yfq7egugi0HlhpIFJ1b3lhbyA8eHJ5MTExQHhyeTExMS5zaXRlPoiTBBMWCgA7FiEEkdD1djAfkk197dzorKrSDhnnEOMFAmJ5HT4CGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQrKrSDhnnEOPHFgD8D9vUToTd1MF5bng9uPJq5y3DfpcxDp+LD3joA3U2TmwA/jZtN9xLH7CGDHeClKZK/ZYELotWfJsqRcthOIGjsdAPuDgEYnkdPhIKKwYBBAGXVQEFAQEHQG+HnNiPZseiBkzYBHwq/nN638o0NPwgYwH70wlKMZhRAwEIB4h4BBgWCgAgFiEEkdD1djAfkk197dzorKrSDhnnEOMFAmJ5HT4CGwwACgkQrKrSDhnnEOPjXgD/euD64cxwqDIqckUaisT3VCst11RcnO5iRHm6meNIwj0BALLmWplyi7beKrOlqKfuZtCLbiAPywGfCNg8LOTt4iMD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 2023-09-22 at 09:23 -0700, Drew Fustini wrote:
> > I've tested this branch and successfully booted a rootfs on Lichee Pi 4=
A
> > eMMC with rootdelay=3D10.
> >=20
> > Curiously is there some way to make it work without rootdelay?
>=20
> Thank you for testing.
>=20
> This is the kernel command line that I am using on both the lpi4 and
> the ahead:
>=20
> root=3D/dev/mmcblk0p3 ro rootfstype=3Dext4 rootwait console=3DttyS0,11520=
0
>=20
> I seem to recall that before I used rootwait that there would be a VFS
> oops because mmcblk0p3 didn't exist yet.
>=20
> Have you tried rootwait instead of the 10 second delay?

I just tried rootwait several times and it works for me.

(When I tried it yesterday it did not work initially, so I switched to
rootdelay.  I guess I'd mistyped something in the initial attempt).

--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University

