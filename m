Return-Path: <devicetree+bounces-162759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5794A79C2A
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 08:37:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC5611735E8
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 06:37:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 264EE1AC891;
	Thu,  3 Apr 2025 06:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQQndKRo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AA01A0BFE
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 06:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743662159; cv=none; b=gA0ZmCRrOkVTPWmSixm901Js5PONn8qLc83L2TEzplpXXC8eL4r5Yfl0kcXJrKwYZRD2zeM0VnC2O/j35hiDHzvsC/6VtAxn+BP1UnWpgVrw3UO+rtcUC9l1g73Vg+m7T7WETVjRHtjdGYGQHcinlUIGyuW7Gc9ehLbop1T+ggA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743662159; c=relaxed/simple;
	bh=AGJNWfKRNZL//XYg7cPPDMuxOk/9JJAVddvZZSpuEEY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IYs+JIZzc/Le9L4Ls2+2jgCvVnLEm/S8lMj9yapxF3E7xn+6WWXbyBoAToYy9XfT7KJbII4Jl7rL5QWqqH0GoDa4V+QNKn/fFvcpwYGt1QjMmoHXhE0/ARPow/fTF8YkNKqgRfYqalIUiKUGE3ZhYEsxIaS+R52txHnl6P/y3yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQQndKRo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7BE0C4CEE3;
	Thu,  3 Apr 2025 06:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743662158;
	bh=AGJNWfKRNZL//XYg7cPPDMuxOk/9JJAVddvZZSpuEEY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VQQndKRoCv1j7LhtIGvg7iXfK76iyoBI6qWG8JHeIVWZUMXdE6vuMdhlhXvQuFo4y
	 XNRn7AOAnUGVDJpSze7BcqQ3U8Q6Iskb1CSCQ2ZQYb+JevofEDlFd5XQW9RH3PZzlD
	 QCzVBydKlgK1dffpoWUAsnPf/PRXUaF7dH1JChf7yFqleEFFOkKsFbHqhuQ23cTMrL
	 diBfgnv5Oge5fzNEbI6gEq1PF7hFmpoIdJA5YvVnKUSyqz+UgZNMI3FhUcW4yNAwbv
	 yFYotLIxGgrxl+sxl+z8XFD4/3GH5uRkloeWLJEYDjBzGRpjGYANXmV5/YdZdTJGGX
	 nQ35QgAhHviEg==
Date: Thu, 3 Apr 2025 08:35:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: justin.chen@broadcom.com
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, rafal@milecki.pl, alcooperx@gmail.com, 
	bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, kishon@kernel.org, vkoul@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: brcmstb-usb-phy: Add support
 for bcm74110
Message-ID: <20250403-impetuous-spry-falcon-1e2ea9@krzk-bin>
References: <20250402185159.2976920-1-justin.chen@broadcom.com>
 <20250402185159.2976920-2-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250402185159.2976920-2-justin.chen@broadcom.com>

On Wed, Apr 02, 2025 at 11:51:58AM -0700, justin.chen@broadcom.com wrote:
> From: Justin Chen <justin.chen@broadcom.com>
> 
> bcm74110 brcmstb usb phy adds further power savings during suspend
> states.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>
> ---
> v2:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


