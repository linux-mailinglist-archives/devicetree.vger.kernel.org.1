Return-Path: <devicetree+bounces-4302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 528407B1F42
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:12:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0C5D2281E6B
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:12:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EE5337C96;
	Thu, 28 Sep 2023 14:12:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9C934194
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 14:12:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 982BFC433C8;
	Thu, 28 Sep 2023 14:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695910348;
	bh=wtGe4SsbGGcWY1/IDsDw79ZQnLnIek+nUMtbOAOYDhM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=pfSTfRbXDXPGTcCYn+1RDdOLPiFjsTqIybxiXnvRHC3TAzghtBnkAiU0YGjhlepS7
	 9bTekmGi1Cf4YkHVs/dZA0+xPlOXVZrHvgnnbIFQF8TrJ2q6sqSf0TY/q9z5M7Qm+U
	 csKesPMUaNsHT0BZBADqCQ4lphHqBF66z5h3YeV2m1b+5sDMuKqOzQVsunhHG0qV35
	 Xe6DecmygpDEuDIC8SAnvWBsRV8NO7ElK6W1dCGDGStTZeJBynsIfaNMaZWvKREyJB
	 oDZpuJ2wXu0+4VhWwhjk854ex+9it60dDZc2rCDu1SpL6G7IhADS5fCxCJrbkt4OUl
	 1rtVXf39UPpcA==
From: Lee Jones <lee@kernel.org>
To: =?utf-8?q?Jan_Kundr=C3=A1t?= <jan.kundrat@cesnet.cz>, 
 Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
 Linus Walleij <linus.walleij@linaro.org>
Cc: linux-leds@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20230926-gpio-led-trigger-dt-v2-0-e06e458b788e@linaro.org>
References: <20230926-gpio-led-trigger-dt-v2-0-e06e458b788e@linaro.org>
Subject: Re: (subset) [PATCH v2 0/3] Rewrite GPIO LED trigger to use
 trigger-sources
Message-Id: <169591034632.1624130.7939810399934804656.b4-ty@kernel.org>
Date: Thu, 28 Sep 2023 15:12:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Tue, 26 Sep 2023 23:48:10 +0200, Linus Walleij wrote:
> This rewrites the platform-data GPIO LED trigger to instead
> use fwnode trigger-sources to describe the LED used.
> 
> This will work out-of-the-box with e.g. device tree.
> 
> Tested with real hardware by modifying a device tree adding
> trigger-sources to a LED and trigger-source-cells to
> a gpio chip, setting the trigger to a pushbutton. It works
> like a charm, once the trigger is set to "gpio".
> 
> [...]

Applied, thanks!

[2/3] dt-bindings: leds: Mention GPIO triggers
      commit: 4aa583f1a6b85c88e3278d2461797d592ac61fcc
[3/3] leds: triggers: gpio: Rewrite to use trigger-sources
      commit: 1222f5dbc7723cc78741343da2e414b80de83c8f

--
Lee Jones [李琼斯]


