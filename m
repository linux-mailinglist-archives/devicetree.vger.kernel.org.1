Return-Path: <devicetree+bounces-149899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC93A40BB2
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 22:25:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53BA317E21B
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 21:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CAC0202C44;
	Sat, 22 Feb 2025 21:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b="ZSFAjdv+"
X-Original-To: devicetree@vger.kernel.org
Received: from out.bound.email (out.bound.email [141.193.244.10])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7864A1D7E42
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 21:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=141.193.244.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740259404; cv=none; b=OYb4U4yh/RuMWLce9nvVJXLX7PJdiUXJJGaNQB7fbBbtTRfaS8VDr09WAgSXiAaIp2Zcuk+y3sCeB14v1vTkSRo1XoMPcH9UXCCbIdIq8Z0MbR86Q1NjjK+Nmag9/0vUTNrWpwVUaArJjMENBV1MzIlq6djuUIalmun/jBz8X1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740259404; c=relaxed/simple;
	bh=og42Fs9Tioty7AU7UonOscPJJK7LYTsSH2Q3iwEUA5Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NlUE/TPz92Lj9uIzbKP4XxLthtEebleJsgWa+zzjnwV3jhTKrLP/1M+OeHC1iwaBCfcsOloaTyGWGb/g/ypNPlcFp4HHjTtw7ZfngMFF9gkpQDrCizoTQtorNzGukqLRCezsop4TtTUxJWhm+9AB+Na8H53p/h+DVRP5hlgpFbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com; spf=pass smtp.mailfrom=erdfelt.com; dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b=ZSFAjdv+; arc=none smtp.client-ip=141.193.244.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=erdfelt.com
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id 7C96A8A312A;
	Sat, 22 Feb 2025 13:18:20 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id 6507F160036F; Sat, 22 Feb 2025 13:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740259100;
	bh=+ItGVJzpd1QRW4jASymNDd3wly+TTYF2ez5OzcIPSMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZSFAjdv+pu427UJdUHib5bkweP10aVAhDVu9aZwGjrsZ/d06XlnHlttdcPg0Q5iWV
	 e3LKQrSpDU2jsZ6LYf3DuJX68If9Ubl+Wth2lJie0oS0jxGxzxCySmAfDePxSZ82rX
	 6Om4uJqyfZvDVg4DlGruvHzq0Y/sof5wAUJGiA7w=
Date: Sat, 22 Feb 2025 13:18:20 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 4/5] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5
 Ultra
Message-ID: <20250222211820.GY16911@sventech.com>
References: <20250222193332.1761-1-honyuenkwun@gmail.com>
 <20250222193332.1761-5-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250222193332.1761-5-honyuenkwun@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Feb 22, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> Enable the only HDMI output port on the Orange Pi 5 Ultra
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)

I've tested this patchset up to this patch. I unfortunately don't have a
way to test audio on the HDMI port currently.

All of the issues I had previously are fixed in this patchset.

Thanks for the work in putting this together, especially without access
to hardware.

JE


