Return-Path: <devicetree+bounces-182716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BDBACDC7F
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 13:29:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01AD27A2D8F
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 11:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6345728DB45;
	Wed,  4 Jun 2025 11:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0bi89OL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6862C3261
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 11:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749036549; cv=none; b=k+EqWzCLzPlS+1XpepyhpsJCqeyjuyZcutBG+AlWnv+tZMX4HMyuVgHvI9aZ5iqym/rcBmiYt3BLMpgmoNMOIHRR20k0JxbQu5BqMGty5urIYLqR2fk9bUC2qYVp+0xs8iqkjQGVVcR8zC9+H6JZmXgqIAkCW0r84oX5s9iGo+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749036549; c=relaxed/simple;
	bh=zJyMRFBEczTLqz8z8FYq4UOoOGUJIc8c6r7VF0d1i8U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AwFF2l2kJPW6oH6bltxGubtp38zYmuoRItDSofDLpB5qKCe93ROKaYvpr8azGsP4GAoXi3MwZX0iaf67FA7dAgNLRBKUVnRwY9W9Jp0108x+MxuHTmnjmw5C/feN9X2qP5ZTU0rJryyfhg59Up9LEYOq6Muo1wcOD7SZyzWn+VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0bi89OL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50C59C4CEEF;
	Wed,  4 Jun 2025 11:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749036548;
	bh=zJyMRFBEczTLqz8z8FYq4UOoOGUJIc8c6r7VF0d1i8U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l0bi89OL8Exj695NP7nJFY4YitSjZMolAkXqFvpYBPq0JRcaRCzi++FFL/oj/Rnn0
	 T3xn+jaYPQFMDMUQTKDPpxcRKjOW6lTInXTr8/RDSWAUepWhIOwML4SrcDQn8v1hoI
	 FBPsiaabO0/9OSHKxqWbj6elSM6EcntC6qtD7aOoInVeRSis5qrAHJL7UDm3OwgMjW
	 a0DVaDgOTb05lnnbyEKrnyWbXrT2EjhE0d3avn7iYCYMHWmxbHkXfkKFgJdhTlt7dT
	 U6TEsTr+JI27Uj9M7KiCK/SBzOAqhvY7ssDJSScy2HUdNDa0jjjeq4ehtfcgZNG0rt
	 BDmJXwaVo40YA==
Date: Wed, 4 Jun 2025 13:29:01 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com, heiko@sntech.de, 
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de, 
	mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch, 
	airlied@gmail.com, quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, 
	javierm@redhat.com, megi@xff.cz, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: vendor-prefixes: Add prefix for Huiling
Message-ID: <20250604-prudent-copperhead-of-finesse-e5b41c@kuoka>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-2-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250603193930.323607-2-macroalpha82@gmail.com>

On Tue, Jun 03, 2025 at 02:39:27PM GMT, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Shenzhen Huiling Information Technology Co. Ltd. specializes in the
> research and manufacturing of display and touch screens for industrial
> usage. https://en.szhuiling.com/
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


