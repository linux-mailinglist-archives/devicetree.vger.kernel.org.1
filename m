Return-Path: <devicetree+bounces-166111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CF849A86512
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 19:50:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D605C177AF5
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 17:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4713F2586CC;
	Fri, 11 Apr 2025 17:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2H3sjhI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F3723BF8F
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 17:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744393838; cv=none; b=DF8AY8EU/eYdWtTjiUzga6gkslNlEoP6CQ7f3wrPoga+Gh69dZYxf0XA7vjYheh1bZOGHwn6uevoTnHN4/+FeYkt4ADvl+gvrPisV+Cv/EwzmpnNtn78kkv+tN/11EshxgzoxQQtEh3L72NMWnp0Po/RYenoWK9a5ut1W+GktTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744393838; c=relaxed/simple;
	bh=UgYRPhQRBiJ7R4mPcaCowJ6V4uNk97/yxaeTPsWPQMI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QQ9ztcATzIleFVLtCpPz0+e3orygfq4CTVX2p3v0D9aeH+FNE3HO2M0ZCIj02J66dkHBczzDAWUgt78rz4Ws6QmVqLWyd3CCf1LKeN8DjDRQmZfwse4S1ceO7fU1tmP/XkhCsry/GguqE8NpA+Xx11KX4rCSlIWdIU0WvgUjB0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2H3sjhI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C118C4CEE2;
	Fri, 11 Apr 2025 17:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744393837;
	bh=UgYRPhQRBiJ7R4mPcaCowJ6V4uNk97/yxaeTPsWPQMI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c2H3sjhIOEtN289F9ZQj5HeFpR+hz4IfKJNw6si8S8erQFWjQv9c98j/zZUpOKhf+
	 Ul55hNMKll9NS24QrqUe67u5viMRq2O7a1bFpsDE76FogeK9dVME6w2FvFNUgl/85t
	 l5okiRToNExeTLMnPySMjJI+dziJ79DyEto1JfkUYU9/a9FKxeAGeyq79ZxwOHCBsC
	 kOJTfA6zlkQtxap6bnuEcqQ7i/I6myaqNeaG5L3Fb6rz3GoBWO3sK0lp1nRb0ZLiw3
	 zXinIhrrMzYuSvN8/ZWPjsFjTkucDCb1CFhOsg726ubw/mRvIBbBxAioK6+LTfUtf+
	 N/C5BgJYXiSmA==
Date: Fri, 11 Apr 2025 12:50:36 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH] dt-bindings: soc: fsl: fsl,ls1028a-reset: Fix maintainer
 entry
Message-ID: <174439383495.3642695.16910474750574128734.robh@kernel.org>
References: <185e1e06692dc5b08abcde2d3dd137c78e979d08.1744301283.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <185e1e06692dc5b08abcde2d3dd137c78e979d08.1744301283.git.geert+renesas@glider.be>


On Thu, 10 Apr 2025 18:11:12 +0200, Geert Uytterhoeven wrote:
> make dt_binding_check:
> 
>     Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml: maintainers:0: 'Frank Li' does not match '@'
> 	    from schema $id: http://devicetree.org/meta-schemas/base.yaml#
> 
> Fix this by adding Frank's email address.
> 
> Fixes: 9ca5a7d9d2e05de6 ("dt-bindings: soc: fsl: Add fsl,ls1028a-reset for reset syscon node")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  .../devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml          | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


