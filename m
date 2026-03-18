Return-Path: <devicetree+bounces-277083-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8A36AlRwumnRWQIAu9opvQ
	(envelope-from <devicetree+bounces-277083-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:28:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 644A62B9072
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:28:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81B3E305A6FC
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57EB53ACA74;
	Wed, 18 Mar 2026 09:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e/MK5drT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B063437AA9D
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773826000; cv=none; b=YcaU1mp1a08d/0pVMk28Sgd9sx2q+3/Q4OUOdPt1IsBHoHcyzF5zDX2pgwRC9JJRrrRQt1zD4TBZ1BVPbmTIuh42L3lprpK4BngEZ2CGz79Ln7e309xZ9NE3kpLv76HpWOX4JQZRrI1cESxQQlkRdmbA+dOIaHmrIXVnM8l94ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773826000; c=relaxed/simple;
	bh=2Go0fubIUQbxAVrDjujXpKOsIBbuaNGG7k8nCSyotjg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=qlj/4kPu8McvVhZVLTdHzC0+wnjTTZzJW/O2ET5jQWuyNmV8VtzscoqfCO2prIIuaiggpOK5Z+jJuTj0mv+IBOXk9I1zALJzcBgxSGYC98BO+o3uRt6WNSbk9JbghHA69J9dFNTv6QqePF9R8iJaEiK6+Gk6Gad3N4ma5W9h4+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e/MK5drT; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439fe4985efso5849349f8f.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 02:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773825997; x=1774430797; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tlmGySGpfP86pFTHgt/qgyQF9vvsUA/8qdDSZS/3krM=;
        b=e/MK5drTOfGF4yrWVu4Q1GEWbDgWc8RmsHJNKnA5bHusrMuFcdPW3cSmwBPT/UU80a
         PXku1YSQIct3ox/mrgBNLhxDlNPQfxJt+0ySnG/89WQ/equYgf8X3Grgz7WrNJHk1jJP
         rhhHko5E+znfDGqsqsnaqxEwByjPc0Y2g5AVAIbIoAawpZ+jDLQrP0ldlehZ1lyp6fYm
         Wl4uIN2DLEfBpX+ZEAK8GCMNUMoCb0qvd/Yh/aXT6PidbIB05/eO4M/iZcod/4SN2vSF
         A4kk2yKN9uHyHqwoazAEXckuJ/G4O5bOSWwJqXGD6Gi+yyh/Lnl2fYnkYfafKz4dRYe2
         zDVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773825997; x=1774430797;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tlmGySGpfP86pFTHgt/qgyQF9vvsUA/8qdDSZS/3krM=;
        b=G1B/e3KMUWFuOEBuMmNAFt6gHj2RbTRCT6Pnp4rmIhPgWvRcQnH/S9RsglVARfmPpn
         BpyXy53ylhMIZZG/lTYON/DotGgNUZJCuNFYHEqBO5ncuEzrvMSm0mD3w4ySPyRTRhpY
         2PTQOR0M+JDNW/KktICgJBG5FEr28GRLePIQR5cCtbOLfpFTdBY3k9RppfCfSHrz4wMk
         sDQmxgtkOQDNuF6hbPa00GhNTYuv4DFkNdb4UnUoY1nDzut/I7xqduYl1sLM9H7ZbK6R
         eVvVRW5tmub1B3WScofzgEereJYTc5M9XRk0FA+0km9fO1SGgaaGuWTjLzC2dlMNG68+
         Syow==
X-Forwarded-Encrypted: i=1; AJvYcCW7bPld2FHoJ0VZxoT1drjn5isn4eOwEplnaZFMmtOiH+sMZVj+q7amAQCEUOHxqr/xYuMgrXgByQly@vger.kernel.org
X-Gm-Message-State: AOJu0YxY7G80g9e+VWDCgTRSfv8xO6Z2jcHU79ZlrO+4qorauOHrik/A
	DOrrn3ENsPyxCK4axbDVC54BUjMF5vCkPd6ZRqpYTcw6Aa0hzh0SS6S6FMOcaK+J9qM=
X-Gm-Gg: ATEYQzyH/rlr59aS/ZZ4ZFLivar4qvrAzDBSD6cNamWhrYR5t6BMzDNa+6kIYo0dhBC
	Bx6Q/VttRxguCGVvpIz1VsnA7ZF83L6OAJrfVUmzBRlWA+xUTeL7P+EhS23IT7P2/J42coxi+zZ
	0V89n71pn5is0UVSEgB+KrMINWXvOKC4ar7mRHboQjcYIlxvGQWyL4425C2ZzJfBKGG6Z0krMcn
	C7MVLJbiRZeLz2XqqDW9J77LAQeY50YbN2aasPiF7MApoRM5Z6YAD9G3wTb3F6lV1xdPAqG4ELT
	lGgqyIbAm542oUS58G7b2QIflWVh/sVepT4e2aqnat2qV4ch2sCuO7PownAExjwckIfqFUUUQvk
	3Re3wiSpnoTmOT0NA343XfXkEdQ31IjoLF8z+8x+nOZyzGSr1l7goDmeLu+aUqh7VdeVePv3Ebl
	oiIu1KCxwiZxX1wc3+Il7Jq4sNjzGY9ooUlPFJi8aAyth6f5DsEtM6gJ5kzfdSRv7K3X8i3TS8g
	ZbL60U=
X-Received: by 2002:a05:6000:4203:b0:43b:45f5:efc with SMTP id ffacd0b85a97d-43b527a4a9fmr4229623f8f.4.1773825996924;
        Wed, 18 Mar 2026 02:26:36 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:ac75:790f:ef3c:2eb0? ([2a01:e0a:106d:1080:ac75:790f:ef3c:2eb0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b518a3e3csm5821720f8f.35.2026.03.18.02.26.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 02:26:36 -0700 (PDT)
Message-ID: <85483caa-5e62-4c66-b3a9-23ff7fc16f98@linaro.org>
Date: Wed, 18 Mar 2026 10:26:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 10/11] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 Add ov02c10 RGB sensor on CSIPHY4
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
 <20260316-x1e-camss-csi2-phy-dtsi-v2-10-859f3fa55790@linaro.org>
 <b8d00023-ebe1-4abe-82ef-c8dc20f333dc@linaro.org>
 <f5c0c9e0-78c4-4c54-be10-c252715c36dc@linaro.org>
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
In-Reply-To: <f5c0c9e0-78c4-4c54-be10-c252715c36dc@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277083-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.10:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,linaro.org:dkim,linaro.org:replyto,linaro.org:mid];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 644A62B9072
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 12:46, Bryan O'Donoghue wrote:
> On 16/03/2026 08:28, Neil Armstrong wrote:
>>> +    ports {
>>> +        /*
>>> +         * port0 => csiphy0
>>> +         * port1 => csiphy1
>>> +         * port2 => csiphy2
>>> +         * port3 => csiphy4
>>> +         */
> 
> Hi.
> 
> Thanks for the review.
> 
> I think the above comment probably isn't making this very clear.
> 
> port0 => csiphy0 => msm_csiphy0 in the media-graph.
> 
>>> +        port@3 {
>>> +            camss_csiphy4_inep0: endpoint@0 {
>>> +                clock-lanes = <7>;
>>> +                data-lanes = <0 1>;
>>> +                remote-endpoint = <&ov02c10_ep>;
>>
>> This is quite wrong, with the PHY in a separate node, the lanes layout has nothing
>> to do in the "controller" ports since the sensor is connected to the the PHY which
>> configures the lanes functions.
>>
>> The PHY should be a media element in a port/endpoint chain to properly describe the
>> data flow from the sensor to the controller.
> 
> If I am reading your comment right, we are already defining the data-lanes where you've said they should be msm_csiphyX below port@X here maps to msm_csiphyX in the media graph.
> 
> So for example here is how we configure this before and after the changes in this series
> 
> media-ctl -v -d /dev/media0 -V '"ov08x40 '2-0036'":0[fmt:SGRBG10/3856x2416 field:none]'
> media-ctl -V '"msm_csiphy4":0[fmt:SGRBG10/3856x2416]'
> media-ctl -V '"msm_csid0":0[fmt:SGRBG10/3856x2416]'
> media-ctl -V '"msm_vfe0_rdi0":0[fmt:SGRBG10/3856x2416]'
> media-ctl -l '"msm_csiphy4":1->"msm_csid0":0[1]'
> media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
> media-ctl -d /dev/media0 -p

So a csiphy is a media element here, so why implement it as a PHY ? and there's a data link with CSID with should represented with a port/endpoint relationship...

> 
> Its a NOP change from user-space's perspective. CAMSS has historically used port@ to map to msm_csiphyX - taking logical elements and configuring pieces of the CSIPHY and CSID based on that mapping.
> 
> Other examples of this upstream:
> 
> /* Cadence CSI2RX */
> /* Sensor */
> camera@10 {
>      port {
>          csi2_cam0: endpoint {
>              remote-endpoint = <&csi2rx0_in_sensor>;
>              data-lanes = <1 2>;
>          };
>      };
> };
> 
> /* CSI bridge — NOT the PHY */
> &cdns_csi2rx0 {
>      phys = <&dphy0>;
>      port@0 {
>          csi2rx0_in_sensor: endpoint {
>              remote-endpoint = <&csi2_cam0>;
>              data-lanes = <1 2>;
>          };
>      };
> };

Yeah this is totally unrelated...

Neil

> 
> ---
> bod


