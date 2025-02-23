Return-Path: <devicetree+bounces-149922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EB9A40D05
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 07:49:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F3813BDEAD
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 06:49:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 229231D7E47;
	Sun, 23 Feb 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="UgrXzXR7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2037B1547CC
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 06:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740293393; cv=none; b=ia2iLwOpCwiWioatHtBgUYa6OvolUCmKMeHD8cjQscVf47S6uLLVmKd0JEOPn32zGVWo6DjuyRa+DdPsOgAjsFrmfh75mhCdSLDaA3nHqS8KQMucCY7xWV//RCbCb3xbrhxY7KjXivZ6xT4Aj8JGKgMSZI8HA0q27vExGJabvaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740293393; c=relaxed/simple;
	bh=Uf1MZITilGaASYnNj5ICRc53PqfJTmltV8w+ay9n87I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nwj5PJASupedRh9GuTgtA0YtM8jGQEiiOuVOpDj9pDwfl9H1nkTYHhADHKDaOUQ4xaSmHWray0Bo6ABiWEV8waxsaKgBDwoQ1cbVxilxv42wIGszv+AQ/QPGjfyiv/GqZwHtnKNPchD5AetJW0g1tdCz935Il+OFeJUr0oaeeBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=UgrXzXR7; arc=none smtp.client-ip=220.197.32.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=7nkyzhUAIUILTehy2NCed83PYthn0cUXhH41BKltKmU=;
	b=UgrXzXR7cRT8tR2FkAsO2LRawUq5GElco1X3tJXMpFioNkaIyfSQRPuZIi1QEJ
	YPVGkVFiZ/Wg6SWANKfz+kzKP6z8DUC+bMlGL2dnNA5xwdvhjrDs/c4nrtUASYiu
	xh5MfToa7LVgSetW/S3dAIn1+rgPYzMRfFgS1z/ZjeUYU=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgDXDtT6xLpnBAiLCQ--.21546S3;
	Sun, 23 Feb 2025 14:49:32 +0800 (CST)
Date: Sun, 23 Feb 2025 14:49:30 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx28-sps1: Fix GPIO LEDs description
Message-ID: <Z7rE+kwcEvL1LS5b@dragon>
References: <20250203173020.39830-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203173020.39830-1-festevam@gmail.com>
X-CM-TRANSID:M88vCgDXDtT6xLpnBAiLCQ--.21546S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrKryrCrWrXrWfJr45Gr4rKrg_yoW3ZrbEkr
	WUJr1kuw4UZa129a43AF1Skayjkw4DCry3JrW3GwnIga1Ik3Z0qan2qr45AF1UCrZIvry7
	CFy5Z3s8J34S9jkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8d9N3UUUUU==
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEgn8ZWe6kuGqOAAAs+

On Mon, Feb 03, 2025 at 02:30:20PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to leds-gpio.yaml, the LED nodes should not contain
> unit addresses. Remove them.
> 
> Also, 'default-trigger' is not a valid property. Change it to
> 'linux,default-trigger'.
> 
> These changes fix the following dt-schema warnings: 
> 
> led@1: Unevaluated properties are not allowed ('reg' was unexpected)
> led@2: Unevaluated properties are not allowed ('reg' was unexpected)
> led@3: Unevaluated properties are not allowed ('default-trigger', 'reg' were unexpected)
> leds: '#address-cells', '#size-cells' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!


