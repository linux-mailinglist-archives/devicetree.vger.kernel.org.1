Return-Path: <devicetree+bounces-51044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A955E87E034
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 22:15:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 392E4B216E2
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 21:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F04F11EF0D;
	Sun, 17 Mar 2024 21:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7tBEoEd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA77A21A06
	for <devicetree@vger.kernel.org>; Sun, 17 Mar 2024 21:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710710098; cv=none; b=YfzsyIMmCZwSe95M00R/+HvEJROGdb0Ydw1I7tqYVteb7Z4JOwrOr2zeyEive+0fbK+6J1+thyDu5ZV3KIsFs7QYc2gMkx4ZpSzaQis70csVvKRKzxIlL6aDtfJXUtiRrRt0lRr5phteC7cudbuYc0JykFj36cw8lPjtJ8OSJKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710710098; c=relaxed/simple;
	bh=nwlvfWIiZZrwsODtnjPTrwvwT3eKt6Da7MTY2x+lvVk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UrYe3WDRSbKGIqx/OVgTGNe+8vYatlmb/0mz96Hs4ivYUaBIenMB53dbytA6WADZXYlz8A8Mv6TxO6ecDuHN/IXpM278zDo38E6/hhMC7LGCWkokZbI+Qd0yjk/G7wAvZYeZOBw4uDnO7BT6m1CsfJ7uBcWSWNiSWFpm3ilTQnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7tBEoEd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42890C433C7;
	Sun, 17 Mar 2024 21:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710710098;
	bh=nwlvfWIiZZrwsODtnjPTrwvwT3eKt6Da7MTY2x+lvVk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F7tBEoEdWQvvtEHdUHM8jNS7xcYThmcCGJkO5GzbZKQADDLdICjzW1C8bw4Hr7vjP
	 RYz6nHcdS4mD03HxX9VyFl++38tXX3hyU0diAmbrRDgwIdvjI/rDFheX6nWPud8Dd6
	 A8bCRtWHOGM3vUl+ylI+m1TomnxrF5u4JXqB4lftvwTs2I4xWxmEofysvVivapmnK0
	 f7bP6YNdX0zrkixeCcS60vrCMLK9USGH+0r1UvzCD8Nb1PJXgFRudlfjb+lt+jmakI
	 vwU1cNVPuoOm8bNLewV4XYuVGdbz/2b1CMU/60KdMdDo1ocjergIqHzn685mSrgeH2
	 XQ0WnU0/t6uxA==
Date: Sun, 17 Mar 2024 16:14:55 -0500
From: Rob Herring <robh@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: ili9881c: Add Startek
 KD050HDFIA020-C020A support
Message-ID: <171071009452.2391266.6225826463039032160.robh@kernel.org>
References: <20240317155746.23034-1-laurent.pinchart@ideasonboard.com>
 <20240317155746.23034-2-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240317155746.23034-2-laurent.pinchart@ideasonboard.com>


On Sun, 17 Mar 2024 17:57:45 +0200, Laurent Pinchart wrote:
> Document the compatible value for Startek KD050HDFIA020-C020A panels.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../devicetree/bindings/display/panel/ilitek,ili9881c.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


