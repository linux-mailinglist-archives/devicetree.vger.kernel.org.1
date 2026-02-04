Return-Path: <devicetree+bounces-262635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LvNADBBg2kPkQMAu9opvQ
	(envelope-from <devicetree+bounces-262635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:53:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FECEE6096
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:53:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3FDE2301CF83
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 12:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE32B221F0C;
	Wed,  4 Feb 2026 12:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J5Il85vA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363AE19C566
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 12:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770209268; cv=none; b=QK2m7K7HQ8AcYUYM+7yNqsDAiL0R61qJ5I1xydPSsY6YSAC7hxP8pU0tvb5epdwFy3zi4ZLMkox1+J7zamzKUh6odIUkxXyVjkcdhUdQtBe28xB5E0mEm5LjIB6PZ4PO3iNiFOiJ1itSMWR8LUjFqcaiqx4amJYtW8k0pRIwU3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770209268; c=relaxed/simple;
	bh=yF0d6ID2TPgiTUBUDD8JrYCGEITnFDRJ0gKaaU2ZrIo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=H3fIym3BPIFCFLm26/edvKRpUts1cm3O4uH2l4qWeit/S2HXc9ySVNUyc+55aJ+3lpHO6Zc6O5suTOSwEYn5LCtiMNQatf3mzgnNvXZOTP0G0RzcHfRTP3/WmGh9tHHIJ/qrIiB3m/s8YTMlZtUOKWBsZ9tPnZyoRzm/529jEuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J5Il85vA; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-432d2c96215so6382949f8f.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 04:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770209267; x=1770814067; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JZ4TgjfnscnBfCWxdLeUdMlZj/3MYBeNA0M0+tMlZq8=;
        b=J5Il85vAKBwwlm47bFYjKmqkL7/4TZ3iteOqO8rUSU3tZkAgflAkSTbp1st1ol49PE
         pn5YrtCG1Rw9WfgUqYJQSxFA+dWQKdyVDtHFGoqhkET5m4EYmHFRT0nLoQgLj3KeMbRy
         H7GQbsT7pI22JvFh8ky/+69jYnPgr+eJTuCsJLfTXneQ2BNUHxH293wr4iccvy1ivUvl
         Iohthmtdf4os9KDhABYkVqQN9uPpyfy5SexLvSKFcSIvNtmLOBsBzwPMt1gUYToxBx8F
         CvN+XkKfP39abkwD9aRLtrjwnEa/prHPkNmMGwPgQl+dsrxTj0R0uLhU6BE/WRbwDOAJ
         vvZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770209267; x=1770814067;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JZ4TgjfnscnBfCWxdLeUdMlZj/3MYBeNA0M0+tMlZq8=;
        b=eEnuDGzGXQmMU8i3B7P8KfohmT3ba9s67r+Udi6RxoINsjmYjxs2atzR10ujatWa59
         0ETQhJe6TMxWScWlUXNoCZ69cFElPuEXX/HUTXSlzlQSA5pLoiNxjLyk6cnBnbAJUBAd
         6D/5MSzjgdsv+4Mzh7VIHeZVlbI1NGb45T+8DT/ujCRbcaeETUlnpx+TV+8Uw6z3kuKn
         KciiA6K3moxaIKnxfACf3ZuoUKFZRzyxX/oMZyz1nGS3Bx+O50pY30VASMtAwTXUNrgt
         YLfDPQ/a47VTN/h5yl0F2nmD8tdqQD5e+RVEoZT8LQFW8okcsUhj5bsz48+ltd4YhWp3
         /2MQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFK7n7P2BmOeniD/RZxYq77uKv12O3JGGS3BHmQWvV1O83o69SYQhDy37Hrpj6ExwYtwtDkwIhnl4Y@vger.kernel.org
X-Gm-Message-State: AOJu0YxblDqGOPpf1Yq/LbmHGGvYRBnPbFhv0u9KguSSDosavKuefaYb
	qi8IB41d6zpZvWyDcLpk0g2OSr3dPBfbavkLRZdBFXEzbraTpCipjnWyntSi1Evr2eA=
X-Gm-Gg: AZuq6aLMx+sZeIGpWuZKoZRuw4aWj4PxZtez+4o+8kY7qTEPyeslHk+P4O5bKPpr2Kf
	LWkA1xrUpG8R23JgP32R4rd/3nPy59g9t/IVNBy+N7dEGh1Rl2hAr21XX0hz9/yXmMWaSyuA22u
	RmsALOtPl+l2htsCltzRE16M+VfvrA3BkwLNtIu9oxttyj8rY7OwS4shg3/IVd87OJ+UrvoMia5
	0GY3oRa9SSb0MzbPSa9nO4VTPvbcjYoEaicsvojesIX2W/qLWYWHe3S6LWzlqaM7wngUHqYQFzj
	raq4Jb/9JeMBfYW5KEBtk9cJfvuTrp/kgRAtwWWpPdfY7qnuht3J9qgQeUQgpexRxiotEJwG+xH
	8PlEOdxMAJfFNZUen4UMINyUFbbEcDVsLw6090+5yB9AVWsvgVd0dDkZ7Vw3h4MZnk5M87uOHq0
	3S4nL6evz1W6enKJI0WiC7Zw8+jE2x1wiLVh/7aNkTvKQwk8k/sw5itjcBD6BaJyk=
X-Received: by 2002:a05:6000:60f:b0:432:5d73:79a1 with SMTP id ffacd0b85a97d-436180615e4mr3671943f8f.55.1770209266489;
        Wed, 04 Feb 2026 04:47:46 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:b55c:58f7:42fa:3dbf? ([2a01:e0a:3d9:2080:b55c:58f7:42fa:3dbf])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4361805f25dsm6504064f8f.29.2026.02.04.04.47.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 04:47:46 -0800 (PST)
Message-ID: <02c99c62-4f53-41ec-b127-ac6e8653608c@linaro.org>
Date: Wed, 4 Feb 2026 13:47:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 0/4] drm/panel: ilitek-ili9806e: add Rocktech
 RK050HR345-CT106A support
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>,
 linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com, Conor Dooley <conor+dt@kernel.org>,
 David Airlie <airlied@gmail.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Michael Walle <mwalle@kernel.org>,
 Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org
References: <20260203075548.14907-1-dario.binacchi@amarulasolutions.com>
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
In-Reply-To: <20260203075548.14907-1-dario.binacchi@amarulasolutions.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amarulasolutions.com,kernel.org,gmail.com,linux.intel.com,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-262635-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 5FECEE6096
X-Rspamd-Action: no action

On 2/3/26 08:54, Dario Binacchi wrote:
> This series extends the Ilitek ILI9806E panel driver to support the
> Rocktech RK050HR345-CT106A model via SPI.
> 
> To achieve this, the current driver (previously restricted to DSI) is
> refactored to support both DSI and SPI variants independently.
> 
> The series includes:
>   - A refactoring of the existing driver and Kconfig to support
>     multiple buses.
>   - DT binding documentation for the Rocktech RK050HR345-CT106A.
>   - The implementation of the SPI-based driver for the Rocktech panel.
> 
> Changes in v3:
> - Add Reviewed-by tag of Rob Herring
> 
> Changes in v2:
> - Introduce DRM_PANEL_ILITEK_ILI9806E_CORE hidden kconfig option.
> - Split core and DSI logic.
> - Restore vdd-supply as required for both DSI and SPI types in the
>    dt-bindings.
> - Dop useless settings in case of rocktech,rk050hr345-ct106a in the
>    dt-bindings.
> 
> Dario Binacchi (4):
>    drm/panel: ilitek-ili9806e: rename to specific DSI driver
>    drm/panel: ilitek-ili9806e: split core and DSI logic
>    dt-bindings: ili9806e: add Rocktech RK050HR345-CT106A display
>    drm/panel: ilitek-ili9806e: add Rocktech RK050HR345-CT106A SPI panel
> 
>   .../display/panel/ilitek,ili9806e.yaml        |  38 ++-
>   MAINTAINERS                                   |   3 +-
>   drivers/gpu/drm/panel/Kconfig                 |  24 +-
>   drivers/gpu/drm/panel/Makefile                |   4 +-
>   .../drm/panel/panel-ilitek-ili9806e-core.c    | 134 ++++++++
>   .../drm/panel/panel-ilitek-ili9806e-core.h    |  15 +
>   ...ili9806e.c => panel-ilitek-ili9806e-dsi.c} | 153 +++------
>   .../gpu/drm/panel/panel-ilitek-ili9806e-spi.c | 323 ++++++++++++++++++
>   8 files changed, 576 insertions(+), 118 deletions(-)
>   create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.c
>   create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.h
>   rename drivers/gpu/drm/panel/{panel-ilitek-ili9806e.c => panel-ilitek-ili9806e-dsi.c} (82%)
>   create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-spi.c
> 

Looks good overall, please find the kconfig dependency issue reported

Thanks,
Neil

