Return-Path: <devicetree+bounces-253349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C9446D0AFEB
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 16:43:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E94083039DC4
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 15:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B371B311C35;
	Fri,  9 Jan 2026 15:38:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f67.google.com (mail-oa1-f67.google.com [209.85.160.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D062367CE
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 15:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767973123; cv=none; b=TtTpVaxWUcX5CecOJAUrpKJpIVEYLC3iydboksk+2yvif73jrYPcw9WZLuhI1mLrEELOG5b/YkhmxiYsPlRhDBgBLAv3SWEGxk0lc/gA+48Aw7770bLH/MLq9qI+xboHrPOgGAxbLtbsSfjChGepohlAhqA5BiqregOjz/aMupw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767973123; c=relaxed/simple;
	bh=p/mIE32UAw2Rs/kcvZDW+nus0i7GczFKbTrSrUnMef4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=isHoa/Uudx8KrSWtTltpRdXFfMUGfz7F4MzdG/YKSXZTGTtfYbiOq0WTdUEG3huRfavQQuuXvODb4/HL1w1o2e9EU+r6PYKgWVnLg1MDtGQixXJ5l1yMQmujtVVyYuoC8XusMRxuAd6f0S4Xw1R3hZu1qcrTRx05B3V0Ort8llo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gompa.dev; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.160.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gompa.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f67.google.com with SMTP id 586e51a60fabf-3fff664b610so493887fac.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 07:38:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767973120; x=1768577920;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SpPrLFd5v/6zJO4WFk35tcM0BKmalPeYgZG+F55tnbQ=;
        b=q1bF20iUkSPvFi97w55xQbSmd9TVNHmDGJQBte1Un/W5kRnjzrZpeuTUMybboKRIA1
         c3oYdf3mKFslP2ygoPXf2N5mDsh69kGNSIt1f3yz/DraInQ3aC5WMwGbPRrvvBDcAnGU
         tIQ1cpSEGHrxD6gOMHXp4VOkxUfyAdHd46k1mzLUm3j+35WUteolvpn+WT+qkRWqcn3c
         7is2UCpSXMFOVmzzCQv6RSyHD/SEHznRadYElQQe/S1mUTFkhLW0xa2rwe8LMxb1xmB4
         6aqFRUekQmPnEoknRoe37bBRYyLbqP3s7aQPmF67b2l/GN//8KFU1dycVvp+SXn/MFh+
         xMiA==
X-Forwarded-Encrypted: i=1; AJvYcCVkZZRnb3j2xfQTmFGDdJ7QOtqZ/klWxObjqYIUALDocabc+FNH1Qguzc724M7Wi1Uezjx8fNP/MDMF@vger.kernel.org
X-Gm-Message-State: AOJu0YzIyEvg4rCeFUmxVWcXX5RfgTrQ9nOio8box8h0DjfXx74tp5DV
	W6MXV1kNcgjNB1qtErkewCN809Gr49ALqeEQzguYbNA6CtVDdmaiLmDW3eTvLWEB
X-Gm-Gg: AY/fxX7j0Rvcze83Xj8sBwTNOP9oNjdntz4OR7SMxjTdk1Mr88vQbL2uvF6djYqL/Di
	GUto8FKlVzqOvETr0XMUelvSiZCLOPllDa4WKFsVPTGu927LIWvD3fRmHwp0MJ+zHiiOjTsjPTh
	0efC0KX3TmVopShny7IxmAbk22LqLSSxt4+OfYr0nhFRsU2hzOBQspHseBQWxP6WzZVyhtJ/s9p
	x5OiHgb+0DTnjIgPrIzU8QoN30v9IAwTXCGNGjx+nfT33yHWIa+bEnRHj/Zx20RhfTfjbHvVo6p
	9t/97hjOHfwimmwrnhOMmKVe5mLDmsQx/9jUHIhUQTyCbfwOXqF0p5dFE7j51gBIxnLAStwL5xA
	r0tumKoCh0bN7/whiCpO9pVik6flf1wF0gjacwbcXcsmCshcN/qxX2RwiRXgcUakS4UF2jNMi8R
	5TiZzlEak/QfWrXC6pePYEQv8czew66+A7PfvRyLpFAJa1pGOFszeVNZz8xW9EBQCQJesOmNW4
X-Google-Smtp-Source: AGHT+IH7E9htnIwCjAykMWly3VABzXM4VvzvbPdOPUp0BQKUxIo9IiJPgpA7bFRqDiqT8khGjS8UcA==
X-Received: by 2002:a05:6870:c228:b0:3ec:3685:34a1 with SMTP id 586e51a60fabf-3ffc0a431d3mr5560147fac.25.1767973120407;
        Fri, 09 Jan 2026 07:38:40 -0800 (PST)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com. [209.85.210.47])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ffa507235fsm7430854fac.13.2026.01.09.07.38.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 07:38:39 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7c76d855ddbso1469119a34.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 07:38:39 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXVnIoo/EvRoPi328zkouoz/RhthPDTAzbmwpTnZ4mZNjXQEL38l2u/49785/+0mFhEATGzjyoukCR5@vger.kernel.org
X-Received: by 2002:a05:6830:1cc2:b0:7c5:3045:6c6f with SMTP id
 46e09a7af769-7ce50a28c93mr6289620a34.20.1767973119475; Fri, 09 Jan 2026
 07:38:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109-apple-dt-usb-c-atc-dwc3-v1-0-ce0e92c1a016@jannau.net>
In-Reply-To: <20260109-apple-dt-usb-c-atc-dwc3-v1-0-ce0e92c1a016@jannau.net>
From: Neal Gompa <neal@gompa.dev>
Date: Fri, 9 Jan 2026 10:38:02 -0500
X-Gmail-Original-Message-ID: <CAEg-Je9Df0XkVUBmy1DV98VOaHT1tZR3kgPQGupViR-z_0TsYw@mail.gmail.com>
X-Gm-Features: AQt7F2rwR9BSvl9s1TsweiM258RIcrVrEtCNI80i8QBJax18vd1G319kNAidJ6o
Message-ID: <CAEg-Je9Df0XkVUBmy1DV98VOaHT1tZR3kgPQGupViR-z_0TsYw@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: apple: Add integrated USB Type-C ports
To: Janne Grunau <j@jannau.net>
Cc: Sven Peter <sven@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Hector Martin <marcan@marcan.st>, R <rqou@berkeley.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 9, 2026 at 9:07=E2=80=AFAM Janne Grunau <j@jannau.net> wrote:
>
> Now that all dependencies for USB 2.0 and 3.x support are either merged
> (tipd changes in v6.18, dwc3-apple in v6.19-rc1) or in linux-next (Apple
> Type-C PHY) prepare device tree changes to expose the ports.
>
> Each port on Apple silicon devices is driven by a separate collection of
> hardware blocks. For USB 2.0 and 3.x the collection consists of:
> - Apple Type-C PHY, combo PHY for USB 2.0, USB 3.x, USB4/Thunderbolt and
>   DisplayPort
> - Synopsys Designware dwc3 USB controller
> - two DART iommu instances for dwc3
> - CD321x USB PD controller (similar to Ti's TPS6598x series)
>
> The CD321x nodes are already present so this series add the remaining
> devices nodes, typec connector nodes and connections between all
> components.
>
> The devices expose except for a few exceptions noted below all ports. M1
> and M2 have two ports, M1 and M2 Pro and Max have four ports and
> M1 and M2 Ultra have eight ports.
> The Pro and Max based Macbook Pros use only three ports. The fourth port
> is used as DisplayPort PHY to drive a HDMI output via an integrated
> DP to HDMI converter.
> The Ultra based Mac studio devices only use six ports. The third and
> fourth port on the second die is completely fused off.
>
> The changes for t600x and t602x are in a single commit since the devices
> share .dtsi files across SoC generations due to their similarity.
>
> Depends on commit c1538b87caef ("dt-bindings: phy: Add Apple Type-C
> PHY") in linux-phy's [1] next branch for `make dtbs_check` to pass.
> checkpatch warns about the undocumented DT compatible strings
> "apple,t8112-atcphy", "apple,t6000-atcphy" and "apple,t6020-atcphy" but
> not about "apple,t8103-atcphy". I don't under why it doesn't warn about
> the last. "apple,t8103-atcphy" is only found in the added devicetree
> files and nowhere else in v6.19-rc1.
>
> Tested on top of next-20260106 on M1, M2, M1 Max and M2 Pro Mac mini /
> Mac studio and a few fixes for dwc3-apple and atc [2, 3, 4, 5].
>
> Link: https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/ =
[1]
> Link: https://lore.kernel.org/asahi/20260104-atcphy-tunable-fix-v2-1-84e5=
c2a57aaa@kernel.org/ [2]
> Link: https://lore.kernel.org/asahi/20260108-atcphy-coldboot-fix-v1-1-01c=
41c6e84f2@kernel.org/ [3]
> Link: https://lore.kernel.org/asahi/20260108-dwc3-apple-usb2phy-fix-v1-1-=
5dd7bc642040@kernel.org/ [4]
> Link: https://lore.kernel.org/asahi/20260109-apple-dwc3-role-switch-v1-1-=
11623b0f6222@jannau.net/ [5]
> Signed-off-by: Janne Grunau <j@jannau.net>
> ---
> Hector Martin (2):
>       arm64: dts: apple: t8103: Add nodes for integrated USB Type-C ports
>       arm64: dts: apple: t8112: Add nodes for integrated USB Type-C ports
>
> Janne Grunau (1):
>       arm64: dts: apple: t60xx: Add nodes for integrated USB Type-C ports
>
>  arch/arm64/boot/dts/apple/t6001.dtsi           |   1 +
>  arch/arm64/boot/dts/apple/t6002-j375d.dts      | 150 +++++++++
>  arch/arm64/boot/dts/apple/t6002.dtsi           |   1 +
>  arch/arm64/boot/dts/apple/t600x-dieX.dtsi      | 212 +++++++++++++
>  arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi | 234 ++++++++++++++
>  arch/arm64/boot/dts/apple/t600x-j375.dtsi      | 270 ++++++++++++++++
>  arch/arm64/boot/dts/apple/t6022-j180d.dts      | 415 +++++++++++++++++++=
++++++
>  arch/arm64/boot/dts/apple/t6022-j475d.dts      |  31 ++
>  arch/arm64/boot/dts/apple/t6022-jxxxd.dtsi     | 133 ++++++++
>  arch/arm64/boot/dts/apple/t602x-dieX.dtsi      | 212 +++++++++++++
>  arch/arm64/boot/dts/apple/t8103-j274.dts       |  12 +
>  arch/arm64/boot/dts/apple/t8103-j293.dts       |  12 +
>  arch/arm64/boot/dts/apple/t8103-j313.dts       |  12 +
>  arch/arm64/boot/dts/apple/t8103-j456.dts       |  12 +
>  arch/arm64/boot/dts/apple/t8103-j457.dts       |  12 +
>  arch/arm64/boot/dts/apple/t8103-jxxx.dtsi      | 134 ++++++++
>  arch/arm64/boot/dts/apple/t8103.dtsi           | 105 +++++++
>  arch/arm64/boot/dts/apple/t8112-j413.dts       |  12 +
>  arch/arm64/boot/dts/apple/t8112-j415.dts       |  12 +
>  arch/arm64/boot/dts/apple/t8112-j473.dts       |  12 +
>  arch/arm64/boot/dts/apple/t8112-j493.dts       |  12 +
>  arch/arm64/boot/dts/apple/t8112-jxxx.dtsi      | 134 ++++++++
>  arch/arm64/boot/dts/apple/t8112.dtsi           | 105 +++++++
>  23 files changed, 2245 insertions(+)
> ---
> base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
> change-id: 20260109-apple-dt-usb-c-atc-dwc3-c4f7853c85e2
>


LGTM, thanks for this!

Reviewed-by: Neal Gompa <neal@gompa.dev>


--=20
=E7=9C=9F=E5=AE=9F=E3=81=AF=E3=81=84=E3=81=A4=E3=82=82=E4=B8=80=E3=81=A4=EF=
=BC=81/ Always, there's only one truth!

