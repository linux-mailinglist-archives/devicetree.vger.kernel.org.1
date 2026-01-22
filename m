Return-Path: <devicetree+bounces-258230-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4P7RCOXVcWk+MgAAu9opvQ
	(envelope-from <devicetree+bounces-258230-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:46:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CB99162A1F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:46:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EF3184E7658
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 07:38:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11ADA48C8A5;
	Thu, 22 Jan 2026 07:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="qqqhE860";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="m4DpVuIb";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="qqqhE860";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="m4DpVuIb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308A248BD54
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769067172; cv=none; b=cgpqcNTocXO+Llm+s4BM4VLoSZa5gfRhJRDgnHDAjTo6Q8uUTAWzP+P1Dru/oUfnZ31qWnnk810GMXMSpMtUrfXJ/Ocx4Q8FyWbivA99yjIixIzIrproBBEI3Ghm9Uyb7GmSnXj0gzpZG/q3tDHsUmomg8YkSOA386FgVXCd5Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769067172; c=relaxed/simple;
	bh=hz+kB6xHD3pGacxIp8BCy9KYawBQBiAAHw5XcqsySvw=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=vBHSWhUEjvN8ZuRIkqEw+VCPmcKnquI7Vz7aYNp5AMQWnGJBzLUxlg8sJM3G/T5QoCD3IYcWX7ps497T9ow24jP+rqneGDjUp2CWt1Vy+tWqTZmPGhnXxHmaqV/0JLoXvTVo/sXl1BRO9YaOL5w4G7Z2SCsQOPxly9vmK4UAudI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=qqqhE860; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=m4DpVuIb; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=qqqhE860; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=m4DpVuIb; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 37F365BCC7;
	Thu, 22 Jan 2026 07:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1769067162; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=oKS0u/GglQcp/lNyRVwVTZ698khWL/vphTnJ2a9GzKc=;
	b=qqqhE8601qbJBhz3U8yC4ukHxLcCqB06H2uCNxrbunLdYztcX1xJf5Xoe832ZmvSD9KVlU
	vDm4Pts7qjapBfx7GIlFoojjiUepB0sH1k+NZZCm42ejXoOuofRatbLcGphHj21SVuAtUA
	jNz5aKS01hAWoogv5jwqx+bnJ8nS71U=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1769067162;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=oKS0u/GglQcp/lNyRVwVTZ698khWL/vphTnJ2a9GzKc=;
	b=m4DpVuIb3SCRdjFd87eCu812CDxXihAn8mm/pXKXgdzEgGV8yysMQS8Tzg+rclQgltDVfa
	1l14IJwOB7FhdgCA==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=qqqhE860;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=m4DpVuIb
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1769067162; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=oKS0u/GglQcp/lNyRVwVTZ698khWL/vphTnJ2a9GzKc=;
	b=qqqhE8601qbJBhz3U8yC4ukHxLcCqB06H2uCNxrbunLdYztcX1xJf5Xoe832ZmvSD9KVlU
	vDm4Pts7qjapBfx7GIlFoojjiUepB0sH1k+NZZCm42ejXoOuofRatbLcGphHj21SVuAtUA
	jNz5aKS01hAWoogv5jwqx+bnJ8nS71U=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1769067162;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=oKS0u/GglQcp/lNyRVwVTZ698khWL/vphTnJ2a9GzKc=;
	b=m4DpVuIb3SCRdjFd87eCu812CDxXihAn8mm/pXKXgdzEgGV8yysMQS8Tzg+rclQgltDVfa
	1l14IJwOB7FhdgCA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 7DD5D3EA63;
	Thu, 22 Jan 2026 07:32:41 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id hd5iHZnScWnGMAAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 22 Jan 2026 07:32:41 +0000
Message-ID: <22b8d941-3e02-4526-b5e4-3c6cf4e1b431@suse.de>
Date: Thu, 22 Jan 2026 08:32:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/9] drm: verisilicon: add a driver for Verisilicon
 display controllers
From: Thomas Zimmermann <tzimmermann@suse.de>
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
 <4afa6f3110790c701c5e24901e9e66560cf21ad0.camel@icenowy.me>
 <f49d5e01-1e01-4393-9ba3-2079006984ae@suse.de>
Content-Language: en-US
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
In-Reply-To: <f49d5e01-1e01-4393-9ba3-2079006984ae@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Score: -3.01
X-Spam-Level: 
X-Spam-Flag: NO
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
	TAGGED_FROM(0.00)[bounces-258230-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,suse.com:url,suse.de:mid,suse.de:dkim,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: CB99162A1F
X-Rspamd-Action: no action

Hi

Am 22.01.26 um 08:31 schrieb Thomas Zimmermann:
> Hi
>
> Am 22.01.26 um 08:06 schrieb Icenowy Zheng:
>> 在 2026-01-21星期三的 13:56 +0100，Thomas Zimmermann写道：
>>
>> =============== 8< =================
>>>> +
>>>> +       if (irqs)
>>>> +               pr_warn("Unknown Verisilicon DC interrupt 0x%x
>>>> fired!\n", irqs);
>>> I'd avoid pr_warn() here. This can fill your logs quickly.
>> Then is pr_warn_once() okay?
>
> Yeah, warn_once should be fine.

BTW drm_warn_once() would be preferable over plain pr_warn().

>
>>
>>>> +
>>>> +       return IRQ_HANDLED;
>>>> +}
>> =============== 8< =================
>
> Maybe consider returning IRQ_NONE if the (irq) tests succeeds.
>
>>
>>>> +       /* Fixup framebuffer address for src coordinates */
>>>> +       dma_addr += (state->src.x1 >> 16) * bpp;
>>> bpp is deprecated and should be avoided in new code. You can compute
>>> the
>>> offset with drm_format_min_pitch():
>>>
>>> drm_format_min_pitch(fb->format, 0, state->src.x1 >> 16 )
>> Well it seems quite difficult to track what's deprecated in the DRM
>> subsystem, is there anything like a bulletin?
>
> No, you either know or find out during the review. :) We also tend to 
> leave comments in the code. [1]
>
> [1] 
> https://elixir.bootlin.com/linux/v6.18.6/source/include/drm/drm_fourcc.h#L82
>
> Best regards
> Thomas
>
>>
>>
>> Thanks,
>> Icenowy
>

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)



