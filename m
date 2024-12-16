Return-Path: <devicetree+bounces-131356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 239459F2ECB
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:04:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 585D3165433
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:04:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FDD320408E;
	Mon, 16 Dec 2024 11:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="nADYOdP4"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F78A937;
	Mon, 16 Dec 2024 11:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734347057; cv=none; b=KdzH+Ims11Zc/UlIkkMZ+Y0WRknT1+vMKgYLKJKuKOOsr0WXDj6TYl9rACIPQB6/Kf6jsM2YuwxWu6dci1zDXP/s2kMFxLpnIKK8G3LTuV5jM/DpO/DFYSuW0k3YZA9d/QqqjIe8A82P8CAdJsUqAnvJYdQsdvIUnM9wpBDwbKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734347057; c=relaxed/simple;
	bh=2PAzW0CAvTGnmsRLsCQwS8t9Oqwmzf5n50qbI8kumJg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BgqjtLyiAYauFP7zkJ/ZHBSzFEaWtGrA4cb2ApIax6tbP7xMhHAf9PkqUga/Z5oIinm6Rm0lflaXRMFpiKQHcoHdLnhUwvJnON+DzF7K0cszmVvSg7DkFGaMnSi7SJwhXB85g+2JJ1Q9i31kqVD2qtQYLv/1kcn2knUuzZvxgnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=nADYOdP4; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734347048;
	bh=2PAzW0CAvTGnmsRLsCQwS8t9Oqwmzf5n50qbI8kumJg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nADYOdP4y0TDITg8zV4mKADEnSxzC9xYVmJiW7FNJTMLuq6sz68ov/3wyCzIqV/Sh
	 Q8tLkvhMMCaI4MgamBdtPgzfm75P0/QybahNCZDVLMemTaDmzDw54Uxk3q4H0RpltW
	 jTvDRZRwwrUpht1VpJ08iV60s7p2oebBQQ3Sj0SSr3oQ3mXW4DsobChiWQMtF+rrP2
	 aAZggNcTdQxh1RhGwZUC6Tb3OC0ondVKMnJBwy2lZsk+pNB9ZF+zzo095oGQqCx7Dj
	 tmV7TxX9pIXJglAS+Rf+Zg3ASByMsiKqXmKCqqrgIHORiuH134+l5Y2U4mZjb/iuvu
	 fOIMFis+EQwFg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3E31117E3632;
	Mon, 16 Dec 2024 12:04:07 +0100 (CET)
Message-ID: <e5788187-e894-4aab-a41e-a3d7a64762c6@collabora.com>
Date: Mon, 16 Dec 2024 12:04:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 15/15] drm/mediatek: Introduce HDMI/DDC v2 for
 MT8195/MT8188
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>
Cc: "robh@kernel.org" <robh@kernel.org>,
 "jie.qiu@mediatek.com" <jie.qiu@mediatek.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "simona@ffwll.ch" <simona@ffwll.ch>, "mripard@kernel.org"
 <mripard@kernel.org>, =?UTF-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?=
 <jitao.shi@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "airlied@gmail.com" <airlied@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "junzhi.zhao@mediatek.com" <junzhi.zhao@mediatek.com>
References: <20241205114518.53527-1-angelogioacchino.delregno@collabora.com>
 <20241205114518.53527-16-angelogioacchino.delregno@collabora.com>
 <803bc2bd802506635dfa9ea9b26a6ca40a7f4912.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <803bc2bd802506635dfa9ea9b26a6ca40a7f4912.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 16/12/24 09:57, CK Hu (胡俊光) ha scritto:
> Hi, Angelo:
> 
> On Thu, 2024-12-05 at 12:45 +0100, AngeloGioacchino Del Regno wrote:
>> External email : Please do not click links or open attachments until you have verified the sender or the content.
>>
>>
>> Add support for the newer HDMI-TX (Encoder) v2 and DDC v2 IPs
>> found in MediaTek's MT8195, MT8188 SoC and their variants, and
>> including support for display modes up to 4k60 and for HDMI
>> Audio, as per the HDMI 2.0 spec.
>>
>> HDCP and CEC functionalities are also supported by this hardware,
>> but are not included in this commit and that also poses a slight
>> difference between the V2 and V1 controllers in how they handle
>> Hotplug Detection (HPD).
>>
>> While the v1 controller was using the CEC controller to check
>> HDMI cable connection and disconnection, in this driver the v2
>> one does not.
>>
>> This is due to the fact that on parts with v2 designs, like the
>> MT8195 SoC, there is one CEC controller shared between the HDMI
>> Transmitter (HDMI-TX) and Receiver (HDMI-RX): before eventually
>> adding support to use the CEC HW to wake up the HDMI controllers
>> it is necessary to have support for one TX, one RX *and* for both
>> at the same time.
>>
>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>> ---
> 
> [snip]
> 
>> +static int mtk_hdmi_v2_bridge_atomic_check(struct drm_bridge *bridge,
>> +                                          struct drm_bridge_state *bridge_state,
>> +                                          struct drm_crtc_state *crtc_state,
>> +                                          struct drm_connector_state *conn_state)
>> +{
> 
> I would like v1 and v2 has the same behavior.
> Why v2 has atomic check but v1 has no?
> If this is better to have, add atomic check to v1, and this function would be common function.
> 

That's because v2 uses the new helpers, while v1 does not.
The v1 must be converted to the new helpers in order to use atomic_check() like v2.

Cheers,
Angelo

> Regards,
> CK
> 
>> +       return drm_atomic_helper_connector_hdmi_check(conn_state->connector,
>> +                                                     conn_state->state);
>> +}
>> +
> 
> 




