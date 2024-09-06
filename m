Return-Path: <devicetree+bounces-100826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1667D96F161
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 12:25:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42F6F1C23A0B
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 10:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54C7B1CF297;
	Fri,  6 Sep 2024 10:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBo/yc7M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224AE1CF290;
	Fri,  6 Sep 2024 10:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725618138; cv=none; b=Ag0hwi/zPsKCqg4FVczc8lErJzG9eRgiGdRx3s25NHIPdatu7SZndeaiOSgm+/QQgh9OsPLafT4+FRjRGLNqLKijlyZJZG4l8I83MVLQB05jxS/+UziItSe3Tb1HAjXgDGwA2NAdVE3qjClu14rpVikyWW0p5QWc+uh2/CCzwgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725618138; c=relaxed/simple;
	bh=m14t71qdCAaVXPd9YNm1S59eIPvXqJWgl3rEf7KbkBQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JipE1dAF6/ISigYEo0Il30m8rtsRNoR2jdg7I0ldiXPqyf654YdFBQ+uNEF/ZafgzUu1K6Fbo0zAQwaCpEfP4tJO/spf65Jc+bZ3Mu3XVNuSA6R8/L/B12x3mfcBYu/M9rfdwdw/OLsjlZeGAQlu9/QUb/Aw8BGwZaR1NTeM528=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBo/yc7M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C70A7C4CEC8;
	Fri,  6 Sep 2024 10:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725618137;
	bh=m14t71qdCAaVXPd9YNm1S59eIPvXqJWgl3rEf7KbkBQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nBo/yc7Mk28ZlUXpamOaE/Oz3RwfGnoQ+i74BUamnLZp77i6/lBo/YId35IlrbI/M
	 dCadGx8hApY3Fw61OAYKkbB8T7GGkpXF1gkVXRLRMBRNXK+SCdgubGENYt/nE9QJXA
	 z4bCfVOm5Orxu7cIjWPjlg78deM8/Fx85e3b+CWFfW9/aBE5xfH0IdciB1kT2wRBQo
	 XGkJywgcD842PXMDc106z4BD59It/Y06MuiTXmDSvPw/gP8PdXvrgH/n+VSBS96J0B
	 wZ7+Fi3SCBdOtFHEL4SOjNmvOM8pmkFtFxXMqg4gTo+l/NAsf1PPm9OVBSZjdvRJB3
	 TE/WYureCsGGA==
Date: Fri, 6 Sep 2024 12:22:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, 
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Huacai Chen <chenhuacai@kernel.org>, devicetree@vger.kernel.org, linux-sound@vger.kernel.org, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev
Subject: Re: [PATCH v1 03/10] ASoC: dt-bindings: Add NXP uda1342 Codec
Message-ID: <l46u7nb2zzbfrk7dlcj4phtsqfypdrk3gqlch46pguvorrgsu3@i7egyw76br4s>
References: <cover.1725518229.git.zhoubinbin@loongson.cn>
 <563dc4c3738d6c5e211bc0c4f0a0386adb44eb22.1725518229.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <563dc4c3738d6c5e211bc0c4f0a0386adb44eb22.1725518229.git.zhoubinbin@loongson.cn>

On Thu, Sep 05, 2024 at 03:02:16PM +0800, Binbin Zhou wrote:
> Add NXP uda1342 CODEC binding with DT schema format using json-schema.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  .../bindings/sound/nxp,uda1342.yaml           | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/nxp,uda1342.yaml

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


