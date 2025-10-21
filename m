Return-Path: <devicetree+bounces-229230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 953DABF5200
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:58:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 664943A19E7
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D49B28726D;
	Tue, 21 Oct 2025 07:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="gfmS6t/l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7E8427F74B
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761033516; cv=none; b=rU2nRGBl4C7phvgRaMeu3Rs3tOWIb3WuKU4dBzIBqc6JsgTfrdjTaCMwxoJWtoJeJlgrtmVEOZ9SSlbQwF+xPSz9i9VT4i24ZxCXeZK9NLsIoAwNkl5Z6M46Z60F1XQz3C6SoTwzTwgXa2juOy4A5wnVaG50AnMYCGgNAyEQGmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761033516; c=relaxed/simple;
	bh=l8EXheNG0qiJbRvPqG/bdePUc2vB38MjhglJX4BKvrQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OB/UiBHclNfrA0CdFPPEms8h2Wd4LP20QHUXm5YW2x1HTkzUPOsxwzFx20StEmqTYPYpU/FS9ESA5d/EdTGw69pHhj2E5rQ5R5VLqAus9lONrZvSCVQIpqovUEx2IjfP5n5fNzebNtEurawmULyWXtEicGBp9P3Bxv0cpURLzM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=gfmS6t/l; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=NGyjkSZ2MHBpX4S/d4N41noq52OEbJg/dosNCzgIS7g=;
	b=gfmS6t/lm5O2XjW2haElHlbO7Ueq+vZn9IEyOS2Dj2blBzcMIOcBF2NyLo8Aty
	tET5fRG7NPbRmf98hA5G5nf46VIFMOHhbEWe8EtfUKD7IPohDYDcAQa3UQcydZUK
	2Hp8erdPq686y2WsfLYMvswsaEd5GIGfvbaJJZa0Y6QiI=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgD3v68NPfdoXq5dAA--.46055S3;
	Tue, 21 Oct 2025 15:58:07 +0800 (CST)
Date: Tue, 21 Oct 2025 15:58:05 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Mathew McBride <matt@traverse.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>
Subject: Re: [PATCH v5 0/2] dt-bindings: embedded-controller: add binding for
 Ten64 board controller
Message-ID: <aPc9DU4zVlJ7eeA_@dragon>
References: <20250918061441.5488-1-matt@traverse.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250918061441.5488-1-matt@traverse.com.au>
X-CM-TRANSID:M88vCgD3v68NPfdoXq5dAA--.46055S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU1-eoUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNg9qz2j3PQ8CUwAA3g

On Thu, Sep 18, 2025 at 04:14:39PM +1000, Mathew McBride wrote:
> Mathew McBride (2):
>   dt-bindings: embedded-controller: add Traverse Ten64 board controller
>   arm64: dts: ten64: add board controller binding

Applied both, thanks!


