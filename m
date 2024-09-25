Return-Path: <devicetree+bounces-105162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 86294985435
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 09:32:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DB071F22302
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 07:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A27A0156F30;
	Wed, 25 Sep 2024 07:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=milecki.pl header.i=@milecki.pl header.b="Ovl4kHSG"
X-Original-To: devicetree@vger.kernel.org
Received: from 3.mo582.mail-out.ovh.net (3.mo582.mail-out.ovh.net [178.33.253.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D59D132114
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 07:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.33.253.26
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727249547; cv=none; b=rUmN6ENeuCXn5r+C5xE4Yk9AtuNj395MzVijqNr9fa1sxHRMckjWmImcf7j12atV4qIDvreQVNgx+76py/Rxvc9VG92Mj7+n+3C+iNZ/QizrlQ1Q1E/dlvm3mN6t0RrUkjcS0yGvQl1eC1GSgmnzKNMsPMqT4EMeQOmmFd+szCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727249547; c=relaxed/simple;
	bh=FyQ+PaSDOc52BM9gnVH3xSMvP/hTE2Dzz/PW17DJve8=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=LERvRoDZxAmYCmhxaMeSyBVurD1NmMTpqQlgkWMcNrYNuTDIWRmq0Z0wJYX2c0RJRkkqeACbGLJw/2XT3tBwPhwsrxjMUEV0LgLXfQcHuxI27IsBJKMSDwn4HqWhTczKNXUHJ4lcPxVy/vqk8dZE5BNyrpY81u2GmP3akxRigQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=milecki.pl; spf=pass smtp.mailfrom=milecki.pl; dkim=pass (2048-bit key) header.d=milecki.pl header.i=@milecki.pl header.b=Ovl4kHSG; arc=none smtp.client-ip=178.33.253.26
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=milecki.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=milecki.pl
Received: from director3.ghost.mail-out.ovh.net (unknown [10.109.176.25])
	by mo582.mail-out.ovh.net (Postfix) with ESMTP id 4XD7WR6g3Gz1Nhr
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 07:23:47 +0000 (UTC)
Received: from ghost-submission-55b549bf7b-64cjv (unknown [10.110.118.154])
	by director3.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 4775F1FE3C;
	Wed, 25 Sep 2024 07:23:45 +0000 (UTC)
Received: from milecki.pl ([37.59.142.103])
	by ghost-submission-55b549bf7b-64cjv with ESMTPSA
	id mUbACYG682ZBNAAAyTvjrg
	(envelope-from <rafal@milecki.pl>); Wed, 25 Sep 2024 07:23:45 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-103G00530c11656-fd2d-4e51-b038-3339ee5f64f8,
                    9DD8DC6CF38314E8515C70E4989C69D14BB97D32) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp:176.31.235.81
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Wed, 25 Sep 2024 09:23:44 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Sandie Cao <sandie.cao@deepcomputing.io>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Heiko Stuebner
 <heiko.stuebner@cherry.de>, Neil Armstrong <neil.armstrong@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Michael Zhu
 <michael.zhu@starfivetech.com>, Drew Fustini <drew@beagleboard.org>,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dhs@frame.work, ams@frame.work,
 gregkh@linuxfoundation.org, yuning.liang@deepcomputing.io,
 huiming.qiu@deepcomputing.io, Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor: add deepcomputing
In-Reply-To: <20240925053123.1364574-2-sandie.cao@deepcomputing.io>
References: <20240925053123.1364574-2-sandie.cao@deepcomputing.io>
Message-ID: <9e32cc30b1c9923f985aa6786d1f9d62@milecki.pl>
X-Sender: rafal@milecki.pl
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 13439585716663266069
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeftddrvddtgedguddukecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvfevufgjfhfkgihitgfgsehtkehjtddttdejnecuhfhrohhmpeftrghfrghlucfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeejjeekkeegjedtffffveffieevtdeuieefueffgeekheekleeiudfgleefuddtueenucfkphepuddvjedrtddrtddruddpfedurdduuddrvddukedruddtiedpudejiedrfedurddvfeehrdekuddpfeejrdehledrudegvddruddtfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehkedvpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=oItKQ7Un4VVtOguEdJMdsbTrZ/zvp+itPGogkzlkK3Y=;
 c=relaxed/relaxed; d=milecki.pl; h=From; s=ovhmo3028686-selector1;
 t=1727249028; v=1;
 b=Ovl4kHSGTKMErUPsh99wFV9ywc1NXhkv4W4b/wxPhu+8OY/PTRr7RVL/1a3rSQ0+zjGtZsCX
 sBn6acYwUaURTOmlLCHj1xYZjb+yeb/elRftToCNh26hE2BoWnBgAIez5SyHszscWcLwCyt5I3u
 M4VgZhlwnLHLgIjwUJxrPtqZ4/nCv+OtjjSEgTjQJmCF0BVYhxE5kYM4/S6O0ngtzu4TOf6NBHW
 K+xThf2JP6f+2J/2QPuEhF8pfvDk6sKz3863KeZynfrARAwpOB+SFKHEWiewOuRkmPzbCwrWodI
 +Plooid2MqWS9co3Y1LSMvlCwFMD35DuuJQIpzZ82Hh7g==

On 2024-09-25 07:31, Sandie Cao wrote:
> Add deepcomputing into vendor list.
> 
> Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

This "PATCH" is empty. Please verify what's your about to send :)

-- 
Rafał Miłecki

