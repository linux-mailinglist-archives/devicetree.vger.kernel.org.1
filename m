Return-Path: <devicetree+bounces-262934-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UB8tBNZjhGkK2wMAu9opvQ
	(envelope-from <devicetree+bounces-262934-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:33:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F9AF0D32
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:33:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65EEA303CE10
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3CAC396B87;
	Thu,  5 Feb 2026 09:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="JgrWYSbM";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="x/Xr4eTI";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="JgrWYSbM";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="x/Xr4eTI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645A6301719
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 09:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770283858; cv=none; b=r5YEuwAL1zpm3w7Ixzb4YOtsHJZIGvO/c1rYA0vSlzBLenrPbZbwYNiwinJKvBEaxGIaOfsBivUzWlrL+IqjVtWu3H1fTchmp9yAuQqBVYOVJ9e2/yBnxRhIObZD4hvY3P/TqlDKNYe1TLK/TSX7hNB95XONV37BHM3e/P/kvaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770283858; c=relaxed/simple;
	bh=UCBEnXtSVBqsou/a+UzlTfUIcyRO2n+ek03g0uRAB/Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HnBy1drzN/RqZLiAqImxU81XUxhNYDth39H/dISaBCF2VO8WxzNjSINwDjHgEkZqtjbhmNQK11pczG8TL5EgkoS826+1EZSGoVtvNJLcV7JDi3kSSQJ+d199+yj9EtP1KZS7LHioJEUhOxLKi2l6zSsOs+eod4J0hGC1C2QSkjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=JgrWYSbM; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=x/Xr4eTI; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=JgrWYSbM; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=x/Xr4eTI; arc=none smtp.client-ip=195.135.223.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id B14743E766;
	Thu,  5 Feb 2026 09:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1770283856; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=XY+5F7eiJUNFHYoaIWWokkpSAzmiSLPZoyLUPmhmHa0=;
	b=JgrWYSbMyCnsSiRoegio6OgghlGookwTHCTt6MGIwkcH+3Ce8EkBUKYRH9w+QVI8NJXtVy
	s0ckwlMuu2uSlfSlfc1jDcogJUsjywoyCce/q/FlzDEoQe+lH+aYGwEAPkRQdHQR3xBEs0
	lLyrwIptIO8MmoYoUi7LqQ6xzxEtq9w=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1770283856;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=XY+5F7eiJUNFHYoaIWWokkpSAzmiSLPZoyLUPmhmHa0=;
	b=x/Xr4eTIhaFcjxgVIGvLEDun1keoGuUzASn1QtGAiz5tSTyfMaMLo8blh9Cq4KK1t89gle
	QQH8TRcS1CGj/HAg==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1770283856; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=XY+5F7eiJUNFHYoaIWWokkpSAzmiSLPZoyLUPmhmHa0=;
	b=JgrWYSbMyCnsSiRoegio6OgghlGookwTHCTt6MGIwkcH+3Ce8EkBUKYRH9w+QVI8NJXtVy
	s0ckwlMuu2uSlfSlfc1jDcogJUsjywoyCce/q/FlzDEoQe+lH+aYGwEAPkRQdHQR3xBEs0
	lLyrwIptIO8MmoYoUi7LqQ6xzxEtq9w=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1770283856;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=XY+5F7eiJUNFHYoaIWWokkpSAzmiSLPZoyLUPmhmHa0=;
	b=x/Xr4eTIhaFcjxgVIGvLEDun1keoGuUzASn1QtGAiz5tSTyfMaMLo8blh9Cq4KK1t89gle
	QQH8TRcS1CGj/HAg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 016AF3EA63;
	Thu,  5 Feb 2026 09:30:55 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 9tp3Ok9jhGnGJQAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 05 Feb 2026 09:30:55 +0000
Message-ID: <ccb973b8-4b13-4a70-be48-06b2cbe0adf8@suse.de>
Date: Thu, 5 Feb 2026 10:30:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/8] Verisilicon DC8200 driver (and adaption to TH1520)
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
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Han Gao <gaohan@iscas.ac.cn>,
 Yao Zi <ziyao@disroot.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, Icenowy Zheng <uwu@icenowy.me>
References: <20260129023922.1527729-1-zhengxingda@iscas.ac.cn>
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
In-Reply-To: <20260129023922.1527729-1-zhengxingda@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -2.80
X-Spam-Level: 
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[iscas.ac.cn,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch,redhat.com];
	TAGGED_FROM(0.00)[bounces-262934-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[suse.de:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 63F9AF0D32
X-Rspamd-Action: no action

Hi,

patches 1 to 5 have been merged into drm-misc-next. In patch 3, I 
replaced COMPILER_TEST with COMPILE_TEST in the Kconfig file.

Best regards
Thomas

Am 29.01.26 um 03:39 schrieb Icenowy Zheng:
> This patchset tries to add a driver for Verisilicon DC8200 driver, and
> demonstrates the driver on T-Head TH1520 with its HDMI output.
>
> This display controller IP is used on StarFive JH7110 too, but as the
> HDMI controller used there isn't as common as the DesignWare one, I
> choose to use TH1520 in this patchset.
>
> The DC driver is written with other DC-series (mainly DC8000, which is
> known to be used on Eswin EIC7700 SoC) display controllers in mind, and
> uses the identification registers available on all Vivante branded IPs.
> A known exception is DCNano display controller, which is unlikely to be
> supported by this driver because of totally different register map and
> no known identification registers. (P.S. the in-tree loongson DRM driver
> seems to be for some DCNano instances based on the register map.)
>
> The HDMI controller seems to come with some common PHY by Synopsys, the
> DesignWare HDMI TX 2.0 PHY. By searching a few register names from the
> BSP driver of that PHY, that PHY seems to be used by a in-tree dw-hdmi
> glue, rcar_dw_hdmi -- an updated downstream version of rcar_dw_hdmi
> contains all 6 registers set here in the th1520-dw-hdmi driver. Some
> more suprising thing is that RK3288 uses the same PHY too, but the
> in-tree dw_hdmi-rockchip driver writes the configuration data array in a
> weird way to reuse the HDMI 3D TX PHY configuring function. It might be
> valuable to add common configuring function and configuration data
> definition for this HDMI 2.0 PHY too, but the current driver in this
> patchset simply duplicated most configuration logic from rcar_dw_hdmi
> driver (but with 3 extra configuration registers configured, which is
> done by their downstream kernel).
>
> This revision contains only little code change -- only a Kconfig select
> is added. The other purpose is to collect Thomas Zimmermann's tags and
> squash MAINTAINERS change to real driver per his suggestion.
>
> Icenowy Zheng (8):
>    dt-bindings: vendor-prefixes: add verisilicon
>    dt-bindings: display: add verisilicon,dc
>    drm: verisilicon: add a driver for Verisilicon display controllers
>    dt-bindings: display/bridge: add binding for TH1520 HDMI controller
>    drm/bridge: add a driver for T-Head TH1520 HDMI controller
>    riscv: dts: thead: add DPU and HDMI device tree nodes
>    riscv: dts: thead: lichee-pi-4a: enable HDMI
>    mailmap: map all Icenowy Zheng's mail addresses
>
>   .mailmap                                      |   4 +
>   .../display/bridge/thead,th1520-dw-hdmi.yaml  | 120 ++++++
>   .../bindings/display/verisilicon,dc.yaml      | 122 ++++++
>   .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>   MAINTAINERS                                   |   8 +
>   .../boot/dts/thead/th1520-lichee-pi-4a.dts    |  25 ++
>   arch/riscv/boot/dts/thead/th1520.dtsi         |  66 ++++
>   drivers/gpu/drm/Kconfig                       |   2 +
>   drivers/gpu/drm/Makefile                      |   1 +
>   drivers/gpu/drm/bridge/Kconfig                |  10 +
>   drivers/gpu/drm/bridge/Makefile               |   1 +
>   drivers/gpu/drm/bridge/th1520-dw-hdmi.c       | 173 ++++++++
>   drivers/gpu/drm/verisilicon/Kconfig           |  16 +
>   drivers/gpu/drm/verisilicon/Makefile          |   5 +
>   drivers/gpu/drm/verisilicon/vs_bridge.c       | 371 ++++++++++++++++++
>   drivers/gpu/drm/verisilicon/vs_bridge.h       |  39 ++
>   drivers/gpu/drm/verisilicon/vs_bridge_regs.h  |  54 +++
>   drivers/gpu/drm/verisilicon/vs_crtc.c         | 191 +++++++++
>   drivers/gpu/drm/verisilicon/vs_crtc.h         |  31 ++
>   drivers/gpu/drm/verisilicon/vs_crtc_regs.h    |  60 +++
>   drivers/gpu/drm/verisilicon/vs_dc.c           | 207 ++++++++++
>   drivers/gpu/drm/verisilicon/vs_dc.h           |  38 ++
>   drivers/gpu/drm/verisilicon/vs_dc_top_regs.h  |  27 ++
>   drivers/gpu/drm/verisilicon/vs_drm.c          | 182 +++++++++
>   drivers/gpu/drm/verisilicon/vs_drm.h          |  28 ++
>   drivers/gpu/drm/verisilicon/vs_hwdb.c         | 150 +++++++
>   drivers/gpu/drm/verisilicon/vs_hwdb.h         |  29 ++
>   drivers/gpu/drm/verisilicon/vs_plane.c        | 124 ++++++
>   drivers/gpu/drm/verisilicon/vs_plane.h        |  72 ++++
>   .../gpu/drm/verisilicon/vs_primary_plane.c    | 173 ++++++++
>   .../drm/verisilicon/vs_primary_plane_regs.h   |  53 +++
>   31 files changed, 2384 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/display/bridge/thead,th1520-dw-hdmi.yaml
>   create mode 100644 Documentation/devicetree/bindings/display/verisilicon,dc.yaml
>   create mode 100644 drivers/gpu/drm/bridge/th1520-dw-hdmi.c
>   create mode 100644 drivers/gpu/drm/verisilicon/Kconfig
>   create mode 100644 drivers/gpu/drm/verisilicon/Makefile
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_bridge.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_bridge.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_bridge_regs.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc_regs.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_top_regs.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_drm.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_drm.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_hwdb.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_hwdb.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_primary_plane.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_primary_plane_regs.h
>

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)



