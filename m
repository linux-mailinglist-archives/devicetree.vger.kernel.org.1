Return-Path: <devicetree+bounces-31379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9477D82AFC2
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 14:35:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 486A41F23F5F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 13:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05D1A179B3;
	Thu, 11 Jan 2024 13:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="sGG1vr+s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFBF617989;
	Thu, 11 Jan 2024 13:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 523536089B;
	Thu, 11 Jan 2024 13:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1704980131;
	bh=spHBxL0T5QVtiotbfLvZE1HJm4xym++up4FJ1+AM8Bs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sGG1vr+s2ysVGTKGRniHpF6qqkvBc46VzszE+/9KJNqIrzv2RpnswlYRvm4iAWIv1
	 Wqh5VgTrZqDv9OXsenP23W/9DZ//vfRuC/R2/4C0kYiXBsLBDLGfrkzeQilwW+fS5m
	 l+nLeDYhWu5mNSASKPyGezLbAjfOowCjUnJyD0VbW9Li4AVqTiHpE9JAN+Be88Yu97
	 fSwfzke4x9dKAPbqUzUrQh4BmEQ3a+7uvJs9TDv6Td6eT/AlMFOAqs+vJuz/FcS+Pu
	 MFpEicvKetpTAy5Hfqr2sGxzQsE9m6QHtnaaFgc1tsTemuF1T6YA1uTGb6Yo5VPIHY
	 q1RoK6SBCJFFw==
Date: Thu, 11 Jan 2024 15:34:56 +0200
From: Tony Lindgren <tony@atomide.com>
To: Nishanth Menon <nm@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	"Alexander A. Klimov" <grandmaster@al2klimov.de>,
	Jan Kiszka <jan.kiszka@siemens.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
	Pierre Gondois <pierre.gondois@arm.com>,
	Rob Herring <robh@kernel.org>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 06/16] arm64: dts: ti: k3-am65: Add MIT license along
 with GPL-2.0
Message-ID: <20240111133456.GE5185@atomide.com>
References: <20240110140903.4090946-1-nm@ti.com>
 <20240110140903.4090946-7-nm@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240110140903.4090946-7-nm@ti.com>

* Nishanth Menon <nm@ti.com> [700101 02:00]:
> Modify license to include dual licensing as GPL-2.0-only OR MIT
> license for SoC and TI evm device tree files. This allows for Linux
> kernel device tree to be used in other Operating System ecosystems
> such as Zephyr or FreeBSD.
> 
> While at this, update the GPL-2.0 to be GPL-2.0-only to be in sync
> with latest SPDX conventions (GPL-2.0 is deprecated).
> 
> While at this, update the TI copyright year to sync with current year
> to indicate license change (and add it at least for one file which was
> missing TI copyright).

Acked-by: Tony Lindgren <tony@atomide.com>

