Return-Path: <devicetree+bounces-156360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E25A5B661
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 02:57:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C07E018929A7
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 01:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCC1A1E0DCB;
	Tue, 11 Mar 2025 01:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="NALJTLrd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.19])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 430341E22E9
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 01:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741658225; cv=none; b=JLNWfLMU6nX7CtVh4qm7hdva72duD/cZjzirkc+IJls1qo8ez9JGxAOiUv/ygCSjNdT7yBvvFC5Nqf2AObSP2CNuzkF71LSVloWcRR7ORyyVsqBe1IHC74BIKXD9jYj7K8znfrHhK81Sj+LP4sGX5/RjaqFMidPrBiPkhaEvd6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741658225; c=relaxed/simple;
	bh=Zvt8zBihpJc4ZOk2rEmoKnJcg1EHDApyXklEz8UZ28Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nMotbLoaEMnlOHKBcl+N5STl/Q4zm07w6TG2ntxhq6frFW6dAfAbTuPvCbj2irzkKCBmmAyXWHJ4I7AuovyMIlNnrkq2G84T7f2X4h//VZ5TXY6m+suSEpdamXPKEF/4XMmue1G1bPd8E8YqXEVykD/s5q7YfljYVX/KTiJahiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=NALJTLrd; arc=none smtp.client-ip=220.197.32.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=A+N2IxYKhWhCgu759Fk/3682pL7HCnhuGXvgrgMUfEM=;
	b=NALJTLrd4p3w3R9kRP01xNkyhxlQk3WW+cH9vgWMY+gTLylQsVLgSMRulzPEBI
	Qwzr0qa0nxwBGXBWW1qS8FT8OHDgQs76v1i4NYS09BjWaZ93QrH1Ugw1kTby4Hvn
	wSzoantPOWgncVdZiXZXmJ6T2gk6UN9GEO0yFAIOewueA=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgCnN7FYmM9nHtCuAA--.43218S3;
	Tue, 11 Mar 2025 09:56:42 +0800 (CST)
Date: Tue, 11 Mar 2025 09:56:40 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx31: Use nand-controller as node name
Message-ID: <Z8+YWBqymWyXISBD@dragon>
References: <20250220130345.2375204-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220130345.2375204-1-festevam@gmail.com>
X-CM-TRANSID:M88vCgCnN7FYmM9nHtCuAA--.43218S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUcWEEUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCxINZWfPUl3HSAAAsZ

On Thu, Feb 20, 2025 at 10:03:45AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to mxc-nand.yaml, the correct node name must be
> 'nand-controller'.
> 
> Change it accordingly to fix the following dt-schema warning:
> 
> $nodename:0: 'nand@b8000000' does not match '^nand-controller(@.*)?'
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!


