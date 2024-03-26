Return-Path: <devicetree+bounces-53637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A05C88CEFC
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 21:37:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B96C13409BF
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 20:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3932126F15;
	Tue, 26 Mar 2024 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqg2s8gy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD8455337A
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711485033; cv=none; b=tyke8LTgsZOsbRuafu3JUCyUC1u5sq18rydBiSAinNEuSR2lqjqPuhU+mq4hJtwok/yiz2mhDThUy/FP5VaTF5gT7H88K2R0l8W4Ru3wuuwKwTcmNWoawK22ma9BzPmnCtQevPJiAmCsVzal++evAjdpFhXXzBp9PIReXFLNyh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711485033; c=relaxed/simple;
	bh=6ZwP4niv2dWrwIYTkjQYyJjMfsiweawr0SSySQuA57U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sFk+eDo1ajUBJt8HWdXLAnTZVREPtUoRvsD8o6YslGLjYayI6kDa0L8KIJ5JYbJf/mpIdUPKb2fhNbw3jhxnCQBSdXTHUoU45g9r43ZasnS5aiLKxoE0FZEuVhTuPhyITsOS4LF9LpXlz3yE+rPOtJLh+PDKlGnw8feVr9Dtuxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqg2s8gy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EECAFC433F1;
	Tue, 26 Mar 2024 20:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711485033;
	bh=6ZwP4niv2dWrwIYTkjQYyJjMfsiweawr0SSySQuA57U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bqg2s8gy9yoN8pVhMs2qyzeRWc+dxwZyppMpb1ZBUSsvrjRwsxNbzqhq4BJi9DilF
	 lY92XwV0mIJQb34nbJEMBp3I+dqiw6qUDLADHc08fU9EjekHGB+vk91ZGC+kSnUQ15
	 biuc/r0xNAJFQJwI0OEQHGqPQetGJ4E1L6Y0fJadvWQ9mL+F5l3aLbWOKE/LchgaJX
	 6es2GlckvwRxU9pJ3/49jeiViGkrMebnwR7WYA2EttpBpH/BmPD9mQsDttYVsIXKNh
	 IXtjg8QUbdirFu+KhmQ8OK0hLZccT7QC0umT5Pp7Ut233jEuFWSssZ+fVz19RvLds9
	 giXKSEUUzd50w==
Date: Tue, 26 Mar 2024 15:30:30 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com,
	devicetree@vger.kernel.org, sam@ravnborg.org,
	neil.armstrong@linaro.org, agx@sigxcpu.org, megi@xff.cz,
	conor+dt@kernel.org, kernel@puri.sm,
	Chris Morgan <macromorgan@hotmail.com>, heiko@sntech.de,
	dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
	quic_jesszhan@quicinc.com, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/5] dt-bindings: display: Add GameForce Chi Panel
Message-ID: <171148502827.3376685.18337024060057169152.robh@kernel.org>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
 <20240325134959.11807-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240325134959.11807-3-macroalpha82@gmail.com>


On Mon, 25 Mar 2024 08:49:56 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The GameForce Chi panel is a panel specific to the GameForce Chi
> handheld device that measures 3.5" diagonally with a resolution of
> 640x480.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


