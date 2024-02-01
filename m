Return-Path: <devicetree+bounces-37443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23279845053
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 05:35:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BABD7B27366
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 04:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CD2527450;
	Thu,  1 Feb 2024 04:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="boE2QDee"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F146E3BB21;
	Thu,  1 Feb 2024 04:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706762100; cv=none; b=AzjIeEHcd8TcROxhQnNo1LDSPHwEwHXsN3olIFJE7hMTgZII7ZYDLpeDRd0Ze5sRrgKAolIoYXmsH+Z96wE7syA5G8pXdxves0HoQoLunE76VrNQB9PksPo51rTfH/qRREXieejP2+cj848kN8prI7NqC65yqtyZVv3rcS2wFaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706762100; c=relaxed/simple;
	bh=f0+PHC5vQ+d+yRWTRhJb+Zv1Y2yEfAkTMwZRktMNHl4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=LZ3UCHPriSmJGn1hQhT+tPh0lrKzGbFVov2YRWu5GSBlvsrkyaDweAcbWVsem7UWIr8A4bmLZCnTXcz2np389w0L10iSqGpWfu6D2ki/lYBq2n7KjPPvtRr85DKwKXnV7VagWHHRg7GscZC4GnkVwDogZrbgbTtlTH5CTvbSBy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=boE2QDee; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
Received: from [192.168.68.112] (ppp14-2-76-194.adl-apt-pir-bras31.tpg.internode.on.net [14.2.76.194])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 5DAA5200EF;
	Thu,  1 Feb 2024 12:34:56 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1706762097;
	bh=f0+PHC5vQ+d+yRWTRhJb+Zv1Y2yEfAkTMwZRktMNHl4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=boE2QDeenJQGBeNM/djbPIc7oxi/VpV12agk8TH4SJW6/SdAJjVhuhchuP39kEfFO
	 QIBh8GHO3UPdBZ7KL6h/zlr8Qj8v4nprduajw50G+4AJnhRdQlQ7qYOCwdRaWcNdet
	 i/apIKYNFHvzuCIWEj2R80ZaJ5qvRI1FeWj/uT/kxrdwv2//FHDxxlXzVNooomtzj9
	 DS/Czd6u1DcpGkiZ5cb2+7cByNZl4T/4LyvYcUr7X1LMAeHC5BRrsjVVMwNTb+9cAz
	 X6pjbXRh5HE2VpyDTqJh2bamY3q0lgXhiigpzGykQC7K/96QiDYGPAofuod33zIWQS
	 Hge56An/KqT1g==
Message-ID: <0456fec7512d01ce143d06e21a96c208b0e31cdf.camel@codeconstruct.com.au>
Subject: Re: [PATCH v5 10/21] ARM: dts: aspeed: yosemite4: Add power sensor
 for power module reading
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>, patrick@stwcx.xyz, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Date: Thu, 01 Feb 2024 15:04:55 +1030
In-Reply-To: <20240131084134.328307-11-Delphine_CC_Chiu@wiwynn.com>
References: <20240131084134.328307-1-Delphine_CC_Chiu@wiwynn.com>
	 <20240131084134.328307-11-Delphine_CC_Chiu@wiwynn.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2024-01-31 at 16:41 +0800, Delphine CC Chiu wrote:
> Add power sensor for power module reading

It would be nice if we had a bit more of a description about e.g. what
they're monitoring.

Andrew


