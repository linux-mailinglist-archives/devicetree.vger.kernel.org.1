Return-Path: <devicetree+bounces-239541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E541FC66540
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:47:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id AD5D029A80
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 21:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37E732DF3DA;
	Mon, 17 Nov 2025 21:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+iYu2pJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0DF2417D1;
	Mon, 17 Nov 2025 21:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763416064; cv=none; b=H13qyzwXjP4J0q3d3tqVz6M8YuuLcX4WWUEKDLyJ91B5N41/F8jukoiHaP+Mmcup30AT33EIUXlq5TJgscTywrHL7+BeTvHCTnpdYArD1iLRGhtQ6+A5spA6ck7pga/vmu4OAst9JQyCO1uCNCPE6A03IOo6S1wjVGbzjiOlS0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763416064; c=relaxed/simple;
	bh=5ndR6XtklAQd5zwZuaf8IO799NQGbnQW8NryMjg6xiU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DIVP0s4uTX16ShWO4xxFiYXgj+ExSaGCppu7vvGrjz3pI2DWNjfavfr2a1gvlm8lv/3wsFE/jA8+GTXj9l9bKl+yH4yW2S45NmP0UE1RisjeAvDA7ZJ/CapFA2kLiAhkWKpKcAB/24onsxNxEQOAkGC07+3uQNmbiixoTKTYR+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+iYu2pJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB1E4C2BCAF;
	Mon, 17 Nov 2025 21:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763416062;
	bh=5ndR6XtklAQd5zwZuaf8IO799NQGbnQW8NryMjg6xiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b+iYu2pJHg4gddFLJ8R5U+xOCIF+vVDqu/gCUsTHJJjEGaIBFsQOZWU04Eh1iFO7f
	 /rxdezrlU2ZwRbiHwH74OxdS87cHecb9478XbjqH8DbUjrsKjOjxcNFBs8AjxakP7w
	 oZhr15NlIL4EtX+wfEpvpjnlZErjCz2F8vKHxI43gkU6fQ6GlNnbZzuiP0gV0AWklk
	 5u642fWeGSMTIAOSYa9Isx9oaz7YReHZw8djwsRk9QjATYTnHFod73VCWE4FhUl5ca
	 OFYn2idBr2H8V6Dd4X4WPfXdMNOtB82qciLlyQjwWhHDnMLg3V05fa/CVcWqiI20uz
	 d4iBUvavDel2w==
Date: Mon, 17 Nov 2025 15:47:39 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1] dt-bindings: interrupt-controller: sifive,plic: Add
 pic64gx compatibility
Message-ID: <176341605396.772804.499793532814734535.robh@kernel.org>
References: <20251117-evict-corridor-5efe40101eea@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117-evict-corridor-5efe40101eea@spud>


On Mon, 17 Nov 2025 15:27:36 +0000, Conor Dooley wrote:
> From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> 
> As mention in sifive,plic-1.0.0.yaml, a specific compatible should be used
> for pic64gx, so here it is.
> 
> Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> CC: Thomas Gleixner <tglx@linutronix.de>
> CC: Rob Herring <robh@kernel.org>
> CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
> CC: Conor Dooley <conor+dt@kernel.org>
> CC: linux-kernel@vger.kernel.org
> CC: devicetree@vger.kernel.org
> CC: linux-riscv@lists.infradead.org
> 
>  .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


