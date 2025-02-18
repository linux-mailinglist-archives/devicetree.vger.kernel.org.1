Return-Path: <devicetree+bounces-147701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E34BFA3926C
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 06:13:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2C13188E42B
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 05:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3424F1B0403;
	Tue, 18 Feb 2025 05:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="nuwmxyx3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CAF0EEBD
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 05:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739855595; cv=none; b=bn2fb1Q+iiv83+oIGyx1Pbx1CmIpIITfYe9a1h7NkyxilwWNQWRIawqd4AL6q3UEUqh7aDZfA+Uu+lh8Ce2ZndH1idTclQk86qr3Vd1i4eNeROSwDwLgqcERiNUljc98q58V0Cc2eCJNGW0HW1B8yIkdVBEGIdxknATzjFVm0p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739855595; c=relaxed/simple;
	bh=sRa/gbFzbiBlU2g2QKwF64fDDQ3CVOMFfgbD2eBGdNQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dzPSWM+tJ6V4I21tYlRcT3SNHLScnfPnuXzdDQ/Va+pUvkIyVSt669VQFPgIZhi4pXTTiTpPFDb/rcTHfaEoE7LcUqqvTfNU4DixTPjgTCdho9mejL6rftIIlN0tlj4qD1gECKHO+E4IAqhIQYp64bhL5m/9xczDLLSnTT/Erkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=nuwmxyx3; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Y3IbIwUSsGD7lBmeM/Tdl0GN6/ZnMLYvURcsbab4MgI=;
	b=nuwmxyx3wQeEfAJK6INgoVlW4fxPlXxv/03B3IoRMobotyO0AtEX1mdemwfKkM
	+0AfulxCuBfEe3ArFVTMApgsOubNk2g4QHuxxegYESdW+7xvwYg42sdMKSZ6XNy2
	6WuOYWia9j1+ERM1/Zq4q0B9T/5tE7MltIhJ/lVmHAj7M=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgCnrgjOFrRnV1AjCQ--.17866S3;
	Tue, 18 Feb 2025 13:12:48 +0800 (CST)
Date: Tue, 18 Feb 2025 13:12:46 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>,
	Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mn-bsh-smm-s2pro: Remove invalid
 audio codec clock
Message-ID: <Z7QWzlQm2NVM+skd@dragon>
References: <20250106165116.2093458-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250106165116.2093458-1-festevam@gmail.com>
X-CM-TRANSID:M88vCgCnrgjOFrRnV1AjCQ--.17866S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUs_OzUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBBz3ZWe0EhkQVQABsW

On Mon, Jan 06, 2025 at 01:51:16PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to ti,tlv320dac3100.yaml, 'clocks' is not a valid property.
> 
> Remove it to fix the following dt-schema warning:
> 
> Unevaluated properties are not allowed ('clocks' was unexpected)
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>

Applied, thanks!


