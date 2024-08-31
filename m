Return-Path: <devicetree+bounces-98753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACEE967209
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 16:01:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B43261C21821
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 14:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 309B95661;
	Sat, 31 Aug 2024 14:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="YGfPUtsu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F13FA932
	for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 14:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725112895; cv=none; b=SWaS5xCk1/CltneBwlDxDlglyLUAqZ2JepkRWRjYOt7pUbbDJmFpF6PGQ2httYNswhOlopkXhK65e3/pdwqBoVtYUXkyL2/2/mogutu6+Jm+mZKtqSwfzHEAt4Ld4+t2/csDwK2aZfmn50KoXZXcEPeAgisVSVBs4cEj3H/SOvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725112895; c=relaxed/simple;
	bh=QjQDFQdev1PUgw0wpHUZwTGG/QiJCCIu3SnUelO4DU0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m9zm16xsRUHj514zHlYZFvpYtbzdC/cQRykJ4NrdZGY/6whTwdO+gf/gcrhfp3n1wR0bqY9puskTRdMQiMc5FbVDDvXJvafWcDmQOV1tFYPoUoOWFHpgALjObPxOpvZrwvgYjXe3AMTDN/RjERP0TUgwWNlMdfxz/Ezz/3WTEfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=YGfPUtsu; arc=none smtp.client-ip=1.95.21.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=kYBRmSM2q17NRHJP1DMlKZAeXJ7Owt7LJaRmOesaLc8=;
	b=YGfPUtsuUaUJz5jeuh+tlj3BJ163CBy7CauNDp8UfpEqostIwJVqCLlKtEsBXo
	BGgrL2VjmBbFaFp7tBFC5GQLTpKTUEDSHQCdPAYlgwJKEH6h89TnJJWDzdO+hq3n
	TxP+9BGfTcl/tv9zm969FiE9MP1V8C2hTYtnzdVt0qxlA=
Received: from dragon (unknown [114.216.210.89])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgDn10AjItNmywY8AA--.11188S3;
	Sat, 31 Aug 2024 22:01:08 +0800 (CST)
Date: Sat, 31 Aug 2024 22:01:06 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx28-apx4devkit: Fix the regulator description
Message-ID: <ZtMiIp07FdGrdO5b@dragon>
References: <20240820002435.1411201-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240820002435.1411201-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgDn10AjItNmywY8AA--.11188S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUIiFxUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCRxMZWbS+P5OWwAAsb

On Mon, Aug 19, 2024 at 09:24:35PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The regulator should not be placed under simple-bus.
> 
> Remove it from simple-bus to fix the following dt-schema warnings:
> 
> 'regulators' does not match '^([a-z][a-z0-9\\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
> regulators: #size-cells:0:0: 0 is not one of [1, 2]
> regulators: regulator@0:reg:0: [0] is too short
> regulators: 'ranges' is a required property
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!


