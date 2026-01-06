Return-Path: <devicetree+bounces-252066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2F6CFA90C
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:19:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D6851324DA51
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 843CC34BA22;
	Tue,  6 Jan 2026 18:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCAPKZAb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F39B34B40C;
	Tue,  6 Jan 2026 18:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724085; cv=none; b=fyRQKJhbWSVCpUOVqcy/B9WOSsrRAssgLc6XtaXhV7p6X5fcW3TgeELBiY+1QlLhI4zMDcUCU78R+l0hUOS0jAGwgh/57GeGsqfmRma6EHp/7E8d2L3Z0/1QlIw3hrvecJ9dfu4zH4UWWJ+2i+jdCO9os/BeHOJfmyeNOzdlJxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724085; c=relaxed/simple;
	bh=/kUTBjDyHLOP++rgoCOAu8BTPjxi49VyNskoVZ4vBSc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aA3TF7Jq92yyK/Io9/1iYaSDQntKGHSFJa/jXApyhzOueprm8bqPzD81r/Z7bdtBCTIXBxluAU9P4F5wmHAt03pRf+5lv9OjaM655+xfKu8UBrF9wNDa3tR0+DNVcFQQc+RTwFVYuThaGxvYlOW/+awY9YT+3yGcBIoa17yRhmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCAPKZAb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A54DC16AAE;
	Tue,  6 Jan 2026 18:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767724085;
	bh=/kUTBjDyHLOP++rgoCOAu8BTPjxi49VyNskoVZ4vBSc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bCAPKZAbn39k8eOCcd3oj3Nn4sYm+QuZqLjs7w6lS/wpANcUuqYlNWLB908OWP03P
	 t/6hVgUQ74kCvCWiDVdpZjehdtDGxhZ+/VTMAeXGVfVqrElZdGsxmJZqzzz3e6kSrq
	 Q69PJJd/lF8hveaXkcw48n4m2CIxWq/205cxax2Ja4Zs7xqBXu11qq0Dhv83IOkyTq
	 kaGzy7r4SotX7GdgYMI7LdHNYBLv9egs1brgf+TabC4uOYdiFYzjptuFHKLqjEyYTh
	 b2umfxcQCo5Q+TKBM6mbF5W0/jNBKyDs0QB/pM6yDFS6x/YTsd7tvnGxpKCQp9PQUh
	 r+o3VEq+6kmUA==
Date: Tue, 6 Jan 2026 12:28:04 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
Cc: alex@ghiti.fr, cyy@cyyself.name, me@ziyao.cc, krzk+dt@kernel.org,
	palmer@dabbelt.com, conor@kernel.org, TroyMitchell988@gmail.com,
	gaohan@iscas.ac.cn, linux-riscv@lists.infradead.org, pjw@kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	kingxukai@zohomail.com, aou@eecs.berkeley.edu
Subject: Re: [PATCH v2 1/2] dt-bindings: riscv: canaan: add 100ask K230
 boards compatible strings
Message-ID: <176772408361.2509936.16592890461437169152.robh@kernel.org>
References: <20260104070911.219588-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20260104070911.219588-2-jiayu.riscv@isrc.iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260104070911.219588-2-jiayu.riscv@isrc.iscas.ac.cn>


On Sun, 04 Jan 2026 15:09:10 +0800, Jiayu Du wrote:
> K230 CANMV DSHANPI is a development board produced by 100ASK.
> 
> Add compatible string for the board and its SoM.
> 
> Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
> ---
> 
> The hardware details are available here[1].
> 
> [1]: https://github.com/100askTeam/eLinuxAI-TrainingDocs/blob/master/docs/CanaanK230/part1/01-Introductionhardwareresources.md
> 
>  Documentation/devicetree/bindings/riscv/canaan.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


