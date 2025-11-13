Return-Path: <devicetree+bounces-238361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AB48CC5A76A
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:07:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7D3B3BA443
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED2BB327216;
	Thu, 13 Nov 2025 23:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="yJAebDMB"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5510D326945;
	Thu, 13 Nov 2025 23:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763075081; cv=none; b=exmYbPfPIs2YgbeeHoCRWTy58gWUyPGWEJtjs0GAVohVOCBBZ96RPOjtFoZoXwTrXrEC2bC/grcXx0DgI6Hetusp95FKNQGA8LZvUeUNqrPuf19g/+8EZCHrOk/clniC6R4L0F75CVx6VKGPDTYKqZJPvA7isr+wArQBTwNUxkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763075081; c=relaxed/simple;
	bh=LfbbqMts6RTTqqndOf6wTqN+GEoRwm5hvwX+B8j1NhE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OurGB01huQvTMrbpGGdgFleH2rOkhwpmBagVUQ02SFIwG8YJbjxJoxHrjJuC1s3nwVDRLQw1tZ5qx+yDvg8rn40DDp7D8YrBRTfyV3kBDG2od/6zicuABQ8uoBSKVCKAyno1f3gefnRmBMZdGx9VXjIfhKPmRxVJdsGUPuw5TXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=yJAebDMB; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JL+VtOL6DYJB3NAllQYSZj9/uY1KVCe8b5VDpBtERJA=; b=yJAebDMBYxRxvsjq7HcGgwGhab
	CaBNingfZ7PauQaZGjSlGXGCjl4pVpfGghExv9zRRkxVK7IxnwiVBzMTaItieCqcedIEBnP172M4F
	boOLWbfiz4IdL0msn0qn++ZWacacS9krRdAjXVkiI52mH7SrKLv3pm2h5BQOb6iKCShKoaBwYPBnt
	xWcv6H4AxRHrdswr4oT7TVHdZHrjOtl9IJ+MnaUmCcegRGWq36ac+cKSOJZHJcv/0jJSLijla7xkp
	0naebiXpXITDuR8qomtfFQmEjq9cWD9qqR2XB9BhlTcUz8vfnVVfrJaskviwqREl6/WwV28zNjS7L
	pxNvQI5Q==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgMl-0005bo-Er; Fri, 14 Nov 2025 00:04:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] arm64: dts: rockchip: correct assigned-clock-rates spelling
Date: Fri, 14 Nov 2025 00:04:25 +0100
Message-ID: <176307502904.495066.10732097835351829050.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <92714b6c-6c0d-4a10-afe4-73ed313c87c0@gmail.com>
References: <92714b6c-6c0d-4a10-afe4-73ed313c87c0@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 01 Nov 2025 16:35:26 +0100, Johan Jonker wrote:
> Due to some copy and paste from the manufacturer tree the property
> assigned-clock-rate is missing a letter "s". Correct spelling to
> reduce dtbs_check output.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: correct assigned-clock-rates spelling
      commit: 76f4f7e04c213eff794ef6dcb1f216a57c6f2a16

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

