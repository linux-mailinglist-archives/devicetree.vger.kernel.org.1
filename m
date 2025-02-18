Return-Path: <devicetree+bounces-147832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6969FA39830
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:08:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01B863B455E
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 10:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1837122FF47;
	Tue, 18 Feb 2025 10:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="O7Woy1Y6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92AFC230D08
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 10:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739872969; cv=none; b=D9VVDbLZriIvGOlvuSr9rdWIHa5f0ChoKcILGWXuWfTh9ZKJWYI6+BMkeo5+81fWwoPgNMUJY+FdYQhr2mcktBOU7aiGtpNfhoPhmF03/mQJNbFsyENLbqrqXb4hrCxATnGEMzku87r+CgeWyd4nFAlvvWUobGXmh+PWzDXp34s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739872969; c=relaxed/simple;
	bh=yGAS9BJDuUiHX5bsVDV2uJP5vXig9Fk2mk29K2nc028=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CWADgXRQmpctD7lSThFPvOuAit4afAxuTwgu3Sjf/1oVlNrlqXqzvtMEv0yLkWy+OWEQ3PgIWKCG4r2U3CYaz4DWEcO7YeS+uNEb3U92H/h2Grwin+I2fHo714UANwHJyQ9p5lwPG38h9h7FTeNKbdygltGTjIoSbBPnrcs8EnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=O7Woy1Y6; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=zaXVPd8t0VO67w3iZYFtfLXnSe8QC8xmMPBwsH0TuvQ=;
	b=O7Woy1Y6fI1cNidy2k135tVAb7Fp/6WiaMGPD6RhQWIyc8/2aUF9eKC637+Yxe
	QujN/GV3PqtH9pZrbXJ68ReIFmVa2hklGpGRthsKVFuSpON9tejdk9PsXlVrVXPy
	Oyg+Hfrv5TMBKcoAeIAfxwP2P25lB1J9a60aJdmD4FzEw=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgCX3MqnWrRnpNZhCQ--.20227S3;
	Tue, 18 Feb 2025 18:02:17 +0800 (CST)
Date: Tue, 18 Feb 2025 18:02:15 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, kernel@pengutronix.de,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 1/2] ARM: dts: imx5: Fix the CCM interrupts description
Message-ID: <Z7Rap8/l2/V5scVU@dragon>
References: <20250112152745.1079880-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250112152745.1079880-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgCX3MqnWrRnpNZhCQ--.20227S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUcGYpUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCRn3ZWe0TrUtvAAAs7

On Sun, Jan 12, 2025 at 12:27:44PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> On the i.MX5 chips the peripheral interrupts are represented directly only
> by their interrupt numbers.
> 
> The CCM nodes are not following this format and cause the following
> dt-schema warnings:
> 
> ccm@73fd4000: interrupts: [[0], [71], [4], [0], [72], [4]] is too long
> 
> Fix it by passing only the two interrupt numbers.
> 
> Run-time tested in on an imx53-qsb board.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!


