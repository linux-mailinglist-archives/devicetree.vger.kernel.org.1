Return-Path: <devicetree+bounces-48037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CCD86FCE9
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 10:16:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C272928332E
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 09:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 428EF1B7F1;
	Mon,  4 Mar 2024 09:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="mJjG1n0j"
X-Original-To: devicetree@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90F86210E9
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 09:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709543776; cv=none; b=B+cZRaa2dNi4cWFMm/Xaq2lfK1xeWvkXOeclgxkJJaqW9ONQqftwBWx0clyjRjikYRQurLQ6Uko11VNX6HCKnc3wU6UMudpkJo3GyOD9uiYZaB3hDiYLQk2amB2geJJyCkOx2Co4/4ObAXgzl1GYPCFkjlYzjmN6hgRBaPlpPao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709543776; c=relaxed/simple;
	bh=/TowS2A1RoGnZX86PoiD3w+25xmFrmfAaYlybmBCSj4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OJPWQkz4aRXeofmqFR37eDnVaGMX+s7wEIuAWfgayceIocTIlSDTUUIABtum/oEVaG8DMnBTUM6ZJPhUBOW3KeO+zzjB60pyCZIJ2guligh1nPZ9F7SnOx3zFZHfo9VA8ODcRIcRUQJdzWUQhn2PClOBs2wrsU3Bu5gTiyWWl28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=mJjG1n0j; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description;
	bh=DJFmoVAm5LdfWQ0RA+KloPzYSISvtVnXmJ1KJ15LOi4=; b=mJjG1n0jLIt68iRlZ7Mdv2USCN
	Ofe4CxIHLsAd/0Aee4aDlhxw7NYQ+IopaHd68BRTkNYrkGrRrafmJc+vrqGBt+9kMxBrxTEmsE7Zm
	+pfkTlM8mMhxqRBG/tRSV4r494KwQ7AjrXUpQJtQ6NI3DFY8/PZVIaUL8o4jd3SnIQeOwap/U/XZ/
	x3k1KwBK4DrKXKr1sFoI/ilXrZSRNdCBuRRHQm980+8ODNa9noE/nNwH8yr369YVaCmPl4LIdM57s
	z47B0l1iWQmQZZaG0jSkA6ycPFH3mQ/jjEOT7tyy0K+q+5qKQLsCFahuGObbk+H0eTOt8/ClYhjVB
	YZ4hLj7Q==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128)
	(Exim 4.94.2)
	(envelope-from <ukleinek@debian.org>)
	id 1rh4QR-002lGq-7z; Mon, 04 Mar 2024 09:15:59 +0000
Message-ID: <0f7d2882-aa4b-424e-a999-45f2e18fc7f0@debian.org>
Date: Mon, 4 Mar 2024 10:15:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY
 connection
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240304084612.711678-2-ukleinek@debian.org>
 <3082796.ktpJ11cQ8Q@diego>
Content-Language: en-US, de-DE
From: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Autocrypt: addr=ukleinek@debian.org; keydata=
 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
 MaQkyqbBqIbxBNgANCE5eTk=
In-Reply-To: <3082796.ktpJ11cQ8Q@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Debian-User: ukleinek

Guten Morgen Heiko,

On 04.03.24 10:07, Heiko Stübner wrote:
> Hi Uwe,
> 
> Am Montag, 4. März 2024, 09:46:11 CET schrieb Uwe Kleine-König:
>> While it requires to have the right phy driver loaded (i.e. motorcomm)
>> to make the phy asserting the right delays, this is generally the
>> preferred way to define the MAC <-> PHY connection.
>>
>> Signed-off-by: Uwe Kleine-König <ukleinek@debian.org>
>> ---
>> Hello,
>>
>> Andrew already pointed out when I posted the patch introducing the gmac0 node
>> that rgmii-id would be the preferred way to setup things. Back then this didn't
>> happen because this change broke reception of network packets. However this
>> only happend because I didn't have the right phy driver loaded.
> 
> trying to understand how the (not) loaded module fits into this :-)
> The mdio-bus is supposed to probe the phy and load the appropriate module.
> 
>  From your description it sounds like the correct phy module needs to be
> actually loaded? Or was that meant to be a "requires to have the right phy
> driver compiled" instead?

The latter. i.e. with MOTORCOMM_PHY=n it's broken, but works fine with 
MOTORCOMM_PHY=y or =m.

Best regards
Uwe

