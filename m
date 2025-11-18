Return-Path: <devicetree+bounces-239666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B60C68420
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:45:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 292CB350965
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E0F305065;
	Tue, 18 Nov 2025 08:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="aHHRJwHk"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9546430FC23;
	Tue, 18 Nov 2025 08:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763455496; cv=none; b=F6uQyf3OWWSA1hmET69hTcFIynjU3oCmwa/qcrenXPy0WSqk/p/NnWnocLt0k1+dqodx+IjPizAbJ2tPblYBNg+yfCQT4BY+mioQtWzRKVXJz8DpWYGDkHL6b7frjhsaoENPeg1mPn9ZJewHjSNtyebk9GdWgYem3FqGqQm8HCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763455496; c=relaxed/simple;
	bh=hTbUmuYiKLq322sR4T6juTDTdLLt60pQ4qpIzW07z4k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aoiVP2mQ1Z0NodNwb6goyflZNy1siUGGvE5VPUl0OBTNweCL5wYFIqyD1mB7BHrMxLNKfzEeT0Uh4XjQRLEhHDdFUfqMb19G8F6tKo0ZOueGfGvR4TLSB/f90swIBWreqTGUqbhk+iSS8GV2A2fqlcDqWPrpIA0E2ztwk8udnK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=aHHRJwHk; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763455486;
	bh=hTbUmuYiKLq322sR4T6juTDTdLLt60pQ4qpIzW07z4k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aHHRJwHkiFdn6JxXxB5hQhpE7ppddqLDGxV1vBq6SgOjNfqxTMqwc/lnGNXvOe4WS
	 0OW8OcNFlljUz9zfizY9w3ZekI5MU/rgcjWo6p3YzM1hgIEBtRh7K9csXEJv9idwzo
	 brSGfdPUTj8yxMjvBLWxk73e1yGSFViasnF2RXmWGFC2TN3X7D126AB3F0iLCWYgsk
	 ThlxvbOKIh7F1Cy91DBDUNImfBMpwomEVAj0VJFLseZ1fo2BaSxudhIzBOqSry/Xnv
	 0pG1yUK1KNUYDtUYx7BvwNDJ8r2FHv1Rtk1Y62/cXf9imduV4t8JJWEIsyu044QFys
	 +IJn8cnVRFBuw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 395A917E101A;
	Tue, 18 Nov 2025 09:44:46 +0100 (CET)
Message-ID: <67bc01ca-10a4-44c2-a588-1516df832108@collabora.com>
Date: Tue, 18 Nov 2025 09:44:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] drm/mediatek: Add check framebuffer width and height
 size before config ovl
To: Xiandong Wang <xiandong.wang@mediatek.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Yongqiang Niu <yongqiang.niu@mediatek.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 sirius.wang@mediatek.com, vince-wl.liu@mediatek.com, jh.hsu@mediatek.com,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20251118022437.1284-1-xiandong.wang@mediatek.com>
 <20251118022437.1284-2-xiandong.wang@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251118022437.1284-2-xiandong.wang@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 18/11/25 03:22, Xiandong Wang ha scritto:
> During the execution of the IGT test kms_cursor_edge_walk,
> the screen experiences glitches and the hardware hangs.
> It was discovered that the framebuffer dimensions (width and height)
> provided by IGT to the display driver are zero, leading to
> abnormal parameters that cause the hardware to freeze.
> Therefore, it is necessary to verify the buffer dimensions
> before successfully passing the IGT test.
> 
> Signed-off-by: Xiandong Wang <xiandong.wang@mediatek.com>

Needs a Fixes tag.

After which:

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Cheers,
Angelo



