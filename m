Return-Path: <devicetree+bounces-108897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDDC9943AE
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 11:09:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EABE81C23EB1
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 09:09:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3298013B2A5;
	Tue,  8 Oct 2024 09:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="RYCe2fbM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0B65125A9
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 09:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728378469; cv=none; b=E+3kkkRgYWbUp5OEDo0MVzxjlWparWjJWZDRW9sUj5D+Qx0SyQP+D3JqcQV6qDDj9xKpHv/eMR77xVK890BwGObBG+LuBl8Iwu0xMVb0IYjHp+XRy83J22O4cqSE2Z+kzBat0wFUPsuZj43yssiJil1IM2+TNE6bwO53AnBJvos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728378469; c=relaxed/simple;
	bh=roM5Af65H0RYv3ctzvjyHxoNbhxadVnU6Iq940/CKWQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PdU8IqZT1Vg/kCZQjKRs6DIIzOVqVQkPUL1+gGH3tZ7r/X5Y9om/5vVDMTg2T5PKBqzwDAl5rFpIdNHdW9ydvQG3O0oANtX/7Wk0zo6fAeWguoDjr6cb0MyZKB4RWSF9Onug+8fNCAijW1tgxjjS9niMIR0CevTPZcYzPMg4+KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=RYCe2fbM; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=uJfk3LVPlc5ov4QEFcX6dPTBEBJ7Jo4YQ7EGx2bmAEg=;
	b=RYCe2fbM3WpW4h8W4soJPxKIMfk15+RbU/lKuHdGFmOmqGBATV7tfts0r0XEWq
	wIn/L00YgXzZO3TiX+imGTKnvBLxREqkWMgrJemJcSm5bqJaFZjRmQgE2a61zlw6
	VLsLtKIuSZ+OhvfYnhUcxLZdHoXroSzcV/qlBTZc8suL0=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgCnxONL9gRnX0PTAQ--.34075S3;
	Tue, 08 Oct 2024 17:07:25 +0800 (CST)
Date: Tue, 8 Oct 2024 17:07:23 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx28-apx4devkit: Fix the rtc compatible
Message-ID: <ZwT2Sx7rlmh6MPq3@dragon>
References: <20240828200254.3196260-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240828200254.3196260-1-festevam@gmail.com>
X-CM-TRANSID:M88vCgCnxONL9gRnX0PTAQ--.34075S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUx4EEUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCRlyZWcEqhjw4wAAsF

On Wed, Aug 28, 2024 at 05:02:54PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> "phg,pcf8563" is not a valid compatible string.
> 
> Use the documented ""nxp,pcf8563" instead.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!


