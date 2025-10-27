Return-Path: <devicetree+bounces-231244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE7BC0B983
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 02:23:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7F1E0347BE3
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 01:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA9C226D4F7;
	Mon, 27 Oct 2025 01:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="G7COedZr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C28B1D5178
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761528204; cv=none; b=UMKmtCM6znc/Hpo9VFZKfFVSf3JAdR/j5270rV6rlKd+Jn5Uncly1QsI30jucvnkbK5+Jc8H3kVTB2yXCM4QTidmq+LBdsIYiPV7kAcjqJswlDSFeaGwhjDor6ztzaP0u+FQXFWQHGrpcHVILUyZZUZnSNep54PPac7j/tx5a7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761528204; c=relaxed/simple;
	bh=c5uqf4jLI4DPolJKk0dAPKHPcxhega9hFIMZQZVh03Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DX8Cdo6DpI3Ys+Icab1zlm7nTSt0Ee5kSCZKbigtYsLcd43K7EBv0ObbnKC+fPyurw8TE9MNzfexA4wCrovm+pEZOnRrKXOvMnvhjetIifzIxyr/FABRK5MdDULnrSBuAvPufaRkCG/Trw5rRHAsorsB0wihvl+Htsr1d2ycl/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=G7COedZr; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=M2AKbo8uyYqUT6bGKiZiU3Turz5hoR6ig9s0/Vo9OEQ=;
	b=G7COedZrvj867AVRkJA20R6AjStpvGME0URsmRlMX6oBpQLVGDc8vLtFPIhzix
	noLUn96M9NDO0jmS9j6vpxt1mDRW9Ns51DT2+J4lVfZo8kbdUgE/35lEQGyvbC3l
	NvHL/qoElzjjxNj9mZOBgeFheGyqrFZ9jIP6BdvQebkPU=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgB3zxVayf5oWZO6AA--.21714S3;
	Mon, 27 Oct 2025 09:22:36 +0800 (CST)
Date: Mon, 27 Oct 2025 09:22:34 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Teresa Remmet <t.remmet@phytec.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Yannic Moog <y.moog@phytec.de>,
	Benjamin Hahn <b.hahn@phytec.de>,
	Yashwanth Varakala <y.varakala@phytec.de>,
	Jan Remmet <j.remmet@phytec.de>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/2] dts: arm64: freescale: Update USB oc settings for
 PHYTEC i.MX8MM boards
Message-ID: <aP7JWuEwL0loYzkN@dragon>
References: <20251001-wip-t-remmet-phytec-de-upstream-v1-0-845d71bb1e1e@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251001-wip-t-remmet-phytec-de-upstream-v1-0-845d71bb1e1e@phytec.de>
X-CM-TRANSID:Ms8vCgB3zxVayf5oWZO6AA--.21714S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUYJPEUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNRxjyGj+yVxsEAAA39

On Wed, Oct 01, 2025 at 02:43:26PM +0200, Teresa Remmet wrote:
> Teresa Remmet (2):
>       arm64: dts: imx8mm-phyboard-polis-rdk: Add USB1 OC pin configuration
>       arm64: dts: imx8mm-phygate-tauri-l: Update pad ctl for USB OC pin

Applied both, thanks!


