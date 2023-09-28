Return-Path: <devicetree+bounces-4300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEC87B1F26
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:03:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C80322820AD
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:03:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E401B3C6B9;
	Thu, 28 Sep 2023 14:03:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D9A38BCD
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 14:03:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 974D9C433C8;
	Thu, 28 Sep 2023 14:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695909809;
	bh=n2bDHzk2s5pAtaibWAwFVOIL4i6SiOY2rnYokEWoql0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=D95uGPuTGA8Y7UqNsKhGsRlqlnJe4RWQUvfGWgj2Oiqdg81cL0lj4N5/qOxosGS35
	 SvP2gCSX24agKDhZXJrfpkPsSjTQmB40EVJ4EVkP7NkUQsY4BPgIe3wQjm040jlvH9
	 7KSxZJJNEynr3A/CTsxG65POGEpaTUUPDoCUTNEwR/NYAWcWz7PjargFlC8bomS/07
	 QOmyZenXmNiowWfEP9W+UYLNLxGwU9ypIFHxP+chWW/UB+hylroPiHW6hC4VGjCd+g
	 vDRDnfukLR8pou+/HDi5fcl4NxQ441P417cyMETI6OtkQUj2dlOT1x39xCMx0u9ATA
	 5rE7iH3hJopKg==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, 
 Daniel Thompson <daniel.thompson@linaro.org>, 
 Jingoo Han <jingoohan1@gmail.com>, Helge Deller <deller@gmx.de>, 
 Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Flavio Suligoi <f.suligoi@asem.it>
Cc: dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-fbdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
In-Reply-To: <20230925122609.78849-1-f.suligoi@asem.it>
References: <20230925122609.78849-1-f.suligoi@asem.it>
Subject: Re: (subset) [PATCH v3 1/2] dt-bindings: backlight: Add MPS
 MP3309C
Message-Id: <169590980634.1618521.3566617275020298182.b4-ty@kernel.org>
Date: Thu, 28 Sep 2023 15:03:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Mon, 25 Sep 2023 14:26:08 +0200, Flavio Suligoi wrote:
> The Monolithic Power (MPS) MP3309C is a WLED step-up converter, featuring a
> programmable switching frequency to optimize efficiency.
> The brightness can be controlled either by I2C commands (called "analog"
> mode) or by a PWM input signal (PWM mode).
> This driver supports both modes.
> 
> For device driver details, please refer to:
> - drivers/video/backlight/mp3309c_bl.c
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: backlight: Add MPS MP3309C
      commit: 02c4e661658f73d3c266c68f89f0b14bd8ba6bd8

--
Lee Jones [李琼斯]


