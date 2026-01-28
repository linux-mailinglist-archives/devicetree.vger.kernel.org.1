Return-Path: <devicetree+bounces-260222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDmuAF7CeWl0zAEAu9opvQ
	(envelope-from <devicetree+bounces-260222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:01:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA699DF8C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:01:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 974DD3003D37
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1798D2FB630;
	Wed, 28 Jan 2026 08:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="ugOcTLVB";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="jRm8uTDT";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="ugOcTLVB";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="jRm8uTDT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765D826A1CF
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769587290; cv=none; b=Zwk0b9UYeIm4uAQz0vN4QGiT0Uklhcu2nYFOR7C7vQHrgKsOFEiCI/Je19CgYGo4ZZG8BX8oLYHbfXYlAHN7jjV0SS0rnVQ/wLDBOWRBkoWwXyXV6NFoUff6Q9kFjc5fGvKnJY/9HlYlHU+sB4TqucxrBOesPOPdaTFiTxZvNJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769587290; c=relaxed/simple;
	bh=8Nzjnr3ZiI9IGvxGNf3diRub4ag/a+fVL2QlBnNqnG0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H9JaFz43lwAOiA28SrLoNQG7rzFJ5x/xs2QnWAdHb92G/5TmGrkWl03fqmEMWjQsl2JQWcK2jUAx/jEhbcj36mkWYwNIX8i9OxtmwDKcGrsyQzu/RPIHBMVjghfLt9EcQPgziPtnLQhkscxiUJ4IaWYj3zoqvfFWijAOATUEjUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=ugOcTLVB; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=jRm8uTDT; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=ugOcTLVB; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=jRm8uTDT; arc=none smtp.client-ip=195.135.223.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id B63BD33A87;
	Wed, 28 Jan 2026 08:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1769587286; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=JfbaSaMJ4TfRlYB+hqYtPRcOusylzLSXuD1Cbd6DQZY=;
	b=ugOcTLVBHB2UxK1Z1DKH0Gn7qH7+ti43n/QimfRAs/C5a8g4IoWdjrcB4HucogcM9Km/6Q
	t9JNeUgIHxMqi4Xs8Sn+WK8W86602uX/Y+PntqVU4MzbVv222DyN101LhAd68Z7lBAwCK0
	ug2D2QASj4zSXnkOvk3N93j7liztShA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1769587286;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=JfbaSaMJ4TfRlYB+hqYtPRcOusylzLSXuD1Cbd6DQZY=;
	b=jRm8uTDT6yuTcUN/6XLq7s4bba8SMStprr4hVlymAG61+xto8Ut6B4LvQyboih8Jq4WUvI
	QxzfE/+A5eeQvOAw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1769587286; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=JfbaSaMJ4TfRlYB+hqYtPRcOusylzLSXuD1Cbd6DQZY=;
	b=ugOcTLVBHB2UxK1Z1DKH0Gn7qH7+ti43n/QimfRAs/C5a8g4IoWdjrcB4HucogcM9Km/6Q
	t9JNeUgIHxMqi4Xs8Sn+WK8W86602uX/Y+PntqVU4MzbVv222DyN101LhAd68Z7lBAwCK0
	ug2D2QASj4zSXnkOvk3N93j7liztShA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1769587286;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=JfbaSaMJ4TfRlYB+hqYtPRcOusylzLSXuD1Cbd6DQZY=;
	b=jRm8uTDT6yuTcUN/6XLq7s4bba8SMStprr4hVlymAG61+xto8Ut6B4LvQyboih8Jq4WUvI
	QxzfE/+A5eeQvOAw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id EF47D3EA61;
	Wed, 28 Jan 2026 08:01:25 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id OEYCOVXCeWn1BgAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Wed, 28 Jan 2026 08:01:25 +0000
Message-ID: <cbcb8b95-67c5-4ac2-ae27-6949bc0ed10b@suse.de>
Date: Wed, 28 Jan 2026 09:01:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 8/9] MAINTAINERS: assign myself as maintainer for
 verisilicon DC driver
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>,
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
 Michal Wilczynski <m.wilczynski@samsung.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Han Gao <rabenda.cn@gmail.com>,
 Yao Zi <ziyao@disroot.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, Icenowy Zheng <uwu@icenowy.me>
References: <20260123092830.4046009-1-zhengxingda@iscas.ac.cn>
 <20260123092830.4046009-9-zhengxingda@iscas.ac.cn>
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
In-Reply-To: <20260123092830.4046009-9-zhengxingda@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Score: -2.80
X-Spam-Level: 
X-Spam-Flag: NO
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260222-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[iscas.ac.cn,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch,redhat.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,samsung.com,bootlin.com,gmail.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,icenowy.me];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[suse.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[icenowy.me:email,suse.de:email,suse.de:dkim,suse.de:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,suse.com:url]
X-Rspamd-Queue-Id: 2EA699DF8C
X-Rspamd-Action: no action



Am 23.01.26 um 10:28 schrieb Icenowy Zheng:
> From: Icenowy Zheng <uwu@icenowy.me>
>
> As I am the author of this rewritten driver, it makes sense for me to be
> the maintainer.
>
> Confirm this in MAINTAINERS file.
>
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>

> ---
> No changes since v4.
>
> Changes in v3:
> - Switch to my ISCAS mailbox.
>
> No changes in v2.
>
>   MAINTAINERS | 7 +++++++
>   1 file changed, 7 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index fc04fc007a054..507ffef26dac1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8658,6 +8658,13 @@ F:	Documentation/devicetree/bindings/display/brcm,bcm2835-*.yaml
>   F:	drivers/gpu/drm/vc4/
>   F:	include/uapi/drm/vc4_drm.h
>   
> +DRM DRIVERS FOR VERISILICON DISPLAY CONTROLLER IP
> +M:	Icenowy Zheng <zhengxingda@iscas.ac.cn>
> +L:	dri-devel@lists.freedesktop.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> +F:	drivers/gpu/drm/verisilicon/
> +
>   DRM DRIVERS FOR VIVANTE GPU IP
>   M:	Lucas Stach <l.stach@pengutronix.de>
>   R:	Russell King <linux+etnaviv@armlinux.org.uk>

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)



