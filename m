Return-Path: <devicetree+bounces-195734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EED18B02D72
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 00:24:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 084D6A43413
	for <lists+devicetree@lfdr.de>; Sat, 12 Jul 2025 22:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D261822A808;
	Sat, 12 Jul 2025 22:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=milecki.pl header.i=@milecki.pl header.b="SE3lhfWM"
X-Original-To: devicetree@vger.kernel.org
Received: from 6.mo560.mail-out.ovh.net (6.mo560.mail-out.ovh.net [87.98.165.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BAA1A2632
	for <devicetree@vger.kernel.org>; Sat, 12 Jul 2025 22:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=87.98.165.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752359089; cv=none; b=YtBjxL7e822X+atLko4/b1i0G1qsQMrI3Gtw2delKmynaLDWIqJLG61vV/sZjB32Kcso0RB/Urtsupdwvl0lXPq+8ejjvFqRFIuLN+ZcUyV08sTk9bZ10hA0roGgxpR/QWMhY+PtFC91M9wuP2wDuYKUYSIs6ByP+nNB0IQN0nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752359089; c=relaxed/simple;
	bh=J03nje7L7tQvffm+9eHiL5fp3PPulkRxm954htms3/o=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=njjPSrsaK6SasxmKls9K+OG42NeUyBZJusbZYpEVjBvaruQn/If3nT1xtsK2mT/09IY6EYDJjO8UO6Bc7c0liDP02EvujV9k3It9ZBgLbzjVCojbaNL6uq2quaFzUpfYewQGOejh97NFWl5H+wh0giS+s9iW12T9PhDL2usLBQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=milecki.pl; spf=pass smtp.mailfrom=milecki.pl; dkim=pass (2048-bit key) header.d=milecki.pl header.i=@milecki.pl header.b=SE3lhfWM; arc=none smtp.client-ip=87.98.165.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=milecki.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=milecki.pl
Received: from director1.ghost.mail-out.ovh.net (unknown [10.109.231.250])
	by mo560.mail-out.ovh.net (Postfix) with ESMTP id 4bfh2g4xsvzBJCd
	for <devicetree@vger.kernel.org>; Sat, 12 Jul 2025 21:06:19 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-lvk2g (unknown [10.108.42.28])
	by director1.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 8FCB9C15F9;
	Sat, 12 Jul 2025 21:06:17 +0000 (UTC)
Received: from milecki.pl ([37.59.142.113])
	by ghost-submission-5b5ff79f4f-lvk2g with ESMTPSA
	id sZQeF0nOcmiXIwAAwJQ/6Q
	(envelope-from <rafal@milecki.pl>); Sat, 12 Jul 2025 21:06:17 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-113S007dfe7229d-c21e-49a0-b67c-aefe61f6941c,
                    F8652911B2760FD5DD3B3FE7F023F1798B178A20) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp:151.80.29.19
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Sat, 12 Jul 2025 23:06:17 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Aleksander Jan Bajkowski <olek2@wp.pl>
Cc: rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com,
 lukasz.luba@arm.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, s.hauer@pengutronix.de,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: thermal: mediatek: add falback
 compatible string for MT7981 and MT8516
In-Reply-To: <20250712195904.6988-2-olek2@wp.pl>
References: <20250712195904.6988-1-olek2@wp.pl>
 <20250712195904.6988-2-olek2@wp.pl>
Message-ID: <3d81b3bcdb09dc20e6d54028301da882@milecki.pl>
X-Sender: rafal@milecki.pl
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 14864974998312692504
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdegjedvfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvfevufgjfhfkgihitgfgsehtkehjtddttdejnecuhfhrohhmpeftrghfrghlucfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeejjeekkeegjedtffffveffieevtdeuieefueffgeekheekleeiudfgleefuddtueenucfkphepuddvjedrtddrtddruddpkeelrdduhedurdefuddrkeehpdduhedurdektddrvdelrdduledpfeejrdehledrudegvddruddufeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehiedtmgdpmhhouggvpehsmhhtphhouhht
DKIM-Signature: a=rsa-sha256; bh=We8JOvusDnYKwN43BVavZsqnZtq56WFDfbjzvvdQ4W4=;
 c=relaxed/relaxed; d=milecki.pl; h=From; s=ovhmo3028686-selector1;
 t=1752354379; v=1;
 b=SE3lhfWMiWg+UJybBdOrZAKkpas7cNmfKroUCAy8ROZNy00hZn/HZtlqU1P5EvK1IPkERMKG
 l3bYlKDttH5NzBJr4xhnELUgXiAasWrJFn5w24BcWq46sPjX0GQmTcSJJr1X8+LgfkCHawxdSmj
 amTNv7y3uqEJGhg2sAxgeP0ylYWyDEW10zjPhfLMQevsW7ExDcnO10ZjFg0S/8hLRHzSI5lDi2W
 Dd7TOpna/FE8ks9QI8IxfxGkXF2kx+y78Ra6u+AoaTyStufvQYhb+yi3e2X598JON6RA1p6HzB5
 SNUbVimjHFFdbV+kdkjd2ARgyiH0txlYkm1ovc7kXwJQA==

On 2025-07-12 21:59, Aleksander Jan Bajkowski wrote:
> The ‘mediatek,mt7981-thermal’ and ‘mediatek,mt8516-thermal’ strings
> aren't definied in the driver. Both should have fallback compatible
> strings. This commit fixes this issue.
> 
> Fixes: 788494ba0999 ("dt-bindings: thermal: convert Mediatek Thermal
> to the json-schema")
> Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

I see my mistake I did while converting to JSON schema. Thanks for 
sorting it out.

Acked-by: Rafał Miłecki <rafal@milecki.pl>

-- 
Rafał Miłecki

