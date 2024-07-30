Return-Path: <devicetree+bounces-89346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E248940D3A
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 11:18:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD93E28117E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 09:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3F74194ACD;
	Tue, 30 Jul 2024 09:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Wka0bnrB"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9DC194ACA
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 09:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722331122; cv=none; b=WfvYPSSrAjUZhgM0pxYWKqRvdHMZraYe3wn+vAjwnZarjjVoMSVAQei7XuKvYJkAF3G4Xa7nxAtI5sx2JdUjxuqropC7ubN367NUHH4NIfA20AYBpyhKT5q7jPkGd0rqNOQZsfSvXKXrMFJSwGuudP080UktfnZGvbWzs7vuU4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722331122; c=relaxed/simple;
	bh=K++cy+QQYYiPZPo6DWmmBwlEs0caJQ/eUx5pta9W1jU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fA9um8zh+4fywnf7x/sIAPJxtRIakHNv8AY6XrjRNTG3EpviCdg3bA/Q/MTBqqJvOQ8eJTht9jbXhFau6KhB85/G+U3D1RsQ5Ei2O2/ZuwyhzW8WNs9JyXZjL1MkSDsaX3tfvSbH7z4dQ2ghWHi8atmVK17xPgQWXm7eVbOYZ18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Wka0bnrB; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722331119;
	bh=K++cy+QQYYiPZPo6DWmmBwlEs0caJQ/eUx5pta9W1jU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Wka0bnrBABJEJcOvB4V/pfaNdBBdQNeL/CDuf5nkONQc6+d7ik9H8n/H3FVsh0+bh
	 HIqs9huLWBd0EPXrSr0o0zaSiemOnn81eg/xjkPu8ga5S26gjhu7ggcm8p3Do4rzEH
	 fxjUmfmXaoeZS7jkqSJMl9pnoq1LxsoA+NHs1li/0Qs7nTy8H6o01KMjX9b73NGzfr
	 UVDE5W/cAf0ZyylrUC7qO47Fahu2Ghv+iQCMStaSRStnAG38Mt5+ttishxOsYId24d
	 cX37LN3dfrtda4Bp5WrOMW+ejmnIcwSbWnmMcCR70cjhUZKiF3CrK6Oybq6XvzkZiH
	 A3Dvl92/GEP7A==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5170B3782190;
	Tue, 30 Jul 2024 09:18:38 +0000 (UTC)
Message-ID: <b5b4c23b-e5d5-4266-9df1-28bc731c469e@collabora.com>
Date: Tue, 30 Jul 2024 11:18:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: mediatek: mt7986: add missing UART1
 CTS/RTS pins in BPI-R3
To: Leith Bade <leith@bade.nz>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com, frank-w@public-files.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, didi.debian@cknow.org
References: <20240627075856.2314804-1-leith@bade.nz>
 <20240627075856.2314804-5-leith@bade.nz>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240627075856.2314804-5-leith@bade.nz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 27/06/24 09:58, Leith Bade ha scritto:
> The current definition of the uart1_pins pin group does not include the
> CTS and RTS pins that are available on header CON1.
> 
> In the public schematic for the BPI-R3 (titled "BPI-R3-MT7986A",
> revision "V1.1", sheet 4), the UART1_RTS and UART1_CTS pins are connected
> via nets to the connector CON1 (sheet 14) UART0-RTS and UART0-CTS pins.
> The datasheet does not show these nets as connected to anything else.
> 
> These pins can be configured for either UART1 or as a GPIO, with no other
> alternate usage listed in the pinctrl driver. By changing the pin group
> definition from uart1_rx_tx to uart1 the additional RTS and CTS pins are
> included.
> 
> Signed-off-by: Leith Bade <leith@bade.nz>

Fixes tag please, after which:

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Cheers,
Angelo



