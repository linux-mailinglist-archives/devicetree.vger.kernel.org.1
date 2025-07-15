Return-Path: <devicetree+bounces-196288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D04B04F19
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 05:33:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A3B3188A474
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 03:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B6F92C08B3;
	Tue, 15 Jul 2025 03:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3GG+Ewm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0173A2C17A8
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 03:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752550415; cv=none; b=gLf7ui0WIKr7qFnIwrWlDGmMuZxFnHX/nP1PrsPtl217Sg/sUzi9btU2dfKdAnqE+HksfCIhwvmITTIa354OaKLWpBZ92UTy9D7q/U2AFyIkxFUTJj6zUxtVytEWxOnjOsulM6bYqgwN9fECkJGhWALgIDkby+kTvvYslW33yQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752550415; c=relaxed/simple;
	bh=ICzkoJTPLWohkOmQCN+HprWL27BZ4tfWCYre4NNQSyk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JsUsuJl6GSLhQG4kYc89UKG3pr91wELaWAxVSIJbd/gkb2Pk9CxJ3pWDND2AzmSIqH1xEclFkZKwnwOj1rbSSOKKafq9ZWV8+v+zyaxSiS8/cejCx5fezCvT6gm5ILb0UNTDy/BsDrH3Z8RAle/PiUg5WJkLyFTenm3JpUn80W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3GG+Ewm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D1BBC4CEF0;
	Tue, 15 Jul 2025 03:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752550414;
	bh=ICzkoJTPLWohkOmQCN+HprWL27BZ4tfWCYre4NNQSyk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V3GG+EwmZnb5ZAx26T+g67DqRwZlsarxX1OjjEIVXToAVsx5L8hJS/Z8thCm5yJOE
	 5tkbGu/Emq1Ggc52TPAiulcZ4pzQf803r8WnxgFGecopkaIdp5YWN9eDKb+Syhpld2
	 aba7NDBgDFDpl42ue5DIlNUuvNqbedthVO4CZZA0z6C8MVZAwZAeirdL34QJDrCFYF
	 pngcoXK5goIcwo3Ta0P6JpoEfwo8sJaNYiWNg76Jr3FjNeLJTA306L8C/snElzJ9dl
	 a18Er8KqfeAg1TsGZpix3Shd3znGkbOcKbHp5TEV86NP3UhwOVBmQx58gxwX73N+yR
	 TCNV+fF2JlCBg==
Date: Mon, 14 Jul 2025 22:33:33 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: heiko@sntech.de, naoki@radxa.com, krzk+dt@kernel.org,
	quentin.schulz@cherry.de, conor+dt@kernel.org, dsimic@manjaro.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add OneThing Cloud OEC
 turbo
Message-ID: <175255041318.4178343.13360400577484328050.robh@kernel.org>
References: <20250713163255.163669-1-jerrysteve1101@gmail.com>
 <20250713163255.163669-3-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250713163255.163669-3-jerrysteve1101@gmail.com>


On Mon, 14 Jul 2025 00:32:54 +0800, Jun Yan wrote:
> Add devicetree binding for the OneThing Cloud OEC turbo.
> 
> The OneThing Cloud OEC turbo features the RK3566 SoC, 4GB of RAM and 8GB
> of eMMC storage, and supports one SATA interface and USB 3.0.
> 
> The original function of the OEC turbo (shipping with the vendor firmware)
> is to serve as a PCDN (P2P Content Delivery Network) device.
> 
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


