Return-Path: <devicetree+bounces-238367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FE7C5A7C1
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:11:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AD6A14F189A
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B08B2E06EA;
	Thu, 13 Nov 2025 23:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="TkAa9dwS"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C83328C00D;
	Thu, 13 Nov 2025 23:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763075163; cv=none; b=WazMyENSDDVRlsJ4c8foAilRazD5egiMSNtQ43xAqAVUKLHFdElO170seoj3LEWJb+eVFXqrNykOa8NnVbwDhqamJKQTOhlzMhPLKCOL5x0hYsXs97LuZ5zV5zQb8oZdQTucgAqHHoWTclUoI1DZxOF5ySlcvB4SbVGimU2swz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763075163; c=relaxed/simple;
	bh=wxGxg/ASBCj1hc3/+x0ovtKw2jumr4r0H7rDgh88WvA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=V7DZtd92vGQMi94m93jdEY9C6Bu/ZPqTBp7Xs6QFd5hRP2BPY0p4ts4nPPz/vhacwy9o0iicoOyKdyFDGPHw0fI9ZStuZ/JfDyOgHiDAgfaMrlpA+HxTbdZJV/vSlcY+8B9jRZAqADNtHoZTTeBfyWntv3zgnX/CCg9J8SgS/cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=TkAa9dwS; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wxGxg/ASBCj1hc3/+x0ovtKw2jumr4r0H7rDgh88WvA=; b=TkAa9dwSavy/xZMqtksVmrvdXJ
	myhy39HhB9eCcot8Yjp32Xe+nXGCEXxRTdStPpFiSLkva1zQ+pYrdmh49gAhQUMNJbG7fJPKZOqcD
	h7m8Mbse+kr3ozITH0wv66v6NblYF9gERYK4P7mjiiGrYIoAn6QcgVGi1Dh0Xww4POOUWf0x9Gwbd
	bEHYNnTMG6IZvafvv4nVXv1R/E//SnpG+WsCiztTJE/sZKh2pognXlcK8pXuVe8TCnqfY6wk8iLYF
	ljuuA/fM+FqiQkOwj9qN4xWsRedV2DWDf7mGlmEmtik2hHquirnFf6Swi8xE+Fhn5KRLe4i8kr+q+
	lxpAEllg==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgO2-0005gO-6h; Fri, 14 Nov 2025 00:05:54 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Hsun Lai <i@chainsx.cn>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject:
 Re: [PATCH 6/6] arm64: dts: rockchip: update 100ASK DshanPi A1 support
Date: Fri, 14 Nov 2025 00:05:53 +0100
Message-ID: <2041193.usQuhbGJ8B@diego>
In-Reply-To: <20251101120010.41729-6-amadeus@jmu.edu.cn>
References:
 <20251101120010.41729-1-amadeus@jmu.edu.cn>
 <20251101120010.41729-6-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Samstag, 1. November 2025, 13:00:10 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Chukun Pan:
> Enable button, RTC and USB support for the 100ASK DshanPi A1 board.

please split this into 3 patches :-) .

The list above already describes the points to split on.

Thanks
Heiko





