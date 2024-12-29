Return-Path: <devicetree+bounces-134553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D377C9FDEAF
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 12:01:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DFDEF7A1186
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 11:01:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 363AF7083D;
	Sun, 29 Dec 2024 11:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2feMjbt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1102223BE
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 11:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735470099; cv=none; b=DylxkmU94TSznqCx87/A2wpPuyL/q+8rMQVv1R0bMKj0WdDHv4SLY6ZACCnvs3sOJdtLnuLWmiMXmmj40rOceaoY7M8QJpzJt7nppJYnBNeCCLaMq8lN+bOvuEq+PqSOV5oCTZ5CfsGLd1YYiBXfvJPr4x7POpM5qEKw3lXluRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735470099; c=relaxed/simple;
	bh=HIUKol1lhJ7a6WQ5Eg6nWAR+OEd8LhPQUbSzdcQkHuc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BXxR/NFgOTq4/2VljQu2SovvKpyJPgnl1G0AZgWyVNkeXxU3VuiSjpsAbzK0zLX4nW6MkRmtXT+vmBzRXdiadAiEDb5A4eRwjaeyNWPBvSByy6AWatVVjT1ZajfVmoV8YFCWc8U1F6icZkmx94SERXWtA3th7e6U4s5N4dxeAhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2feMjbt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1033C4CED1;
	Sun, 29 Dec 2024 11:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735470098;
	bh=HIUKol1lhJ7a6WQ5Eg6nWAR+OEd8LhPQUbSzdcQkHuc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D2feMjbtDFMKAO1IfK3+OFmqOkLiVabCVcl3IoRQZuFmRMA2emmT0OltUSHcyZ8E0
	 M1mMNqUiN32ZaqH9lsb7niozAms+rnwJxyJldyQvBPJWLI8wTUOibEiEF9eFUHnPT2
	 LTU4xG6F5mml6W2+/5gLscFLjliCgY/XBTIYhl2oVlNZGueOG/johznls+rKmqmhvf
	 wloUsXL14lOJq92BC1B0xEo9YTaiLl/ya3ivKFizjE/HfsFVZ6PT0GxZcWonvGw+h/
	 ENh0JayomOlp//l8oy7WsACS/1+idU9az0pFypdPH0j2LrkBRhS1KNcichtV518SWU
	 hbJwFF1YZN3Vg==
Date: Sun, 29 Dec 2024 12:01:35 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com, 
	liujianfeng1994@gmail.com, dmt.yashin@gmail.com, tim@feathertop.org, 
	marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net, sebastian.reichel@collabora.com, 
	alchark@gmail.com, inindev@gmail.com, jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
Message-ID: <2qhpltryco3yqzmiu42ojf2wtekwevikxrt3v6myb73izzgxc3@6wq34glt7rmo>
References: <20241226005845.46473-1-naoki@radxa.com>
 <20241226005845.46473-2-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241226005845.46473-2-naoki@radxa.com>

On Thu, Dec 26, 2024 at 12:58:43AM +0000, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa ROCK 5B+.
> 
> The Radxa ROCK 5B+ is an upgraded version of the ROCK 5B based on the
> Rockchip RK3588 SoC.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - None

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


