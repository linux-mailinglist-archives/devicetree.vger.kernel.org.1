Return-Path: <devicetree+bounces-271256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJooExiSqGkLvwAAu9opvQ
	(envelope-from <devicetree+bounces-271256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:12:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A04B2207772
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:12:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C5943080100
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 20:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6C66382398;
	Wed,  4 Mar 2026 20:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yuC9n1dm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE88382397
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 20:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772655052; cv=none; b=mOypzNRNianpKQ31OuwoFiQJSItWiPGaSLZmqhGVr5vOe3TgFrHZ5Sjx73vFRfv2sezpBhwmVVpAgzOTZhuCSpK5CrygycDnPGh/3Z9sjM3l5ZjFmhRpXQyTyHxDAzEAfiS24P5/r3g18Fi2Vy86EI3zG01rUG83nhyt/jiWeHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772655052; c=relaxed/simple;
	bh=I0ikx88iOHPtNArRTh9xCA/pCj4scEv8qbEtfn62OHE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Bmt0IqEGjP8F/KqU1RVSTbRg26m/CxKRuS2ENtWbDaHWMPephfY8zVGX2auIdkPqo6gCCwOnsRezXaL8JVSdwqMBwTPoQOKWcH1BI+0AD5kGerVsvX3C1Zl9jsUoufaBqRAffewbNXvAIdlXmA3f+Xe4JShbZx3Mej8EqxB42O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yuC9n1dm; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439c944bb62so799892f8f.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 12:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772655049; x=1773259849; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LWiObVokoGo44EDF8550QchMq9i7Dl/51e+1IUk+1eU=;
        b=yuC9n1dmVeHQYsGB+EpnR6v1RSyGAUootTcyab2j7Q1ezHrJ5r4/t+OtsfwwmJMxdI
         Mbr+1mbxiIPNZ0GU/jj5nzkfEG9mTtc5FfIEDEEn7QJyUiuz0L+LMENUheGbRKcdzc9m
         UO81Vwg6ezOYu+IrJz+/vwxzW5/oG5crUTZRPSxCAqsyWllnNUsFOQX13Wec2FDm2v90
         XRTqVhEWoZN6CgHtkUGcW9eQJ2fswnQ9+NYch0i18QJ3Ow1FD6sSHMToXOgPs6AY/PqS
         PLnTKgTMcLmLiotdSC0HPwL1kAOHbFJL+yxnDqx7t61gWekrg6JueCv5/ZkWDqsLuoh5
         gugQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772655049; x=1773259849;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LWiObVokoGo44EDF8550QchMq9i7Dl/51e+1IUk+1eU=;
        b=ebnUpNGgyLsq7d3rDgSUAjFCwNVjaatZiYprIiG4cUrCMEqoDSl40vHqvmtmIr8BtP
         jlql1/oLmzbmuTVs6OsThdorztka4ulVREiPqE7XVpKj/4TJCAKvog8ktDzF/ECiqxjb
         ZiQ1QHlBBDxp+Sn8GN/WOt2i2DU3MP3Jm/dunF7cGxWEiUbBLWUFe0yFF+hM4NMWk/af
         eWPGxZKsQC23167UJSfllNH9VaoNfVMNoIkXcCbzbjlCk8byXO2IEzhqO1UqxLf3Tbs3
         HC7k2hlDUGWLLc90NoWlMd/JpGUN2YiavITrwy/J/NG2vEjT8vR42lzYvYIhtmeEju8a
         kKCw==
X-Forwarded-Encrypted: i=1; AJvYcCVq8FEOpia/hgkdLZtLM576VlwQG7zPRyP5rTkSZEr8MLdflM1QNtPyGTMpMd4FkEJqhDqsZX+zaFkN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9tmxT6GLpbFrfLw5YOIfo1fLOK4loDLaS2nytovaUKGJgEpxi
	Zg5t9Vv9QjujCzWbCD3LlF+dZDLGsv12+qC/7mXkDzBixvgkkq0CyKOkxfSXEavMmdU=
X-Gm-Gg: ATEYQzywMN+diO+DON++pybVLE/S0f22nqOnYaTJw+uRtR4SoKXzfn/0wjyOPI/aLYx
	WPIKlhsks8lt+UaXjNZqaRgeXfLgn1CzvWSCaGtyAsuPgU3nWaveQBKwhpFJmj0zxFp8/a1blW9
	nJDawQvniUb0MLbRGtw0FnhrNvB7+rzX1AQdJv2CAprnU8aq8FWj0/jdol5yxD64g4VjW/Iswoi
	8sZTtV6CjjYWd3BIrYbuH8ULC7mqiam4SZUZNpZun+doN2S2FeLAYhMk9M7kdjSDoVEzz9Yd0Zh
	kxWu/cqQzZyDPzv13UEBqMAGoR2H8F4qb0s2Uo1RjPBGmgCYOy4j8g4OSflyQ0HuJZL6JShJnF+
	FGRm5HTmMxhOIdNadhmqRMQHvExzUD6543yGTUTfeHc8pwhsBXV0jTTECUpY7rns3Ytdrmsmuz4
	lmkMb61F9u/cxLCrJz3CryHvdpJTr0TiH7+zIz9MtuQck0t0WBQ9GxbpGvDtN4IMSllAQ+bXkiR
	s7IdyAhnx4W5Vo=
X-Received: by 2002:a05:6000:2509:b0:437:6dc8:c372 with SMTP id ffacd0b85a97d-439c8006f92mr6648350f8f.38.1772655049457;
        Wed, 04 Mar 2026 12:10:49 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:73bc:1eca:d39e:509? ([2a01:e0a:106d:1080:73bc:1eca:d39e:509])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439abded86esm35075889f8f.6.2026.03.04.12.10.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 12:10:49 -0800 (PST)
Message-ID: <8e7cff06-4b6a-4034-9b9a-1d4ae69a9bab@linaro.org>
Date: Wed, 4 Mar 2026 21:10:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFC 1/2] dt-bindings: display: panel: Add ChipWealth
 CH13726A AMOLED driver bindings
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Jessica Zhang <jesszhan0024@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Teguh Sobirin <teguh@sobir.in>
References: <20260222-ch13726a-v1-0-e501d78e105a@gmail.com>
 <20260222-ch13726a-v1-1-e501d78e105a@gmail.com>
 <933fd2e0-46ff-4ab8-b98a-554ac46982c5@linaro.org>
 <CALHNRZ_TdVDy93uvM=p7ht50v0Y2W4Ji4ZsFwPFAgR8FZh=myw@mail.gmail.com>
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
In-Reply-To: <CALHNRZ_TdVDy93uvM=p7ht50v0Y2W4Ji4ZsFwPFAgR8FZh=myw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A04B2207772
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
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,sobir.in];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271256-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,linaro.org:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Action: no action

On 3/4/26 18:56, Aaron Kling wrote:
> On Wed, Mar 4, 2026 at 10:32 AM Neil Armstrong
> <neil.armstrong@linaro.org> wrote:
>>
>> On 2/22/26 23:26, Aaron Kling via B4 Relay wrote:
>>> From: Aaron Kling <webgeek1234@gmail.com>
>>>
>>> The Chip Wealth Technology CH13726A display driver is a single chip
>>> solution for AMOLED using MIPI-DSI. This is used for the AYN Thor bottom
>>> panel.
>>>
>>> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
>>> ---
>>>    .../display/panel/chipwealth,ch13726a.yaml         | 66 ++++++++++++++++++++++
>>>    1 file changed, 66 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml b/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml
>>> new file mode 100644
>>> index 0000000000000000000000000000000000000000..890984b00c341285066176995e6a973c5607cbde
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml
>>> @@ -0,0 +1,66 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/display/panel/chipwealth,ch13726a.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Chip Wealth Technology CH13726A display driver
>>> +
>>> +maintainers:
>>> +  - Place Holder <place@holder.com>
>>
>> ??
> 
> Please see my reply on the cover [0].

Sorry my bad, yes add me it's fine

> 
>>> +
>>> +description:
>>> +  Chip Wealth Technology CH13726A is a single-chip solution
>>> +  for AMOLED connected using a MIPI-DSI video interface.
>>> +
>>> +allOf:
>>> +  - $ref: panel-common.yaml#
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: ayntec,thor-panel-bottom
>>
>> ??? why not chipwealth,ch13726a ??
> 
> Because this is a driver chip that supports multiple panels. The
> driver code I based on also supports the retroid pocket 5 panel, which
> has a different resolution. Similar naming is used in the rocktech
> jh057n00900 binding, which is why I picked this compatible.

It doesn't work like that, add a compatible per physical device, not
by driver. You can add common fallbacks if the panel is the same as another.

> 
>>> +
>>> +  port: true
>>> +  reg:
>>> +    maxItems: 1
>>> +    description: DSI virtual channel
>>> +
>>> +  vdd-supply: true
>>> +  vddio-supply: true
>>> +  vdd1v2-supply: true
>>> +  avdd-supply: true
>>> +
>>> +  reset-gpios: true
>>> +
>>> +  rotation: true
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - vdd-supply
>>> +  - vddio-supply
>>> +  - vdd1v2-supply
>>> +  - avdd-supply
>>> +  - reset-gpios
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/gpio/gpio.h>
>>> +
>>> +    dsi {
>>> +        #address-cells = <1>;
>>> +        #size-cells = <0>;
>>> +        panel@0 {
>>> +            compatible = "ayntec,thor-panel-bottom";
>>> +            reg = <0>;
>>> +            vdd1v2-supply = <&vreg_l11b_1p2>;
>>> +            vddio-supply = <&vdd_disp_1v8>;
>>> +            vdd-supply = <&vreg_l13b_3p0>;
>>> +            avdd-supply = <&vdd_disp2_2v8>;
>>> +            reset-gpios = <&tlmm 133 GPIO_ACTIVE_HIGH>;
>>> +        };
>>> +    };
>>> +
>>> +...
>>>
>>
> 
> Aaron
> 
> [0] https://lore.kernel.org/dri-devel/20260222-ch13726a-v1-0-e501d78e105a@gmail.com/


