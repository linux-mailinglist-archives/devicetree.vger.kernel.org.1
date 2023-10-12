Return-Path: <devicetree+bounces-8073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC5D7C69B7
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:33:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66DF62827ED
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9042521347;
	Thu, 12 Oct 2023 09:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6LqcTeE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6844BFC13
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:33:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D345DC433C7;
	Thu, 12 Oct 2023 09:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697103216;
	bh=vkw5mVXnujsJCmcHXN4lVw43ytuHy7CU66wGAb5wVnY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=p6LqcTeEUhVX/CCr3WiIjZMeXgN3/GdKFvK+L4YIAC1J1/PyBQ/3VAFztzJeDOZZH
	 6J0qd/Vg25hoSKLPLIBbnfBuMOu1a1AgDVD/xd8KbPFoAKqPdNnXF+PcRxU9pm1ccn
	 OfNetsw9pZ6lZngod3e1g3jhCX37urfcoBDX8UX5aPyaZ9p01fSZSMHZzIbi548NSU
	 xjMGQ9MZtbLwVtxYG6lqzaiGOgf8ZhkH4ogzqy/70sovlxIQr8rWkg7CBSQ9u8XZVY
	 AkA1iac/QD2I88Gk7nCLSzFTKmmh0oM/vxYl+Iog2Lw1Zqd9VwioL5hbrvWKelaGGE
	 d92sbLxFwZwsQ==
From: Lee Jones <lee@kernel.org>
To: linux-kernel@vger.kernel.org, 
 =?utf-8?q?Ond=C5=99ej_Jirman?= <megi@xff.cz>
Cc: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, linux-leds@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20231008142103.1174028-1-megi@xff.cz>
References: <20231008142103.1174028-1-megi@xff.cz>
Subject: Re: [PATCH] dt-bindings: leds: Last color id is now 14
 (LED_COLOR_ID_LIME)
Message-Id: <169710321458.1152368.1169129678773740373.b4-ty@kernel.org>
Date: Thu, 12 Oct 2023 10:33:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Sun, 08 Oct 2023 16:21:00 +0200, Ondřej Jirman wrote:
> Increase the limit to match available values in dt-bindings/leds/common.h
> 
> 

Applied, thanks!

[1/1] dt-bindings: leds: Last color id is now 14 (LED_COLOR_ID_LIME)
      commit: fdb7bb34af8b063b5a8bb1290af4252c38d935ea

--
Lee Jones [李琼斯]


