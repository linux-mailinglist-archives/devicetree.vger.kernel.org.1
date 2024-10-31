Return-Path: <devicetree+bounces-117719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8219B9B7680
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 09:31:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47D9F281076
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 08:31:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 638BA13A256;
	Thu, 31 Oct 2024 08:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTxQJzmM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6A412C526
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 08:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730363471; cv=none; b=pAjr8Z6ZPvRWnKF5PYYhyDOb2C5QLe5PpbHYRuIloI6zFi19ZzavvoA/DHFh91ZQh9apC2rqkc8uB6Rf0FRGWf42eut86B+ZoqX3i/ea8i7lmdnZvMMRNrksqCBiQWFE6LJDb3ojRM9Dbirojw/0Oqi+3F51TQJI9girjgAq+r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730363471; c=relaxed/simple;
	bh=xlqpRXm6GQ0UagqS3blmLRplAa4RYc97tCA9IGBFtcQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kgFArIhYDqPyf0Xl3zu4MtnAW+eSWo30mXQD8ALZZNEZ0kzykE1O8HF0WgulmsVPRlC8+7mmBmCakSH/k65tziTEAdA/TDgGP+XFqg2YSN2NdOfjqmKTjath59awrmGO1s6RxrqDMCOWGX6FQOBMCigYvtPqR6GsHibN6ziQsKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTxQJzmM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9613C4CEC3;
	Thu, 31 Oct 2024 08:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730363470;
	bh=xlqpRXm6GQ0UagqS3blmLRplAa4RYc97tCA9IGBFtcQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sTxQJzmMpBKy/MOAa+h1uw6K+O6EuGffkeobixeFuNU4h85gQ6knUcRf6l8DAzO2i
	 ustFNd3rPLwFpeYbLLlL0BA7kKo09VOi8XrJLBmP+uevPSrQbqdm48ryPdi2toh+L2
	 d7J//5vG1ewPurrpP4H36OrYsufrIApaZIp3rZUd46i4afFSDZATwMdbJU5YOVP3No
	 W9QGTU3zDRhaaSYkMnK5oDGCl7UqKzYxISlitWoQCEAQy8xTGO1lrG5TlEaNT4O0jM
	 wCdfwPt3AXCEyxCCJ/msVaQp1tGJokXcmauJWFQuI5SB021hcOSBXGcQkXyLtLtkbV
	 YfXiHp8mKFzGg==
Date: Thu, 31 Oct 2024 09:31:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5
 Max
Message-ID: <qyrpjugdzdd3h7536cbjcb2uq5y44mliipmagthfxhbdrmnx3e@a4ttzrfak3gp>
References: <20241031031528.23428-2-honyuenkwun@gmail.com>
 <20241031031528.23428-3-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241031031528.23428-3-honyuenkwun@gmail.com>

On Wed, Oct 30, 2024 at 10:14:50PM -0500, Jimmy Hon wrote:
> Add devicetree binding for the Xunlong Orange Pi 5 Max board.
> 
> The Orange Pi 5 Max is a single board computer powered by the Rockchip
> RK3588.
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


