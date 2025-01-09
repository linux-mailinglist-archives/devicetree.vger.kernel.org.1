Return-Path: <devicetree+bounces-137028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B79AAA07495
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:25:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBB04166513
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB9902165EC;
	Thu,  9 Jan 2025 11:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="OQ9QTgk8"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4024DDDC;
	Thu,  9 Jan 2025 11:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736421946; cv=none; b=u556gE5A46XkUpxUcCJbf3ow2AIiaOxjp9CoASCdjqJOTJJfYPpCa34FmWLdfKDsPN0+MKAu2dlA3EUJXo3nvq5iuS8OfWmk7S9+WW6SyG6ro1kxxcT3gRjnsWOBUu4eytzUuUOZcQjnKOA5Sj9gm3mAXPNzly60UufZiLRkOaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736421946; c=relaxed/simple;
	bh=iqXpgp2fGvu3tg/mddpVycP/Hki4wjs3IgZaA1W/y1g=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=KMpnrEwnsqjzcFjLGdNx8mGie+d2JD8H5X1NYtJpl+lF1WfN/FCRxqHZ6dHmBInl5B5O2ZE5MLdWScjhj24YIgBZCWVpvfskkQZ17aAZH9rO1XNBWZ82GLAH/HPwjry6Q41Xi3gYkFiMBPay0y0S/XeEvbMiWJ5D0ijQ8H7Djho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=OQ9QTgk8; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736421943;
	bh=iqXpgp2fGvu3tg/mddpVycP/Hki4wjs3IgZaA1W/y1g=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=OQ9QTgk8pzTbDRLiIw7wpB3DR4020axAGcDQUbSskCYfPjhlF/hFGEDxQQft65HJT
	 BgzdMnLVdF6+w6SVhedOWjAmIpwDpAC7nbz8QjSVcilHGTk7AZO3pbkSk8L+TcSYLo
	 jRWBadIsJ5VLiU9+fmPi1CNAgfTXyLzs/Flhwg43HgwchyMRuo88wE1cPwn4APjxnv
	 cOl0y6pSeO4dHLvGpm4wdHwype48vvW4sBc1RGU27tOIa+TAq5GXNnDoAlV642dYYY
	 9B4cm0ftStMXKmcZ9SBlECotbqYaCpyI5JRSZhwJF9jQmo/nX71uVokF+sOXL2QTnJ
	 5QJP7lnAFgztw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9F88417E1555;
	Thu,  9 Jan 2025 12:25:42 +0100 (CET)
Message-ID: <a93249b1-b550-46ef-9ad0-0465916cd7af@collabora.com>
Date: Thu, 9 Jan 2025 12:25:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: airoha: en7581: Add default partition
 table for EVB board
To: Christian Marangi <ansuelsmth@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Daniel Danzberger <dd@embedd.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, upstream@airoha.com
References: <20250105150328.15172-1-ansuelsmth@gmail.com>
 <20250105150328.15172-3-ansuelsmth@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250105150328.15172-3-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 05/01/25 16:03, Christian Marangi ha scritto:
> Add default partition table for EN7581 SoC EVB board.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



