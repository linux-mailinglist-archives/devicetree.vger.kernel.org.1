Return-Path: <devicetree+bounces-273558-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EzzBdslsGnYgQIAu9opvQ
	(envelope-from <devicetree+bounces-273558-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:08:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F2725160E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:08:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B30223358666
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12A4738AC86;
	Tue, 10 Mar 2026 13:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t6oY9xeF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D3C3876D5
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149535; cv=none; b=hc4yrwHrGD0sO+sVZwuvAfmPx7CfVBj9XSsMrgRzYV8OZFaxEAO/s1XEjCXzN7GCn/Y6C0wK2U+OyIHcYVClU9Fq161+XqUcvbgHW/Amub2onI6dgTJlh7ZFgLSIMEA9UjJjRwb69nbhRXLjRxFygV6BX3jzmPiO6oVQ6uW37Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149535; c=relaxed/simple;
	bh=JZnB1Im94T2fdND96sAVNsxHwb6+Zefxec2EDteNkcE=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=uQoAaed8ycLzN0ouraIEZ+nJqIIARdXa/pJTLLvsEUuWCGf/0djpf+6gt77A90q8hjSnXEz+HVFzu/jO4bP0SvT2/JQJHktSPHyRWpLr6dZ7B85dwu17TbpWp1lzPbh2fDHBc6vgv2q9AV5EivBRn8ZhkMnD54XIqcibFFlFjDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t6oY9xeF; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-485345e1013so19781325e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773149532; x=1773754332; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UvqV6dapH2OVx1j1j7Q1WNL2fvhvQyWnQIfWQtbA8EY=;
        b=t6oY9xeFgVXgudMAH7wXBo8D1NQbQ/Ffu2xaWnYlC+azy5pr+qXirLUYnHjaV5RQuj
         JvsVPJTmdGJFIHbPKFQbMGRLrJf028hqnz2fRrB+8jJ30kxxMOZhpvhKAtJptsdIqfQ9
         d+qqj1XMuzYo22hqGiLo0micgLWfWsAByglqPENoJMWalh1xl9r03CXfZOMQMP+vJfe4
         EWa3Y6BA6SInFiOC7ywrHwNWe867dQ5ItY6pBX7frx7YWGyYo7iKSCzRFjkW4BrXfgTs
         7rUghhbjAKCgPZVu//Uo8iPJz3OK7Aag9GMNJ2l+h0rKbuOQ6skOJc6aW3nldme/eN5z
         OSCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149532; x=1773754332;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UvqV6dapH2OVx1j1j7Q1WNL2fvhvQyWnQIfWQtbA8EY=;
        b=Fjfq20eMPMTMit67AL9PrQIoLUXuPCWOLAMuXwWNjcXMHKmu3UTpaCvp50+wqNXLvX
         anFWXTXe0Gi/5cWf4kaIV44EJyROc3GwSn+HNHAbYbCL0+UeKfZvCKTuQCox4bJnok91
         jaR4JUXaOxvjvUtWxIewMXExBY+n4SkNzD+5hac9bIegpK5N6CdHgVimY2Zumi4ijUlB
         FVo+VPJRbrbaLSGBvfkZTuUqgLxGyI+0nEmXXBdMBdrR0J3Npw9PD6/CsyXwQV/io0Va
         5ODlv2S7o1T+d86QYhfGEXsYs6x+AVlfeYNC5pNMPybOiLcqUnPUmVw0NJRDSAhlQbG+
         bGRw==
X-Forwarded-Encrypted: i=1; AJvYcCVaueb9Pp5NqAASnRT4tM9rCOwXdCSEAOmQWOby3hbsdQZftc+25R+nYqHxTS58seCgUGkBnrJMdd6S@vger.kernel.org
X-Gm-Message-State: AOJu0Yx66Qm7CNqS21WD/M7pO9CpTAkWbKUiLDpuP8+jb/2CmyZP3noo
	eEVv0ETLt8XyFgbtn3N9sKcvzH0tKFC5ZSr+0M6AYd+riYOSOCs6saYM0rDyR3yN3SI=
X-Gm-Gg: ATEYQzziPmYBm6OEA9zMkk3BgJJ0GdUWvkMDZBf5gFL+II/p+zobre8f5sCb4BXderw
	a2QyD5qPGOrdCHCCXPusyYK6OE3iTMpy3Q5Bp2eQWkNcuArm3sBc26AFUKcdRBhO/2TX56Etj/h
	cp2wMsf2P9vnhHXPQ9q5WPBN89ujfWG/YWshomEO43y28OzEuXpgH8Jwx1gx1iyXV44TtyErz/V
	+saPZmA96Prr2MNKb5Bhy5owcRN3Adr1SCouuHpaDxbRey/dZa9AyRyB5eCrT2ufxbX8m1YGFau
	vmbUdbimK2Y16TKq9xJs81CgI1/0Did6Om97dXusktUnTjKzw+MuYf6XqBCKQUrZzl4PTS3LpUY
	KRJdN3cCjf2U/CDov/HgnCEtjD4I0AdaugjBJGJ+u8X+VL0UCn46ZYgwK4qMtdlrGvVXhpmHVlG
	5GkRR6Q7brvTl0bBBzvu2Kimff8oqft75GEFdzepOPTI9m5cAPrJRwp2E5XwARuhn29dgwpyg1W
	8yQ
X-Received: by 2002:a05:600c:1d89:b0:485:3c2e:60d5 with SMTP id 5b1f17b1804b1-485419a2774mr51690425e9.2.1773149531651;
        Tue, 10 Mar 2026 06:32:11 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:4d81:e92:c4c0:3c45? ([2a01:e0a:106d:1080:4d81:e92:c4c0:3c45])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f019a4sm110277825e9.12.2026.03.10.06.32.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 06:32:11 -0700 (PDT)
Message-ID: <95ac5123-32d7-4e87-825d-5ebb424e2641@linaro.org>
Date: Tue, 10 Mar 2026 14:32:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] dt-bindings: display: panel: Few cleanups and fixes
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Artur Weber <aweber.kernel@gmail.com>,
 Jessica Zhang <jesszhan0024@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Dzmitry Sankouski
 <dsankouski@gmail.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20260306-dt-bindings-display-panel-clean-v1-0-3086eda1efaf@oss.qualcomm.com>
 <177314934075.2052605.970030122356003827.b4-ty@linaro.org>
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
In-Reply-To: <177314934075.2052605.970030122356003827.b4-ty@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: B3F2725160E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273558-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ti.com,ideasonboard.com,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linaro.org:dkim,linaro.org:mid,gitlab.freedesktop.org:url]
X-Rspamd-Action: no action

On 3/10/26 14:29, Neil Armstrong wrote:
> Hi,
> 
> On Fri, 06 Mar 2026 13:02:53 +0100, Krzysztof Kozlowski wrote:
>> I would expect this going via display, but that does not happen often,
>> so Rob's tree?
>>
>> BR,
>> Krzysztof
>>
> 
> Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)
> 
> [1/5] dt-bindings: display: samsung,s6d7aa0: Document port
>        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1f5a1ebddc170197348d203b11a05799966dbef6
> [2/5] dt-bindings: display: innolux,p097pfg: Document ports
>        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/32003681e575a9a02cb6814e99157dfab0b9f70d
> [3/5] dt-bindings: display: panel: Drop redundant properties
>        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/72cfe73347fac6252ab77d8dcd405f0a5b1a5a24
> [4/5] dt-bindings: display: panel: Align style of additionalProperties
>        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/66b0baaabd35d302698d0a2c98671bf4e1b87f92
> [5/5] dt-bindings: display: panel: Align style of "true" properties
>        (no commit info)

Last one did not apply anymore, could you rebase it on drm-misc-next ?

Thanks,
Neil

> 


