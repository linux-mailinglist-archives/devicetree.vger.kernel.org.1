Return-Path: <devicetree+bounces-244491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2121ECA5714
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 22:22:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 92B373038872
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 21:22:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 971E232ED21;
	Thu,  4 Dec 2025 21:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b="tnNdDod2";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="VGB1BI0O"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-b2-smtp.messagingengine.com (fhigh-b2-smtp.messagingengine.com [202.12.124.153])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D555A32E755;
	Thu,  4 Dec 2025 21:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.153
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764882769; cv=none; b=rX4FM0Dh+qbY+k85231udyBX5JyHRt59XtylxK4pQLh9nMIIat671qmz2kyQyuMhc+PLPJ9IllHxXaDrO/PbUEZQQhZiHtOZA9dRImJLbtzG0nA2gm3JpGaffquZ9RIGZo3y86oCI6VybKWmpwVWO+bqaLTIcFbtU+Faqg9mMtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764882769; c=relaxed/simple;
	bh=Ft0vKi/9KRHR7nr6xMOpSrJmiVqRbrF7o+g05jrPc5s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BjuCW6fkwlvSCK1h1hBIEyMKeF2HmpsZJSEtuIbsTtM5CaSqdVutLbRZ000ksaWYMEVH6LPSnlcMOVE68LSQZBF71Lit1hBY4QtGERuYmLWmA2MS8L7A3FStbirdLlYoR48h5tdmNEkMQXazmn0kR2swRCKDgdQZEyWIKKa147M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com; spf=fail smtp.mailfrom=bsdio.com; dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b=tnNdDod2; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=VGB1BI0O; arc=none smtp.client-ip=202.12.124.153
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bsdio.com
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 068817A0198;
	Thu,  4 Dec 2025 16:12:47 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-01.internal (MEProxy); Thu, 04 Dec 2025 16:12:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bsdio.com; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1764882766;
	 x=1764969166; bh=P8rDSBosyaMHHGMgfwL6ah/RjjEKBsK3EiEwa44oQ4A=; b=
	tnNdDod2Shlp8HR6zj/fS1KyLmdm8vtIybs9fREYVeI0qrnc53vaV+b6o8Ke4a+5
	eAJ+YAkXg9efah9HYUpynjwfT+4EQXHti0RLsTqjfrxX1sulIl74af2+9JnwhtKk
	jA1KIMErd4TdnsicaA8OXL3adMAfprqpGgGNtiXZvHFpOBCHQeOIBuTb9Z9DTn0r
	9NbownJt6dKEvLA7MVd3CXK/ciCgFmexBhZOr0wxwUvbIpiVd6k8rFcK/ZexNrIr
	BdQndNP+lcCL8KRTOrUsaeogPZwPJpyL9d3ZpVCD4UK/jt8Ye/u616UwbKgoJF8U
	BEo+TVPvztXm6bW/TwWSrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1764882766; x=
	1764969166; bh=P8rDSBosyaMHHGMgfwL6ah/RjjEKBsK3EiEwa44oQ4A=; b=V
	GB1BI0OZpDyWm0VHuUger3MwnDZ1j32bT7Yi0F/h4KXDimEzpYzupoulvSbaE2KR
	sJmY3mMXycZKPG30VFrfgifyKisH3y6jtBIgIvxGhYr+XlIVChKX2I+nyag1n+ef
	Nk7FhxdmWG6KzaD8mpjc8ukOh1My55JQCZadTYCwM8uWgagwSbknk6TbIRgT/mwX
	b0rVL45c8rp+As72wca0D1ckgHJBh1oFlgsuo0YWi7LGRK7fAVbZzOI3EccSxnAd
	x7QeYk8k1CRduhzAeQeLCYuSh6Iqt0PNUEcJb1vnxEHuyAA/z40naGg2bP2APBFU
	MDefVJHdWXBq/z220a30g==
X-ME-Sender: <xms:TvkxaYFldMANraKuSdHexhMGbwdoW4bnhB9JEEzNZb79_GoH9FrgTQ>
    <xme:TvkxadPwkew562iZPP4Ks59LwnsG2_9H8OItIXRvYyFx_zO3x9Bd6kr56XejQ5Rew
    B20_HYIedf3nTScVYUc8FtuEWsX78gJgImOpI8DDEWG3yFEtT8bQjw>
X-ME-Received: <xmr:TvkxafI20KRqw0CFOu1jFb_unFDctGdMAkANA6IMp6j5ibVVcccpPoZJzkO6udiRsfE1pKU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeiiedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
    epkfffgggfuffvvehfhfgjtgfgsehtjeertddtvdejnecuhfhrohhmpeftvggsvggttggr
    ucevrhgrnhcuoehrvggsvggttggrsegsshguihhordgtohhmqeenucggtffrrghtthgvrh
    hnpedtuedtueevtdetkedvheettdetvddviedtvdejffeuudfggedtgfevgeelgfevleen
    ucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomheprhgvsggvtggtrgessghsughiohdrtgho
    mhdpnhgspghrtghpthhtohepuddtpdhmohguvgepshhmthhpohhuthdprhgtphhtthhope
    hrohgshheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhn
    vghlrdhorhhgpdhrtghpthhtoheptghonhhorhdoughtsehkvghrnhgvlhdrohhrghdprh
    gtphhtthhopehjohgvlhesjhhmshdrihgurdgruhdprhgtphhtthhopegrnhgurhgvfies
    tghouggvtghonhhsthhruhgtthdrtghomhdrrghupdhrtghpthhtohepuggvvhhitggvth
    hrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqrghr
    mhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtoh
    eplhhinhhugidqrghsphgvvggusehlihhsthhsrdhoiihlrggsshdrohhrghdprhgtphht
    thhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:Tvkxae87Tn7qOmZBCccMFcLl6nYNIIlPpaVBZ1_jqvd08Rlh3JRzFw>
    <xmx:TvkxaTF4zVvxTdJeE05vyyCUKeWTRSbh4sg0R7MlD4BLIx9X5o2JUw>
    <xmx:TvkxaR5wUi5Yhz5JCYeznU2rPldi6lpSun8sBY7Rmn5EIjttyD7GcQ>
    <xmx:TvkxaUZHB3CF_glz9kd8s0bEoLxn7ybw0qDDa0y95_lUTIfkhS98IA>
    <xmx:TvkxaWjaJWhtUVtSMSfQRmURwCcE_oaNp9jnlfiupPgKYFfrxKYnFZKz>
Feedback-ID: i5b994698:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 4 Dec 2025 16:12:45 -0500 (EST)
Message-ID: <4e61c405-8495-4285-b848-04398f87ac9b@bsdio.com>
Date: Thu, 4 Dec 2025 14:12:44 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] dt-bindings: hwmon: (aspeed,g5-pwm-tacho) Move
 info from txt to yaml
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Cc: Billy Tsai <billy_tsai@aspeedtech.com>
References: <20251204210238.40742-1-rebecca@bsdio.com>
 <20251204210238.40742-4-rebecca@bsdio.com>
Content-Language: en-US
From: Rebecca Cran <rebecca@bsdio.com>
In-Reply-To: <20251204210238.40742-4-rebecca@bsdio.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/4/25 14:02, Rebecca Cran wrote:
> diff --git a/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml b/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml
> new file mode 100644
> index 000000000000..b23c3519604b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml
> @@ -0,0 +1,91 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2023 Aspeed, Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/aspeed,g5-pwm-tacho.yaml#

When I renamed the file from aspeed,g5-pwm-tacho.yaml I forgot to update 
this id line.
I'll send out a v4 patch in a couple of days to gather any other early 
feedback.

-- 
Rebecca Cran


