Return-Path: <devicetree+bounces-10069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6767CF8B7
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:27:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 050A6282059
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E4B621118;
	Thu, 19 Oct 2023 12:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvzoOirf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337651DFC3
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 12:27:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42E85C433C8;
	Thu, 19 Oct 2023 12:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697718473;
	bh=o+SLMHbM3b4KJWGJ8NBC4IKXQx11TH3ol/WMx76KbuQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=OvzoOirf4oKfeLwF55oxfPT5FX6xkwQtXMIrat5FQNhVM212k4MBKanCDegSO/Qou
	 wt3BitFJy6SfkKoL94TgboTUGjKcIHyuvCa7dCL/OA369MClGpyUpzjsO8qSkV6oFi
	 kSDzXYMncbyrqmZJKHm4GTLLxp/555nPdF1j3JqIxhHf5AnUp8LBOVmYDkdxJ0Dq5i
	 4ih2JTZNi13rutnOJ+dF/baOmRQLIq+xso3ng7kYWuh1KVrCzSAGxpD6RwoUcWwc8B
	 +xyjAIhmWyniy/DDoUTXlWNovYtQSArMN2gFu1SgMo4XO3EyXzanhlLCjWj4FPQmVu
	 vyu3594toMJFg==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, 
 Daniel Thompson <daniel.thompson@linaro.org>, 
 Jingoo Han <jingoohan1@gmail.com>, Helge Deller <deller@gmx.de>, 
 Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Flavio Suligoi <f.suligoi@asem.it>
Cc: dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231016150554.27144-1-f.suligoi@asem.it>
References: <20231016150554.27144-1-f.suligoi@asem.it>
Subject: Re: (subset) [PATCH v1] dt-bindings: backlight: add
 brightness-levels related common properties
Message-Id: <169771847099.2473402.8532120354222006296.b4-ty@kernel.org>
Date: Thu, 19 Oct 2023 13:27:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Mon, 16 Oct 2023 17:05:54 +0200, Flavio Suligoi wrote:
> Both files pwm-backlight.yaml and led-backlight.yaml contain properties
> in common with each other, regarding the brightness levels:
> 
> - brightness-levels
> - default-brightness-level
> 
> These properties can then be moved to backlight/common.yaml.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: backlight: add brightness-levels related common properties
      commit: d5272d39995f4150062a67e6f2cef556edece740

--
Lee Jones [李琼斯]


