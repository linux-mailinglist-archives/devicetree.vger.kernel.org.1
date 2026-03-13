Return-Path: <devicetree+bounces-274812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BUoF9BZs2mZVQAAu9opvQ
	(envelope-from <devicetree+bounces-274812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:26:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C237227B950
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:26:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39FCC3015701
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 00:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E74AF2DECB2;
	Fri, 13 Mar 2026 00:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3OJNjumP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362552D6E6C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 00:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773361601; cv=none; b=lMldxTjD/DFPh5hbvqhRH5xtAvNI3U7H9wx4ECwrMqMkf83QBjkkuwRdtWNe87ORiJu7YVjJpAR/2wfJvIvYacUuaI//WfULnM5UqUSlAySyUg+MjjvrsrbgG+WfRsGJzEzbbAKLcPiQ+i+iXLrLZCfrOYUUrnf6fvukp+NVSwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773361601; c=relaxed/simple;
	bh=A45ax7NVDO1TwHx9p9l4hYQx4uaTGpxDk/u0odhpyRM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LCjpVMuCLJZqeogYc+rZLjz1lENuToP+kTdGfigc1sezo+43vYBZRLsGqJoa/I3fFcbB0cJ1pwr+j/LAuVVOSNEITFMTq9sE2DqGYyL2xVHxGp6+agO+j72ohu4zDv+wJFEbUjlHT5PcovUwTHXzzJPSfASJcTbMDG2IGMBVst0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3OJNjumP; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7d55b97f358so1265991a34.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 17:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773361599; x=1773966399; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qqFmU7kx4Mq4mgXnbflh7LA6+0GpHxy9Eldmo/AcQLw=;
        b=3OJNjumPftaxOq9AhG5jlKEOGJ2FQttkmUFagLGBTCig+goMgjdEj81674QntxLJUh
         blPz2kOiyp3cfozgOcLDYyBGpJvrQRKyF3VKbkmKXBcjnjtrTHSW+Q71EPL4RKUoY16P
         AroOjSavkghbo7Tlp+G2dZlMvHvZNBqSRqOgRmnGdXn931NbXr/McSWUCTxgktezE36r
         cyaMVwtXXnGqL1hCBdmsULvE7ChF/APEIDAIvQ2JdjEEuqiSUz7B+RR/lbm1AiihwhLs
         Y37/ao1IWbmlwZgfezrXhcEeZpf1LKzcYkpiGG/K26qDqelf67Sd9hFE1U6QiBS1BUwW
         xxgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773361599; x=1773966399;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qqFmU7kx4Mq4mgXnbflh7LA6+0GpHxy9Eldmo/AcQLw=;
        b=dtdS39bpPM2F6zLOTU8LvIlYb4l56FJyqQg6zuBA49+J18ouur5NNXeWVvjjwkGXGU
         p/x8krOeCoeQPULTj0dACCVMsdxz2QYKpIltdRM+P8GrN+2WXVSGYTiD95TBvIoDgU1X
         2g89EPzGVHUDTG9p9Oht0eQJQBA7tAClsCRCKNxfdpUQJN2j0Xg6HBT7/DbQ21CJBv+D
         pe69o+fSJEp+KjAXKm94IU7rBwNdQ8xb2XB0BEg6L028Lpurv6MAaL6KqkujZ9a8KwDe
         JGLbm9Rw25fZ43Y8803PSGSuRsV+75DMenY2sWbPekYsJnfQ3j+XNPnANdxYP+F/e++3
         eh+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUU++GVGovMG/H0vLLLYJGzXl8WmoMqdjDaUhZ/qWN7xMSg0EBKmq+v0l/eI0o2lXCiqchR+HEMqgPZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2LflgQWMT5edWpElces8f6PRTfCiU/+zAw724eZT0rtv/M/Yu
	6DdfOXLFerdjYpGiD+GCgoGkgfL9+uUMEvTXsuANXK5aT4bDnl2s5oh6mUGXxYFwFTE=
X-Gm-Gg: ATEYQzwU93Eli+lPaG0mNJhRJAGz93eWxLXVwke4NnXv3DW/S01rc21Orm4aUMBaxig
	S4ScbxF5HhUKb21f+y5hiO6KK4YS9IG+BRr81346hMf9Mn2ha5SWDkeTNoQgzJ5LougV6ZZbjSU
	v1GmVa94VrE+pw4V+uyLN55s8qWCwi47uquTvHW4JvuUscC695oJRAgqeBMw8SOJaRtOZS1dXms
	OIIfllwskGb0nvM3Rv7sESVWOfqsr7xMZph6UMKvGbGhaqi/Au8y18ciz12GzHJLCR1URcuqOq7
	ALvgSPgMM3D8sI90Aq4sYDUh1H4ygTs3i/BmXtiXz66AdeYkjfq365NRFu0JXfH5NMiTnV5sw7Y
	JrwKXPO6cVpy2e8XeXGZtJvC7KJPbmkaoyEWgxvc5Gd2oKIz0WHzFNrnvKjbcZIaTaN4SV83Lgf
	klepvhhIwjiLEsfexv9sXncUN0QxkeT243iO6F7f9yF/V1rWpQznMo2QI2GSJK+C4W/Q==
X-Received: by 2002:a05:6830:4428:b0:7cf:d168:2107 with SMTP id 46e09a7af769-7d7825cbfe6mr1074685a34.36.1773361599160;
        Thu, 12 Mar 2026 17:26:39 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:bf:9982:ff59:466? ([2600:8803:e7e4:500:bf:9982:ff59:466])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d76ae39600sm5254761a34.17.2026.03.12.17.26.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 17:26:38 -0700 (PDT)
Message-ID: <c2618423-2466-47bb-a8cf-7c849e7e231e@baylibre.com>
Date: Thu, 12 Mar 2026 19:26:37 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: mediatek: add device-tree for Genio
 720-EVK board
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Sean Wang <sean.wang@mediatek.com>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20251203-add-mediatek-genio-520-720-evk-v1-0-df794b2a30ae@collabora.com>
 <20251203-add-mediatek-genio-520-720-evk-v1-3-df794b2a30ae@collabora.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251203-add-mediatek-genio-520-720-evk-v1-3-df794b2a30ae@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274812-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[collabora.com,linuxfoundation.org,kernel.org,gmail.com,mediatek.com];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: C237227B950
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/3/25 7:59 AM, Louis-Alexis Eyraud wrote:
> Add support for MediaTek MT8189 SoC and its variants, and a device-tree
> for the basic hardware enablement of the Genio 720-EVK board, based on
> MT8391 SoC.
> 

...

> +	mmc0_default_pins: mmc0-default-pins {
> +		pins-clk {
> +			pinmux = <PINMUX_GPIO162__FUNC_MSDC0_CLK>;
> +			drive-strength = <6>;
> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +
> +		pins-cmd-dat {
> +			pinmux = <PINMUX_GPIO166__FUNC_MSDC0_DAT0>,
> +				 <PINMUX_GPIO165__FUNC_MSDC0_DAT1>,
> +				 <PINMUX_GPIO164__FUNC_MSDC0_DAT2>,
> +				 <PINMUX_GPIO163__FUNC_MSDC0_DAT3>,
> +				 <PINMUX_GPIO159__FUNC_MSDC0_DAT4>,
> +				 <PINMUX_GPIO158__FUNC_MSDC0_DAT5>,
> +				 <PINMUX_GPIO157__FUNC_MSDC0_DAT6>,
> +				 <PINMUX_GPIO156__FUNC_MSDC0_DAT7>,
> +				 <PINMUX_GPIO161__FUNC_MSDC0_CMD>;
> +			input-enable;
> +			drive-strength = <6>;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
> +		};

Should we also have pins-ds here to match mmc0-uhs-pins?

> +
> +		pins-rst {
> +			pinmux = <PINMUX_GPIO160__FUNC_MSDC0_RSTB>;
> +			drive-strength = <6>;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_00>;
> +		};
> +	};
> +
> +	mmc0_uhs_pins: mmc0-uhs-pins {
> +		pins-clk {
> +			pinmux = <PINMUX_GPIO162__FUNC_MSDC0_CLK>;
> +			drive-strength = <8>;
> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +
> +		pins-cmd-dat {
> +			pinmux = <PINMUX_GPIO166__FUNC_MSDC0_DAT0>,
> +				 <PINMUX_GPIO165__FUNC_MSDC0_DAT1>,
> +				 <PINMUX_GPIO164__FUNC_MSDC0_DAT2>,
> +				 <PINMUX_GPIO163__FUNC_MSDC0_DAT3>,
> +				 <PINMUX_GPIO159__FUNC_MSDC0_DAT4>,
> +				 <PINMUX_GPIO158__FUNC_MSDC0_DAT5>,
> +				 <PINMUX_GPIO157__FUNC_MSDC0_DAT6>,
> +				 <PINMUX_GPIO156__FUNC_MSDC0_DAT7>,
> +				 <PINMUX_GPIO161__FUNC_MSDC0_CMD>;
> +			input-enable;
> +			drive-strength = <8>;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
> +		};
> +
> +		pins-ds {
> +			pinmux = <PINMUX_GPIO167__FUNC_MSDC0_DSL>;
> +			drive-strength = <8>;
> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +
> +		pins-rst {
> +			pinmux = <PINMUX_GPIO160__FUNC_MSDC0_RSTB>;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_00>;
> +		};
> +	};
> +
> +	mmc1_default_pins: mmc1-default-pins {
> +		pins-clk {
> +			pinmux = <PINMUX_GPIO169__FUNC_MSDC1_CLK>;
> +			drive-strength = <6>;
> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +
> +		pins-cmd-dat {
> +			pinmux = <PINMUX_GPIO170__FUNC_MSDC1_DAT0>,
> +				 <PINMUX_GPIO171__FUNC_MSDC1_DAT1>,
> +				 <PINMUX_GPIO172__FUNC_MSDC1_DAT2>,
> +				 <PINMUX_GPIO173__FUNC_MSDC1_DAT3>,
> +				 <PINMUX_GPIO168__FUNC_MSDC1_CMD>;
> +			input-enable;
> +			drive-strength = <6>;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
> +		};
> +
> +		pins-insert {
> +			pinmux = <PINMUX_GPIO2__FUNC_GPIO2>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	mmc1_uhs_pins: mmc1-uhs-pins {
> +		pins-clk {
> +			pinmux = <PINMUX_GPIO169__FUNC_MSDC1_CLK>;
> +			drive-strength = <8>;
> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +
> +		pins-cmd-dat {
> +			pinmux = <PINMUX_GPIO170__FUNC_MSDC1_DAT0>,
> +				 <PINMUX_GPIO171__FUNC_MSDC1_DAT1>,
> +				 <PINMUX_GPIO172__FUNC_MSDC1_DAT2>,
> +				 <PINMUX_GPIO173__FUNC_MSDC1_DAT3>,
> +				 <PINMUX_GPIO168__FUNC_MSDC1_CMD>;
> +			input-enable;
> +			drive-strength = <8>;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
> +		};

Don't we also need pins-insert here? (to match mmc1-default-pins)

I was having trouble with the CD input pin not working in U-Boot
until I added it.

> +	};
> +

