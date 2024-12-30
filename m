Return-Path: <devicetree+bounces-134675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5EA9FE36C
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 08:50:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3443A161E30
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 07:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 015441632D9;
	Mon, 30 Dec 2024 07:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="OYM1922p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.14])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F723155345
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 07:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735544999; cv=none; b=ZOQ6N0mA6Imovl5gDqXTQkfR+YTJxfEdVV2sZKIcVIsWMzwIWgAXloTY3gwqYEkO7L+91Nm6/dE2RoJrZIjAOjYoqxqCQ9gFnQVzAxkuXSNIH1x//YGEyVcZiHGDllj+lWtVPcoUgOyEBWzj7S9JMBp97/Kme/B+kQp9AGdMLtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735544999; c=relaxed/simple;
	bh=vyceG+Jy1jCQ/j83YmEe2FiALq+lYcu6uHB00cE+1Uo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WOQ8YNehNAj2WXo4CW2rL+UqKVgV2eTtm1l2I4LYgL/eyWWQxXpJdArtqmjWwNnklZoO9HBFc7Hd7ulm1b7KOnIZn8zrT0hgYQ51ac+KupgrnzSV69Y3RFe5yOF4l6TOLVwMF13eK9WiN2EqBhhmFD8aH5vLQqzFvz2RBCGRWxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=OYM1922p; arc=none smtp.client-ip=1.95.21.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=stkkzQ0NGdLWxEFE8mBuddW732lN8XbJUV0E782b7gs=;
	b=OYM1922pSwyShKq9idwjWUua37d1pRxWhv6A//z7mlnkF8Nzk1FCTqt+iSFG3V
	hEsCEPN83Pm+H80cY03ZorwVfBw/wiIoJkeACS97yLGQLr8Oh1GUR+pwc7hGGfeY
	9GOqNcNfaCXAB4M6vfBRJn+Kxk5RHM20QhlO//6dmG5wg=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgBX+Np2UHJnmRwGBg--.61233S3;
	Mon, 30 Dec 2024 15:49:11 +0800 (CST)
Date: Mon, 30 Dec 2024 15:49:10 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Hui Wang <hui.wang@canonical.com>
Cc: linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, shawnguo@kernel.org, xu.yang_2@nxp.com,
	s.hauer@pengutronix.de, festevam@gmail.com
Subject: Re: [PATCH v2] ARM: dts: nxp: imx6qdl-sabresd: add dr_mode to usbotg
Message-ID: <Z3JQdnIObYJk/rtW@dragon>
References: <20241216040722.21738-1-hui.wang@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241216040722.21738-1-hui.wang@canonical.com>
X-CM-TRANSID:Mc8vCgBX+Np2UHJnmRwGBg--.61233S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUIb10UUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCxjFZWdyEhDb4wAAsc

On Mon, Dec 16, 2024 at 12:07:22PM +0800, Hui Wang wrote:
> Currently there are 3 type of boards (imx6q|imx6qp|imx6dl-sabresd)
> based on imx6qdl-sabresd.dtsi, they all do not set the dr_mode for
> usbotg device node. The chipidea usb driver will configure it to otg
> mode by default if the dr_mode is not set, but some testcases need to
> parse the dr_mode from DT and decide the follow-up test strategy, here
> set the dr_mode to otg explicitly for these 3 imx6qdl-sabresd based
> boards.
> 
> Signed-off-by: Hui Wang <hui.wang@canonical.com>

Applied, thanks!


