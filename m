Return-Path: <devicetree+bounces-8077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5947C6A06
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:53:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B7001C20CB5
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:53:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A0121359;
	Thu, 12 Oct 2023 09:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KufQl9Yl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2FB21352
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:53:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 455B5C433C7;
	Thu, 12 Oct 2023 09:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697104390;
	bh=2yIx2lIzsN9KVNtfRWhz/dqFHghzum03EvXvSQIZLp8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KufQl9Ylq84E+AU6DXd0qZndLGrynIAPzig/FOau/ir7/bJZo3x+qy1qdqm1ZaLl8
	 1r4trW9SyYtYk3mHdsMMROkrAirusqvTWcFf2lSb8lTbdx+vtHClBvbqLH2ZtUy2jl
	 rsoKTe0w7NJlcENwVLWlkrnJDPlQBNGpzPNxDr7oLsO8Ab8dHmR4IBNdylQzfe7hUl
	 uHldbySw8F2/1QZI8fc2VeeaNNfriWRV3ocZGu0oAFo3+K8Zvi+zkRk5+EriNj4cOv
	 PZ3J6jhsqiwgU64fIoD6HyUT/iIgS4SIm56bYHDRCwxQUPxOKFez5Q90+FyzAJcVSs
	 QS3KAMlgjA6hg==
From: Lee Jones <lee@kernel.org>
To: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231002-ktd202x-v6-0-26be8eefeb88@apitzsch.eu>
References: <20231002-ktd202x-v6-0-26be8eefeb88@apitzsch.eu>
Subject: Re: [PATCH v6 0/2] leds: Add a driver for KTD202x
Message-Id: <169710438698.1160556.12482476260979824145.b4-ty@kernel.org>
Date: Thu, 12 Oct 2023 10:53:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Mon, 02 Oct 2023 18:48:26 +0200, André Apitzsch wrote:
> Add the binding description and the corresponding driver for
> the Kinetic KTD2026 and KTD2027.
> 
> 

Applied, thanks!

[1/2] dt-bindings: leds: Add Kinetic KTD2026/2027 LED
      commit: 25766993d24a623c4ddcbd34a78fdc76026d9b40
[2/2] leds: add ktd202x driver
      commit: 4239b17b5de0dcd5900727be5597ba061acd00b8

--
Lee Jones [李琼斯]


