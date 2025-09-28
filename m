Return-Path: <devicetree+bounces-222223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B712BA6EEE
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 12:20:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0DC53AAB07
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 10:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE6152DCBEE;
	Sun, 28 Sep 2025 10:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aeAYeMy8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C2622422E
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 10:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759054829; cv=none; b=HxfhmgqKzf3nqtLcC6BDJXozrrwBzvjuoUPcwosSEAag3wBuon3X1kW+ymoiSJZa9Y4K8jILZSXixfVqrt9VFGaAkCdaWfShUFBDgfamp7GWMUnz785wM8xUIwguyZeo9bSXgqxN6XVTnWB+/wEoH4/hKkBYrfPEzow9+fjHeg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759054829; c=relaxed/simple;
	bh=rHLeEviwPBO05xdeBXcA3VXh/8cqxkY984JQ3xEhV4g=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ZfqpvIeY1Kn5udqKnP7qA+al5zxMf4uusBpJ+Ysf587kNmNKYqOuNMPXL3H+ZRw2fUI9iK0etrJpVQYs5CPU+5FPEGBvqusT2rOb6+QGkWkOzTifcMqDU3crMlUIYV8RP5oNyldxAcPVIdFTIxBzrCVHG5xoP4FTXb/Tfez6TGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aeAYeMy8; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3f42b54d1b9so3619100f8f.0
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 03:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759054826; x=1759659626; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KvuyCjLzmlgh2D1gDc5Mt9Jji2tzu36eUVP7kFdrg7U=;
        b=aeAYeMy8f7prPvznoTM9sDf6lYJ6gem1ZPfIzcAOCJ8N87S+ozw4T4krTNit2nzemL
         u8jn7Qj5bHmCmC8nkN0npnY9QdnPWnhUiPe7CzTs+nINQXu3Irf/5deqcqK1GebefCD5
         E3wjKJfdu2Qjicv786CcZ0w4NnBDpN68yAg2MFqOsxTKOU8fE/PD2HnQ/UkYjqvzZGRc
         SPuMtoafG75mjai1XPk57wPD8Yes2OiKFZFD5imOoLtKQhw81sV+4Q9rT7g0n+ccbMIf
         XrBPu5X/ZgqgkZC3h0+KeIPXapOgFXLP3OY9tg0FepMTm4U8Sd423dG9Q3N1KPyOM1Dz
         QkZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759054826; x=1759659626;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KvuyCjLzmlgh2D1gDc5Mt9Jji2tzu36eUVP7kFdrg7U=;
        b=mXqtwsNaebWwIFxYWou4bFhhx2A0fa2DYLx3c57wzxB2/mfPtFtIA4P94/YYjPaOIY
         XP7ELTmO9Asx922d37EEmGl89fENn+yHs7aBFabrHyfXAioQa26vSLcUYztshFPNsy+r
         ZD8H0bn8ln131rIWdFgRrsy58kvL7g9gcHxg99cjboRTuzJC+Sxz3CVfPphwz1grwqcQ
         eg50lbQD1gqMBCNV15sj9xm0DOjGAiq7UgHyvCzme6/TJN9GeSuLCbrk2NcPL3HDH6z+
         MjgCNS6b/AzrY6y+gKq9tcfqavLWw85XMLLOSqf3lGmXlcbY6vNJ9UXuZA2x4SlGrBSY
         gKlA==
X-Gm-Message-State: AOJu0Yxv6LiKpbBp3jLH0Mf43rqmSJVj0FCGnVJX66Ok7ANfu+VCZstN
	G6iHNB6zYm7y3pBm2X65S9Qkm78J/qDfURSIk+hQWsnnChqKdG5NFT4S
X-Gm-Gg: ASbGnctF45dVXR/Lqp24DjzExGPqsvkzc4K5JjXeY6JSb9EdT0m5H4+EOfEkJx+RqXo
	D7zUijujH21gvRXjzsLGPufV2Yz7+kES9Wkic1XyCHaXcLKxHsdcjs5YwGlxe33O8Ne/wnyyGce
	0OuthfT/vP44PKWKJIFY813qiMfn+dMV3sK3V0hKJpgTsRtIIB+LWI/APV6PVTFAPaDwoxVvYp4
	W5HZhiLOg1XllEadovwhwldL8vQUrIqAbsfyHs9qDk5xuCd3D72ge9NnPc3HaOxCpREFa9MkP1Z
	Ybw1Bxfoe13VXOhndcVPAYiKaic45ZvyEZ1OZ2eDJNaONfjTuWiN6aOAmgJVERl5leX6mzwtxvF
	8WqaufyPlboHAynIZdAI225XzDN8LUPnNkG4nMmtb+XnhYx5ajih05Q==
X-Google-Smtp-Source: AGHT+IEYpRY/9mb9v/NUccWSRi67DJstPC7bgKLXlYWlKIlnknDwRQR0aikJXFbP1REZF8H0V2lqmA==
X-Received: by 2002:a05:6000:2885:b0:407:4928:ac82 with SMTP id ffacd0b85a97d-40e4accc857mr12504181f8f.53.1759054826169;
        Sun, 28 Sep 2025 03:20:26 -0700 (PDT)
Received: from giga-mm-1.home ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb74e46bcsm13989641f8f.8.2025.09.28.03.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 03:20:25 -0700 (PDT)
Message-ID: <9614f7f37f0e76d0dba91b26d83f234e6847818f.camel@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: E Shattow <e@freeshell.de>, Joshua Milas <josh.milas@gmail.com>, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 unicorn_wang@outlook.com, 	inochiama@gmail.com, rabenda.cn@gmail.com,
 thomas.bonnefille@bootlin.com, 	chao.wei@sophgo.com
Cc: devicetree@vger.kernel.org, sophgo@lists.linux.dev
Date: Sun, 28 Sep 2025 12:20:23 +0200
In-Reply-To: <0f581625-24d8-4b91-8935-685a837ea217@freeshell.de>
References: <20250927173619.89768-1-josh.milas@gmail.com>
	 <20250927173619.89768-3-josh.milas@gmail.com>
	 <0f581625-24d8-4b91-8935-685a837ea217@freeshell.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi!

On Sat, 2025-09-27 at 21:09 -0700, E Shattow wrote:
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> > @@ -0,0 +1,88 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
> > +#include "sg2000.dtsi"
> > +
> > +/ {
> > +	model =3D "Milk-V DuoS";
> > +	compatible =3D "milkv,duo-s", "sophgo,sg2000";

[]

> > +&uart0 {
> > +	pinctrl-0 =3D <&uart0_cfg>;
> > +	pinctrl-names =3D "default";
> > +	status =3D "okay";
> > +	/delete-property/ resets;
> > +};
> Needs parting of resets out from where it is now instead of
> delete-property here. I don't know if that can be the same series.

I wonder why is it necessary to remove "resets" at all, if it's
exactly the SG2000 SoC. What is the exact problem with them?

--=20
Alexander Sverdlin.

