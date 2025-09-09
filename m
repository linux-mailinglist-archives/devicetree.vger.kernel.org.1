Return-Path: <devicetree+bounces-214606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9C5B49DF4
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 02:24:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0AAF1897900
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 00:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82FFE1D799D;
	Tue,  9 Sep 2025 00:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6r6GHpl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7E11D61BB
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 00:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757377494; cv=none; b=EQRMBKzuWUTQHQ9E2alK6IkaNog9GUca5qQVK8d3+2jYRqJ8OGKXEhZbOrneaxKeBfIdBgXFFUCMuvqbWDEi3SBU1c7MA+DBce8IpL8ydwnwL8eSGrKHPwCk7rOo+fOh94aSwu6vjkkyuvV+/GLuEDYho8GBzUk98dWW7fLFkk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757377494; c=relaxed/simple;
	bh=OAI3wB7fRkkjN6xzn305cPyDIxM1Aq2sDcGeaeZ326o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LRdejhRwG8YrAsyQfjfinAr3S0d9WUbeJ4JXkwaKfqopi5Vy3gqudfcBKXl/z5qs2Z81LOatydQisG8TMh+rovVM31XNByPIR69/yk7mi0sdp5IGLBiLqbNQzaRqqq5tTS5Oxj6ko+zAswRmpnUzAJZ2nink03KSPM3btp5qAYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6r6GHpl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DCFEC4CEF1;
	Tue,  9 Sep 2025 00:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757377494;
	bh=OAI3wB7fRkkjN6xzn305cPyDIxM1Aq2sDcGeaeZ326o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b6r6GHpl5Fw4ZCdm/TP1iJUWfLuWmg/SbP+7eR2lOlXUas1DdgsbJy8a9DpLAq1Uj
	 YT48nJ5nVmBGUNrcRLO4XeOru8gQaFwTpWzl2vs97VBnbEROQtptgXkH1/PVSByOoR
	 9K/9naBXmqAVtGNQqKRaFKazaQFjX4RjcKnV/4R2yuxqq9srKDuqHbDk0XK+4FH5n6
	 K5JhM3TiIh57B/Id2PuVLNpG4/gnWVvVCSqoZVkjKqjTBdUgieJFKWfYb6QBGWcobw
	 2foHpFjoTMU124gD4C+Y0z4hXX19F0M5uLwBcH9GGw4P7CBLt0pPXYqbC79YuslRXT
	 nnmsFAklabTNg==
Date: Mon, 8 Sep 2025 19:24:53 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, Frank.Li@nxp.com,
	conor+dt@kernel.org
Subject: Re: [PATCH v2] dt-bindings: arm: cpus: Document pu-supply
Message-ID: <175737746236.2245195.5498632260057616443.robh@kernel.org>
References: <20250907152513.590218-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250907152513.590218-1-festevam@gmail.com>


On Sun, 07 Sep 2025 12:25:13 -0300, Fabio Estevam wrote:
> The i.MX6Q Reference Manual describes the three digital LDO regulators
> as follows:
> 
> "10.4.1.1.1
> Digital LDO Regulators
> The integrated PMU includes three digital LDO regulators: LDO_ARM, LDO_PU, and
> LDO_SOC. These regulators provide power to the ARM_Core power domain, the
> combined VPU, IPU and GPU power domain, and the rest of the SoC logic (except
> always-ON SNVS domain)."
> 
> imx6dl.dtsi uses the correct names to describe these supplies:
> 
> arm-supply = <&reg_arm>;
> pu-supply = <&reg_pu>;
> soc-supply = <&reg_soc>;
> 
> 'arm-supply' and 'soc-supply' are already documented, but 'pu-supply' is not.
> 
> Document the 'pu-supply' property and set it to deprecated.
> 
> This fixes the following dt-schema warning:
> 
> cpu@1 (arm,cortex-a9): Unevaluated properties are not allowed ('pu-supply' was unexpected)
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
> Changes since v1:
> - Explain that PU is a valid name. (Krzysztof)
> 
>  Documentation/devicetree/bindings/arm/cpus.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Applied, thanks!


