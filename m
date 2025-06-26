Return-Path: <devicetree+bounces-190038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E010CAEA61C
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 21:09:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E5D901654BB
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 19:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07F9E25DCFD;
	Thu, 26 Jun 2025 19:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbBcBqdF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78471E7C03
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 19:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750964987; cv=none; b=P3gMXXjbYUfQcZx0WYldG0lVQtZVxSQ/w6oFv/F8ihBoCwjVujmy/dwDW1WzBSVy4W7MJH3tJg9gGkFM9FYSD2cHiX2PYaT7Dul2mY5Bn7FrCoVWDzO7+Ml+4xKq5222xi1Wm/5WOKmYEJXoQImYMjimiipwsUujyypyg6CkXu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750964987; c=relaxed/simple;
	bh=zfknxCOmCe2JBks4BUA0MGDzjDNCPZlbesOLlMW5WUk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a9EdKvNdScSQeBHHfAdErUal+iCE+PkuTPfQy7xvwX2syiecfbF4d+HTKUfUIc5iJHvaIrKJuCXetl/66+Vkl6fWX+wcRw3LtXdMPPmlq0DXcHsU6OlWPZp7fFu5PFkhUZGBF4CrGrLSUZVPZ+91grSuUwXjf6EUNpOlKzuZTjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbBcBqdF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42FD1C4CEEF;
	Thu, 26 Jun 2025 19:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750964987;
	bh=zfknxCOmCe2JBks4BUA0MGDzjDNCPZlbesOLlMW5WUk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HbBcBqdF5qBCiNZVpMUMjHP4rRMMCEPe16LzkGt0fPlsBHokFdVuNLfThWdQjHzzo
	 4R7TIpkQItWn7QajkQHh+7bzejqD6GNOBh/Ac0bb/Edy0+i4e0VpeLpeRemK61WitE
	 FMv1LJl2tocAck5kRgb7U8XxdokcBuVcEleg9F/prbfPrnxkaczZ0kmRFE3GXiguAn
	 LZVSx50y5fTqOPv2ni4uj+xYC1TnIAKKXeRMHCT2q6xUTyxvbV9Jfo2dfC7/w2buSs
	 O/YSW/U9mN9sJFHtIyTBPYqMnB/FthpoY7mbY7rIrrKr1fubKXvGPApXYZ1A5KREiZ
	 377lDh7RquQaQ==
Date: Thu, 26 Jun 2025 14:09:46 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org, krzysztof.kozlowskii+dt@linaro.org,
	robh+dt@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCHv4] dt-bindings: net: convert socfpga-dwmac.txt to DT
 schema
Message-ID: <175096498596.599528.16276086521169554127.robh@kernel.org>
References: <20250624191549.474686-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250624191549.474686-1-dinguyen@kernel.org>


On Tue, 24 Jun 2025 14:15:49 -0500, Dinh Nguyen wrote:
> Convert the socfpga-dwmac.txt to yaml.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
> v4: remove maxItems for clock-names
> v3: Address all of Rob Herring's comments
> v2: Add allOf to include the base dmac yaml
>     fix Rob Herring's dt_binding_check warnings
> ---
>  .../bindings/net/altr,dwmac-socfpga.yaml      | 138 ++++++++++++++++++
>  .../devicetree/bindings/net/socfpga-dwmac.txt |  57 --------
>  2 files changed, 138 insertions(+), 57 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/socfpga-dwmac.txt
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


