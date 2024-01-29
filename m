Return-Path: <devicetree+bounces-36229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E7C8403E7
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 12:34:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8E0F281D7F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 11:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10ED154FBB;
	Mon, 29 Jan 2024 11:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="wQPF620w"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD325BACE
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 11:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706528082; cv=none; b=WNulv9sBfj+BbOPv0QUZblKhgnhZHayqk/IQ4OMZd9IrZNL/vflyB7l9xQy/8qO+A0kk4ZgPpdpgur0/d3iqHlqHaC0xGIcCWHPncV1GmZ0U6ohyvPC/xwQPZCP+a3MsJUIn9jsZgynxvNbeSZy5akvxMDIjU3M4HItkREAASJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706528082; c=relaxed/simple;
	bh=sTKJ4dc2QFtniDlFh48ND0cmuzA7RoyY6+1+P+AHxDs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=agBvG807Gaek6daA5H8VdDHcGMxgyOKf7QdxA8JWvckP+uwY7BB2WurCOeV1HNqA5+68ScEOMaBmpAM7lg7+5fTKceSVp7fahBunL2envg+yJ78z5RD63GOMfDmyjHoO4Qqn1P5wvoqQj06XzYMRrwWhx/KGJVGC6F2ISF9l4A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=wQPF620w; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706528078;
	bh=sTKJ4dc2QFtniDlFh48ND0cmuzA7RoyY6+1+P+AHxDs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=wQPF620wrtJaSl0q0xFKnW3adUuXTYWJmKxXtlzkxberCxGP1QfBhLuR6DT6wNClT
	 f3NzVTcFG03xEB0RKQWIIxvOpGlRPNsGO2H780BtpAVX/BcqYCGgDcorvhlgusm0lZ
	 Fw9GLCJf05QZrcZyuruiOVyD02HYlq13Jrd6jdMBGm42Fc/FX8WQmN3NZlRaqH1D3g
	 iwzV/TIJD7ORChdOZyw2yIgSI6w6CCP2351rmO6sTkwH69r72+qkcUlvepMspo7ei0
	 QBk+v2B3EcZ9/k+MIMivZofRz6x57mbb8aA9/Olb1zCFMoGUNX3Kv9J7DZypla1dyy
	 12gD3Zs2ch93g==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 00E263780029;
	Mon, 29 Jan 2024 11:34:37 +0000 (UTC)
Message-ID: <f16842b0-0086-41b6-a366-e27ccb2905c1@collabora.com>
Date: Mon, 29 Jan 2024 12:34:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Support for airoha en7581 Soc
Content-Language: en-US
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Felix Fietkau <nbd@nbd.name>,
 devicetree@vger.kernel.org, John Crispin <john@phrozen.org>, soc@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, dd@embedd.com
References: <ZbeJ5okKQ66FXGxP@lore-desk>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <ZbeJ5okKQ66FXGxP@lore-desk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 29/01/24 12:20, Lorenzo Bianconi ha scritto:
> Hi Matthias,
> 
> I was wondering about the status of the following patches:
> https://lore.kernel.org/linux-arm-kernel/20231001122418.2688120-4-dd@embedd.com/T/#rbafabf4bf2473327f35ce7d79623f63838630537
> 
> Do we need to respin them? Thx in advance.
> 

Lorenzo, I don't think you have to.

Matthias, should we update the MAINTAINERS file to include the MediaTek
Airoha folder?

Actually that question is for both ARM and ARM64.

Cheers

