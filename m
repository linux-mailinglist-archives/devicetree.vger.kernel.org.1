Return-Path: <devicetree+bounces-190124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 046F9AEAADB
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 01:50:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42F66171038
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 23:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C74222575;
	Thu, 26 Jun 2025 23:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORcxfw8U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A16141459FA
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750981799; cv=none; b=lK7JEq4bA7f83nIVawMAHUhFhz6QV0CT2ZycaJxLHn6MO/IwC8cI3YBiFs7/fOYCQaGWGRNqrUfLrECJ/fnVy0dns7MZOfymW/4U2buoVLnzE04yHPJK938AwXQhYztAN3iMrK6+GD3DbQQaOhBCN8UpbPcSw9EuxBYLXBZEfME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750981799; c=relaxed/simple;
	bh=zzfDn6YDUhDZ8MX4WKtVlq2p1ECD1EhyFPvN85Yh8vM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CCcG1qPOhDfy2PYuEMaRS/nXlIhAhuSwUsYr94qAzTa4cjXSj90qsmCKoyv90jsQ71oaww4/zBjDbAyU2HmfFwwqfcnptwnxC4NYntrH5h+eHjpKfg+qsCXcOiHrLSZKofMz4DXfD+17951Q/DS03QO/qqyFtc98LRJ3gG15TbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORcxfw8U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10B36C4CEEB;
	Thu, 26 Jun 2025 23:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750981799;
	bh=zzfDn6YDUhDZ8MX4WKtVlq2p1ECD1EhyFPvN85Yh8vM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ORcxfw8UvH+UpK7IEchFnFUzSj5BqQrWCxxrdMjx7vsKAB+EvLdC3ohDGlIQV97QL
	 ErYFRuoZVxRIFkheJ0yZhtoZhy1gi7dpyWSoIOS5JYngWNb/I8y9/Q4p9wKtjG91f7
	 p+1P+bA+oWBIGKekSJeIAHFZEy6Qlkv/B5pIi4qLoaOGiMf2JbYxvuiQYvDELorSKB
	 P6uru7WhkA7PiE/9JlceFt9o/QfztcuqT54WC9yVjr/2qsp+w17j+/3AdGryupm9Vs
	 wcw6LsFypmnTwTjhbFw4p1fXv6VeK3HC+fcZHE9XEMq76HnvXTqEws1xLNe+tEwLes
	 r6VuiLksi9cpA==
Date: Thu, 26 Jun 2025 18:49:58 -0500
From: Rob Herring <robh@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org, krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Subject: Re: [PATCHv4] dt-bindings: net: convert socfpga-dwmac.txt to DT
 schema
Message-ID: <20250626234958.GA1424355-robh@kernel.org>
References: <20250624191549.474686-1-dinguyen@kernel.org>
 <175096498596.599528.16276086521169554127.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <175096498596.599528.16276086521169554127.robh@kernel.org>

On Thu, Jun 26, 2025 at 02:09:46PM -0500, Rob Herring (Arm) wrote:
> 
> On Tue, 24 Jun 2025 14:15:49 -0500, Dinh Nguyen wrote:
> > Convert the socfpga-dwmac.txt to yaml.
> > 
> > Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> > ---
> > v4: remove maxItems for clock-names
> > v3: Address all of Rob Herring's comments
> > v2: Add allOf to include the base dmac yaml
> >     fix Rob Herring's dt_binding_check warnings
> > ---
> >  .../bindings/net/altr,dwmac-socfpga.yaml      | 138 ++++++++++++++++++
> >  .../devicetree/bindings/net/socfpga-dwmac.txt |  57 --------
> >  2 files changed, 138 insertions(+), 57 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/net/socfpga-dwmac.txt
> > 
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Unreviewed... There's also this conversion[1] which came first and is 
more complete. Please comment on it.

Rob

[1] https://lore.kernel.org/all/20250613225844.43148-1-matthew.gerlach@altera.com/

