Return-Path: <devicetree+bounces-159348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F807A6A680
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 13:54:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C723C3BC898
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 12:52:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55DDA156CA;
	Thu, 20 Mar 2025 12:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="oMmVsm3j"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA2AAF9EC
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 12:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742475165; cv=none; b=ftYq8Dcw5LCe+Z+T1iu+lmyhGPWPPybHBfAKtent6bOezQPg9DxhAr/KMKiKwDxHZVreApXESSad2GJCPP7ZFlSWb+WsrH6R5WNqz5gdr25yLSdFTHYY5IH6Mu1JTLphRs3SVUU6UnZO19Wotf3GTyVG4h2Gh91sExZN27Nnqw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742475165; c=relaxed/simple;
	bh=vukR7+IuxkKBgbteU/gaJbUOeMx1AoCYmVB848dUrYs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qejJScehe3qtSCJt0JO/Li+6Xls/BW/kHPThj6tlGVg87nzO/NAVdvoJImYIorl3320groJKVvMk/bpbtYHp08f8Hpp3/WrUcW4RRve905pVExZP7ipfFMtFoGrCTXEtsQesbGnz+0EaWXoCIESP4PDyCtPUVFdoWdIhUoTkjWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=oMmVsm3j; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=FR+eQ+WzJL7Tjxm3+Hta3Kxi73aadFo8zNaQFLEErPA=; b=oM
	mVsm3jgLmdjHVv4DBBRVxK2mZA9OtnEVTfxPF+4/FNzEz8qjwBcF8gynanENUUD5qGys/22hH9fOj
	kraGR7x8uPtaKhkDd4ep78y9ba+vRvapAhjrfNOYocmcnUao/p5ee1gl6P49U2dGN/A10YCPk8Xlb
	a6CrANh/FoIhnmQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tvFO0-006TYA-Hp; Thu, 20 Mar 2025 13:52:36 +0100
Date: Thu, 20 Mar 2025 13:52:36 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: Correct gmac phy address
Message-ID: <a9df5da5-b37f-4d59-9cb4-1285fe25e3a7@lunn.ch>
References: <cover.1742331667.git.ukleinek@kernel.org>
 <6b8ef7e37e646f4cd399ceb2f46017644d76da9d.1742331667.git.ukleinek@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6b8ef7e37e646f4cd399ceb2f46017644d76da9d.1742331667.git.ukleinek@kernel.org>

On Tue, Mar 18, 2025 at 10:08:45PM +0100, Uwe Kleine-König wrote:
> The Motorcomm Phy can be talked to on mdio broadcast address 0, but the
> actuall address is 3. Adapt the reg property and node name accordingly.
> 
> Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

