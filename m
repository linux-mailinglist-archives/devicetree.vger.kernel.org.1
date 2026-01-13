Return-Path: <devicetree+bounces-254680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB0CD1AC2B
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 18:55:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 96A3A30216B4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:54:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D425B393DCE;
	Tue, 13 Jan 2026 17:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFtAHdmN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E123939BD;
	Tue, 13 Jan 2026 17:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768326897; cv=none; b=t8dJLYH3NB9DLE1C9a+DfMWSh3tRfrk79xQ7GBuZeIcoasp9ylrjltqpZbaLpii12ns7SWubub2FvGZ5beN+kzgCBoPLIV/VNz6uGt1xyipXiaHGs5uMEB4cN/1H1t/XCXnu+ao7zk/BL+lMJPPzJJs8PWL1XyMyMAF4D4HELII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768326897; c=relaxed/simple;
	bh=swFqSrmMaVqaUOrIkYyP1zmmwSVGUtIlFfP+fwGyzhw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=MTrM2Oly7UCTEZZR7fsSRlf6xmQT6wpcKlFpT4nGaa7v47X7WJ3vJjvIzm2c+6f8y4XiQXgvo2ee/p7QcKR1y2/axXmePcvoDxInTA6/U2J+PgynNW+EA1hyRLS+xHckbQYZuZa5k+/LZoPwvt8ZFsDudeXJ9XS0Xp0r/Y+ZT/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFtAHdmN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35464C116C6;
	Tue, 13 Jan 2026 17:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768326897;
	bh=swFqSrmMaVqaUOrIkYyP1zmmwSVGUtIlFfP+fwGyzhw=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=XFtAHdmNcaxgAW3bgYH/YC/quo+lHw1NwTaf/7R3l36q8RF2oKyXiKOuqzFpI6rCV
	 Wpp2z6dG9bBmBWhPM5ZmhiOvXTS+Lh2vro+SyUIJRZvj7uCCWKYw+QuwQ0vGujhsjt
	 FxVr3GuJFLAaPuaS5Pnuq8ame/GaSsncSbvzdwt1KV/FJzF6nli2GWXWNdFYO5IjnP
	 OOVCFPXVyu9G+hnnECDk0TVTRbjfzLk8BcizswEIofs5j6/aD3svQockR7CdHF4ZjI
	 kPOUrW9pM4lF3sDb/C/ZuFhH2wZOdKgX0c89Qnk8VAoBa5k2by+A6zN/DY3HSlmWVx
	 1t9PApJmc9blw==
Message-ID: <e781a5d3-4c38-4547-89ba-168c6ee1e018@kernel.org>
Date: Tue, 13 Jan 2026 11:54:53 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: socfpga: agilex: add emmc support
To: tzeyee.ng@altera.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <df9d1dbd52f6b21d660e6f0910215aba1e6a3841.1768187095.git.tzeyee.ng@altera.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <df9d1dbd52f6b21d660e6f0910215aba1e6a3841.1768187095.git.tzeyee.ng@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/11/26 21:35, tzeyee.ng@altera.com wrote:
> From: Ng Tze Yee <tzeyee.ng@altera.com>
> 
> The Agilex devkit supports a separate NAND/eMMC daughter card. The
> NAND/eMMC daughter card replaces the SDMMC slot that is on the default
> daughter card and thus requires a separate board dts file.
> 
> New eMMC dts which is based on the existing NAND dts, which is
> needed to comply with spec in which eMMC board ID is designated as 2.
> 

Can you elaborate what you mean by this? I don't see a change that is 
related.

Dinh

