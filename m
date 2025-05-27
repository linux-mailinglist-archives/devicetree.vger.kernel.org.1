Return-Path: <devicetree+bounces-180736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1BFAC4C09
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 12:10:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35B2717B2B3
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 10:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AFAB1F91C7;
	Tue, 27 May 2025 10:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ERCndOZ4"
X-Original-To: devicetree@vger.kernel.org
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3468E142E6F
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748340600; cv=none; b=Uo+qoGUvhbTUsP+vpZQEgQDKj1i3IZvHck5YsUam2G9owGbHzQTvxEBUKeDXlkFxtliX7hCSw2PqNM77dndFAiwxkYlzRsfVraxZfEhTTkz3L1YD6UwncM5y8lQzGFeVGTYTBzbi1YUDLY0SLCJo0vZBqU0K2BezMi1SXkcfaUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748340600; c=relaxed/simple;
	bh=5VdPZQNrLgurHoo0LapK1NESgb6m+OJF447OZcih8+0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=LSytqs5JZCAbMvV4reTmNyZjCXNFLqoKH87dUNGX/u5X69AV6wfZqQveba3Mh0ntQohh/O3XHTglsOpJSkEwyBnLMo15TG+NvNW5GGMQ9pnmWT2HOXWDs9xNiK305Gkgfk6bRATg/1HSjedA8gCB1JN69WhxcYIiKG7WEgJv1Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ERCndOZ4; arc=none smtp.client-ip=217.70.183.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4F76D43B1A;
	Tue, 27 May 2025 10:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1748340590;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yi+JDYL57ewf0irzru1gG1+7r9jGjICYz/MQy5TCGUw=;
	b=ERCndOZ4biQ61d8+Im5snI3+NFhcVZi3MhW7JlyrSpw79Xj7c+dBbjbQMiRFTqFk4jZsfu
	kJebeynHP+3KxmKNGm1beHxPHnp2vSI17dBkvqJITXKQHnevTT0tSXH500x7GLT6i9yg8a
	hDQNqN4bfkbBEpDxuMfT3EwAq421T/6sCy82RtuYxeqd0XQhJ1M4SEbOjYY7s0flhb6VUy
	AnTcAxYSrkO8qd+0E83ja9ACbWh1Mr6ydf7hUJiyckaQP32ijneUClC00mxKAIWwbNuMP/
	L7phdwpGOQiEADMw3W1k0K09ITIRNCCvnCGGdU4XU5ykHipdH2i1rWSOgc5kvg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Kumar, Udit" <u-kumar1@ti.com>
Cc: Nishanth Menon <nm@ti.com>,  Vignesh Raghavendra <vigneshr@ti.com>,
  Tero Kristo <kristo@kernel.org>,  Rob Herring <robh+dt@kernel.org>,
  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-arm-kernel@lists.infradead.org>,  Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>,  Steam Lin <stlin2@winbond.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Describe the SPI NAND
In-Reply-To: <98b6208c-4cfd-4746-9e49-4f5596f8cf3e@ti.com> (Udit Kumar's
	message of "Sat, 19 Apr 2025 18:35:47 +0530")
References: <20250401135822.244402-1-miquel.raynal@bootlin.com>
	<98b6208c-4cfd-4746-9e49-4f5596f8cf3e@ti.com>
User-Agent: mu4e 1.12.7; emacs 29.4
Date: Tue, 27 May 2025 12:09:48 +0200
Message-ID: <87a56ytleb.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddtgddvtddutdculddtuddrgeefvddrtddtmdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvvefujghffgffkfggtgfgsehtqhertddtreejnecuhfhrohhmpefoihhquhgvlhcutfgrhihnrghluceomhhiqhhuvghlrdhrrgihnhgrlhessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepffeghfejtdefieeguddukedujeektdeihfelleeuieeuveehkedvleduheeivdefnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopehlohgtrghlhhhoshhtpdhmrghilhhfrhhomhepmhhiqhhuvghlrdhrrgihnhgrlhessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepuddupdhrtghpthhtohepuhdqkhhumhgrrhdusehtihdrtghomhdprhgtphhtthhopehnmhesthhirdgtohhmpdhrtghpthhtohepvhhighhnvghshhhrsehtihdrtghomhdprhgtphhtthhopehkrhhishhtoheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheprhhosghhodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhor
 hhgpdhrtghpthhtoheptghonhhorhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-GND-Sasl: miquel.raynal@bootlin.com

Hello Kumar,

>> --- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
>> @@ -737,3 +737,43 @@ dpi1_out: endpoint {
>>   		};
>>   	};
>>   };
>> +
>> +&fss {
>> +	status =3D "okay";
>> +};
>> +
>> +&ospi0 {
>> +	pinctrl-names =3D "default";
>> +	pinctrl-0 =3D <&ospi0_pins_default>;
>> +
>> +	flash@0 {
>> +		compatible =3D "spi-nand";
>
> Since this is boot flash, so please add booth-all property as well

Ok.

>
>
>> +		reg =3D <0>;
>> +		spi-tx-bus-width =3D <8>;
>> +		spi-rx-bus-width =3D <8>;
>> +		spi-max-frequency =3D <25000000>;
>> +		cdns,tshsl-ns =3D <60>;
>> +		cdns,tsd2d-ns =3D <60>;
>> +		cdns,tchsh-ns =3D <60>;
>> +		cdns,tslch-ns =3D <60>;
>> +		cdns,read-delay =3D <2>;
>
> Since this flash is used as boot device, I suggest if you can add
> partitions of flash as well .
>
> you can take reference from downstream version [0]

The flash is currently not the primary boot device, and the flash is
very fragmented in smaller mtd partitions, which is not ideal for wear
levelling. I prefer to let TI people propose a partitioning scheme
themselves.

Thanks,
Miqu=C3=A8l

