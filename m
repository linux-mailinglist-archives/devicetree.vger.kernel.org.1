Return-Path: <devicetree+bounces-158456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E1BA66D51
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 09:05:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC4D63A942E
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 08:03:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 728391E5209;
	Tue, 18 Mar 2025 08:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LC2Up8dd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0DA1DE4DC
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 08:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742285026; cv=none; b=D9f/hkLM51ovIKSJtz506G0pdY8zMwjR0DbzRaYf0Qnehi9ARawLMr4cZ3y5kfbYC6vL0YsgTHhvwUJnDvuw7+CRnbSe+YAPIvcIb7CpzCHVYWFqiSvxkHOOC1l3j5kFJAS3oDASdbPLq3KocCJKFwVDIcsttlpC2+hg/8tlplM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742285026; c=relaxed/simple;
	bh=rYG3PWvuAMncrnBiyOeKXgOkJoHrMxZjLoDTUff4qJk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KgyQEnu3PZKkpGj2GzWuLU8/70PGLBeivQ6MiAlBAOb0pRXRllt7vxvMuS16nQ44opN5lkYCUi0W+5g5WWUfOpEZns9VvueG3y+drfYCJb6+mRoyZhE7UD/V6qiJ4iNR78N5Imc+jnmbgDtkN+8G7VPnm9zYhkAaQKTmRaFP60Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LC2Up8dd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17495C4CEEE;
	Tue, 18 Mar 2025 08:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742285025;
	bh=rYG3PWvuAMncrnBiyOeKXgOkJoHrMxZjLoDTUff4qJk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LC2Up8ddOnIwy1KB+r+HhQmU1G3KStunUgfI0nLLbbM/LD80TgE3AXhhyTk6aSPRd
	 WgFHWiCD88cnfHT3MjjWtIDxa5Bs43zYiIVzRK/iEiYpRjl1I9K9MJgQZAF5Aq4jZN
	 rzloZMHcXj5p7GGHN79Hllzp2VRpp9RRSEUBaW1uZVZzF/Xaxxu+0io8u2xplIQ1pC
	 o09tHHkDLPrK4I+4H+oRGrJcCM5pJRQsapTvjfcWuqFigvvFjqEgongvi0WtGhrQoy
	 0XumEQjTCLCH7HaNVN5ZzDrhQqAmHJL6FG1bqkSJyAVYognkR+P5lVKffYjFzmggby
	 Kjkk5w6p6kzGA==
Date: Tue, 18 Mar 2025 09:03:41 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>
Cc: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nicolas Saenz Julienne <nsaenz@kernel.org>, Stefan Wahren <wahrenst@gmx.net>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Phil Elwell <phil@raspberrypi.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, kernel-dev@igalia.com
Subject: Re: [PATCH v6 2/5] dt-bindings: gpu: v3d: Add per-compatible
 register restrictions
Message-ID: <20250318-complex-serious-aardwolf-c77afa@krzk-bin>
References: <20250317-v3d-gpu-reset-fixes-v6-0-f3ee7717ed17@igalia.com>
 <20250317-v3d-gpu-reset-fixes-v6-2-f3ee7717ed17@igalia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250317-v3d-gpu-reset-fixes-v6-2-f3ee7717ed17@igalia.com>

On Mon, Mar 17, 2025 at 10:01:10PM -0300, Ma=C3=ADra Canal wrote:
> In order to enforce per-SoC register rules, add per-compatible
> restrictions. For example, V3D 3.3 (used in brcm,7268-v3d) has a cache
> controller (GCA), which is not present in other V3D generations. Declaring
> these differences helps ensure the DTB accurately reflect the hardware
> design.
>=20
> The example was using an incorrect order for the register names. This
> commit corrects that by enforcing the order established in the register
> items description.
>=20
> Signed-off-by: Ma=C3=ADra Canal <mcanal@igalia.com>
> ---
>  .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 86 ++++++++++++++++=
++----
>  1 file changed, 73 insertions(+), 13 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


