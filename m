Return-Path: <devicetree+bounces-246890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 48336CC1378
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 08:00:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2CDA93031B2B
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 06:54:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B23A233769A;
	Tue, 16 Dec 2025 06:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1JuGzNA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6504D325490;
	Tue, 16 Dec 2025 06:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765868066; cv=none; b=it8viL6jT7iFKFt1OBeK/Affor6p1P0AbDW7IGInYE5rFjiao1G/MDyTgZG3mCQIFc35DZ3JEbLg/ZAEMFFPsH34T8T1z/LuAfOdO3IR6mrj44egTEsw4hFf9Xmsgs0R/Gnb124F7TOADckLy43YbPDMNWLBQ9HM6w6JxIkNuOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765868066; c=relaxed/simple;
	bh=XpYWfPplmJQJwAk7kwKwmfbEmyeewuLRRvdBKshW+Fw=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=SKBOVuAF7qNGS+1luB0gOut8qamtHw6fyzRg9cBVXgiEGTuRI1n1TmOxvPAIDexxRJSCtpGJAvym3ekxTyWEo98UouZ7luM3rqEBOO+piVxxf2v1xJkquwyjl1Ysi/x8UCzdeBH6/4KldToPJ+t2Lc5G8dOhCb1R6f8TL1aR3ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1JuGzNA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EECCEC113D0;
	Tue, 16 Dec 2025 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765868064;
	bh=XpYWfPplmJQJwAk7kwKwmfbEmyeewuLRRvdBKshW+Fw=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=K1JuGzNA5t714dUQEsYyxlVzQENbSsjRgPR7mtzZdaVHav6MJnEfG67Fc2Lw/aNha
	 Q8xEacMMajNvcKkqGmHuy1IOLGDEMBM3Dc+kMABxwNSmarvg32rm/RGp9FLQYxPjOb
	 IjxL3B3l1WtA/oHYJortdCPiCkE044aFbGmM19kjpOwlbIQQFe5zPy9Tgugim3y9KU
	 wh4V+fRPHlFBetqX3aQI4BWIV8Rf4cVXD5SzVtrWCdyPfGOPI48iZFE+qbsJysTwoA
	 F91gc2SFJhNxhpA+tNui6p4lK9euU+VxlvvLKvg3lTxWYkS9RMYYS6CsC85cG8nWBg
	 0qtlMG3ZDGBPA==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20251022133616.74492-2-krzysztof.kozlowski@linaro.org>
References: <20251022133616.74492-2-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: toshiba: tmpv7708: Align node names with
 DT bindings
Message-Id: <176586806270.20531.3411870761974576435.b4-ty@kernel.org>
Date: Tue, 16 Dec 2025 07:54:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Wed, 22 Oct 2025 15:36:17 +0200, Krzysztof Kozlowski wrote:
> DT bindings expect node names to follow certain pattern, dtbs_check
> warnings:
> 
>   tmpv7708-rm-mbrc.dtb: pmux@24190000 (toshiba,tmpv7708-pinctrl):
>     'pwm_mux' does not match any of the regexes: '-pins$', '^pinctrl-[0-9]+$'
>   tmpv7708-rm-mbrc.dtb pmux@24190000 (toshiba,tmpv7708-pinctrl):
>     $nodename:0: 'pmux@24190000' does not match '^(pinctrl|pinmux)(@[0-9a-f]+)?$'
>   tmpv7708-rm-mbrc.dtb: wdt@28330000 (toshiba,visconti-wdt):
>     $nodename:0: 'wdt@28330000' does not match '^(timer|watchdog)(@.*|-([0-9]|[1-9][0-9]+))?$'
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: toshiba: tmpv7708: Align node names with DT bindings
      https://git.kernel.org/krzk/linux-dt/c/af8dbb88188784cfcdc215487e0173a6f62caf52

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


