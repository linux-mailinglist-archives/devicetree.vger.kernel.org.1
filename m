Return-Path: <devicetree+bounces-109301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0371799600B
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 08:46:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE15D1F21517
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 06:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CCC11714D0;
	Wed,  9 Oct 2024 06:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEjnRW1Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6856C154C05
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 06:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728456404; cv=none; b=iDYphqDK1NJ95yJPWQHmGuXqSchhgoYQzY087NSNoFHNg7vRxekKttTj3Qcx0AYUpyTertKkzbBX8tA2BNrR/+DpCnv7Ufe6P3DDHrDaFZcd0+bshmvuzXEcVyAGs1tAZPKldqZu9bC69+AkiCuu6CoxNUMid6mH6eO9OnHs5/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728456404; c=relaxed/simple;
	bh=Hu6wiAqzZvxtCGhxzsW7ceQJVWRP9RulMhNJDIeFZPY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iHQxd/c4Ku6E1n0L0Mx5FC7hi2055FdVuLHe3d3rZi4L5krY1ZZchb4FFoGJMravyWkuOl70LKxcF1pzBNkO7GumTKFfMSuey8/MEpROuRMZYMpGzI2vDS0l2t8rkqn7b6kZ7heziFwPVfXnSxqckZ9LufjZYNfp9BPXcJ2SeEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEjnRW1Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCA00C4CED0;
	Wed,  9 Oct 2024 06:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728456404;
	bh=Hu6wiAqzZvxtCGhxzsW7ceQJVWRP9RulMhNJDIeFZPY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SEjnRW1Y7DMchVSrV2aidCbT13C/IGJUWO++gIpjhWj6ReW7J4+u2SOc2GmWDzY1A
	 8lGVQRAWgDVHjfUGkw3uvUvtjbfUrBB9QPaerugeUjWzSfCuQxWaVU8+k7O5FNWK85
	 xBVdnWDclBTh4OimT9+SiJQvvBlP3EByFLg2s/wQxDAN4djuOZbOGf/7UHHxupVD+j
	 kmEGvbr/HS6YgQXkUfqqA8gL1LY4dq1sxLfp+3etvIO1PU3uC3i0TpVG7OLKQF8ZsT
	 rxXhijaa3dTbQu5tAa2fyVF0h5dfi5rw3uQhy7cJKHDjzWXebmeJJ0CQ4vdz26HsRv
	 fBsItNFhZtgEA==
Date: Wed, 9 Oct 2024 08:46:40 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hui Wang <hui.wang@canonical.com>
Cc: devicetree@vger.kernel.org, nm@ti.com, ssantosh@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, s-anna@ti.com, 
	grzegorz.jaszczyk@linaro.org
Subject: Re: [PATCH v2] dt-bindings: soc: ti: pruss: Drop the desc for
 assigned-clock-parents
Message-ID: <4vooh45i4vephkmswsmkfgoas5wmr43trzufweoydys4bvdubo@a2nom63mrkcy>
References: <20241009040446.9446-1-hui.wang@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241009040446.9446-1-hui.wang@canonical.com>

On Wed, Oct 09, 2024 at 12:04:46PM +0800, Hui Wang wrote:
> The description for assigned-clock-parents looks redundant, It doesn't
> contain anything new apart from rephrasing the straightforward meaning
> of assigned-clock-parents, and furthermore there is a typo in the
> description, hence let me drop the description here.
> 
> Fixes: 25bafac9408f ("dt-bindings: soc: ti: Update TI PRUSS bindings regarding clock-muxes")

Nothing to fix here, no need to backport. We really do not need to
backport corrections of minor typos in comments. They do not bring any
value, just work. I am surprised that you proposed to backport it as
Canonical employee... ask anyone in Canonical kernel team if they want
to deal with backporting this.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


