Return-Path: <devicetree+bounces-271961-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCIbMsOoqmmzVAEAu9opvQ
	(envelope-from <devicetree+bounces-271961-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:13:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B53321E83B
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:13:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D16323041BE7
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:11:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0A0B35C19A;
	Fri,  6 Mar 2026 10:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ihaHAfUv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78037359A98
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772791873; cv=none; b=OE9iUIOzCaYy4kH79CalDdIpObd/0xAUy+FAArtRpktrMd7+OF6PX83ZJxUgm4+uTcSj40zf5yKKmrOsyoLUyrD8NZqa3nHsIw/pcL4qwojO6PADEbj1Aj6qwWIHAJn2+NKvRH3jYKx6uGsEbmZV5cItiXpfQ5i0m02iGr7Ihjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772791873; c=relaxed/simple;
	bh=d1G7Wue+u9XU70K7Y0xMbdhKPQwuczQMxgBCvQLoE9c=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ebutKWJR13TccrrYl0VFjtvURyOxnUMDrbQj85IheKOKQjIjyOUOMnlw82CC3s+mOZtl5xtGqPS8dZ+FwhWcqiVgD4+kL25JkL+k3f/BxFjfcVfURXtQMtLQAkYi/dcpMoycqX3iZYzLKPVZ6n13k5c3ZeZs4fqGEUz6ewMivv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ihaHAfUv; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-48372efa020so80060045e9.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772791871; x=1773396671; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bDramHPwwOtrk7+TNdEDdypzFChqVP3oIoB1XiKknTY=;
        b=ihaHAfUvd79a8iwgMKjJ0uGqXazE70h7QjopWHZcd88tcNbOQAK3topMuCCF8les8C
         bsHReYaDG8HZ5e7qjWXN7h5x33daR9Jw6j4+Qm3PovrfALo4NVNsxrGRge0Zv8dZpoD5
         gmvidgacpEcB0uJRc8RF1swBjCUOEf9/5x8qyfD6CC07AaKrZ0mfWsR03WwX+uiNeQDS
         lYQYvVMDZLChIYLN/sl3eSrearM0YNIfsnQZMRC/otGO40ivxYq3zftylY/2iOoEK9qZ
         7Zv7AfvdcqcnK2L79mbvWjnJNib2QYamWab70XecNnUJRd1LtMHE2VhL+dc9by1yc/Sg
         BjDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772791871; x=1773396671;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bDramHPwwOtrk7+TNdEDdypzFChqVP3oIoB1XiKknTY=;
        b=cjYc7MJQq8giivREykPHzEjmcFabjVqO7ZAmNceqpSgT4MSCfX+2XGG6qXXq6kgVIh
         UhHOVt0q1Jo/ZaHK4LUZ5vK1pNeAPkYpv6zV1LwsYTXa7ZOgXGBSvRFEsprwDNeiQdqj
         3VnJmOLH5SD2zNSjAZcJ+ht+v28q3QA34ojpTIpjFbEL7RdK+nRikGNk9vA30P8xBS4D
         /o6OJZR6xAO5GQkBybwXg9JK0VJPK8PfivT+aA99lBu+hZlswoxUHl2VAulQbqBSoVkE
         Dhiwa9YOoMxVKaAeM6yVC79ePIgzidq4yWDaIoaXoooRxtqrfdkAibzrEGUZlLOMVyVd
         UhiA==
X-Forwarded-Encrypted: i=1; AJvYcCWGboAld0vn698z6LuYn5fz9Ay2J5X1T0ypWkc+dJp+Wktv+kO9Ny9ol39GDN5guKGEm3+1ZT9eqf5P@vger.kernel.org
X-Gm-Message-State: AOJu0YxqVw79uxubTic1PpWoI9nxCp9W1R9GNzEOVbzyO+34R7ZVWzoQ
	JirNEb4I+KX8Vnnm5wnwGJM1kSPHZ3b6zUuWcQ/gSrUqpZz5xh2gu6WUPmcW9K+EvI8=
X-Gm-Gg: ATEYQzyt5+w2ONLRUWoJeVE+JK1egenuvEExXi95ovXXbmfbQ5hcPSW/Nudta+VyEuC
	XktE1b5WHoANTjvmnwXY1Vx3zCmqCwbnYW3R2N4fvaQax3pwpooNLELYxFebIww+dehB5RugAKk
	+Q08go+2tmgSyjStXBXtMY8T07o9yqbXvaqjMmlLc65y614+cOtCfGHuzVybS7yGJhAuN6RJ3pf
	TqGBGInEHiL5vanxkC739jP9FMFICaywcxJTq75svh/tOBmb1O09zqc98cgvAU2xNoGTGK6GOT3
	P+kuQPEjmAKibLyFiORV+HT4a1JUndy/ofz128dbmx5R0Ft/iq3xgrtmL60CyZu3Q/26ZzS7lv/
	K1R7KQpRexIHEq9WQiC8aGBnP9FeN3i2oXfbh79spNZNr7mneTx1gYTAoz3wpsLQR4g63N/RX6O
	/wM39itby3+7q1vuj4274/+cgpvmsTjLU0u9TxPZvTQy7dc2bYdz6XFjoAFYcRQaHmH1cUO0+iw
	JQF
X-Received: by 2002:a05:600c:609a:b0:477:63a4:88fe with SMTP id 5b1f17b1804b1-48526919691mr24609515e9.2.1772791870474;
        Fri, 06 Mar 2026 02:11:10 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:cbfe:649:7f17:8b95? ([2a01:e0a:106d:1080:cbfe:649:7f17:8b95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4852967d9f8sm1234355e9.32.2026.03.06.02.11.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 02:11:09 -0800 (PST)
Message-ID: <ec8d4eca-c130-4100-9fd5-b8597c4a1c2e@linaro.org>
Date: Fri, 6 Mar 2026 11:11:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] arm64: dts: amlogic: Fix GIC register ranges for Amlogic
 T7
To: Ronald Claveau <linux-kernel-dev@aliel.fr>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260305-fix-amlt7-gic-dts-v1-1-5944415c74bf@aliel.fr>
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
In-Reply-To: <20260305-fix-amlt7-gic-dts-v1-1-5944415c74bf@aliel.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 2B53321E83B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271961-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[aliel.fr,baylibre.com,googlemail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Action: no action

On 3/5/26 23:11, Ronald Claveau wrote:
> This patch aims to fix the GIC register ranges for Amlogic T7 SoC family.
> 
> - Context
> Kernel log shows a warning about GIC
> [    0.000000] GIC: GICv2 detected, but range too small and irqchip.gicv2_force_probe not set
> 
> Using cat /proc/interrupts command shows GIC as GIC-0
> 
> Adding some peripherals sometimes causes hangs on interrupts.
> 
> - According to the GIC-400 ARM doc, the memory map is like:
> 0x1000-0x1FFF Distributor
> 0x2000-0x3FFF CPU interfaces
> 0x4000-0x5FFF Virtual interface control block
> 0x6000-0x7FFF Virtual CPU interfaces
> 
> - Identify GIC model from distributor register
> 
> Offset | Name | Type | Reset
> 0x008 | GICD_IIDR | RO | 0x0200143B
> 
> kvim4# md.l 0xFFF01008 1
> fff01008: 0200143b
> 
> - Identify CPU interface from CPU interface register
> 
> Offset | Name | Type | Reset
> 0x00FC | GICC_IIDR | RO | 0x0202143B
> 
> kvim4# md.l 0xFFF020FC 1
> fff020fc: 0202143b
> 
> - Virtual interface control register check
> 
> Offset | Name | Type | Reset
> 0x004 | GICH_VTR | RO | 0x90000003
> 
> kvim4# md.l 0xFFF04004 1
> fff04004: 90000003
> 
> - Virtual CPU interfaces check
> 
> Offset | Name | Type | Reset
> 0x00FC | GICV_IIDR | RO | 0x0202143B
> 
> kvim4# md.l 0xFFF060FC 1
> fff060fc: 0202143b
> 
> - After this patch there is no warning anymore.
> GICv2 is correctly identified.
> 
> [    0.000000] GIC: Using split EOI/Deactivate mode
> 
> Using cat /proc/interrupts command shows GIC as GICv2
> 
> Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
> ---
>   arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> index 6510068bcff92..d523cbc0ed22a 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> @@ -213,7 +213,9 @@ gic: interrupt-controller@fff01000 {
>   			#address-cells = <0>;
>   			interrupt-controller;
>   			reg = <0x0 0xfff01000 0 0x1000>,
> -			      <0x0 0xfff02000 0 0x0100>;
> +			      <0x0 0xfff02000 0 0x2000>,
> +			      <0x0 0xfff04000 0 0x2000>,
> +			      <0x0 0xfff06000 0 0x2000>;
>   			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_HIGH)>;
>   		};
>   
> 
> ---
> base-commit: c025f6cf4209e1542ec2afebe49f42bbaf1a5c7b
> change-id: 20260303-fix-amlt7-gic-dts-7dcc93e13612
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

