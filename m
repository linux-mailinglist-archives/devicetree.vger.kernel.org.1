Return-Path: <devicetree+bounces-271981-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOolJvmuqmluVQEAu9opvQ
	(envelope-from <devicetree+bounces-271981-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:39:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0156121EF82
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:39:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D6F0F30C3F68
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 245FA36682F;
	Fri,  6 Mar 2026 10:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mjwFSqTE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A44233CE8A
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:36:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772793399; cv=none; b=XpA9CsaO7SeAqNhlURxzY4WP/Ph7e2+8E6ylXgxNm8UzCla1CX9tU4ondfd9c0hN6pjIzVAaJXcMctLslySQdwxgg8mNuRKEIc0Z5/NQ+iFJSlNHbme9cuC3H8tcijWKm0Uo41pDmwbx7AtP+vdR2GNptYen6qyjoLrrk+tanR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772793399; c=relaxed/simple;
	bh=IA6hO/1ZPm064OtMsMAAPVkw4IT5irkjIyMMZUezMBk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=A06xjasNBji5EeeOLrCjO0KHXq65ZWDO/DHIwoTUs6O4g2TBNsgQFfJdgbd91PQ2Gp+HXvFRAxmvsws7UteGuiwRVPq3eLNT/fzOODsDzBd61m6PgmpVzitA390+x/xV4lWkH0vcDGFy/J++yD2LLMewv6vy8etuv3xsclfzgfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mjwFSqTE; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439aeed8a5bso6180108f8f.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772793395; x=1773398195; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3EGe3SmyrzPtlbWZhEG6oNZxtdM4EE/DcJpAMXyPYQ4=;
        b=mjwFSqTE6h45qVe5ujoe4ELN2Fr1MM7kKWkrHQWZyrayCxZxUmZ5PTFigf1rlKf6nH
         hlNScSkvcCkeOCN61EJGhdDUS+NYRUVBMfxK8EAs4WVFzl4pZM1+KQ3KnfBPEIMMKoZD
         m13maA7ErGePKsdpwcRVbEUJR24YTXfqPWSwk9Ch5/loEwT0xGoDslWvS875mfv12y/+
         BrvqGsRyX51JFAzdCgG8agaC9qLckLY5pgZOiTx+JD4ueM08hGrp3RPImnuaK97EUkNa
         kgd8YcVaG4LkLNwz7yMqAYToaDs7WQh83w/hz2V4g+aiO9CesQN5dDdrN32AuwowJpGt
         8i6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772793395; x=1773398195;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3EGe3SmyrzPtlbWZhEG6oNZxtdM4EE/DcJpAMXyPYQ4=;
        b=PD34KnKYdRVkSZtyurTUBlXbbWAo28ztKxA4AOIzJHb/afXrdLEH5s9WYetjXdNw2k
         A6dWwS0BfG5lhjl84EApEvxPFz6d3nEGALh2vNqedMKoFVD+cr/uEosreJV9K5BcoFH/
         j3gytYYvLVoMHpZtxT3lHzUwN//heYvnxIQ6Y7CjZTnltJnkmGL+xJVcT1IyssF4yBTD
         V6/QfiFU0YnSwuq2pc6NHjWiTpN8DQsG78dw+coLEh/vFiZyPJXGf46VKdXGqyf6hew5
         wZiQjgrWVclSVUZS80OvTz87OpZGzoif6u+kIAZ9pbsFYZP0PO0mHc3nuBDUgvsqzsps
         7hVg==
X-Forwarded-Encrypted: i=1; AJvYcCUnBtr4EpQI8ErNInYePb/DFVSnZHAP0tpryJrcg+TbibbSG5cKxIli6Oyl7Slk8La2Qpam++n+y9Ih@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyhk4TF0iJVFOr1/69k71F5RqExMaUCgws+l8xWpurzBBHXo3A
	EljcEvNlrOD8RpF0UvnV+FNZB5NbhHJGilmPlRPE4/zt+rjhFDVFzG+HF6EgyXUcwlE=
X-Gm-Gg: ATEYQzyhiUqZMams5kut9eFwbqFO7UrE76k01oJfhxocljwl2REwXGFVYoZIheJYw6M
	AbSt8QRDXdxoGX8cXfcif7L1ibW4WJmSjJtnoqvswCWXtuytXJZBWsLJbDBOVcNtm2LsbqjndKy
	y1jUYVIp+h+V4jl2MVKCg8W78mcbXWslxxLDJrK2TKG3/Y5Mj+97Iv27/u2AW3xBd1E6g0pM2dt
	7hMlbF1KF3ZPu2UFT2vkz0yHGHJrgsnMUrppaz053haIDWlRnXyrA4x7OCqYDsT0kfnDoJgPAY2
	sECDtpsB7qRMxKcb+m7466Pn9flUfSDJt0m0I8BPqkt8ZnTQ+8V7nXeregPjy4oN07nsq3HHHZM
	8XrVAkJ3gKOWCxkzn1Svg2Q9KuJ+zoLwWBDNpo8HMKoUf5q1+n8/xgEOm4PWRb6B9UhHwaAnSmo
	E3Us3DbpTEe6GzdK8UEayMkjOkEY2uwOShJSLi9iW3zUxHjXKJ6EQljSPGmSKHo1gpkmpjz2BK4
	qg6aVCcNL+cujg=
X-Received: by 2002:a05:6000:230f:b0:439:b7a2:60ff with SMTP id ffacd0b85a97d-439da8820f6mr2786963f8f.32.1772793394525;
        Fri, 06 Mar 2026 02:36:34 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:cbfe:649:7f17:8b95? ([2a01:e0a:106d:1080:cbfe:649:7f17:8b95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae56300sm2769384f8f.37.2026.03.06.02.36.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 02:36:34 -0800 (PST)
Message-ID: <61cbca48-6e3d-436f-992f-e7548948eb96@linaro.org>
Date: Fri, 6 Mar 2026 11:36:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] dt-bindings: display/msm: move DSI PHY bindings to phy/
 subdir
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov
 <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Krishna Manikandan <quic_mkrishn@quicinc.com>,
 Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260305-msm-dsi-phy-v1-1-0a99ac665995@oss.qualcomm.com>
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
In-Reply-To: <20260305-msm-dsi-phy-v1-1-0a99ac665995@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 0156121EF82
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
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271981-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Action: no action

On 3/5/26 00:47, Dmitry Baryshkov wrote:
> Historically DSI PHY bindings landed to the display/msm subdir, however
> they describe PHYs and as such they should be in the phy/ subdir.
> Follow the example of other Qualcomm display-related PHYs (HDMI, eDP)
> and move bindings for the Qualcomm DSI PHYs to the correct subdir.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Merge strategy: I'd ask to merge bindings through the msm tree, reducing
> the conflicts for the current kernel development cycle. Starting from
> the cycle after this patch is merged, DSI PHY bindings should go through
> the PHY tree.
> ---
>   .../{display/msm/dsi-phy-10nm.yaml => phy/qcom,dsi-phy-10nm.yaml}     | 4 ++--
>   .../{display/msm/dsi-phy-14nm.yaml => phy/qcom,dsi-phy-14nm.yaml}     | 4 ++--
>   .../{display/msm/dsi-phy-20nm.yaml => phy/qcom,dsi-phy-20nm.yaml}     | 4 ++--
>   .../{display/msm/dsi-phy-28nm.yaml => phy/qcom,dsi-phy-28nm.yaml}     | 4 ++--
>   .../{display/msm/dsi-phy-7nm.yaml => phy/qcom,dsi-phy-7nm.yaml}       | 4 ++--
>   .../{display/msm/dsi-phy-common.yaml => phy/qcom,dsi-phy-common.yaml} | 2 +-
>   6 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-10nm.yaml
> similarity index 96%
> rename from Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-10nm.yaml
> index fc9abf090f0d..d98217747ad1 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-10nm.yaml
> @@ -1,7 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/display/msm/dsi-phy-10nm.yaml#
> +$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-10nm.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Display DSI 10nm PHY
> @@ -10,7 +10,7 @@ maintainers:
>     - Krishna Manikandan <quic_mkrishn@quicinc.com>
>   
>   allOf:
> -  - $ref: dsi-phy-common.yaml#
> +  - $ref: qcom,dsi-phy-common.yaml#
>   
>   properties:
>     compatible:
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-14nm.yaml
> similarity index 94%
> rename from Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-14nm.yaml
> index 206a9a4b3845..be31b9bac9d5 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-14nm.yaml
> @@ -1,7 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/display/msm/dsi-phy-14nm.yaml#
> +$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-14nm.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Display DSI 14nm PHY
> @@ -10,7 +10,7 @@ maintainers:
>     - Krishna Manikandan <quic_mkrishn@quicinc.com>
>   
>   allOf:
> -  - $ref: dsi-phy-common.yaml#
> +  - $ref: qcom,dsi-phy-common.yaml#
>   
>   properties:
>     compatible:
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-20nm.yaml
> similarity index 93%
> rename from Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-20nm.yaml
> index 93570052992a..1d135419d015 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-20nm.yaml
> @@ -1,7 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/display/msm/dsi-phy-20nm.yaml#
> +$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-20nm.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Display DSI 20nm PHY
> @@ -10,7 +10,7 @@ maintainers:
>     - Krishna Manikandan <quic_mkrishn@quicinc.com>
>   
>   allOf:
> -  - $ref: dsi-phy-common.yaml#
> +  - $ref: qcom,dsi-phy-common.yaml#
>   
>   properties:
>     compatible:
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-28nm.yaml
> similarity index 94%
> rename from Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-28nm.yaml
> index 371befa9f9d2..f8fe75fa29d7 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-28nm.yaml
> @@ -1,7 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/display/msm/dsi-phy-28nm.yaml#
> +$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-28nm.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Display DSI 28nm PHY
> @@ -10,7 +10,7 @@ maintainers:
>     - Krishna Manikandan <quic_mkrishn@quicinc.com>
>   
>   allOf:
> -  - $ref: dsi-phy-common.yaml#
> +  - $ref: qcom,dsi-phy-common.yaml#
>   
>   properties:
>     compatible:
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-7nm.yaml
> similarity index 95%
> rename from Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-7nm.yaml
> index 9a9a6c4abf43..d45015e24639 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-7nm.yaml
> @@ -1,7 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/display/msm/dsi-phy-7nm.yaml#
> +$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-7nm.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Display DSI 7nm PHY
> @@ -10,7 +10,7 @@ maintainers:
>     - Jonathan Marek <jonathan@marek.ca>
>   
>   allOf:
> -  - $ref: dsi-phy-common.yaml#
> +  - $ref: qcom,dsi-phy-common.yaml#
>   
>   properties:
>     compatible:
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-common.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-common.yaml
> similarity index 91%
> rename from Documentation/devicetree/bindings/display/msm/dsi-phy-common.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-common.yaml
> index d0ce85a08b6d..849321e56b2f 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-common.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-common.yaml
> @@ -1,7 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/display/msm/dsi-phy-common.yaml#
> +$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-common.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Display DSI PHY Common Properties
> 
> ---
> base-commit: ac47870fd795549f03d57e0879fc730c79119f4b
> change-id: 20260305-msm-dsi-phy-96b063cce7b5
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

