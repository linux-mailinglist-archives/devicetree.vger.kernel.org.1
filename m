Return-Path: <devicetree+bounces-53636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 449C788CEFA
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 21:36:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3EF03409FE
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 20:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC008140E22;
	Tue, 26 Mar 2024 20:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jobp2iJM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D41140E46
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 20:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711485013; cv=none; b=hGTvnTZJWWSR6wyzR3bGAs1Md1ushpXG4JPB/XgGaRAqeQWI5ozmcSZdUFiIvWVVSKhHKS4/q7HPJnXytq8w7AnKsKgr3xPVCcd1TjguMQHyPMBDLcKoTnx3ff6DjUVd+/6pN0UVLOAUsk7G4NQ6Dkmi8UcJKk3Zffek+rT6n00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711485013; c=relaxed/simple;
	bh=vXSgfx5ZlUMqb12HaSRiMrCETc8zcbZB2rpWCbEe/N4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jnJqh+rXg7au6ql0EShW6AgxjeT+NQEttMg+WYMfo0Bc1EaA/Pm8J4T+ZrFMYTYRYhy7sOFhTvLLGmSTe575u55u1PlJRYtHCcOzUBmPrKvld6tjup126//PqUlCoFAC6r5QmASk3/zj0XC0l+204eFahuXy3iasmG9ps+ScdS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jobp2iJM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2838C433F1;
	Tue, 26 Mar 2024 20:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711485013;
	bh=vXSgfx5ZlUMqb12HaSRiMrCETc8zcbZB2rpWCbEe/N4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jobp2iJMTCC7ePRlfqE3kPeCGHtBwA64FPlOwBxcDsGxGaLrCR439DIIdDJu5viR8
	 bTfnhwEwdLFaSwghgYkteGPMVhFRV04vEjSRwa7zDK0Zml/jVASpBbDS355FzX0heP
	 mv+ibo9ZXQEjSgNpS0+axQ8xWWIGWiV/R73H0o1KLYX5U6ra2GeYjMRzAapjgWM9SR
	 BwZ8RwwLjV13yaABxrAUPm3e8eybBoS5MDwCaT0W+3zEO8ONV39adewLhFZ4pg13KW
	 md8X3Y/L0J6b6Z6IO4LWIt0Rs2odNLJOtY5sQGVjH8Y1Sqa8KEUiGQiFTXMnovRF15
	 ScfFetCSWOuMQ==
Date: Tue, 26 Mar 2024 15:30:10 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: sam@ravnborg.org, conor+dt@kernel.org, megi@xff.cz, airlied@gmail.com,
	krzysztof.kozlowski+dt@linaro.org, neil.armstrong@linaro.org,
	devicetree@vger.kernel.org, kernel@puri.sm,
	Chris Morgan <macromorgan@hotmail.com>,
	dri-devel@lists.freedesktop.org, agx@sigxcpu.org,
	linux-rockchip@lists.infradead.org, quic_jesszhan@quicinc.com,
	heiko@sntech.de, daniel@ffwll.ch
Subject: Re: [PATCH 1/5] dt-bindings: vendor-prefix: Add prefix for GameForce
Message-ID: <171148501047.3376252.8555158106984338212.robh@kernel.org>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
 <20240325134959.11807-2-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240325134959.11807-2-macroalpha82@gmail.com>


On Mon, 25 Mar 2024 08:49:55 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> GameForce is a company that produces handheld game consoles.
> 
> https://gameforce.fun/
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


