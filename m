Return-Path: <devicetree+bounces-216275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A371B543AD
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:19:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F6ED1C27BEA
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 07:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68771299A8E;
	Fri, 12 Sep 2025 07:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCVtXr58"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EDF28EA56
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757661559; cv=none; b=OGCEQCU/K7RAsaZ8VtLqZPS1X0UgUVewJo7JLVltAKJ0iRV6TTyI46+5RdYIwFndl9ONpCOdYzIwR/Hwx9Zj7Pg+hKc4tMC5Htb1kId8wsQHdLmD87n7WFZDkVQx+nRSOC/2bixIM4v1FUAYMKYPF97hg58qB2fHRyTh4hlMk50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757661559; c=relaxed/simple;
	bh=JsOHwiJSPmaS75FxBuAeLwxiYVXTXheNezu0ilagf3s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I/C+w68/a0zfaiOIkXjIw4zCkWb6XFl5UMWHksxC+oh59rMsll/PqHgXTW8CiQIBCoviZwoPz/PpxKyy0+aUlr+d/YXTVC4AAm5sNEeNEEJqVJqWEKwpqKRXQDRrXRcrbLiqtZzc2zHHNqnTn34Rj9KaWBLPVzDujXELp9ulSmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCVtXr58; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78D4DC4CEF4;
	Fri, 12 Sep 2025 07:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757661556;
	bh=JsOHwiJSPmaS75FxBuAeLwxiYVXTXheNezu0ilagf3s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tCVtXr583ui36A36/kU7OfncGeHpwI4L4hXHThlX2W+QZdTSrWr/ncaRppQxyrYI6
	 vttgEQGobi2x0E1T+BekWRDMFYPLB33gXlOHa8dX6dMcstW8G6DV2wMiGGoOoMVlAv
	 Forzk6SWTGhi8jaOnwYxLf+8N36f1sBjfJMthtCmJiP2yFiPrk2/xMksmrCDZwMI7s
	 9MsaUbsNEgPhs2aB3KVvWB9V8SFIa97hgjaXasVXnDQu0YMizkb8XcfzwPxrScHoGH
	 Mbs4Vx/AVYhJhvTtCU5wIPbPn7BF+xnNFw5qpTuXSZkEmhOkplUWHM1kG4THVj3DG1
	 HzgwM1wtvozZw==
Date: Fri, 12 Sep 2025 09:19:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: =?utf-8?B?VG9tw6HFoQ==?= Macholda <tomas.macholda@nic.cz>
Cc: gregory.clement@bootlin.com, devicetree@vger.kernel.org, 
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, robh@kernel.org, 
	kabel@kernel.org, michal.hrusecky@nic.cz
Subject: Re: [PATCH v3 1/2] dt-bindings: marvell: armada-37xx: add
 ripe,atlas-v5 compatible
Message-ID: <20250912-convivial-kingfisher-of-serenity-8d4c46@kuoka>
References: <20250911161308.52876-1-tomas.macholda@nic.cz>
 <20250911161308.52876-2-tomas.macholda@nic.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250911161308.52876-2-tomas.macholda@nic.cz>

On Thu, Sep 11, 2025 at 06:13:07PM +0200, Tom=C3=A1=C5=A1 Macholda wrote:
> Document compatible for RIPE Atlas Probe v5.
>=20
> Signed-off-by: Tom=C3=A1=C5=A1 Macholda <tomas.macholda@nic.cz>
> ---
>  Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

<form letter>
This is an automated instruction, just in case, because many review
tags are being ignored. If you know the process, just skip it entirely
(please do not feel offended by me posting it here - no bad intentions
intended, no patronizing, I just want to avoid wasted efforts). If you
do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here ('b4 trailers -u ...').
However, there's no need to repost patches *only* to add the tags. The
upstream maintainer will do that for tags received on the version they
apply.

https://elixir.bootlin.com/linux/v6.15/source/Documentation/process/submitt=
ing-patches.rst#L591
</form letter>

Best regards,
Krzysztof


