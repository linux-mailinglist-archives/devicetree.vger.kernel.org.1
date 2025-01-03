Return-Path: <devicetree+bounces-135275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C74DA0054D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 08:46:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71F023A35D7
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 07:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F38321CCEF8;
	Fri,  3 Jan 2025 07:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWodhkeE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABF3D1CCEF6;
	Fri,  3 Jan 2025 07:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735890392; cv=none; b=cOtpqjQgWu4kJDcfGnD/EpCqftPcmKA08DzRpJGB0ciE4Uoglnug3fFUfgjHcHBfi0axNwd/rmtOSqZ/MyCThAW010xFgbNaX4iivvLvpD3BEoHvtejCnUedcbzWlr1AJRvgOGpPloJUBMSc3ZgscpnUJ1fEmwZYRLr9YAVsmdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735890392; c=relaxed/simple;
	bh=Sr2A/0SiN78NSfZrU+RvRd5qX0csLyf8fws67QBeq4g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PSUuaxKqN4Vc7MQby9/Vt7EQRHXJuESQvcW0OWeZwrK4YYuTb4wnYdTcKw3iprk/lxiGnDtNuvz9ASjj9+tneAmD2BNtf8hZUVz3OefuL0nrehdrGJrx37pEw8xRtrnuqMXMpC7MuhlwtsSlGsJHS8glJtVGVJ9xa519pxLvpKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWodhkeE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 336EBC4CECE;
	Fri,  3 Jan 2025 07:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735890392;
	bh=Sr2A/0SiN78NSfZrU+RvRd5qX0csLyf8fws67QBeq4g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gWodhkeEc01Ri1x7WY2Jq2fcUKhaK7UOvjtktmb/H3HGPmuMOESqhkgoxC0gK9V+t
	 2EfzGA8ERSqKFhufFAduFvWyTL73lgWUzluog4sqcG8LsFkYslWJi+aoqj9/bGc7pH
	 i7/6z+R7jiBokFhWzz2RQbxZbl4VqHGgRcBui9eWNjrRejPheqtiWrSek4AowQ7Ei0
	 zVTqqE1+wh9EzHo4HZ81Tt1MMdL1yPNjWOl193ioKMOOdcJsqqpE3YViGFWsLrTaMH
	 FW2/dJJ3QkS1Q++fBCAC4Q6AwOWQ5bbeAa3jDAM0UgZgAL+0pMIXJmuPzVsd+e+qK5
	 7FIjkHk8yjMLA==
Date: Fri, 3 Jan 2025 08:46:28 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH v3 1/4] dt-bindings: arm: Add Morello compatibility
Message-ID: <wmvrwd2roy2ttbyyzdt2fbr4f7dg6pprrkdhuy6ygab3fl2kll@gnpf2v6zgd4d>
References: <20250102155416.13159-1-vincenzo.frascino@arm.com>
 <20250102155416.13159-2-vincenzo.frascino@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250102155416.13159-2-vincenzo.frascino@arm.com>

On Thu, Jan 02, 2025 at 03:54:13PM +0000, Vincenzo Frascino wrote:
> Add compatibility to Arm Morello System Development Platform.
> 
> Note: Morello is at the same time the name of an Architecture [1], an SoC
> [2] and a Board [2].
> To distinguish in between Architecture/SoC and Board we refer to the first
> as arm,morello and to the second as arm,morello-sdp.
> 
> [1] https://developer.arm.com/Architectures/Morello
> [2] https://www.morello-project.org/
> 
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


