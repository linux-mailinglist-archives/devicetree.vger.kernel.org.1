Return-Path: <devicetree+bounces-121851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5282D9C876E
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 11:24:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17111286CB6
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 10:24:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1071FB3F2;
	Thu, 14 Nov 2024 10:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="nNOouaBV"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2D61FAF1C;
	Thu, 14 Nov 2024 10:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731579317; cv=none; b=agUQLdwqgUj4S4bLeb+1Nbl9YliNMTPQTlhFamNyjmaY38+W18FPHmkw8rTIfxUtJr2/XYlfE7RcNt37W/Q/GralMbjn4jXkcCGC5HwEnCEfdqlX80OBKI6GYSz4GYOnedOtfL8zQrpbgxlJ8iieGo49UlA+VIutey0ZWuq+eg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731579317; c=relaxed/simple;
	bh=fSXonh2bDf7oFUVS2uwT+cdcVaiCDzYitCPAIxm8xEE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PEAYgpr1mcIdoRC2Bei0yvGlFJuy75wZTFlT9++RI9C70745jS+QEC3PH048CZtbp17NRLVG0yt757ZVy0XbGHeOzVD9lRGUw99PJ06kJO8D2FJg3/BV3dx/zUsV87D+Irjd62eRY8NDw/33w/66bC/bvLctWJPS4/yHEZJIdZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=nNOouaBV; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1731579313;
	bh=fSXonh2bDf7oFUVS2uwT+cdcVaiCDzYitCPAIxm8xEE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nNOouaBVqt+j+xRhfMtlmeG0l8smDiW1glQwZhrcKIs/vAJNz2W/2zqXO9CAWR/AB
	 yNmqkjTqEIVbAZ8GW4pRIunstlhkTTDEUsAUvaOSsvZGyXu4NetmrBxRTl09q53rR4
	 pQT0uRsbWTt8oYe5CQZcIcQv8SAwH+m8MP3xBoRKECGDZW4/5ZNGcFQm3vVPRZqvDU
	 YIZUsoE6DkHQpC1rPG+4QkrEY8gpbEXiYJcM7xYyoBCJ37xF076e/5EpwCLmSkWkkB
	 z6jOuja1JDAeQ9XORteumc6uFmOH98bG3rwNQGtN13SdrXcRUUflVGUyWrGrmRmUW1
	 mDvdhCEVjVFNA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1CF8A17E35E3;
	Thu, 14 Nov 2024 11:15:13 +0100 (CET)
Message-ID: <3c630ce7-9ae7-469c-aacc-f441c32aedb9@collabora.com>
Date: Thu, 14 Nov 2024 11:15:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] media: mediatek: vcodec: remove vsi operation in
 common interface
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?= <nfraprado@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Nathan Hebert <nhebert@chromium.org>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>,
 Fritz Koenig <frkoenig@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Steve Cho <stevecho@chromium.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20241108034019.20064-1-yunfei.dong@mediatek.com>
 <20241108034019.20064-2-yunfei.dong@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20241108034019.20064-2-yunfei.dong@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 08/11/24 04:40, Yunfei Dong ha scritto:
> Extend struct video shared information (vsi) to send different
> parameters to scp for mt8188 architecture is changed.
> Remove vsi related operation in common interface to make sure the
> interface can be called by extended and non extended architecture
> at the same time. The new extended interfaces with new vsi will
> be introduced in later patches.
> 
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



