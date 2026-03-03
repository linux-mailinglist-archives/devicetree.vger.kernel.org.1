Return-Path: <devicetree+bounces-270354-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHoBGGeZpmltRgAAu9opvQ
	(envelope-from <devicetree+bounces-270354-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:18:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AADC81EAAF2
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B90030541DE
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:16:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49D8438239A;
	Tue,  3 Mar 2026 08:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gW5dxLf1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C158387372
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772525739; cv=none; b=Jd9KOC6D+tl9BwLCGi1Oj9nguEYnuwARAtZ6lpz9/40wRFlgKqG3+8gaJtLi4pqzbI/L+cyUj05hpiaLxN2+0qqxM8Ee7tcnhpuiOqpyVAs42890xW4rAIZMCs/b+RXCUZbtKWu5G4LRfQ8tGtbTauv2sVb2UHJjxHpJg/VkGEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772525739; c=relaxed/simple;
	bh=WrzEbtGTxxGU4RYA9EK0poawl6dzJo2Xu+qJUF90PaE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=GTOLyPw0+0yQ+OMd4d48R62RhAH96BabWyRNy1puTXsrTAcTyR82rfjqyZhS1TCpshFiuk4yHvejdoU/71RBkPGveVkVOZb3APaXNwrTKC6FSAIjbVjcxYMna/9x8Cr7lPqX2K8P7xGgE0dInXRTxpb0lg6DYRWLQrLgbzNJAyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gW5dxLf1; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4833115090dso55160695e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772525727; x=1773130527; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=db+GRx+Q0XyvQJnHDE30itTeiVo7TcZ1LId1+iWopUE=;
        b=gW5dxLf1k6TWTTmN2YUY4QB81bV0Q1xQnZ0YPUhIltYABSI++frVqCQvoA38UbDq0A
         6F6agSd0/jcXtEpGdxM6lYUzT3q6jueh3fSCJpofpK6uW/4OQgzKEJwVZJf1Rp4RTN7Y
         KhfvVL4D2NCpHUh1X3S1d7cLom/PkAQ3DUSM0pqaFDiW/vi2WzkjNDz+mVgcL0Vg1jGo
         CYglJrj2sbWKXmeEiCowi7FXyLHulej7e3wttB8gsaiAcXBMNfO23Uf/jtMdBzoWgNhG
         N3WdbEucmPoEH6vBtdxJ5YWsDTB5FfkfPRG++dLfIqXkByUOYGqumHfc3JA1e/LNHl0J
         QpKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772525727; x=1773130527;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=db+GRx+Q0XyvQJnHDE30itTeiVo7TcZ1LId1+iWopUE=;
        b=w7zTxzIK1KHVnDvn3nJBCEsw8Y/KYPDD+1EfKgmjLzDZpcE7JZFEC6ooJ5WYt/9Tn5
         Rb+M//U9jySQVQVjn1RIY4HKG4yugrYXVr6mnp586EB8/L9LIyMv0sevi04X/Qs0vKEh
         6ghMhyy8p65ZyHIdSk493DJ2qgFdea2BB8+6mGX2W8V+isPGBxBcmSkC/SQ6OfiyWrZC
         NLzNDnVMNwj/m2pruYuwMlSHBdfQxgbyGdNraTK59ly+Me+MSHBa9Y5Iz4NLmh7O0C4C
         11LMfE5sqwwHSW38hlVbftQnXkS8sr04C/QTgCOSEL07zieA+hcXTO+i0rORMHvkVp2u
         0/vw==
X-Forwarded-Encrypted: i=1; AJvYcCW1q3R/E6mX3KJ8CaEAwMZsAfhNO5H2eMD7LBQjaTmBavb410Itc3e+UtTDmIFFc9Ln1FEmSPpzfsR7@vger.kernel.org
X-Gm-Message-State: AOJu0YxPAk7SlJQh/HRdv/YRgtv8RfHiGqFa2o3g/t5FsluuF7LTPO26
	uJhKradWptJFH6IxsNbHEkuESQVeEgiOdoeYFnpEGYKu4lnzJ0JwrsndElaPUt79KbQ=
X-Gm-Gg: ATEYQzzeMU6ClHoqMcM2MTnSsfcSegO1iJ12ZMcuXRr1DdDwQG/G7FQGZm0MAooSJUa
	xVOfcFFCokWZ3JqZ9h/yGmzSD4ESn5X1teZbPRc8ZJbjC9EBmvlhBLYSQjuzOUSini82b50HgI1
	KyrKizNgFvKX83fT+oTnLr79DVxzxxgtK/bHxQZCtaQcJcJq+7sZQYa26guRt2qlYTIf52XNyoF
	KCQvNuFQGAIWMVUp83b25ZdmxHzCYVDfOkiJAXSqwcxx1s2aRTHmg098AdF7+ji72ZVGxlb/kW6
	bdJrnZoA/VVLH6VrfsoRQ8XEIEQ+3ALR6GgCSWi3Y1LQQ9T/5EFBpObs7aMRHtI+iG9c77obbdJ
	WJQ+/TphLzXtB9ZfGCEtrkDuB7Cd782Xr7eAZTcWPOd088n+novwMi+7Su3CnR4uLf07HLM7yQd
	3+k5yJSpWiC5ojnHGtXn4k4Kvhc7q5R1VtMpHwI9ZhrsTYNLfhOKKxyl272ogSkb/e5poHJIfoh
	g2b
X-Received: by 2002:a05:600c:3108:b0:483:887:59b0 with SMTP id 5b1f17b1804b1-483c9c1cd2bmr287609705e9.35.1772525727199;
        Tue, 03 Mar 2026 00:15:27 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:e6ec:89fb:a99:3d23? ([2a01:e0a:106d:1080:e6ec:89fb:a99:3d23])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd765604sm398884355e9.15.2026.03.03.00.15.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 00:15:26 -0800 (PST)
Message-ID: <8ee9c9b9-dabd-419f-9141-c5aafb9f9152@linaro.org>
Date: Tue, 3 Mar 2026 09:15:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] arm64: dts: amlogic: meson-gxl-s905d-phicomm-n1: add
 bluetooth node
To: Jun Yan <jerrysteve1101@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Cc: martin.blumenstingl@googlemail.com, jbrunet@baylibre.com,
 khilman@baylibre.com, conor+dt@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org, yangxuan8282@gmail.com
References: <20260213073810.552341-1-jerrysteve1101@gmail.com>
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
In-Reply-To: <20260213073810.552341-1-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: AADC81EAAF2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270354-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[googlemail.com,baylibre.com,kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org,lists.infradead.org];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.995];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email,linaro.org:mid,linaro.org:replyto]
X-Rspamd-Action: no action

On 2/13/26 08:38, Jun Yan wrote:
> The Phicomm N1 uses a CY43455 (BCM43438) module with its Bluetooth
> interface connected to uart_A.
> 
> Add the required device tree node to enable proper functionality.
> 
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>   .../dts/amlogic/meson-gxl-s905d-phicomm-n1.dts    | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-phicomm-n1.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-phicomm-n1.dts
> index 393d3cb33b9e..dea3a60e8527 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-phicomm-n1.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-phicomm-n1.dts
> @@ -30,6 +30,21 @@ &cvbs_vdac_port {
>   	status = "disabled";
>   };
>   
> +&uart_A {
> +	status = "okay";
> +	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
> +	pinctrl-names = "default";
> +	uart-has-rtscts;
> +
> +	bluetooth {
> +		compatible = "brcm,bcm43438-bt";
> +		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
> +		max-speed = <2000000>;
> +		clocks = <&wifi32k>;
> +		clock-names = "lpo";
> +	};
> +};
> +
>   &usb {
>   	dr_mode = "host";
>   };

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

