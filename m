Return-Path: <devicetree+bounces-255745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F522D27EBF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:05:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BCBB30A425D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC5D03A63F1;
	Thu, 15 Jan 2026 18:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUCiggqZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5DF2DFA54
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768503232; cv=none; b=ddXM6UvrDfDZc2GWiX3iJ2b7VzHL7f45EdJLvKV6UnqYwa/YgC4rwbsCTEHhOr3me568FSDnSlWGyXdSRVKjsDl9H5repUw3aGcMHwsphzkB83MEpv0KAG0fNCumsalf6Y3kdm9+U+DLKBQ6IS2mLDtNikgvZjX9ukDLzjALBGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768503232; c=relaxed/simple;
	bh=+yRgRWrxixszXJdLBEgxSxkhwkZTH7s4cXfyBhhd6zY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=THhGQG4yw7SOWHrP6ymIA9BxwbHzy3tnREkipavQN2yj/BCre6smbI5kidTCnwWFQYjgHPPKC0ZajA907b0MQ42Mf+JTHSUGA8VmTSGLpn6SaFCygDna307eF7nKUeFkW27pvUM7CjNvnNB8la5+3yStImeMYKSppphSnjiBnNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUCiggqZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38E54C16AAE;
	Thu, 15 Jan 2026 18:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768503232;
	bh=+yRgRWrxixszXJdLBEgxSxkhwkZTH7s4cXfyBhhd6zY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AUCiggqZpfdI1tudPHsbFKr6s686vUb/DOUAVuO08NxXYlA4lO5ha1c5Ih0Nkd5L0
	 qeyF1GYAs71hBcNBw34SXu9ACVi/671Uy7D1Tpd7CPpislVN6wCq4/EDGvQyu59dk2
	 UGMCjT/ad2mN49ixcwFD4ujyD2H8wYSN1SgBIISG9nPbcNWlemr8BTw9Js22rrINcT
	 iniQqZYV3ffnL+KAyaiTghLs3E/c2fEZOJdUN62/iKv1ms6XPscdbUJEbgpAOPPV4A
	 nGUPKKL4AqeGo8Rv6ZpvASqe1IPRdOT/DD0+aDXx3ZOYiSI0UD2xuNQYhqxzuWFB9n
	 putFSQG6ZAsjw==
Date: Thu, 15 Jan 2026 12:53:51 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, mripard@kernel.org,
	dri-devel@lists.freedesktop.org, airlied@gmail.com,
	conor+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>,
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
	neil.armstrong@linaro.org, devicetree@vger.kernel.org,
	jagan@edgeble.ai, krzk+dt@kernel.org, aweinzerl13@yahoo.com,
	heiko@sntech.de, simona@ffwll.ch, jesszhan0024@gmail.com,
	dmitry.torokhov@gmail.com
Subject: Re: [PATCH 2/6] dt-bindings: display: panel: Add compatible for
 Anbernic RG-DS
Message-ID: <176850323085.1003166.1760055043978437225.robh@kernel.org>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113195721.151205-3-macroalpha82@gmail.com>


On Tue, 13 Jan 2026 13:57:17 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Anbernic RG-DS uses two (mostly) identical panels as a top
> and bottom panel which appear to use the same controller as the
> Jadard JD9365DA-H3. The panels differ with a parameter defined
> differently in the init sequence.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml   | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


