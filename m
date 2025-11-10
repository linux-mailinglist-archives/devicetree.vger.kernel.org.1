Return-Path: <devicetree+bounces-236490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C359C44D2C
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 04:18:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 586AD1888805
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 03:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 570D427703A;
	Mon, 10 Nov 2025 03:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="YZjiaiJd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF9327603C
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 03:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762744697; cv=none; b=NNVlhiIhMkLTRUPCW5WQjoiSI8VNYqZdAEM6xixBnCJ+eSeqezElbmE0ioqTYAfLOPFMl2Er6U5TL3hl80+n6VN5iUUPJ/mOwK5fUtJTWhoCiHQZjHh7K2N4h6zedE9iTSjpvvwbiSin+UNQuRX6bK56R7axa6h1MawXQEWbxd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762744697; c=relaxed/simple;
	bh=rP3Cj1XyOmMR69PUCnq8e0IQkTlY2z4XKBOAdg8FfL4=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=AVP7c6K/0eRVKfU48aIYHwxiZqTRcTsqFQWTKUj7jyysYVTxigfOHDUC8C+fR61G+GQb6OA+HGbdDT84TorgqRD7aTSTBcWglWpzWu34A53Y9ds3VUbCarql/wdISDSennKuIxykCEe7RawIVNytBObZlm0mk+hmelYJaOMmVKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=YZjiaiJd; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 05EDA40EC0;
	Mon, 10 Nov 2025 04:18:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762744689; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=LH1k1T7oTNXD8mQxm3nd393V6A/zbNo0/16PhRkMMbk=;
	b=YZjiaiJdL2l/5iJDNM66wH6BzqWpmsoUXzT2XD6zVw5Mraeg5t3/J0zQWt8aMGF56knYXV
	x+/x7ZG7rgo+8sQ4s36HCswa4SkQeUzmiSl+rM9CXdFNG/WcKKWr3PWfYlk8ptlp94ViBf
	Wcokym2/RuH0h3uTk8htHF/xhuAzC6wD5MiDTpQ0/7sJmFvRUQCEqdwzmNI/HJ7bdJBoDx
	lPWT27ExgG9F1piav2a74xCDbaY6SY08FhFjC1YGhqu0KgrvKkBNMHhH/vODqqrCtNjBzc
	/sZv3JZrstyC+I0Hzo8Y/0gwM9QmESk0qhW+FJYBkjUVSLYpA5+vv8f0HWZbEQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <CALWfF7K3zNxSsXVpW8pLc_xWi793HG99OvbshtP-0=764JmPKw@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
References: <20251105051335.17652-1-naoki@radxa.com> <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com> <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org> <CALWfF7K3zNxSsXVpW8pLc_xWi793HG99OvbshtP-0=764JmPKw@mail.gmail.com>
Date: Mon, 10 Nov 2025 04:18:04 +0100
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "Jimmy Hon" <honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <fab774df-de59-f101-55ec-5d4f691955eb@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add Radxa CM5 IO Board
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Jimmy,

On Thursday, November 06, 2025 05:53 CET, Jimmy Hon <honyuenkwun@gmail.=
com> wrote:
> On Wed, Nov 5, 2025 at 9:31=E2=80=AFPM Dragan Simic <dsimic@manjaro.o=
rg> wrote:
> > With all that in mind, we should specify "no-mmc" here, because
> > we're describing a microSD slot, instead of describing some hybrid
> > MMC/microSD slot.  That also explains why the adapter sold by Radxa
> > is described as not to be used with microSD card slots on SBCs.  I'=
d
> > also like to hear is this adapter/eMMC chip combo recognized by the
> > kernel when "no-mmc" is specified; it should fail.
> >
> > Actually, not specifying "no-mmc" here may result in some unforesee=
n
> > issues with some (or perhaps many?) microSD cards, because the MMC
> > drivers will treat them as MMC-capable devices and try to initializ=
e
> > them as such, which may cause all kinds of issues.  In fact, I'm no=
t
> > really sure that the MMC drivers are actually implemented in a way
> > that avoids all possible issues with the storage controllers that
> > are capable of both SD and MMC modes when neither of "no-sd" and
> > "no-mmc" is specified in their DT nodes.
>=20
> Hybrid MMC and SD slots are pretty normal on USB card readers. So it'=
s
> normal for the host controller to figure out what kind of card is in
> the slot.
> https://uditagarwal.in/understanding-sd-sdio-and-mmc-interface/
>=20
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/co=
mmit/?id=3D6ae3e537eab9f560b516b001eb89f0cd568bdced
> was the commit that introduced the device tree properties. By the
> wording of the commit message, these device tree properties are used
> to indicate to the driver if the host controller hardware is capable
> of MMC initialization or SD initialization.
>=20
> Since the host controller in the RK3588 is capable of all the modes,
> these properties do not need to be specified.
>=20
> Since Radxa has the eMMC to uSD adapter, it makes sense Radxa would
> want to configure their microSD card slot on their boards to be a
> hybrid SD/MMC slot.

Thanks for providing further insights!  After thinking a bit more
about it and after remembering that HardKernel also offers a similar
microSD-to-MMC adapter, [1] there should be very few roadblocks that
may actually prevent us from defining physical microSD slots found
on Rockchip boards as hybrid microSD/MMC slots wherever that's
allowed by the slot implementation and tested to work as expected.
Supporting more card standards is always good.

This approach shouldn't be limited to Radxa (or HardKernel) boards
only, because the available microSD-to-MMC adapters aren't designed
specifically to fit some boards only.

The possible roadblocks, as mentioned above, are some unexpected
signal integrity issues that may prevent the MMC mode from working
as expected on some boards, which Jonas pointed out already, [2][3]
and any associated issues in the MMC drivers.

I'll keep checking the code of MMC drivers for the existence of any
associated issues, and I'll possibly turn a few microSD-only slots
into hybrid ones. :)

[1] https://www.hardkernel.com/shop/emmc-module-reader-board-for-os-upg=
rade/
[2] https://libera.catirclogs.org/linux-rockchip/2025-11-06#38976445;
[3] https://libera.catirclogs.org/linux-rockchip/2025-11-07#38981060;


