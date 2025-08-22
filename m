Return-Path: <devicetree+bounces-207997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF16B31455
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:55:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36B9358499B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71A512F83DC;
	Fri, 22 Aug 2025 09:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="JkxhnaG0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82DEF2F8BC0
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755856110; cv=none; b=IF1UCgFsJJV0lyH1lDB5YgN0CBehKqfslVxYv6rijCBvfxf/W7zvXzVV8CjGIqrtDlYkkrmg9wEXZNIhE7QPVzTpzOk0UKqDAE+uqEzViGTkwa1CntrsmE7bOt2Z/K7tJlL1WedoRDOrIpMK4ign8Pq579+yHngcivixoeUnsJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755856110; c=relaxed/simple;
	bh=2QsJu3yXboIRRm8gyW7Jt8dyGncvWnz0qkHWqzHKbvg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n+ZOEMP5dGwcpo4qk0fRQuhZDEy8nVlSjcivU9hAsVPa7eh4Xrq2hEmjuq4NzH5zxWlSJLC4TkOpoepyXlkvgHq87GYPcS5m+/3ThmBlJxAFExWlf7OzyLRGxVQF13iCynDS/qm4FQo1ho30ON+1ijf2VnbrLvE0I9Qm51xxTBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=JkxhnaG0; arc=none smtp.client-ip=1.95.21.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=TFE1vXshyXTaSAq75tk8hvRjBufHsERPehCPxKwyz/Y=;
	b=JkxhnaG0RP/J46xlp4ny1LqUom0swzep239Csq1u8pUeX38n6/Q/MzGwcAZOmx
	HeUHK8f9P6Sx/kXcL2IMGW6z8a8ZIY8ununhpvg1ytT13FaM1J/6KMuZARezHxuk
	yGFshu8X453OrPSS8sWknOY+PKNoPkxaAwA7nHHgM6kPY=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgDXDvfJPKhoQqEoAw--.8192S3;
	Fri, 22 Aug 2025 17:47:55 +0800 (CST)
Date: Fri, 22 Aug 2025 17:47:53 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, kernel@pengutronix.de, festevam@gmail.com,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: imx95: add fsl,phy-tx-vref-tune-percent
 tuning properties for USB3 PHY
Message-ID: <aKg8yXnj3AMfZ5Zq@dragon>
References: <20250821110828.20980-1-xu.yang_2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250821110828.20980-1-xu.yang_2@nxp.com>
X-CM-TRANSID:Ms8vCgDXDvfJPKhoQqEoAw--.8192S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU2LZ2UUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEgexZWioJsE4MQAAsv

On Thu, Aug 21, 2025 at 07:08:28PM +0800, Xu Yang wrote:
> Add it to improve USB signal quality.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Applied, thanks!


