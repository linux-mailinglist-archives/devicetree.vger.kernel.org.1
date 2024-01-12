Return-Path: <devicetree+bounces-31621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 943C082BFF1
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 13:47:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40C11286193
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 12:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B31A59B56;
	Fri, 12 Jan 2024 12:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="p3KfVdDv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B8F59B54;
	Fri, 12 Jan 2024 12:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id E4B9360884;
	Fri, 12 Jan 2024 12:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1705063647;
	bh=tWw6pJawttYHqQQkANbFqRsenKrpMn33KX4nhgz7A7c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p3KfVdDv5BbL1lsUaHQlnNhCI6Ofozrne67Ki3QHqCDmB6agegy3dirJxXBZxCVm8
	 zAM4A3mEqZn7gh1RcngHDk5cNYTbM6SWznHPcz0SM8RgQbGJKRyok88LKWPar3FfwC
	 HF0kGz7Z975VxYr3Bv9NwwmE9AXzid6yr4bymInANKUW+CkViGqkQcqFIaMcQFcwF4
	 zM8/jLsY1p46oVHc1YJ2ed9biYi6pDbhtQCmCs+ProWzYVaVXBa2pZH1NETSJwz9cw
	 T/Wk7eBZ5W9g8FzczSBN7S3Rh+u2ijR3fK4DvNvtGTAYW8C520fSUWUjCfALdjAkcI
	 UD0mKggpG+1Cg==
Date: Fri, 12 Jan 2024 14:46:56 +0200
From: Tony Lindgren <tony@atomide.com>
To: Nishanth Menon <nm@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Ayush Singh <ayushdevel1325@gmail.com>,
	Jason Kridner <jkridner@beagleboard.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Robert Nelson <robertcnelson@gmail.com>,
	Wadim Egorov <w.egorov@phytec.de>
Subject: Re: [PATCH 13/16] arm64: dts: ti: beagle*: Add MIT license along
 with GPL-2.0
Message-ID: <20240112124656.GN5185@atomide.com>
References: <20240110140903.4090946-1-nm@ti.com>
 <20240110140903.4090946-14-nm@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240110140903.4090946-14-nm@ti.com>

* Nishanth Menon <nm@ti.com> [700101 02:00]:
> Modify license to include dual licensing as GPL-2.0-only OR MIT
> license for device trees belonging to BeagleBoard.org Foundation
> platforms. This allows for Linux kernel device tree to be used in
> other Operating System ecosystems such as Zephyr or FreeBSD.
> 
> While at this, update the GPL-2.0 to be GPL-2.0-only to be in sync
> with latest SPDX conventions (GPL-2.0 is deprecated).
> 
> While at this, update the copyright year to sync with current year
> to indicate license change.

Acked-by: Tony Lindgren <tony@atomide.com>

