Return-Path: <devicetree+bounces-271162-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKdrJMZfqGmduAAAu9opvQ
	(envelope-from <devicetree+bounces-271162-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:37:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4552046E9
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:37:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CC9530C5942
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 16:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF6DC36A02E;
	Wed,  4 Mar 2026 16:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ML8PZWow"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7CE36997A
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 16:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772641832; cv=none; b=nr0FI66Xj9Nfvfe6Wc96bEWVPCpYpPkT5rrG/ljAmDvpkyg2FHaop4APXXBXrZ5l2caA0hMgN+kFJcYqsKL+6eqp4K8/RhNesh6JDALk9WbYganrLTzBomideirz3ZrkVDg6cj35H1062uzHMYl5+ffeOdQ4iMurAUJRWE8j2fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772641832; c=relaxed/simple;
	bh=0cRPzCjVm9NbebxpX/jdyzv82yPga9d8fWDQJ3sJaYY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=qSgya6/QwVddohXNRTCj2uTl619/5Oyt1TxpJYIInvS0kpT2P2z2K/qBfojnwIezVgxDDSRbnpGFjbeUZ+XKWDjexLxQN7BUSg2lqErP94AHG7cMBFWo/bp0J+UDPcBvRebQNx9Q9dLitmRu3ekPCY4cgXIZLfj9FYECvwmrPgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ML8PZWow; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-439b94a19fdso3327943f8f.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772641829; x=1773246629; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SHFIA6+GMriVuUBZ6WzV1q43gEqUSDSeozbgYS5nwEs=;
        b=ML8PZWowCSTGCmVc+xhrGIA2uN9uXcqhiOp0/n87UKIWXLdv7fv77vXOvCPrJGxSp+
         qyXnivc6K/PhQwQ6XkV3WmOtATnB1UtA4MN4AffQ4bq+pFmRotrDOenBYE9cBu2+lIlj
         M9rwXyZ8b/IHBQf4yff67MGju/UTL4GCOFlgoEcjUTx142clGkNXHTiveEAPyAy+nR0W
         YRUbSuiVxXmu+/5TWknr7JXhpZWyotDKLGKtm8LmocEo1eBLMJEBsSljkkxsIT8nG+EQ
         yXSDa1X4lLBNpqPc5IzQmJBJJf0ONAR6nZMkkYI/blScPODnAIC5zl3NIQbTpHqdHeq9
         eg9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772641829; x=1773246629;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SHFIA6+GMriVuUBZ6WzV1q43gEqUSDSeozbgYS5nwEs=;
        b=tr8Qm8MEdgSI9nxYljtKOn5ETGL1dwu6eFeOQG1HLPt/wJOH0+Zkx9DBHGw6v3KwxR
         LrEhSFK9Q42I+PEN51s0lH3K1A7k4wZP9qM08eT6R2am7NrTlDQcdCWhm6LqPL9h8OBo
         R1QALuoyXDY8atAbh2lQ0qw7ZY+LRYb5yG2PqiFBLWPiRa8IL3Zo17Gh45f0Tv89hDay
         SNOvy90QtQLK/bbKZyQUxnKCnG+r2e39wxCrZVDIOZKIPRmZ+JG4zXO0jBCbNQ9xgdte
         O58Fij3chHkvCyzZ7KXDYPfFYc5dvXYkWCbyhPGAvzVdQ9ByICEYuf8XCuuq3v48v4PC
         WheA==
X-Gm-Message-State: AOJu0YzarJiLOU+ZItQTJbqmwhn7BuhM7zCMdQS5r0BdiNM8R7rmXko2
	edmEihZh1d5HKQSfj9xiruvMTsVjHID4m95uGw72FYRsbQRVNBOk6S6gazlufqRsOwQ=
X-Gm-Gg: ATEYQzwMlUF9oZ6pblHp+NIYAKC40T7j2ES9NOVadkW1fkjc07N7sxUQ0wcaRzPc0B3
	Vryk/dmLZeKws054zhBKjGJhWoT3ADPmIDgRKbMf5C6fnpa6VsO3IjsQKexQ6fvrCp6A9HMs22g
	vpUZtFoPFjPujs0HR42VtX9iB8VOxn1jxFKgHND+LpW/MM9sMySBbhDsfleVDzE0NPIuhFuBV2f
	y7WY352yexWBjDsfVSKN5LlhE2p1iS2dg3cHXTt1yHVdWAVDBOblhtVc4egWS8TUChW8j0ZEu1d
	5GuI3mUCHSBbhoZNfUsdW+wi+QxEt2WojHv2kHBAPvhduef/hliVUzjdrcmaPBP1FEcHWSsVKoW
	QnpjF/c7s4L2JvJ8ceK2PUlzVJBfNSwuBKP7EW7tyQiTdK306GXuTtN6eFF9tSaTmz9nMe0ptT9
	dZ/TOlJPC6OD33tIA6pIhSyn0KI3wxxHMZVPi9IAA0vIfYnY/1vAz8rX/CMDgbum6KTRIDVJw2V
	kII
X-Received: by 2002:a05:6000:144a:b0:439:b60a:b403 with SMTP id ffacd0b85a97d-439c7fd3a7cmr5211198f8f.34.1772641828796;
        Wed, 04 Mar 2026 08:30:28 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:da6:dde3:e477:94d2? ([2a01:e0a:106d:1080:da6:dde3:e477:94d2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439af926c53sm34892169f8f.8.2026.03.04.08.30.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 08:30:28 -0800 (PST)
Message-ID: <008a0173-2e4d-4bb8-a4a4-158aa947aed1@linaro.org>
Date: Wed, 4 Mar 2026 17:30:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 3/3] drm/panel: add LXD M9189A panel driver
To: Michael Tretter <m.tretter@pengutronix.de>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Jessica Zhang <jesszhan0024@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 kernel@pengutronix.de
References: <20260218-drm-panel-ek79007ad3-v4-0-8ec448bf3ede@pengutronix.de>
 <20260218-drm-panel-ek79007ad3-v4-3-8ec448bf3ede@pengutronix.de>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20260218-drm-panel-ek79007ad3-v4-3-8ec448bf3ede@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 8F4552046E9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271162-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[pengutronix.de,kernel.org,gmail.com,linux.intel.com,suse.de,ffwll.ch];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,linaro.org:replyto,fairphone.com:email,pengutronix.de:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,puri.sm:email,sigxcpu.org:email];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Action: no action

On 2/18/26 10:12, Michael Tretter wrote:
> From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> 
> The LXD M9189A panel is based on the EK79007AD3 DSI display controller.
> It currently supports only 4 lane operation.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
> Changes in v4:
> - Fix typo in driver name ("panel-lxa-m9189a")
> 
> Changes in v3:
> - Change maintainer to Michael Tretter <m.tretter@pengutronix.de>
> - Fix error code if regulator is missing
> - Request power-supply instead of vdd-supply
> 
> v2:
> - use _multi functions
> - remove unnecessary dcs_nop function
> - calculate pixelclock with timings
> suggested by Dmitry Baryshkov
> 
> - rename functions to m9189_ prefix
> - rename struct and c file to use m9189
> - fix commit title to mention m9189
> ---
>   MAINTAINERS                              |   6 +
>   drivers/gpu/drm/panel/Kconfig            |   9 ++
>   drivers/gpu/drm/panel/Makefile           |   1 +
>   drivers/gpu/drm/panel/panel-lxd-m9189a.c | 243 +++++++++++++++++++++++++++++++
>   4 files changed, 259 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e08767323763..ba4030a4d154 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7948,6 +7948,12 @@ F:	Documentation/devicetree/bindings/display/lvds.yaml
>   F:	Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
>   F:	drivers/gpu/drm/panel/panel-lvds.c
>   
> +DRM DRIVER FOR LXD M9189A PANELS
> +M:	Michael Tretter <m.tretter@pengutronix.de>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/display/panel/lxd,m9189a.yaml
> +F:	drivers/gpu/drm/panel/panel-lxd-m9189a.c
> +
>   DRM DRIVER FOR MANTIX MLAF057WE51 PANELS
>   M:	Guido Günther <agx@sigxcpu.org>
>   R:	Purism Kernel Team <kernel@puri.sm>
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index 7a83804fedca..b7d35a73080e 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -442,6 +442,15 @@ config DRM_PANEL_LG_SW43408
>   	  pixel. It provides a MIPI DSI interface to the host and has a
>   	  built-in LED backlight.
>   
> +config DRM_PANEL_LXD_M9189A
> +	tristate "LXD M9189A MIPI-DSI LCD panel"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	help
> +	  Say Y if you want to enable support for the LXD M9189A 4-Lane
> +	  1024x600 MIPI DSI panel.
> +
>   config DRM_PANEL_MAGNACHIP_D53E6EA8966
>   	tristate "Magnachip D53E6EA8966 DSI panel"
>   	depends on OF && SPI
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index b9562a6fdcb3..d1303455a374 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -44,6 +44,7 @@ obj-$(CONFIG_DRM_PANEL_LG_LB035Q02) += panel-lg-lb035q02.o
>   obj-$(CONFIG_DRM_PANEL_LG_LD070WX3) += panel-lg-ld070wx3.o
>   obj-$(CONFIG_DRM_PANEL_LG_LG4573) += panel-lg-lg4573.o
>   obj-$(CONFIG_DRM_PANEL_LG_SW43408) += panel-lg-sw43408.o
> +obj-$(CONFIG_DRM_PANEL_LXD_M9189A) += panel-lxd-m9189a.o
>   obj-$(CONFIG_DRM_PANEL_MAGNACHIP_D53E6EA8966) += panel-magnachip-d53e6ea8966.o
>   obj-$(CONFIG_DRM_PANEL_NEC_NL8048HL11) += panel-nec-nl8048hl11.o
>   obj-$(CONFIG_DRM_PANEL_NEWVISION_NV3051D) += panel-newvision-nv3051d.o
> diff --git a/drivers/gpu/drm/panel/panel-lxd-m9189a.c b/drivers/gpu/drm/panel/panel-lxd-m9189a.c
> new file mode 100644
> index 000000000000..68019e1e43a9
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-lxd-m9189a.c
> @@ -0,0 +1,243 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Generated with linux-mdss-dsi-panel-driver-generator from vendor device tree.
> + * Copyright (c) 2024 Luca Weiss <luca.weiss@fairphone.com>
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/types.h>
> +
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_probe_helper.h>
> +
> +/* Manufacturer specific DSI commands */
> +#define EK79007AD3_GAMMA1		0x80
> +#define EK79007AD3_GAMMA2		0x81
> +#define EK79007AD3_GAMMA3		0x82
> +#define EK79007AD3_GAMMA4		0x83
> +#define EK79007AD3_GAMMA5		0x84
> +#define EK79007AD3_GAMMA6		0x85
> +#define EK79007AD3_GAMMA7		0x86
> +#define EK79007AD3_PANEL_CTRL3		0xB2
> +
> +struct m9189_panel {
> +	struct drm_panel panel;
> +	struct mipi_dsi_device *dsi;
> +	struct regulator *supply;
> +	struct gpio_desc *reset_gpio;
> +	struct gpio_desc *standby_gpio;
> +};
> +
> +static inline struct m9189_panel *to_m9189_panel(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct m9189_panel, panel);
> +}
> +
> +static void m9189_reset(struct m9189_panel *m9189)
> +{
> +	gpiod_set_value_cansleep(m9189->reset_gpio, 0);
> +	msleep(20);
> +	gpiod_set_value_cansleep(m9189->reset_gpio, 1);
> +	msleep(30);
> +	gpiod_set_value_cansleep(m9189->reset_gpio, 0);
> +	msleep(55);
> +}
> +
> +static int m9189_on(struct m9189_panel *m9189)
> +{
> +	struct mipi_dsi_multi_context ctx = { .dsi = m9189->dsi };
> +
> +	ctx.dsi->mode_flags |= MIPI_DSI_MODE_LPM;
> +
> +	/* Gamma 2.2 */
> +	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA1, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA2, 0xB8);
> +	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA3, 0x88);
> +	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA4, 0x88);
> +	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA5, 0x58);
> +	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA6, 0xD2);
> +	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA7, 0x88);
> +	mipi_dsi_msleep(&ctx, 50);
> +
> +	/* 4 Lanes */
> +	mipi_dsi_generic_write_multi(&ctx, (u8[]){ EK79007AD3_PANEL_CTRL3, 0x70 }, 2);
> +
> +	mipi_dsi_dcs_exit_sleep_mode_multi(&ctx);
> +	mipi_dsi_msleep(&ctx, 120);
> +
> +	mipi_dsi_dcs_set_display_on_multi(&ctx);
> +	mipi_dsi_msleep(&ctx, 120);
> +
> +	return ctx.accum_err;
> +}
> +
> +static int m9189_disable(struct drm_panel *panel)
> +{
> +	struct m9189_panel *m9189 = to_m9189_panel(panel);
> +	struct mipi_dsi_multi_context ctx = { .dsi = m9189->dsi };
> +
> +	ctx.dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	mipi_dsi_dcs_enter_sleep_mode_multi(&ctx);
> +	mipi_dsi_msleep(&ctx, 120);
> +
> +	gpiod_set_value_cansleep(m9189->standby_gpio, 1);
> +
> +	return ctx.accum_err;
> +}
> +
> +static int m9189_prepare(struct drm_panel *panel)
> +{
> +	struct m9189_panel *m9189 = to_m9189_panel(panel);
> +	struct device *dev = &m9189->dsi->dev;
> +	int ret;
> +
> +	ret = regulator_enable(m9189->supply);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to enable regulators: %d\n", ret);
> +		return ret;
> +	}
> +
> +	gpiod_set_value_cansleep(m9189->standby_gpio, 0);
> +	msleep(20);
> +	m9189_reset(m9189);
> +
> +	ret = m9189_on(m9189);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to initialize panel: %d\n", ret);
> +		gpiod_set_value_cansleep(m9189->reset_gpio, 1);
> +		regulator_disable(m9189->supply);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int m9189_unprepare(struct drm_panel *panel)
> +{
> +	struct m9189_panel *m9189 = to_m9189_panel(panel);
> +
> +	gpiod_set_value_cansleep(m9189->standby_gpio, 1);
> +	msleep(50);
> +
> +	gpiod_set_value_cansleep(m9189->reset_gpio, 1);
> +	regulator_disable(m9189->supply);
> +
> +	return 0;
> +}
> +
> +static const struct drm_display_mode m9189_mode = {
> +	.clock = (1024 + 160 + 160 + 10) * (600 + 12 + 23 + 1) * 60 / 1000,
> +	.hdisplay = 1024,
> +	.hsync_start = 1024 + 160,
> +	.hsync_end = 1024 + 160 + 160,
> +	.htotal = 1024 + 160 + 160 + 10,
> +	.vdisplay = 600,
> +	.vsync_start = 600 + 12,
> +	.vsync_end = 600 + 12 + 23,
> +	.vtotal = 600 + 12 + 23 + 1,
> +	.width_mm = 154,
> +	.height_mm = 86,
> +};
> +
> +static int m9189_get_modes(struct drm_panel *panel,
> +				  struct drm_connector *connector)
> +{
> +	return drm_connector_helper_get_modes_fixed(connector, &m9189_mode);
> +}
> +
> +static const struct drm_panel_funcs m9189_panel_funcs = {
> +	.prepare = m9189_prepare,
> +	.unprepare = m9189_unprepare,
> +	.disable = m9189_disable,
> +	.get_modes = m9189_get_modes,
> +};
> +
> +static int lxd_m9189_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev = &dsi->dev;
> +	struct m9189_panel *m9189;
> +	int ret;
> +
> +	m9189 = devm_kzalloc(dev, sizeof(*m9189), GFP_KERNEL);
> +	if (!m9189)
> +		return -ENOMEM;
> +
> +	m9189->supply = devm_regulator_get(dev, "power");
> +	if (IS_ERR(m9189->supply))
> +		return dev_err_probe(dev, PTR_ERR(m9189->supply),
> +				     "Failed to get power-supply\n");
> +
> +	m9189->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> +	if (IS_ERR(m9189->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(m9189->reset_gpio),
> +				     "Failed to get reset-gpios\n");
> +
> +	m9189->standby_gpio = devm_gpiod_get(dev, "standby", GPIOD_OUT_LOW);
> +	if (IS_ERR(m9189->standby_gpio))
> +		return dev_err_probe(dev, PTR_ERR(m9189->standby_gpio),
> +				     "Failed to get standby-gpios\n");
> +
> +	m9189->dsi = dsi;
> +	mipi_dsi_set_drvdata(dsi, m9189);
> +
> +	dsi->lanes = 4;
> +	dsi->format = MIPI_DSI_FMT_RGB888;
> +	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST;
> +
> +	drm_panel_init(&m9189->panel, dev, &m9189_panel_funcs,
> +		       DRM_MODE_CONNECTOR_DSI);
> +	m9189->panel.prepare_prev_first = true;
> +
> +	ret = drm_panel_of_backlight(&m9189->panel);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to get backlight\n");
> +
> +	drm_panel_add(&m9189->panel);
> +
> +	ret = mipi_dsi_attach(dsi);
> +	if (ret < 0) {
> +		dev_err_probe(dev, ret, "Failed to attach to DSI host\n");
> +		drm_panel_remove(&m9189->panel);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static void lxd_m9189_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct m9189_panel *m9189 = mipi_dsi_get_drvdata(dsi);
> +	int ret;
> +
> +	ret = mipi_dsi_detach(dsi);
> +	if (ret < 0)
> +		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
> +
> +	drm_panel_remove(&m9189->panel);
> +}
> +
> +static const struct of_device_id lxd_m9189_of_match[] = {
> +	{ .compatible = "lxd,m9189a" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, lxd_m9189_of_match);
> +
> +static struct mipi_dsi_driver lxd_m9189_driver = {
> +	.probe = lxd_m9189_probe,
> +	.remove = lxd_m9189_remove,
> +	.driver = {
> +		.name = "panel-lxd-m9189a",
> +		.of_match_table = lxd_m9189_of_match,
> +	},
> +};
> +module_mipi_dsi_driver(lxd_m9189_driver);
> +
> +MODULE_DESCRIPTION("DRM driver for LXD M9189A MIPI-DSI panels");
> +MODULE_LICENSE("GPL");
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

