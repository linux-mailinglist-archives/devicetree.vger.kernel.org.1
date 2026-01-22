Return-Path: <devicetree+bounces-258298-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QD4JDzECcmmvZwAAu9opvQ
	(envelope-from <devicetree+bounces-258298-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:55:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A25596590B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:55:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C0A0A7A8EB2
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:40:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D4133EDAC7;
	Thu, 22 Jan 2026 10:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="qXPGql49";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="GSfNplAb";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="qXPGql49";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="GSfNplAb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762773E9F77
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769078391; cv=none; b=X5mWfQVM8RyLttN04Dh2/reJivzVlkthx6U9Uu/vqTI6uqQwURAnepsIGtApBkcCacsoOij1RjUdmz5Ao8C9N5/al7I7e2X5ltfbTTNAzOfZdOEOpoNPnoRNKXbLc/7P9lz9xtScJel/a08TRQEEsfZ5ZKEvRGPp4ORZ+zLwqJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769078391; c=relaxed/simple;
	bh=UNDNqO1XugK6CE4CK2Ay3fnq++EV6hFZuGqz1AezM1s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Jc0aNo4Rwg7hn3qyc3+sCk0q+hq6KyNj/U2DdIgllw4oxbYP9AohYvMEP26mZ1e5TWf6ojUd5/TVNjN7LgEH08oBkBtHL9Qtod3aMrsrRdK0ZPY0HeEaVeH52PDZ3YaPhezj27kq1I3WwIbpOyZqmxSjvAN+F6dweoIXYwxtzgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=qXPGql49; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=GSfNplAb; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=qXPGql49; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=GSfNplAb; arc=none smtp.client-ip=195.135.223.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id A4A7B33694;
	Thu, 22 Jan 2026 10:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1769078386; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=TkCSPT+9XJZzQ81lfCewAIgnjVdGJHtK1VhI9nX0RPs=;
	b=qXPGql49k6jMUPBkmWt5dBw5dDiPaLXcnwEIQ/BCHmcSCazbcXSPaEA4bT41n2+h46Zom4
	cjTrEmwEzYJbvEBe8zJdPn/WS//+bDE+wU7EaCMTC6pnAnWIWxDaEIk0kDnm4lPExresHK
	avLG2l3FWbN0kH+4uelsFEkRVt+BonY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1769078386;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=TkCSPT+9XJZzQ81lfCewAIgnjVdGJHtK1VhI9nX0RPs=;
	b=GSfNplAbulgvVQ+YDy9cE22oUUQFtouosS2aiKncIIb8NSdqDMpzwaU+b5rxdy0Ok0tP4Y
	WAVzNx7jh+jx7nDw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1769078386; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=TkCSPT+9XJZzQ81lfCewAIgnjVdGJHtK1VhI9nX0RPs=;
	b=qXPGql49k6jMUPBkmWt5dBw5dDiPaLXcnwEIQ/BCHmcSCazbcXSPaEA4bT41n2+h46Zom4
	cjTrEmwEzYJbvEBe8zJdPn/WS//+bDE+wU7EaCMTC6pnAnWIWxDaEIk0kDnm4lPExresHK
	avLG2l3FWbN0kH+4uelsFEkRVt+BonY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1769078386;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=TkCSPT+9XJZzQ81lfCewAIgnjVdGJHtK1VhI9nX0RPs=;
	b=GSfNplAbulgvVQ+YDy9cE22oUUQFtouosS2aiKncIIb8NSdqDMpzwaU+b5rxdy0Ok0tP4Y
	WAVzNx7jh+jx7nDw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id D1B8E1395E;
	Thu, 22 Jan 2026 10:39:45 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id /SzZMXH+cWmxHgAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 22 Jan 2026 10:39:45 +0000
Message-ID: <5fc5439b-ef21-416a-90fe-07f0d21de87d@suse.de>
Date: Thu, 22 Jan 2026 11:39:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/9] drm: verisilicon: add a driver for Verisilicon
 display controllers
To: Icenowy Zheng <uwu@icenowy.me>, Andrzej Hajda <andrzej.hajda@intel.com>,
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
 Michal Wilczynski <m.wilczynski@samsung.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Han Gao <rabenda.cn@gmail.com>,
 Yao Zi <ziyao@disroot.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, Han Gao <gaohan@iscas.ac.cn>
References: <20260116043746.336328-1-zhengxingda@iscas.ac.cn>
 <20260116043746.336328-4-zhengxingda@iscas.ac.cn>
 <56e1974c-0fe6-4bdb-918d-fcf6a8b866c1@suse.de>
 <0eb4b6ba8ef3b47cd28eb8d652b05eb5a6d1409c.camel@icenowy.me>
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
In-Reply-To: <0eb4b6ba8ef3b47cd28eb8d652b05eb5a6d1409c.camel@icenowy.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -2.80
X-Spam-Level: 
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,samsung.com,bootlin.com,gmail.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,iscas.ac.cn];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[icenowy.me,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch,redhat.com];
	TAGGED_FROM(0.00)[bounces-258298-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[suse.de,none];
	DKIM_TRACE(0.00)[suse.de:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,suse.de:mid,suse.de:dkim,suse.com:url]
X-Rspamd-Queue-Id: A25596590B
X-Rspamd-Action: no action

Hi

Am 22.01.26 um 10:23 schrieb Icenowy Zheng:
> 在 2026-01-21星期三的 13:56 +0100，Thomas Zimmermann写道：
>
> =============== 8< ===================
>>> +
>>> +       dev_info(dev, "DC%x rev %x customer %x\n", dc-
>>>> identity.model,
>>> +                dc->identity.revision, dc->identity.customer_id);
>> drm_dbg().  Drivers should be quite by default.
> Well for this kind of identification information I think driver is
> usually not quiet, at least amdgpu (when doing IP discovery), panfrost
> and etnaviv (which shares the same set of identification registers with
> this driver) is reporting it.

These drivers only get away with it because many other drivers keep 
quite. Otherwise the kernel log would be filled with init reports. Your 
choice, but it's questionable if anyone ever cares except for debugging.


>
>>> +
>>> +       if (port_count > dc->identity.display_count) {
>>> +               dev_err(dev, "too many downstream ports than HW
>>> capability\n");
>>> +               ret = -EINVAL;
>>> +               goto err_rst_assert;
>>> +       }
>>> +
> =============== 8< ===================
>>> +
>>> +       if (!state->visible || !fb) {
>>> +               regmap_write(dc->regs, VSDC_FB_CONFIG(output), 0);
>>> +               regmap_write(dc->regs, VSDC_FB_CONFIG_EX(output),
>>> 0);
>>> +               goto commit;
>>> +       } else {
>>> +               regmap_set_bits(dc->regs,
>>> VSDC_FB_CONFIG_EX(output),
>>> +                               VSDC_FB_CONFIG_EX_FB_EN);
>>> +       }
>> Since you handle the plane on/plane off cases here, I'd advise to
>> implement atomic_enable and atomic_disable for the plane, if the
>> hardware allows it. (There is hardware were the current pattern makes
>> sense though.)
> If atomic_*able is going to be implemented, should atomic_update() keep
> the plane on/off code?

In this case, atomic_update should only perform an update of the plane's 
graphics buffer (scanout address, color format). The logic then is

enable and mode setting:

  atomic_update, plus
  atomic_enable

disable:

  atomic_disable only

page flips:

  atomic_update only

See 
https://elixir.bootlin.com/linux/v6.18.6/source/drivers/gpu/drm/drm_atomic_helper.c#L3022

That's usually cleaner. But there's hardware where update/enable/disable 
is connected in such a way that a single atomic_update is better.


>
> BTW it seems that DC8200 has the shadow register capability that could
> be manually commited but the older DC8000 has no (the
> VSDC_FB_CONFIG_EX_COMMIT bit written below is a new thing) -- the
> VSDC_FB_CONFIG register on DC8000 has a write-only bit that when
> written with 0 the display is put to reset and when written with 1 the
> display will start to run. This pattern seems to be not able to keep
> the enabled state while programming (at least part of) new plane
> configuration, see [1].

I cannot comment on the hardware. But on the DRM side, we always disable 
the pipeline for we program a new display mode; and then do an enable 
step to program the new mode. This happens on the CRTC, but it also 
affects the CRTC's planes accordingly. For pageflips, we only run the 
plane's atomic_update.

If you you see a page flip, but need a full mode-setting operation, you 
can manually trigger it by setting drm_crtc_state.mode_changed from the 
plane's atomic_check. Here's an example: 
https://elixir.bootlin.com/linux/v6.18.6/source/drivers/gpu/drm/mgag200/mgag200_mode.c#L503

If the DC8000 and DC8200 behave sufficiently differently, my advise is 
to write multiple _funcs structs with custom helpers and pick the 
correct one when you initialize the modesetting pipeline.

Best regards
Thomas

>
> [1]
> https://github.com/milkv-megrez/rockos-u-boot/blob/c9221cf2fa77d39c0b241ab4b030c708e7ebe279/drivers/video/eswin/eswin_dc_reg.h#L3579
>
>>> +
>>> +       drm_format_to_vs_format(state->fb->format->format, &fmt);
>>> +
>>> +       regmap_update_bits(dc->regs, VSDC_FB_CONFIG(output),
>>> +                          VSDC_FB_CONFIG_FMT_MASK,
>>> +                          VSDC_FB_CONFIG_FMT(fmt.color));
>>> +       regmap_update_bits(dc->regs, VSDC_FB_CONFIG(output),
>>> +                          VSDC_FB_CONFIG_SWIZZLE_MASK,
>>> +                          VSDC_FB_CONFIG_SWIZZLE(fmt.swizzle));
>>> +       regmap_assign_bits(dc->regs, VSDC_FB_CONFIG(output),
>>> +                          VSDC_FB_CONFIG_UV_SWIZZLE_EN,
>>> fmt.uv_swizzle);
>>> +
>>> +       /* Get the physical address of the buffer in memory */
>>> +       gem = drm_fb_dma_get_gem_obj(fb, 0);
>>> +
>>> +       /* Compute the start of the displayed memory */
>>> +       bpp = fb->format->cpp[0];
>>> +       dma_addr = gem->dma_addr + fb->offsets[0];
>>> +
>>> +       /* Fixup framebuffer address for src coordinates */
>>> +       dma_addr += (state->src.x1 >> 16) * bpp;
>> bpp is deprecated and should be avoided in new code. You can compute
>> the
>> offset with drm_format_min_pitch():
>>
>> drm_format_min_pitch(fb->format, 0, state->src.x1 >> 16 )
>>
>> Best regards
>> Thomas
>>
>>> +       dma_addr += (state->src.y1 >> 16) * fb->pitches[0];
>>> +
>>> +       regmap_write(dc->regs, VSDC_FB_ADDRESS(output),
>>> +                    lower_32_bits(dma_addr));
>>> +       regmap_write(dc->regs, VSDC_FB_STRIDE(output),
>>> +                    fb->pitches[0]);
>>> +
>>> +       regmap_write(dc->regs, VSDC_FB_TOP_LEFT(output),
>>> +                    VSDC_MAKE_PLANE_POS(state->crtc_x, state-
>>>> crtc_y));
>>> +       regmap_write(dc->regs, VSDC_FB_BOTTOM_RIGHT(output),
>>> +                    VSDC_MAKE_PLANE_POS(state->crtc_x + state-
>>>> crtc_w,
>>> +                                        state->crtc_y + state-
>>>> crtc_h));
>>> +       regmap_write(dc->regs, VSDC_FB_SIZE(output),
>>> +                    VSDC_MAKE_PLANE_SIZE(state->crtc_w, state-
>>>> crtc_h));
>>> +
>>> +       regmap_write(dc->regs, VSDC_FB_BLEND_CONFIG(output),
>>> +                    VSDC_FB_BLEND_CONFIG_BLEND_DISABLE);
>>> +commit:
>>> +       regmap_set_bits(dc->regs, VSDC_FB_CONFIG_EX(output),
>>> +                       VSDC_FB_CONFIG_EX_COMMIT);
>>> +}
>>> +
> =============== 8< ===================

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)



