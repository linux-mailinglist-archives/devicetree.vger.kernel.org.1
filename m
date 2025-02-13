Return-Path: <devicetree+bounces-146156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E25A339D9
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 09:21:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7FBF37A1495
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 08:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8AF82066FF;
	Thu, 13 Feb 2025 08:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxG/bQ5Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8442E200BAE
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 08:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739434880; cv=none; b=Qz0qxxbBmT3zJ6ojgWTyLfJaFkP6FHg49jOcZHSvM0ylujwAB3a0FiuZz/ucR+8M13rJBlspni9ZRlu79zfqpvrVB/n8Qg5QaLKoSwKDcGtUwP9c6m94rcPtdZzpG7n6Mg7dQbPQgTrBrSkd/4L0LB1nbfB4gknj6nOjPq005Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739434880; c=relaxed/simple;
	bh=G9v08xY6dD/jqvUsCqnqgDn57iuOkY0mCJojX5bXKro=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sRSu3M3vWazhOzEzEzwgCp9cgj2Lsw71lvXA7eV/SoA0CKx9gv4kvGQUBQyP/QGIrpxfabOk5KQRiy0r5FMtb0CYpVc47/VTGsaj8sVDfSBCHutIUhRj/HBitqnxvkmqt1lsrfZnIpNAXkmHV5sKxzwJPC+2uUqsKSoGEiiMv4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxG/bQ5Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75030C4CEE6;
	Thu, 13 Feb 2025 08:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739434879;
	bh=G9v08xY6dD/jqvUsCqnqgDn57iuOkY0mCJojX5bXKro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WxG/bQ5QCL1I2DZ6atGBnpEEATwXMt1id9AXOam3/XftRoVZaoMHp5WWCXNM4dI5G
	 F/MHe60hi9bEUs6PeqTpcss9cfNxHUSSMKF+wAazXM06ZGhun+oA+/WDr56h/xKMt5
	 D5C9kP+l+5mAQoosKWJWvtZu3f7zMcOhKq8gl++o+Fmk1WqtQYzS/Cz2QMbhcrUzFQ
	 bzAaHq1buv3Jv8dE+PM0m5Iquauo3kfLbKLD8Qf9NQDb3RG6imgu+kNm+lL+UkKJiT
	 USj1Py+ccceCZdgpslL/RlHE7298iFOgZJuc95WDHRiFl4z6RaT2d92wGmWtDt+XPI
	 UH6rKtJE41gpA==
Date: Thu, 13 Feb 2025 09:21:15 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Patrick Wildt <patrick@blueri.se>
Cc: linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2
 (RCORE)
Message-ID: <20250213-dazzling-beagle-of-bliss-e4a70b@krzk-bin>
References: <Z60MU05JLtI9VzuU@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Z60MU05JLtI9VzuU@windev.fritz.box>

On Wed, Feb 12, 2025 at 10:02:11PM +0100, Patrick Wildt wrote:
> Document board compatible bindings for the MNT Reform 2 with it's RCORE
> SoM, which is based on Firefly's iCore-3588Q.
> 
> Signed-off-by: Patrick Wildt <patrick@blueri.se>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


