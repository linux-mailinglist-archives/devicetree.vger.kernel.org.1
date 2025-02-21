Return-Path: <devicetree+bounces-149706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDEBA402A4
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 23:28:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A5E81899DA7
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 22:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72B2D21B9DB;
	Fri, 21 Feb 2025 22:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eS/5yKdF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F19B18DB0B
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 22:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740176934; cv=none; b=BieGAYohtyvbEWITJlPCouyTwL3QR9NCcJ+bNN2VItgdbj///CMsSPzMnRzYuJyME2ei4x4zemW4v8YLMfWYPaFPMoix9wLDCILSQzZJKJOObvobnVyEKCNSsiMH3RHvsYUy7o+ZQvo/uKugisDXJBPjOlHcxUaVD10Wftgp1LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740176934; c=relaxed/simple;
	bh=owLObRNz3Zq5zzg+bZTyewojtAhwVXd/ithJC+PS2yk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ulCsPjkX55G9nl5ecsIbJMjbOb47haoq/StmX/S8o+pEHIUSy0Uy9L4CKvJJOcw7+XrM0RpNZ5BKB/JVbinpO73LjaXwuCX9haHtP4Da75uzJ+e7VR4ZqOM1RywjdHCXaIsoP7NGwoHyTPcGMAqTLFBhOalZXxRzaS/N7BvX6IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eS/5yKdF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2F1CC4CEE4;
	Fri, 21 Feb 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740176934;
	bh=owLObRNz3Zq5zzg+bZTyewojtAhwVXd/ithJC+PS2yk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eS/5yKdFnThYLq7jIEIsc4TbOUlZqMfLscKeSH6tI/PH/JaFRiInndtXl3ca9t+uK
	 L+pjm3msTGXQHkzF6gIASswasQAkLce2ze2zEDHEkJ7hN7s3mbpDplKBT+MTHlW4JT
	 DM3spNIISzjf7iTlg02/8sernpEUCWXQEw+3GJiFTquhfmtPxB+fPUyzibrD/69M0N
	 cuW76bmpl62T159B//daco013a3GixGGZJ8hj1Kzv6UpEWPSil5I3VnCbXDKNT4hL8
	 TVXIBykN7XBBvit8ek5fy8BNql3Exl/r5IkxKN0AJYqNSKTxKiVf50lXzbBkjbIQtz
	 Ht6dav0bBQGWg==
Date: Fri, 21 Feb 2025 16:28:52 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH UNTESTED v5 1/4] dt-bindings: arm: rockchip: Add Xunlong
 Orange Pi 5 Ultra
Message-ID: <174017693062.190244.17507097212576105556.robh@kernel.org>
References: <20250220041010.3801-1-honyuenkwun@gmail.com>
 <20250220041010.3801-2-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220041010.3801-2-honyuenkwun@gmail.com>


On Wed, 19 Feb 2025 22:10:07 -0600, Jimmy Hon wrote:
> Add devicetree binding for the Xunlong Orange Pi 5 Ultra board.
> 
> The Orange Pi 5 Ultra is a single board computer powered by the Rockchip
> RK3588 with similar board layout as the 5 Max but with the HDMI0 swapped
> for HDMI IN.
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


