Return-Path: <devicetree+bounces-273542-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMM2JcElsGnYgQIAu9opvQ
	(envelope-from <devicetree+bounces-273542-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:08:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 110E02515E0
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:08:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8157E338D0CF
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAB913A75AD;
	Tue, 10 Mar 2026 13:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CgH5gprp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D223B3A6B9E
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773148895; cv=none; b=D73Y5JAu6hMDesdzQ0uUtGOtozx3+6CxA3qkc/FbbF0k0YstKgsTqu7OV9PFF7dJSjT01dXLca/HQJehCPCxi/71Eg6F+WT5sQnjQe4AVfKuWK23z016xADk29KmIeCPNkQwHqOADp5xe6tUwbGS3QO2Im0Y6BUaXmxbT/HmkxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773148895; c=relaxed/simple;
	bh=+YY/g5qi0FhgJdJMriCI0m5KvACdvMSw1aJFKwiiZco=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=E+itSuOv7eFcdvl054x9FxuS7YzsBA6iQ/fO8aqgDnkmtVZJ0/r0mnb/U/ndjdlq+o6cGyCBmAM+dAwNH/3Y5oAnD6JsU6clc/6z9CEBheHt5k9XfwvGFc/uzOI8/BhzZjZI3uGGdlj3Ro+6lcQWbMsfhWe5/SS1xE2MBa8zS5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CgH5gprp; arc=none smtp.client-ip=74.125.224.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-64937edbc9eso11731303d50.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773148893; x=1773753693; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hkZc0W99TIcJIaq65PEzokBugjmAdM8IFJxUeAlAQ+w=;
        b=CgH5gprp4oTCMJDr+ONjqtqABJvxfrACEtEpsXdNKxsxhWzy6hJfOCygfaKQOG2uR6
         U8/RoZN45ZLDdjk5kivuoUATLfNvIq86t3kwfB7jsNq7rNEqFYeOCpR9ACb9ecUth0jQ
         DYLFOaqwq1KKii5XAPEIbDvcs3nQEgRYoDM7+pVDkoU35pW6zR+zVoHhZlLxTinK7sJ4
         LMTKovvOatvfvwUa3uiKbvgZ56aVZLjSO64RcPcHWTqktbCVqvwJ/qP2cORkd/MgLJRU
         8S/2c9CgxKgK4XmjOtUHAzD95u0ALljJlfz52wYqf+9pUb9iaIuB5Q1bwubeg/HrDWFg
         CHnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773148893; x=1773753693;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hkZc0W99TIcJIaq65PEzokBugjmAdM8IFJxUeAlAQ+w=;
        b=rb8QIWA2WuEzHY2WCEd642OaFgTeWCHHgA81zhIgmAiA5cQFXTavitMsOriUIhIPq/
         UQN2g0U5VLdlLac3jx7Uep6GAGQwZoOOeUCTm3kCUqLUGS6LCQnPueJFYF6dmoDpco/3
         r8TuCHQCQCTV8c93T1p7vKg9/aelad+2yq7fRuxmXB60IQeuq8K+XmrF8obAXMfZTz1t
         ZSn9rO9T51ZbddMHVhRgR9K2liMvuCCxSS5hFrDLHnAzEF0eGN0BsP/oceI8OEFESR9q
         jO5MFxQdKwD8m9N875qZn8TV8NVcK1pGFHWOSRgN/ooHJhrYVHdsngR8ev3P6QAZERFQ
         /BrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzjmm4TUMJ6D9nZsIPG3aV4gMFZPg5zHcsEToG4993hFrjpNHcGeQLGR9qBaWVdwfaEknyASaMtKeb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj2owwwtmJKnlnKQNyX/jH6Gdf3JhQFlsTuMWyPC+vUqIuspXq
	fxY2i0i1+d5LRMEQZo4kZHxtzGDokzRSj/a1HSDITs+DFd+Go8KNkc3ddHYgWbRSesg=
X-Gm-Gg: ATEYQzxSTR78t2jjLbwDH1Tb/Wco2+Bk4K4o1gdKEIY60ktbkJEehxkD5vwkwGT1TPm
	16cgdpYISCxW13xfu6JKTQ8pT6HWgfID4/TXOUiUWCgSqHvbA0Krz13MkMKaQ5KzP2FBN9hKfAc
	ICOa+mdW1j5Fn75d+h8Qd46sDRVr8znEDuRyw+oQI+pHOV86ohWgxlq2gRz83sNIrEI4HSE2fD/
	iuxOaPS16KoqA7lSNE5jlS64x8U6uvG308TX8kDd6cwCG1k8EuWeoE5dNu08hmKkeDohbnexxcu
	BG8Cg0IDgHVdBLTnaSpCcnmGWrCDjg9ZvYnx6pvhgH4j57K3fD/LD4RpLobWS9KpJdXaLIjiY/m
	/ApSUTj1NlrVj78HbJ5pDwPMuJ1JVIN96ANbA+jVvnim/uj/Vf31K+5/umxpaIfkgBIlAWxWJgD
	QMmjd4nJ997ITeHlD5D2G2h+CWMgBEXTWR4Xvmx7+j70hltxv7HSHuZCYdq/51svgyA2ozxBRlF
	zFt
X-Received: by 2002:a05:690e:1286:b0:64a:d541:bc3d with SMTP id 956f58d0204a3-64d141271f3mr13562084d50.25.1773148892559;
        Tue, 10 Mar 2026 06:21:32 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:4d81:e92:c4c0:3c45? ([2a01:e0a:106d:1080:4d81:e92:c4c0:3c45])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64d176e70e7sm6575823d50.20.2026.03.10.06.21.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 06:21:32 -0700 (PDT)
Message-ID: <68b001cf-7e49-4ebc-b325-21620579cd00@linaro.org>
Date: Tue, 10 Mar 2026 14:21:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/5] dt-bindings: display: samsung,s6d7aa0: Document port
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Artur Weber <aweber.kernel@gmail.com>, Jessica Zhang
 <jesszhan0024@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Dzmitry Sankouski
 <dsankouski@gmail.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20260306-dt-bindings-display-panel-clean-v1-0-3086eda1efaf@oss.qualcomm.com>
 <20260306-dt-bindings-display-panel-clean-v1-1-3086eda1efaf@oss.qualcomm.com>
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
In-Reply-To: <20260306-dt-bindings-display-panel-clean-v1-1-3086eda1efaf@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 110E02515E0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273542-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ti.com,ideasonboard.com];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email,linaro.org:mid,linaro.org:replyto,qualcomm.com:email,0.0.0.0:email];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Action: no action

On 3/6/26 13:02, Krzysztof Kozlowski wrote:
> This MIPI-DSI LCD panel must be connected to something, thus add missing
> port property, already used in DTS.  Reported by dtbs_check:
> 
>    qcom/msm8916-samsung-gt58.dtb: panel@0 (samsung,lsl080al03): 'port' does not match any of the regexes: '^pinctrl-[0-9]+$'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>   .../devicetree/bindings/display/panel/samsung,s6d7aa0.yaml        | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6d7aa0.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6d7aa0.yaml
> index 939da65114bf..1f753b706911 100644
> --- a/Documentation/devicetree/bindings/display/panel/samsung,s6d7aa0.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/samsung,s6d7aa0.yaml
> @@ -44,6 +44,8 @@ properties:
>     vmipi-supply:
>       description: VMIPI supply, usually 1.8v.
>   
> +  port: true
> +
>   required:
>     - compatible
>     - reg
> @@ -65,6 +67,12 @@ examples:
>               power-supply = <&display_3v3_supply>;
>               reset-gpios = <&gpf0 4 GPIO_ACTIVE_LOW>;
>               backlight = <&backlight>;
> +
> +            port {
> +                panel_in: endpoint {
> +                    remote-endpoint = <&mdss_dsi0_out>;
> +                };
> +            };
>           };
>       };
>   
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

