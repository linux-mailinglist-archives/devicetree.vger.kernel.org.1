Return-Path: <devicetree+bounces-78731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C62689133E9
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 14:21:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EE171F247EC
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 12:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF3E816B398;
	Sat, 22 Jun 2024 12:20:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5AB015532C;
	Sat, 22 Jun 2024 12:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719058858; cv=none; b=BT+pDBd1vcIVArnTOCZ8kaOrtkGRf7saB3J4dIYQGIlc6xQ4/uF+weZpHMzPTayW/Dy8ZbFE5M1E3Oq67cv8IOVIAEbrEIndzzfkubYAUBUgc4xeW4trjAErfy8qfLfWkibQNize/1iiEU9ceBw3fRK99KqN4c2/x0urnr028Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719058858; c=relaxed/simple;
	bh=3+oqs3moHJGcDoND9mM06S45wcCn1N3gUfvuCPIiZ1s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=kszrwLBP0rFP1ut3ThuPc8mG7qYtJ9GrhABcOYT/+Kc1JRTOFjsMT7CqnGu3cl9uu0qJ4nKHR8ja4TJD7rI0mxMiw2gcigadY1R7OmSkySIuQohOXt1PBgpimb6+AA/r7yf0prx1ZljYTxkeK6spXWY6ZjCgrwuD1t1eb4eeJao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08102C3277B;
	Sat, 22 Jun 2024 12:20:58 +0000 (UTC)
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 1C31F5F852;
	Sat, 22 Jun 2024 20:20:56 +0800 (CST)
From: Chen-Yu Tsai <wens@csie.org>
To: linux-sunxi@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-iio@vger.kernel.org, p.zabel@pengutronix.de, sboyd@kernel.org, 
 mturquette@baylibre.com, samuel@sholland.org, jernej.skrabec@gmail.com, 
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
 Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20240605172049.231108-1-macroalpha82@gmail.com>
References: <20240605172049.231108-1-macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH V2 0/4] Add GPADC for Allwinner H616
Message-Id: <171905885610.1097671.12434151674069529655.b4-ty@csie.org>
Date: Sat, 22 Jun 2024 20:20:56 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

On Wed, 05 Jun 2024 12:20:45 -0500, Chris Morgan wrote:
> Add support for the general purpose analog-to-digital converter (GPADC)
> for the Allwinner H616 SoC to support the ADC joysticks as found on the
> Anbernic RG35XX-H.
> 
> Changes since V1:
>  - Split dt-binding include additions to a separate patch.
>  - Removed patch adding compatible string as it was already upstreamed.
>  - Added patch to add the adc-joystick function to the RG35XX-H.
> 
> [...]

Applied to sunxi/clk-for-6.11 in sunxi/linux.git, thanks!

[2/4] clk: sunxi-ng: h616: Add clock/reset for GPADC
      https://git.kernel.org/sunxi/linux/c/002cf0dfa201

Best regards,
-- 
Chen-Yu Tsai <wens@csie.org>


