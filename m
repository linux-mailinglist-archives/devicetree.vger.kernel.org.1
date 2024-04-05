Return-Path: <devicetree+bounces-56497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA9E89971B
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 09:56:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7114E283150
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 07:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AB02142900;
	Fri,  5 Apr 2024 07:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="0BoBP0SN"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7EA913CAA6;
	Fri,  5 Apr 2024 07:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712303773; cv=none; b=tFdEDWZTnrwv07FNBbHkM7l3fkolD1AcZMo9ckHqia7+3rOBhwa8MNu9tIpCkOda4EPYdw1PtbI08gWXY+UpHoAxWhNYsy7vrAgMBpeBpUd+H5sqdHIbARqePpgsB52W29cmRO8g4waJKRQWdZX5cy6HABTr9736Ul/NmFoLDpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712303773; c=relaxed/simple;
	bh=UOvIIKmubenoyIw9JeU3732AeboKAgBMh0mZzQYZxGQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gXBEjuEoMq1IPeECk2l+EaBxMPMNrv9RWb7UaTToyVMfOuiWhQoAQtjtEBlHQpL1UZzYRFI8z5EuRtfd4o9ty13XNFLc/75SEn6C0r5xCT5hrcyhD+yR4z2fkbPunU7HZQlVhyICJ6jvNXFAJ8I8WLGhHGlUH7nJu2YRFSwaIA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=0BoBP0SN; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712303770;
	bh=UOvIIKmubenoyIw9JeU3732AeboKAgBMh0mZzQYZxGQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=0BoBP0SN3xyOSmoRd6ZAVyJHv09U/lfB/m4fS0Fepa1f8LTE8l4OO/c2NALN7h/M+
	 0u6d0MZv/6lufVG2VtrncNdoh7aktpnLR+YRgYLjQmAunwtceZ2mTBq8xvI/WgA8P7
	 oDXtLYpblaS6udJzMYMSmXdct14ZFitjCsVax1JCFZxKqp2BQ3jTQT9f0yjrUcKmvj
	 4fW3O6lmj8oHl09se36A0c5dsVfz74XOebsBQe6cPkmgbUOZwqH5pdGCq2vXyTc7zt
	 nug9HaRomM28NbtlNb3WpcDOD46uUJolnTN8v/cVCyE+4DRWER3hAclVkS6U+/y1cV
	 vehpQVY8Z+G6Q==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 60865378212D;
	Fri,  5 Apr 2024 07:56:09 +0000 (UTC)
Message-ID: <dab837f9-a36e-43a4-94c3-00876140dfe9@collabora.com>
Date: Fri, 5 Apr 2024 09:56:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: mediatek: mt7988: add XHCI controllers
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Golle <daniel@makrotopia.org>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20240213130044.1976-1-zajec5@gmail.com>
 <20240213130044.1976-2-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240213130044.1976-2-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 13/02/24 14:00, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Add bindings of two on-SoC XHCI controllers.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



