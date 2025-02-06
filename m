Return-Path: <devicetree+bounces-143696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E4EA2AF94
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 18:59:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7A1F3A8476
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 17:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6481A199FAF;
	Thu,  6 Feb 2025 17:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="Zcruyz62"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45890199948
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 17:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738864611; cv=none; b=l7PaB03OC0YCLpt/auMQzBi+ecjquHWeippS5zMdgq8qEXsjNHPI4/l/dUnI7MC4rW+ZIaXxGEd133fY4ig3nGUXSiFJTvb6+XJfeLZkNvEogLyCtYVbfQXFFggsSpX1eTsq0Obk/VpYnIuoIlp3XCzWjgMWvdS7Mlq8gCIEFtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738864611; c=relaxed/simple;
	bh=XWzRQEytXLE9LjfXaehGs6bnx7AWHDZIfcHQmsDAkv4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:Cc:To:
	 References:In-Reply-To; b=hYPOR3ivuWyy+q5krn41Ba7u5FVRQd02g3/VxcRbEGqnP1b4Am1tmUVXiSCOJz2rJKsnJZKXi34RoX/LFT4UvoS/bUGC6aM/gEbywBRUOwVAduf9TdnQR+XvKzqEfoIVaolhq6Ozq+BjgochWm8Xj/GsBCT6CTXwARZ/RbZ5U9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=Zcruyz62; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1738864601;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=w1Ia8rkI+1aqp/BE7ykJwCWC2yFoWhBOndDQb5udbXE=;
	b=Zcruyz62rIFMRV7nP0cqLglClrweMo/C1yT3rMF6lT888HLeDTO8Ll6t5GGgjgYHB+xdaj
	i9qilqbOok7wWndAewqrqlcDnfYzmFaiO7UGn6ficjBM+CnUiskqgvRMB1Edi4ZYk7O+Yb
	sup2AYZODDtaPUHwfseE3VyQy4o5plRhZF6duBEqrKKl0NN1sQ+K1MLGCyc6MwMk0SbVj+
	b3qT0cDf2urdQMZpVpJHjkqcFvulLIR1wpOvAZx+Q0/IrnVUtm9Mkz/yHOeBlxKpEd6t54
	6JPQEFBazVkvE9vfrzXZBdWwcuwt5Srtq3zlnaH5dlQKcrzVDiGrNe00fyX9vA==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 06 Feb 2025 17:55:48 +0000
Message-Id: <D7LK1DPOAAG5.3EUG8X7DVSDO5@postmarketos.org>
Subject: Re: [PATCH v4 2/2] arm64: dts: amlogic: add support for
 xiaomi-aquaman/Mi TV Stick
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Ferass El Hafidi" <funderscore@postmarketos.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 "Artur Weber" <aweber.kernel@gmail.com>, "Christian Hewitt"
 <christianshewitt@gmail.com>
To: "exxxxkc" <exxxxkc@getgoogleoff.me>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Kevin Hilman" <khilman@baylibre.com>, "Jerome
 Brunet" <jbrunet@baylibre.com>, "Martin Blumenstingl"
 <martin.blumenstingl@googlemail.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, <linux-amlogic@lists.infradead.org>
References: <20250203174346.13737-1-funderscore@postmarketos.org>
 <20250203174346.13737-3-funderscore@postmarketos.org>
 <19c8e021-d2c8-44b4-968b-153d798c140d@getgoogleoff.me>
In-Reply-To: <19c8e021-d2c8-44b4-968b-153d798c140d@getgoogleoff.me>
X-Migadu-Flow: FLOW_OUT

On Thu Feb 6, 2025 at 4:14 PM UTC, exxxxkc wrote:
>  =C2=A0um it seem the sdio wifi module/chip connected to sd_emmc_a it is=
=20
> actually connected to sd_emmc_b
>
> i tried to enable sd_emmc_a but nothing showed up in the kernel thus i=20
> tried to enabled sdd_emmc_b and there are a sdio device showed in the=20
> kernel (sdio:c07v8888d8888)
>
> <https://matrix.to/#/!bDDAcbaDDYYwsVgelj:pixie.town/$YUSQIZ-pF22j9-ElrCst=
8XCUg1pac7CzWbUinNZL9HI?via=3Dpixie.town&via=3Dmatrix.org&via=3Ddissonant.d=
ev>
>
> acc to https://paste.coreelec.org/CoolersHurry=20
> <https://paste.coreelec.org/CoolersHurry> it seem it is amlogic w1 chip ?
>
> (well on my board it is amlogic w1. there are some variant that use=20
> other wifi chip )

Good catch!  I'll see if I can mess around with that stuff a bit more at
some point.

Cheers!

