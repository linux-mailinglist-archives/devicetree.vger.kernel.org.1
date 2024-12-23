Return-Path: <devicetree+bounces-133679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1510E9FB6BC
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 23:06:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F98C1884CCE
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 22:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EBCC1AE01E;
	Mon, 23 Dec 2024 22:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNKrZOwm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2376F18FC89;
	Mon, 23 Dec 2024 22:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734991577; cv=none; b=U1vxG4967450AqsjU/fac5uK5skQMCM5/r40+KAPLR/XpmzoVVEg9knzVwlOIFGsC41r12OIQIqKFYQ+BvidA5b2/vvHkhzDQh+8I6j0WVj2OEWE88c/2ltPtuvYPCS0PTMC1ixwgGYja9DvBs2WmF0myU6OepTy6Yr4Np5x7ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734991577; c=relaxed/simple;
	bh=Gw/PhiP9UAdU/f/nBD9ANPL61bnIV6cPbFZmVeKxehU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=brhUgWIPe7/Ubo6KQm5LkwTnqa5oZLyM1ToLwNhLP1TkHZ/XX0PppBCnU1DiZZL5f/+Pqjw8IZP898ujuvL4PEq6H5SP5/lb0oKvzyKf/y+BRiU259u5KgUxiXBAtvXv9KMJLKn/BeCZ7p/CR5m06ar89d46Gq+GTPQenZxQDNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNKrZOwm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D39AC4CED3;
	Mon, 23 Dec 2024 22:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734991577;
	bh=Gw/PhiP9UAdU/f/nBD9ANPL61bnIV6cPbFZmVeKxehU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VNKrZOwmoM0UJ/vwjkg7Re10ZrglR2HqsK0qQQALqJEhgajeXnFJVURPxig/TeXmT
	 HT8Hn3z3OEFk0eLS0NsLWGHCX8Ovtkw/lGr3W/zO+D7g1421QHp5ORmr+zV5pTjYHb
	 3dw0N1hH8Ce4it717fW7OW3JgSetDXDcUQoqyZy7Ad4MER9Ax8E+mlpJVnUvDMUuaT
	 Oh5fH8Nfm5A8Ddh+b8PJjbt1U7BeVnSkNNzi4L8KLNTZkCjSf1ytS80ubWjtZFrtAd
	 lATWJgTcJsVM81CJ80HEcvXuOU0vqrLumhv+W+7Q/3w5M4ArHCamN3iDNr42m9jE2L
	 uaYNCrLnIq3/Q==
Message-ID: <829e5a35-1f13-4d6b-a49e-8ab1a4a6d249@kernel.org>
Date: Mon, 23 Dec 2024 14:06:14 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARC: migrate to the generic rule for built-in DTB
To: Masahiro Yamada <masahiroy@kernel.org>, Vineet Gupta <vgupta@kernel.org>,
 linux-snps-arc@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org
References: <20241222001505.2579630-1-masahiroy@kernel.org>
From: Vineet Gupta <vgupta@kernel.org>
Content-Language: en-US
In-Reply-To: <20241222001505.2579630-1-masahiroy@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/21/24 16:15, Masahiro Yamada wrote:
> Commit 654102df2ac2 ("kbuild: add generic support for built-in boot
> DTBs") introduced generic support for built-in DTBs.
>
> Select GENERIC_BUILTIN_DTB to use the generic rule.
>
> To keep consistency across architectures, this commit also renames
> CONFIG_ARC_BUILTIN_DTB_NAME to CONFIG_BUILTIN_DTB_NAME.
>
> Now, "nsim_700" is the default value for CONFIG_BUILTIN_DTB_NAME, rather
> than a fallback in case it is empty.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Acked-by: Vineet Gupta <vgupta@kernel.org>

Thx,
-Vineet

