Return-Path: <devicetree+bounces-215723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4ECB5270A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 05:33:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1540D6873E4
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 03:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1765B19F111;
	Thu, 11 Sep 2025 03:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="bXCaCvHh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B909329F21
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 03:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757561618; cv=none; b=NAwAAF52TjEIDLpwLO/ElixcddQq6MUydnfz3ve3eWKoxivBR8Vtz7lFvlxOshFBIy08ZSkpaoqijVu4QSyllDy+l6z+p/TQ4cOkSOI727lXnXBgN9G0tjMyiWYqNiwzo+g/YsnxN7QeeOT0tg56rQA5wiPkqdDFXiM/xvjL0s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757561618; c=relaxed/simple;
	bh=Xv7LqoFiazY/1FA5081CUy89DKBDEfG9HSv8i9xRUWM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eWQXpJM/eWGQ8uFbCEtKdnJGYHF/u5JfMNVa5SdC+1ThoGP0IJGrLK0Kk0sdXV5Pvd0+MyeUGNnOMOl+bI/PurUcBhQQjGRj3aL3QqlYjxL9LjEaXI7XZV43+uiJ8y66E3CVBjaTu+L7lo/zWnt+ZH9BsN2m4hJUXU7APPiya0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=bXCaCvHh; arc=none smtp.client-ip=1.95.21.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=w/N4P0dQFX0EiNShkkaQjSdBZSD1JMf6VXokKtscJKs=;
	b=bXCaCvHhgaZtl6WnJ6PdFtKTQRLe2b9PB633zfLNNEbjWVQ05sU4IXZp55N7Rx
	PX+bOT/11xj/iJVF8qtIJKwys4ipRNE4WF6dP36ISSh4Z8a/9GQ1MAq5mjgb7bQK
	LO9GB2LzdxqckIKq0rL3YmQSyWYZL1XCpZJlzgMzrIjNY=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgBHddn3QsJo4KJgBA--.47756S3;
	Thu, 11 Sep 2025 11:33:12 +0800 (CST)
Date: Thu, 11 Sep 2025 11:33:11 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx6sll: Use 'dma-names'
Message-ID: <aMJC91yfcxtSL7e-@dragon>
References: <20250908164431.67052-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250908164431.67052-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgBHddn3QsJo4KJgBA--.47756S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUY73kUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEgDFZWjB-Squ0QAAsz

On Mon, Sep 08, 2025 at 01:44:31PM -0300, Fabio Estevam wrote:
> 'dma-name' is not a valid property and causes the following dt-schema
> warning:
> 
> dma-name: b'rx\x00tx\x00' is not of type 'object', 'integer', 'array', 'boolean', 'null'
> 
> Fix it by using 'dma-names' instead.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks!


