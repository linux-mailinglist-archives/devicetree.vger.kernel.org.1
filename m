Return-Path: <devicetree+bounces-147828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5DFA39810
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:04:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 50D7B7A6730
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 09:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D700822FAF4;
	Tue, 18 Feb 2025 09:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="X7x11O0c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7810231CB0
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 09:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739872669; cv=none; b=fbn75oEBCAdxUu5Dmvl8TBfgVH8PBRkMDltKK+3tqKp9nJxiKkLLx/Q/g+5NiH5Uhhq1Ozwo3ccyBBILkrefadOdzLlEnNOpetjwkioD6VF43k7LiZ6wl1QAzE5usO+MSBT3ppDtoP2VpWvLF/P2ZkKwo/0dNk1mENJUdWk8j/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739872669; c=relaxed/simple;
	bh=kN57ERp8Y9kUTSjAPit4bQSVDsUEPxYZREqQRm7B5JA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jpnxpqN+cQdwzEGiAJfsmvLUnmlHDik/lgyuUN9XGJS7V8TGA3yxPd5TXeA9aEyILVYbdtf9tSb5PI+IckbZk8xXHHlncmxucegrwMMCkCM2viZ+tvB5N5A/27nXEA9qWVpKkGLm29sfO0doOl3pR2C6QRufNqdHTmdaa1sW13A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=X7x11O0c; arc=none smtp.client-ip=220.197.32.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=9n2z0wCEyjkNcU3SBpQ+OIPzr8YGZnJEpPBZ6X52Eiw=;
	b=X7x11O0cfhOkh7QqmPdahaBDzQX2VIzz67S8tv3SzAoYQEUZ4Z7ir3Zm4OESP0
	a7ww92AlY+2mNMJAXKk/i+bv4gOGx+uqjXMliyJfEZnVHQlxRFq1HDyGT40Esnuk
	5AwxTTwzdbIMtDC8qLl2giRNZaS2lxlzp9EL2WYJjosGs=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgBXeKB7WbRnvMNhCQ--.20537S3;
	Tue, 18 Feb 2025 17:57:17 +0800 (CST)
Date: Tue, 18 Feb 2025 17:57:15 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, kernel@pengutronix.de,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: vfxxx: Fix the CAAM job ring node names
Message-ID: <Z7RZezqCgwDy10vf@dragon>
References: <20250112124127.994141-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250112124127.994141-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgBXeKB7WbRnvMNhCQ--.20537S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU3jg4DUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEQL3ZWe0S+A3JQAAsr

On Sun, Jan 12, 2025 at 09:41:27AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to fsl,sec-v4.0.yaml, the job ring node names
> should be 'jr'.
> 
> Change them to fix the following dt-schema warnings:
> 
> crypto@400f0000: 'jr0@1000', 'jr1@2000' do not match any of the regexes:
> '^jr@[0-9a-f]+$', '^rtic@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!


