Return-Path: <devicetree+bounces-85049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E7192EA8C
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 16:20:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C204F1C22CA4
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 14:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AE00166309;
	Thu, 11 Jul 2024 14:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0HaH+4g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696211662FE
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 14:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720707627; cv=none; b=YXoJATImI2wFtsbQQj9hLUQh9HXlmJSMh415wlOxQiUWvqAmIAN059NUDk8t6EdMF4ORi3LknFSou2FZe98eIp/kcMs/6fUcdHI8r/d+wBtADhZFYrGzD/clOVyijl21/2mCHwUAoIWBhql56FzB7anzzdmtwHy8ojCqITBt5RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720707627; c=relaxed/simple;
	bh=LxCPWPJanWr/40VyavUDIHFEM0JdUXOwGJhBB9Uep5M=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=niAPj8RqPmZUvHbBhvlvB+JArZos0LnXMFrPuX3in68vi3XRsMltm646qYyh22WUVg/r8uMgg5DakYTSgV4l7XP9yqMlJQr7Z/m2qaPrhrFUB+gbT/jo56/ynyiS7WwSJjg7lvBbU8XdjEign2a5cTUZg+B2XsnXRJo077+Uylw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0HaH+4g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3F27C32782;
	Thu, 11 Jul 2024 14:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720707626;
	bh=LxCPWPJanWr/40VyavUDIHFEM0JdUXOwGJhBB9Uep5M=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=k0HaH+4geE4rWD/6MijnWVcjEwSh5c7/KE66gmGemghUNUVRRfl3UJo/ElZZPHbO8
	 3K31cPYXHQzWjBkDGgPfbZ4VERdXjFS6+vt4FuX9UyZt1cM/OW6ECwbFlynKXLAk52
	 JBqZedJRpOLjU/g97Px5E8hkYuVbImty0SENF5duTgVDCdN5f/wCuIjiO1mUJHlXqK
	 q9ddzopV7GDzWAxTvQH+zjM1Z/O15a9S9oRz3z3cGiFZlF1Iq7u35xbtf0hCDXlNhH
	 tTQSBsX7zeC3kKxgKmkH1TsmzdPrq05sZAyT78nYutDb+gF93nCkBTo8UEiOyCXX8u
	 fIVgCFVEt1UwQ==
Date: Thu, 11 Jul 2024 08:20:25 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: khilman@baylibre.com, devicetree@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, martin.blumenstingl@googlemail.com, 
 krzk+dt@kernel.org, neil.armstrong@linaro.org, jbrunet@baylibre.com, 
 conor+dt@kernel.org
In-Reply-To: <20240711034035.3921122-1-naoki@radxa.com>
References: <20240711034035.3921122-1-naoki@radxa.com>
Message-Id: <172070684786.2129336.9140137087518774504.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: amlogic: change product name for
 Radxa ZERO 2 (Pro)


On Thu, 11 Jul 2024 12:40:34 +0900, FUKAUMI Naoki wrote:
> a while ago, we changed product name (hardware is same),
> 
> from: Radxa ZERO2
>   to: Radxa ZERO 2 Pro
> 
> this patch reflect the change in dt-bindings.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y amlogic/meson-g12b-radxa-zero-2pro.dtb' for 20240711034035.3921122-1-naoki@radxa.com:

arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dtb: sound: Unevaluated properties are not allowed ('assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks' were unexpected)
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-sound-card.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dtb: sound: 'anyOf' conditional failed, one must be fixed:
	'clocks' is a required property
	'#clock-cells' is a required property
	from schema $id: http://devicetree.org/schemas/clock/clock.yaml#






