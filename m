Return-Path: <devicetree+bounces-273345-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IM/rM6DWr2kfcgIAu9opvQ
	(envelope-from <devicetree+bounces-273345-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:30:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E8F24758D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:30:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E144930B9809
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:27:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63A4C3EFD21;
	Tue, 10 Mar 2026 08:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="x00VKp3K";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="AkpRRStJ";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="x00VKp3K";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="AkpRRStJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD68A3FB041
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773131269; cv=none; b=t80+Vb00Fz2iqI20xj2Z20w+C6+TKlorLExzHTOfMUZYHPx0m0HkuAVNfZdWXLSXLF+rMS+S8ah9gZmOkWj+Bgi1lC6QkgrtONR5f+r2En3x3nqo4JraDWViUD7ICq62ZDc+hCVzOrosetjQf0I/F4ZaxxH+/yqFroftdAOduhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773131269; c=relaxed/simple;
	bh=wma59c5l3nL0xBdWbROJtMUHWmXDayCNFoW8k5hr2EU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LOQV7k9rIcKntF4wEv6Lafe30UMuuFYtH0+jeCDjrOwTkFQTwWz4T1/zavmyFDcGy8DTCHsIsRKejpLYOvD5Fc47JeBFWpa+X6LxKELxiYZRtHt8tgp4aOx1Nih5i4qcaxjDQ/xGis7I3JbTQ4QHk+Z+MREM2PWCD+aR7Uebugs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=x00VKp3K; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=AkpRRStJ; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=x00VKp3K; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=AkpRRStJ; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id B693B5BCCF;
	Tue, 10 Mar 2026 08:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1773131264; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Y0yzkuVRMo4+tfuJlX+VT/E2VUDW6nGfkmWA37KRrGg=;
	b=x00VKp3Kd/rA9mnhn06YdWqt3gKBueP4z230ttlqlTPUDPKmeKsQ7TANlkXlCgfzJWBLmb
	vqdKFDalwpbCoIAhScfpI5IEFFBqMhcLFT2WEeIAWMpYx3nJEt03cjrljB7ODKZIMPrZpP
	o79l40W6q8zAoAym21BXRDX5meSZvb4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1773131264;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Y0yzkuVRMo4+tfuJlX+VT/E2VUDW6nGfkmWA37KRrGg=;
	b=AkpRRStJoLhkL2X+hxPci9ASkSWuasX/htSTiejyF/VRyaK+38V80uBb0gAj9Uo3fKgI45
	8OAUVoQPWbnNPyCw==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=x00VKp3K;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=AkpRRStJ
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1773131264; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Y0yzkuVRMo4+tfuJlX+VT/E2VUDW6nGfkmWA37KRrGg=;
	b=x00VKp3Kd/rA9mnhn06YdWqt3gKBueP4z230ttlqlTPUDPKmeKsQ7TANlkXlCgfzJWBLmb
	vqdKFDalwpbCoIAhScfpI5IEFFBqMhcLFT2WEeIAWMpYx3nJEt03cjrljB7ODKZIMPrZpP
	o79l40W6q8zAoAym21BXRDX5meSZvb4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1773131264;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Y0yzkuVRMo4+tfuJlX+VT/E2VUDW6nGfkmWA37KRrGg=;
	b=AkpRRStJoLhkL2X+hxPci9ASkSWuasX/htSTiejyF/VRyaK+38V80uBb0gAj9Uo3fKgI45
	8OAUVoQPWbnNPyCw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 149123F36C;
	Tue, 10 Mar 2026 08:27:44 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id RyjIAwDWr2nVEgAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 10 Mar 2026 08:27:44 +0000
Message-ID: <a85e33fe-b36b-4f4f-99a4-ba9d00687385@suse.de>
Date: Tue, 10 Mar 2026 09:27:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 3/8] drm: verisilicon: add a driver for Verisilicon
 display controllers
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Drew Fustini <fustini@kernel.org>,
 Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Michal Wilczynski <m.wilczynski@samsung.com>, Han Gao <gaohan@iscas.ac.cn>,
 Yao Zi <ziyao@disroot.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org
References: <20260129023922.1527729-1-zhengxingda@iscas.ac.cn>
 <20260129023922.1527729-4-zhengxingda@iscas.ac.cn>
 <DGY9GWWLXGNX.265MMEXXCG8YA@bootlin.com>
 <301a33fc27bd01bb50d57779c2f9eb51a4fafaa5.camel@iscas.ac.cn>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <301a33fc27bd01bb50d57779c2f9eb51a4fafaa5.camel@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -3.01
X-Spam-Level: 
X-Rspamd-Queue-Id: 10E8F24758D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273345-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[iscas.ac.cn,bootlin.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch,redhat.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[suse.de:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:url,samsung.com:email,bootlin.com:url,iscas.ac.cn:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,suse.de:dkim,suse.de:email,suse.de:mid,icenowy.me:email]
X-Rspamd-Action: no action

Hi

Am 09.03.26 um 17:35 schrieb Icenowy Zheng:
> 在 2026-03-09一的 13:47 +0100，Luca Ceresoli写道：
>> Hello Icenowy Zheng,
>>
>> On Thu Jan 29, 2026 at 3:39 AM CET, Icenowy Zheng wrote:
>>> From: Icenowy Zheng <uwu@icenowy.me>
>>>
>>> This is a from-scratch driver targeting Verisilicon DC-series
>>> display
>>> controllers, which feature self-identification functionality like
>>> their
>>> GC-series GPUs.
>>>
>>> Only DC8200 is being supported now, and only the main framebuffer
>>> is set
>>> up (as the DRM primary plane). Support for more DC models and more
>>> features is my further targets.
>>>
>>> As the display controller is delivered to SoC vendors as a whole
>>> part,
>>> this driver does not use component framework and extra bridges
>>> inside a
>>> SoC is expected to be implemented as dedicated bridges (this driver
>>> properly supports bridge chaining).
>>>
>>> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
>>> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
>>> Tested-by: Han Gao <gaohan@iscas.ac.cn>
>>> Tested-by: Michal Wilczynski <m.wilczynski@samsung.com>
>>> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
>> I have reviewed the bridge part of this patch and have a few remarks,
>> see
>> below.
>>
>> [...]
>>
>>> +++ b/drivers/gpu/drm/verisilicon/vs_bridge.c
>>> @@ -0,0 +1,371 @@
>>> +// SPDX-License-Identifier: GPL-2.0-only
>>> +/*
>>> + * Copyright (C) 2025 Icenowy Zheng <uwu@icenowy.me>
>>> + */
>>> +
>>> +#include <linux/of.h>
>>> +#include <linux/regmap.h>
>>> +
>>> +#include <uapi/linux/media-bus-format.h>
>>> +
>>> +#include <drm/drm_atomic.h>
>>> +#include <drm/drm_atomic_helper.h>
>>> +#include <drm/drm_bridge.h>
>>> +#include <drm/drm_bridge_connector.h>
>>> +#include <drm/drm_connector.h>
>>> +#include <drm/drm_encoder.h>
>>> +#include <drm/drm_of.h>
>>> +#include <drm/drm_print.h>
>>> +#include <drm/drm_simple_kms_helper.h>
>>> +
>>> +#include "vs_bridge.h"
>>> +#include "vs_bridge_regs.h"
>>> +#include "vs_crtc.h"
>>> +#include "vs_dc.h"
>>> +
>>> +static int vs_bridge_attach(struct drm_bridge *bridge,
>>> +			    struct drm_encoder *encoder,
>>> +			    enum drm_bridge_attach_flags flags)
>>> +{
>>> +	struct vs_bridge *vbridge =
>>> drm_bridge_to_vs_bridge(bridge);
>>> +
>>> +	return drm_bridge_attach(encoder, vbridge->next_bridge,
>>> +				 bridge, flags);
>>> +}
>>> +
>>> +struct vsdc_dp_format {
>>> +	u32 linux_fmt;
>>> +	bool is_yuv;
>>> +	u32 vsdc_fmt;
>>> +};
>> Moving the bool after the two 'u32's would be better for packing and
>> spatial locality (especially in case more fields are added in the
>> future).
> Yes this seems to sound right, but doing such rework sounds quite big
> and unnecessary after it's applied...

Why? You are merely moving fields around, right? Just send a patch then.

Best regards
Thomas

>
>>> +
>>> +static struct vsdc_dp_format vsdc_dp_supported_fmts[] = {
>>> +	/* default to RGB888 */
>>> +	{ MEDIA_BUS_FMT_FIXED, false,
>>> VSDC_DISP_DP_CONFIG_FMT_RGB888 },
>>> +	{ MEDIA_BUS_FMT_RGB888_1X24, false,
>>> VSDC_DISP_DP_CONFIG_FMT_RGB888 },
>>> +	{ MEDIA_BUS_FMT_RGB565_1X16, false,
>>> VSDC_DISP_DP_CONFIG_FMT_RGB565 },
>>> +	{ MEDIA_BUS_FMT_RGB666_1X18, false,
>>> VSDC_DISP_DP_CONFIG_FMT_RGB666 },
>>> +	{ MEDIA_BUS_FMT_RGB101010_1X30,
>>> +	  false, VSDC_DISP_DP_CONFIG_FMT_RGB101010 },
>> You can put up to 100 chars per line and avoid the newline here to
>> make
>> this table more readable. Same below.
> Ah I prefer to keep 80 CPL when I can, and the `coding-style.rst`
> document still suggests 80.
>
>>> +	{ MEDIA_BUS_FMT_UYVY8_1X16, true,
>>> VSDC_DISP_DP_CONFIG_YUV_FMT_UYVY8 },
>>> +	{ MEDIA_BUS_FMT_UYVY10_1X20, true,
>>> VSDC_DISP_DP_CONFIG_YUV_FMT_UYVY10 },
>>> +	{ MEDIA_BUS_FMT_YUV8_1X24, true,
>>> VSDC_DISP_DP_CONFIG_YUV_FMT_YUV8 },
>>> +	{ MEDIA_BUS_FMT_YUV10_1X30, true,
>>> VSDC_DISP_DP_CONFIG_YUV_FMT_YUV10 },
>>> +	{ MEDIA_BUS_FMT_UYYVYY8_0_5X24,
>>> +	  true, VSDC_DISP_DP_CONFIG_YUV_FMT_UYYVYY8 },
>>> +	{ MEDIA_BUS_FMT_UYYVYY10_0_5X30,
>>> +	  true, VSDC_DISP_DP_CONFIG_YUV_FMT_UYYVYY10 },
>>> +};
>>> +
>> [...]
>>
>>> +struct vs_bridge *vs_bridge_init(struct drm_device *drm_dev,
>>> +				 struct vs_crtc *crtc)
>>> +{
>>> +	unsigned int output = crtc->id;
>>> +	struct vs_bridge *bridge;
>> In common practice a variable named 'bridge' is used to point to a
>> 'struct
>> drm_bridge', so it feels weird when it is used for another type. Can
>> you
>> rename to 'vbridge' or 'vsbridge' or similar, to clarify it's the
>> "Verisilicon bridge"?
> This sounds right.
>
> BTW where is such kind of common practice documented?
>
>> This is after all what you did in vs_bridge_attach() above, where the
>> ambiguity of the 'bridge' name used for a driver-specific struct is
>> evident.
>>
>>> +	struct drm_bridge *next;
>>> +	enum vs_bridge_output_interface intf;
>>> +	const struct drm_bridge_funcs *bridge_funcs;
>>> +	int ret, enctype;
>>> +
>>> +	intf = vs_bridge_detect_output_interface(drm_dev->dev-
>>>> of_node,
>>> +						 output);
>>> +	if (intf == -ENODEV) {
>>> +		drm_dbg(drm_dev, "Skipping output %u\n", output);
>>> +		return NULL;
>>> +	}
>>> +
>>> +	next = devm_drm_of_get_bridge(drm_dev->dev, drm_dev->dev-
>>>> of_node,
>>> +				      output, intf);
>>> +	if (IS_ERR(next)) {
>>> +		ret = PTR_ERR(next);
>>> +		if (ret != -EPROBE_DEFER)
>>> +			drm_err(drm_dev,
>>> +				"Cannot get downstream bridge of
>>> output %u\n",
>>> +				output);
>> 100 chars per line are allowed, so this could fit on a single line
>> being
>> nicer to read. This applies to a lot places in this driver, of
>> logging
>> calls in particular. I understand this would be annoying to change on
>> an
>> already reviewed patch and at v7 so up to you, but it would be good
>> to keep
>> it in mind for the future.
>>
>>> +		return ERR_PTR(ret);
>>> +	}
>>> +
>>> +	if (intf == VSDC_OUTPUT_INTERFACE_DPI)
>>> +		bridge_funcs = &vs_dpi_bridge_funcs;
>>> +	else
>>> +		bridge_funcs = &vs_dp_bridge_funcs;
>>> +
>>> +	bridge = devm_drm_bridge_alloc(drm_dev->dev, struct
>>> vs_bridge, base,
>>> +				       bridge_funcs);
>> The 'struct drm_bridge' field embedded in a driver-specific struct is
>> conventionally called 'bridge', so renaming it from 'base' to
>> 'bridge'
>> would make it more consistent with other drivers. That would go in
>> sync
>> with the coding convention I mentioned above: 'bridge' for struct
>> drm_bridge, <XYZ>bridge or just <XYZZ> for a custom driver struct
>> embedding
>> a bridge.
> Ah, all subclasses in this driver call the base class `base`, and I
> still wonder how such convention is documented.
>
>>> +	if (IS_ERR(bridge))
>>> +		return ERR_PTR(PTR_ERR(bridge));
>>> +
>>> +	bridge->crtc = crtc;
>>> +	bridge->intf = intf;
>>> +	bridge->next_bridge = next;
>> There is now a next_bridge field in struct drm_bridge, which handles
>> the
>> bridge lifetime in a safer way and more simply [0], so you could use
>> it:
> Glad to hear such a field exists now. Will more code about next_bridge
> lifetime management being shared?
>
> Thanks,
> Icenowy
>
>>         bridge->base.next_bridge = next;
>>
>> Or, after the renames I suggested above:
>>
>>         vbridge->bridge.next_bridge = next;
>>
>> [0]
>> https://elixir.bootlin.com/linux/v7.0-rc2/source/include/drm/drm_bridge.h#L1269-L1278
>>
>> Luca
>>
>> --
>> Luca Ceresoli, Bootlin
>> Embedded Linux and Kernel engineering
>> https://bootlin.com

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)



