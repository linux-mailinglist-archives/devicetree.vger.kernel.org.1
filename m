Return-Path: <devicetree+bounces-2623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 724A37ABBFB
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 00:51:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 29D5928236A
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 22:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93B2A4884F;
	Fri, 22 Sep 2023 22:51:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E856323E
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 22:51:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBB70C433C8;
	Fri, 22 Sep 2023 22:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695423076;
	bh=+IgQHS0uZ5whJ86T+o1t0MM1hBYBpdeCcn6J2sibHpA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tRYz0gV96XVqgdZIDZIECV4fPJq4hhVnvurXeBnWxH95oT4N9BoPVUW+WqK9Onc/k
	 0VoSthzX8qL7QAvEQOquiwoSD/RxihT7BrZJpLipPABvym5/03+cc8FGa7z9Rp++KD
	 D2qvsX94BKWZj4MaF1cu0FNVYJV0c/O8zjY8SpcgVEY4MsS0xs2mOjT00j3q3BI6zA
	 yDWlSrx9PAvnaXpJFpiyPp8Q5TziPN7ozaoUwga6T4ayEoXReqrw2JBpTIBJVrtUFm
	 hBEom1FGZvoeJhKjzef6RLFAe76R4FQQoXAxNuQSX2c/5pLb0qHuNqWpGT6KBJk9KW
	 e4i+y7sZTpHuA==
Received: (nullmailer pid 4076004 invoked by uid 1000);
	Fri, 22 Sep 2023 22:51:11 -0000
Date: Fri, 22 Sep 2023 17:51:11 -0500
From: Rob Herring <robh@kernel.org>
To: Zev Weiss <zev@bewilderbeest.net>
Cc: Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, Eddie James <eajames@linux.ibm.com>, "Milton D. Miller II" <mdmii@outlook.com>, Wim Van Sebroeck <wim@linux-watchdog.org>, linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>, openbmc@lists.ozlabs.org, Thomas =?iso-8859-1?Q?Wei=DFschuh?= <linux@weissschuh.net>, linux-aspeed@lists.ozlabs.org, Ivan Mikhaylov <i.mikhaylov@yadro.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: aspeed-wdt: Add
 aspeed,reset-mask property
Message-ID: <169542307112.4075948.15645605897080315437.robh@kernel.org>
References: <20230922104231.1434-4-zev@bewilderbeest.net>
 <20230922104231.1434-5-zev@bewilderbeest.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230922104231.1434-5-zev@bewilderbeest.net>


On Fri, 22 Sep 2023 03:42:33 -0700, Zev Weiss wrote:
> This property configures the Aspeed watchdog timer's reset mask, which
> controls which peripherals are reset when the watchdog timer expires.
> Some platforms require that certain devices be left untouched across a
> reboot; aspeed,reset-mask can now be used to express such constraints.
> 
> Signed-off-by: Zev Weiss <zev@bewilderbeest.net>
> ---
>  .../bindings/watchdog/aspeed-wdt.txt          | 18 +++-
>  include/dt-bindings/watchdog/aspeed-wdt.h     | 92 +++++++++++++++++++
>  2 files changed, 109 insertions(+), 1 deletion(-)
>  create mode 100644 include/dt-bindings/watchdog/aspeed-wdt.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>


