Return-Path: <devicetree+bounces-55648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA1E895D7C
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 22:23:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB3C6B2600E
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 20:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC98815D5A3;
	Tue,  2 Apr 2024 20:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="swoWPG18"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A607F15AAA1
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 20:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712089377; cv=none; b=GZcBdRDxfYYUzEoV5m7Ylc5/+fTzRHQs5qL1FMJ9k93eMwMe/TnPJUK11x5hnp5ltThCvBY7UOAyLgqYSJXpZBHPYNfK2VQLKafPvChQbozVWzP2fqfiVXBrXyn0Lg5kHm0NLJidrKBOdC1fJy4b13ZJwIwZvcJ6VKOt8OkhqX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712089377; c=relaxed/simple;
	bh=EtKP0CQ+TpkA4UXnNV+4vRhHD9R077pswvcYeEVZ6zw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BRxhbbX35eq2fAl7Q2/D0RkQ8W3fxa0ob6KVc3U19Ez39fX40s07AyylrLZd/Y9hLKIw3T3fwDclFj3/GQPhXI9gGqwxyEGiy1QfEFRcIaW3fUJTM4RDoaFV+WXyVA7Nopg8Ibl5r1eYaz7EaFanWbJQO6K/fB6VpG6dM7DP9ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=swoWPG18; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1712089359; x=1712694159; i=wahrenst@gmx.net;
	bh=EtKP0CQ+TpkA4UXnNV+4vRhHD9R077pswvcYeEVZ6zw=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:
	 In-Reply-To;
	b=swoWPG18R/zBNG7sDxEdsZtiMwgeLjpeZSX3P5soLPNdg1vSTLrqsq4ALKVre5Vz
	 98IC6hVCrLmw8CRv87vG51Rl8wlMfHIv204ZRnCoLDnTFIlnBr5JZqUpxx6980CsN
	 SZ4Q5QNdhlbAqLQgH8t+wkLzgY7CnFEH8Hc9dPQngf4x+9K8bipmZO10bkVZuTVRS
	 zKUdduW3F9XQ5EpTnw9XLYHJ8Dv5oWtV6rXuz863CeoBUKVUnX4kQESvPsfPYo9XV
	 WK80DYGDyjbU2sQbKN0yHfuivLG9jdd0hYaTgPGYLJu/eJepUli1b9mg5x6R803Y5
	 adXn1451T00efHZWYQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.167] ([37.4.248.43]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MV67o-1sHVHN2Kk2-00S7kw; Tue, 02
 Apr 2024 22:22:39 +0200
Message-ID: <7eb955ae-b55d-485a-9c74-b5d7a9fc3271@gmx.net>
Date: Tue, 2 Apr 2024 22:22:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] dt-bindings: arm: bcm:
 raspberrypi,bcm2835-firmware: Drive-by fixes
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: "Ivan T. Ivanov" <iivanov@suse.de>, Peter Robinson
 <pbrobinson@gmail.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Naushir Patuck <naush@raspberrypi.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh@kernel.org>, Scott Branden <sbranden@broadcom.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, u-boot@lists.denx.de
References: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com>
 <b044eec1-ae64-4de7-9ab0-e3fe756131ef@gmx.net>
 <20240327233700.GA21080@pendragon.ideasonboard.com>
 <bcf8093ab0ea6f3738bf4a4623de700a@suse.de>
 <2e15ab46-f29c-44ac-8a2a-8baa140ee1a3@gmx.net>
 <20240402200855.GA32172@pendragon.ideasonboard.com>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
In-Reply-To: <20240402200855.GA32172@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:+d3jbTgavD0pQE6h9Pzr8h+M1Ho7yon9VjRWpiERucJCK8K21Hz
 FgiEIC3LyoUElE7GRWCepg5BdqDXz+xXrZlFfavl9my6euiOqYFBbYfhsilkAceG2TODTL1
 t40zfrTzuTbQ9t03r2X6hXfghJVTCjC2ImAEa8E9J0dQJvpY98KRHerZeUesMZtnatCeRUE
 nJmCDBJIpzPCvj+DTHxAg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:C23QAP3deNA=;HaEOdld/5VVrVAQRQwhaxbt3jNF
 PKtvsMqNFysU9GRmXGSIFcy3sQed74TRBZkMTrIlqA6Qclkhp3YTyzE4rNfgtucMirwfdgjVb
 qpiTTt4PeuAC6L0/k2IaMi4WfDb2NbnFQowz98dVahSsJ6ICwGjZCoRdfH5dhK7u4qH3pUc07
 g4gpeZS0+ssYPvTYM3FJ3AfPRS76iKijxc8UfQCEXoI2UjBpH+kbbbT4iB3O3GHpJifAKJsIR
 YMFNLvEoIG6J4KUS2tPhi0wn74OkYJxcjQZwN/Aee3sMotCi2KJYi1kyFPrXleOaxbKva3ogC
 FQVFN8dNSyfrvjsdwcMS9SE5knXtgI0YnBmHgkrDuBNScD0pfvHaULy+Czyo19B2UNOCVv+I4
 Sb8P4O3BXSCWIE8SmzEfRZbQ6AxJnAYI9i6zngcG7hkgHZY8LQqzNwTyYMNSI5llg5XiTFNnf
 55Imrj7/BWemR5d4rJ+NnMQkOxAh8BOJUmOHKc+RUYfD9tApQ7OsN9bplWbmdFVXCerZV3fbk
 tT+KYYE5HASc6KCSRljxEXY7xC6XthTW301+jE4CVd3nbYnHVh67+syCOYwZfBhM8Xmf49xf8
 HFD9k2kcK/JjziijKmHX6AwKOTa9wgWV42KhvQZL/amIsj/K1StrPDuNFPKHsTgaN61MTzodZ
 9n9T2PpQXZqRylx93XFh6rwuGiHATy8s1IktIZCirpbJBFwAWHEGY5auhaNPiVNKxnrf30FvM
 1O36Wh1RF/H001rvqxHlcKcdrdBK6JlC6ewLKwGKKD3QZBk5VgXwJ6isfy/2TMJYb/c1bxq4z
 0PxPemPySpevYah0d1vsySjN75O+RBglpYxX3WiQD+oa8=

Hi Laurent,

Am 02.04.24 um 22:08 schrieb Laurent Pinchart:
> Hello,
>
...
> Stefan, I'm quite unfamiliar with the Raspberry Pi upstreaming process
> (despite having sent patches for ages :-)), do I understand correctly
> that this patch will go through your tree, or do I need to work with
> someone else to get it merged upstream ?
>
i'm not the maintainer, but i'm trying to help. Florian is the
maintainer, so i would expect this series goes through his tree. So
MAINTAINERS file is correct here.

