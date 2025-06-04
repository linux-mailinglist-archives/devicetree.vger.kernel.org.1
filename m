Return-Path: <devicetree+bounces-182719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD72ACDC8B
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 13:30:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAD63175811
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 11:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2EE925393D;
	Wed,  4 Jun 2025 11:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VloJxxD6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE0152B9BC
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 11:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749036642; cv=none; b=QsMcmdEs5z5oP9duQTtyoXI6CFZPWDrVtQ0hG6ASwE6XmrzV610S/p5VLINkH+oqqj1Q9+rkJvklAhb4RGF+BkRg006zBtL1DxZpEJyJS4LRA5f8LShbKDfvb6fhE16TU/ps2CuNIrzuFY5gTmQHdjyg39qU6FdJZ6Xgj/fzMu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749036642; c=relaxed/simple;
	bh=xaRdU654C9wS4ZfZAI2RLoVKKEW4q0RIJHCOrcqPbi4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E4l7ewRkqimbyK5JDoVohH0k68ROR88vgTp1AyhRdbcdKbQMhm+8zXi8ypI5xgOcMiRPPpNdzbyLW0BYOmOnVdVHJgEt9mjEPly6NgV7QjO9te1YiWbkpSv7D4xvUCquILoEf3LSiqgZi0HR6KEJKfpzQOag9paAcDs/j3VZ0Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VloJxxD6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AD83C4CEE7;
	Wed,  4 Jun 2025 11:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749036642;
	bh=xaRdU654C9wS4ZfZAI2RLoVKKEW4q0RIJHCOrcqPbi4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VloJxxD6gyjQMD7btdyTj1BT0e4gBvR+E479LFRc4RqDa5BCpNiyY9BksVkveHe/H
	 QT27yuDd6r82lNHPAuxdWpVOt6QpC8Z4rgyDNkkyXMLinicyXDG4LYbPQROyqFZ7nn
	 4qkpFAKUL3sTFO8cqBp9256NMpmK1yoOYk/yfKR1OAvoJMR0CCXDXqc36Goin/uFvd
	 d681mGEyt2bz2v/OhTbFdSfeU0xVZN6lYdnUUAe4fCZUoJ6Y/1DbZ0ZV562cYFdDI3
	 EpSZIS2B6kBbpTmbRXs11TMblGwwlSyvQ32DamVq3SZw5XHjuyu8spR4WGMfIjTDSm
	 SiCjM7WP3t+Cg==
Date: Wed, 4 Jun 2025 13:30:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com, heiko@sntech.de, 
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de, 
	mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch, 
	airlied@gmail.com, quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, 
	javierm@redhat.com, megi@xff.cz, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: display: himax-hx8394: Add Huiling
 hl055fhav028c
Message-ID: <20250604-ruddy-lemur-of-defiance-333aef@kuoka>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250603193930.323607-3-macroalpha82@gmail.com>

On Tue, Jun 03, 2025 at 02:39:28PM GMT, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for the Huiling hl055fhav028c. This panel is
> based on the Himax HX8399C display controller which is extremely
> similar to the existing HX8394. Add a new constant for
> himax,hx8399c for this new display controller as well.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


