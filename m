Return-Path: <devicetree+bounces-71731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDE98D7C97
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 09:38:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF5611C21F8A
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 07:38:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1699495CC;
	Mon,  3 Jun 2024 07:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="sHt52mVB"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5661E57C8D
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 07:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717400306; cv=none; b=Q/h4Fq8q15OPAHPEzCu0EdH0deoAPfz7Tg12VBhLkG/MaIjvJsnBRuly8gUhXQHEDk5ECdFJ04IYnc1HVQ/8nVzqvj55magEUpJQ83CrEk1s+3WQaZxtsxdAndgG49vWkqgQdU2xEKbFJZqult9darXq+FgPksukRXNy3GKBUqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717400306; c=relaxed/simple;
	bh=F8wABEIFm4ftCXJGlbs2LKNX3obLSMHPBw/6ZJRDGYQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=B68C91smNwVBYlmaAIVWzxdLLsCtLusQhgOh8ynIcvEK1uinG9Ax4DPFECOF6Jv81gDAxFLiLv8SP4BmDcA/+dE5YYvyd/0XJi4bGb+GcncPJYDTO2lV1pTVhLdZZEJsAbG2hLGXbBN/laataT7+tAz0mDCdYRKoOwRrJjsEGnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=sHt52mVB; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717400304;
	bh=F8wABEIFm4ftCXJGlbs2LKNX3obLSMHPBw/6ZJRDGYQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=sHt52mVBhqnmSbRl0b3A7BLBdIVMVfBxxNFjCraP16MKFwgjQcHJcXJJSODGZYVYb
	 0+a4TWy3h6Vi38dlDRsi9h4pvkGwIBmsPQwZaxs20q8ijKO6GEKK1gbiXT8myq4ekH
	 W85FjXl/SgaaNaewHpF2/Kk/RWeaCRRlUDfs1rI49nEIuYwNLq9YMBoZI43OecQ6a8
	 SyImWQu8yCADoV4/Nc8htepyupSyO1QCAcC7dYJIiYQEr2wMYprTHK9u6mMufKGRif
	 Pumzi7tYGiTNR9pfS24VtV9Y1uDHB4wlQq6ZBye2nJbSXKTOsQqqnDjJQUl8obm3YH
	 hctWpbKEkB5/w==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2C8973782190;
	Mon,  3 Jun 2024 07:38:23 +0000 (UTC)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
 Lala Lin <lala.lin@mediatek.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
In-Reply-To: <20240514015154.11206-1-zajec5@gmail.com>
References: <20240514015154.11206-1-zajec5@gmail.com>
Subject: Re: (subset) [PATCH V2 1/2] dt-bindings: nvmem: mediatek: efuse:
 add support for MT7981
Message-Id: <171740030309.40780.15093772902291434880.b4-ty@collabora.com>
Date: Mon, 03 Jun 2024 09:38:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0

On Tue, 14 May 2024 03:51:53 +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Add compatible for MT7981 SoC.
> 
> 

Applied to v6.10-next/dts64, thanks!

[2/2] arm64: dts: mediatek: mt7981: add efuse block
      commit: 299e71800214a7bae36733fb3bde5d37eb5e13f3

Cheers,
Angelo



