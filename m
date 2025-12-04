Return-Path: <devicetree+bounces-244162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AAACA20A8
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 01:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3202301E16D
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 00:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 332B01A0BD0;
	Thu,  4 Dec 2025 00:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="doUBzLPz"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBE519D89E;
	Thu,  4 Dec 2025 00:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764808202; cv=none; b=XTle5aVtGrYXtfH+SRcWVhfLVHvF+G/go9myT3SvvaYfhPhb8Oc3b+XAG99rXhg+5ZUXKrStiuZTt8zfzYcWyPPU9wYVgMhoLbATBZ7JHRBSdXT4p9S+S24ZyQAF6jATr8kKw03ySeXbYkVeVAn+pu/Exnkpy6VRY60PXgKg27A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764808202; c=relaxed/simple;
	bh=u0fjnXmCWxm5IxgvFvChMpcsqXGVNOXrhsSGvXxtjUw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DsT6JGCSkpAVlBQ8Kzt3Dk3LZ0cW1zQi/Vih7KCKKq9jDVdO+ZUBsE1rR+2CvNLLwy6j5jPL7aJ3E5gEI/NXAG33RcO8TPtYVIDALSn/Fx56tB6XVEMVyuwvcD/05fkZNKTGajoWjkdTuSSFOB4CklnjiV5PLpcPRLdpTxTVmYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=doUBzLPz; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1764808198;
	bh=vWBsNUAQJIiGx0STKoYuLr8WVpYlwo8t8SdzJPcQFDQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=doUBzLPza/HGmbXlMjkGYgJH9J3XGP0tOvNLFlG+2hodaoSzhigj/6guKQWwq5h0K
	 QGcU9DaIIuGaix4BL40TQpecxf0jLfcNpltp6Oqi5S344wKqq1RTlXE517s0zyTfWo
	 BQKjnmitUEpkumV4dZmPOPHRomMJmVyBrSTozxK5L+hDnGq0FWvO2TfGy+kSraiPmN
	 nVJwwU3jeYMMGihBl6l2QkaZ9SrMZJ07I91cPlldkzhz/gyrnWXGu7W/jjwXdLjmnP
	 mERV0shEXTBP8l8IH7VCmXiHCexozLwRJDmnG3jg1sDrU0zngz/kmW3ERo6B7WHtZK
	 mTZ5ht8aTUVHw==
Received: from [127.0.1.1] (unknown [180.150.112.216])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id AAAD0706D2;
	Thu,  4 Dec 2025 08:29:56 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Marc Olberding <molberding@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20251126-msx1_devicetree-v5-0-e508d13e2dda@nvidia.com>
References: <20251126-msx1_devicetree-v5-0-e508d13e2dda@nvidia.com>
Subject: Re: [PATCH v5 0/2] Add device tree for NVIDIA BMC MSX4 CX8
 switchboard
Message-Id: <176480819607.976941.8757303196020007882.b4-ty@codeconstruct.com.au>
Date: Thu, 04 Dec 2025 10:59:56 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Wed, 26 Nov 2025 16:43:05 -0800, Marc Olberding wrote:
> Patch 1 Adds the binding for the MSX4 CX8 switchboard
> Patch 2 Adds the device tree for the MSX4 CX8 switchboard reference implementation.
> 
> This is an Aspeed AST2600 based reference implementation for a BMC
> managing the NVIDIA MGX CX8 switchboard.
> 
> Reference to Ast2600 Soc [1].
> Reference to host architecture [2].
> 
> [...]

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


