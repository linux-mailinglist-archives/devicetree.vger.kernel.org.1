Return-Path: <devicetree+bounces-278289-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPJ/JLFNvWlr8gIAu9opvQ
	(envelope-from <devicetree+bounces-278289-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:37:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E90F12DB12E
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:37:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC4CD315CDF0
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7308E28C84A;
	Fri, 20 Mar 2026 13:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="IYd/W5kQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2A82BD02A
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 13:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774013759; cv=none; b=WSxxOGuF9TwQE2u6iLtFadLLEFl3laexfvvabtBEdxoUhcxt68XTo4Oq5hZenlD4gyu5l2gTY6k/a+GtykN5acXChEIFhpcJ8NkMVOup+3DVCQDYac/0wfbxXz7rd35DPi9zCwKS0lOfP7MH+do7VIqdrw0C6YWYIo7PBdOGgt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774013759; c=relaxed/simple;
	bh=vOIODmvYnxGfLzFs6a25c4Q6CgP93l3ESJqaUth0kgA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UIYDs8wqzMPvlyF5fh1B08ZWvji20dzktMSZnS+EkhCFsYWMyf5JgIeFUU7KGzHdAS/V8eEvHjMqJb1GdxuKEQKfnYeD0d7BxltzIyDugof/15OW1B3RaPgQuWdVbRerrmeI9mtW2yQfv8YF385qocyawnmE3mQ9E+cccil+vt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=IYd/W5kQ; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-409de4132b5so354849fac.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 06:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1774013756; x=1774618556; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wk5S/NjC4u0xUL6oomLxP9g3uOp7kISttmV1Dk/7kAk=;
        b=IYd/W5kQ8Xq61cZX+4I8cxD3H6IFCCXWOfIsvrbg7FX1JsUB1alYnygqJQ/aO2o6Be
         R86jx6VyCXaueBpDk4ufRuh2P+CuJw/sSjwsrghwLrnGpk7o/lDY0nQVnS7yoFARzze8
         7pkxXb/WkWv9pePx/oNQf+Ghx6J/EFc/Af38UJ3ncUUixocQujT4+rGJCGyAyrcgPqkw
         GUv9P5gDlvGbDyexlOq2u9gdg14aN7/Pu3xK/7zgGwcuTsA2cwd7dQ7TVi0UPy0Ap2tk
         1v4wH7Ktw3saoN+d+iYtHDUDhvQwVPNQV3v+rYKhyZ4y3MITI8jjpFCj/gNU4Mp5qP5/
         zOkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774013756; x=1774618556;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wk5S/NjC4u0xUL6oomLxP9g3uOp7kISttmV1Dk/7kAk=;
        b=D9lGaokd9VaW2B7+UTdSIY2PENDWa4Jp3M8Etk8X22T4513FNLp+41r5gsnIZ/y9RN
         ZF/Bxr+g/PUIuC0+Q6gKYQeamZI4vMUd17pXOfyhOZZAuZA64GAciJf8UUH4y1cSWUfE
         c8JXC+QZH23v2CYFAJ0DrLVphtFRXczDYHR+/4rDaN9Uah5c4TbKtu25slRsjpICJZhw
         2cOi+fdYvaQSYjQ0FUgWv/UI8NQ/2pTQJR3PmgP/vK57OAHdSCDP+RX418wGE6+m85oO
         ONTpbpkeQtPV8fU/R/myrq/fT0hJEA80tSMdxpZ2Ndn/dqQZOnlAUw1L8qoZAjFH+i/g
         fVqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVAbdGrU2GHTWr4wsjUkAE+BTrPw8IvuuLAa7koL7OEv5uko1P4LzZdUI1JARJYZEURKhNwYakVeyv@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb/pIfPgFc6wbq89XraBTnN2Si3mXCYIdfjhuBUKSWcrUrUACy
	6IbtMbvPlMWk7ILNtrjb379UaVfkMZ8IKxX+9zFuzqgdgymn0ipAcCcKUwkezvpQYXI=
X-Gm-Gg: ATEYQzz6B1bZgS+s04r3LTMqzI/badKYg+w+HQ7/vw43BZh8EiP/iI8RpUaa+K1M52p
	6Btnu6kh57I1Jgj/VPpGMcNl1oTNIwht3G/AcBo7WbBA0ewP9ci1UCYmwjI3v2pbFePti7gm+tl
	07o8nv32cY0ov8MHSNRYtoIwzaXU8vQNZyTjhaYr4B+NKWgiF/5et6MHXghtLYjshpFYTCwdkHA
	ygz/J1wOLVIt2tyRjz67cG3EoryPGuJTUH977n69eu36uQUlRelzlg3eWPSysbCsMkNWYdAnL9u
	0LE708bhOW8IGOt3OZ4fLSFi42F+WP65Qv6VIEJiDhb9oW9lOEcN2jJ9+5swW/SwLQbbWmdQwan
	ffxcMi4mPATXm/qLrFAfPt6Kn6UW/EEVAwWDyP8j6T89tIr24gavfdhWp342luSx59VGYwJbw+f
	6oaxZI+g460C6IkSvtC/gairxrkNcdtdbwyytf1HfeIBNwtyHsyzR9moUmGdBo38ot8oa3SSg=
X-Received: by 2002:a05:6870:e9aa:b0:417:23f2:6d77 with SMTP id 586e51a60fabf-41c10fd1b74mr1962084fac.16.1774013755741;
        Fri, 20 Mar 2026 06:35:55 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:6a3c:6fc:3be2:208d? ([2600:8803:e7e4:500:6a3c:6fc:3be2:208d])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-41c1497485esm2142629fac.8.2026.03.20.06.35.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 06:35:55 -0700 (PDT)
Message-ID: <9124e760-6e9e-4621-b684-071dbb271635@baylibre.com>
Date: Fri, 20 Mar 2026 08:35:54 -0500
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
 <c2618423-2466-47bb-a8cf-7c849e7e231e@baylibre.com>
 <7d1e52c0b9c3a6d30e9db617b9bcfa23ed9046b5.camel@collabora.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <7d1e52c0b9c3a6d30e9db617b9bcfa23ed9046b5.camel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278289-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,linuxfoundation.org,kernel.org,gmail.com,mediatek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:mid]
X-Rspamd-Queue-Id: E90F12DB12E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/20/26 7:37 AM, Louis-Alexis Eyraud wrote:
> Hi David,
> 
> On Thu, 2026-03-12 at 19:26 -0500, David Lechner wrote:
>> On 12/3/25 7:59 AM, Louis-Alexis Eyraud wrote:
>>> Add support for MediaTek MT8189 SoC and its variants, and a device-
>>> tree
>>> for the basic hardware enablement of the Genio 720-EVK board, based
>>> on
>>> MT8391 SoC.
>>>
>>
>> ...
>>
>>> +	mmc0_default_pins: mmc0-default-pins {
>>> +		pins-clk {
>>> +			pinmux = <PINMUX_GPIO162__FUNC_MSDC0_CLK>;
>>> +			drive-strength = <6>;
>>> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
>>> +		};
>>> +
>>> +		pins-cmd-dat {
>>> +			pinmux =
>>> <PINMUX_GPIO166__FUNC_MSDC0_DAT0>,
>>> +				
>>> <PINMUX_GPIO165__FUNC_MSDC0_DAT1>,
>>> +				
>>> <PINMUX_GPIO164__FUNC_MSDC0_DAT2>,
>>> +				
>>> <PINMUX_GPIO163__FUNC_MSDC0_DAT3>,
>>> +				
>>> <PINMUX_GPIO159__FUNC_MSDC0_DAT4>,
>>> +				
>>> <PINMUX_GPIO158__FUNC_MSDC0_DAT5>,
>>> +				
>>> <PINMUX_GPIO157__FUNC_MSDC0_DAT6>,
>>> +				
>>> <PINMUX_GPIO156__FUNC_MSDC0_DAT7>,
>>> +				 <PINMUX_GPIO161__FUNC_MSDC0_CMD>;
>>> +			input-enable;
>>> +			drive-strength = <6>;
>>> +			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
>>> +		};
>>
>> Should we also have pins-ds here to match mmc0-uhs-pins?
>>
> The data strobe pin is only used for the HS modes, that is why it is
> only declared for uhs state.
> No other mediatek board devicetrees have it for default state too, so I
> don't think it is needed here.
> 
>>> +
>>> +		pins-rst {
>>> +			pinmux =
>>> <PINMUX_GPIO160__FUNC_MSDC0_RSTB>;
>>> +			drive-strength = <6>;
>>> +			bias-pull-up = <MTK_PUPD_SET_R1R0_00>;
>>> +		};
>>> +	};
>>> +
>>> +	mmc0_uhs_pins: mmc0-uhs-pins {
>>> +		pins-clk {
>>> +			pinmux = <PINMUX_GPIO162__FUNC_MSDC0_CLK>;
>>> +			drive-strength = <8>;
>>> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
>>> +		};
>>> +
>>> +		pins-cmd-dat {
>>> +			pinmux =
>>> <PINMUX_GPIO166__FUNC_MSDC0_DAT0>,
>>> +				
>>> <PINMUX_GPIO165__FUNC_MSDC0_DAT1>,
>>> +				
>>> <PINMUX_GPIO164__FUNC_MSDC0_DAT2>,
>>> +				
>>> <PINMUX_GPIO163__FUNC_MSDC0_DAT3>,
>>> +				
>>> <PINMUX_GPIO159__FUNC_MSDC0_DAT4>,
>>> +				
>>> <PINMUX_GPIO158__FUNC_MSDC0_DAT5>,
>>> +				
>>> <PINMUX_GPIO157__FUNC_MSDC0_DAT6>,
>>> +				
>>> <PINMUX_GPIO156__FUNC_MSDC0_DAT7>,
>>> +				 <PINMUX_GPIO161__FUNC_MSDC0_CMD>;
>>> +			input-enable;
>>> +			drive-strength = <8>;
>>> +			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
>>> +		};
>>> +
>>> +		pins-ds {
>>> +			pinmux = <PINMUX_GPIO167__FUNC_MSDC0_DSL>;
>>> +			drive-strength = <8>;
>>> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
>>> +		};
>>> +
>>> +		pins-rst {
>>> +			pinmux =
>>> <PINMUX_GPIO160__FUNC_MSDC0_RSTB>;
>>> +			bias-pull-up = <MTK_PUPD_SET_R1R0_00>;
>>> +		};
>>> +	};
>>> +
>>> +	mmc1_default_pins: mmc1-default-pins {
>>> +		pins-clk {
>>> +			pinmux = <PINMUX_GPIO169__FUNC_MSDC1_CLK>;
>>> +			drive-strength = <6>;
>>> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
>>> +		};
>>> +
>>> +		pins-cmd-dat {
>>> +			pinmux =
>>> <PINMUX_GPIO170__FUNC_MSDC1_DAT0>,
>>> +				
>>> <PINMUX_GPIO171__FUNC_MSDC1_DAT1>,
>>> +				
>>> <PINMUX_GPIO172__FUNC_MSDC1_DAT2>,
>>> +				
>>> <PINMUX_GPIO173__FUNC_MSDC1_DAT3>,
>>> +				 <PINMUX_GPIO168__FUNC_MSDC1_CMD>;
>>> +			input-enable;
>>> +			drive-strength = <6>;
>>> +			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
>>> +		};
>>> +
>>> +		pins-insert {
>>> +			pinmux = <PINMUX_GPIO2__FUNC_GPIO2>;
>>> +			bias-pull-up;
>>> +		};
>>> +	};
>>> +
>>> +	mmc1_uhs_pins: mmc1-uhs-pins {
>>> +		pins-clk {
>>> +			pinmux = <PINMUX_GPIO169__FUNC_MSDC1_CLK>;
>>> +			drive-strength = <8>;
>>> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
>>> +		};
>>> +
>>> +		pins-cmd-dat {
>>> +			pinmux =
>>> <PINMUX_GPIO170__FUNC_MSDC1_DAT0>,
>>> +				
>>> <PINMUX_GPIO171__FUNC_MSDC1_DAT1>,
>>> +				
>>> <PINMUX_GPIO172__FUNC_MSDC1_DAT2>,
>>> +				
>>> <PINMUX_GPIO173__FUNC_MSDC1_DAT3>,
>>> +				 <PINMUX_GPIO168__FUNC_MSDC1_CMD>;
>>> +			input-enable;
>>> +			drive-strength = <8>;
>>> +			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
>>> +		};
>>
>> Don't we also need pins-insert here? (to match mmc1-default-pins)
>>
> From what I've found, it was done this way for other board devicetrees
> to avoid possible reconfiguration happen for the card detection pin
> while switching to UHS and causing a switch failure.
> Also, what you declare in pinmux nodes is how the pin configuration
> should change in a specific mode and you declare only what changes, and
> not what stay the same.
> 
>> I was having trouble with the CD input pin not working in U-Boot
>> until I added it.
> I checked and debugged this on my board and did not get that kind of
> issue, whether this pin config is not present for uhs state or if I add
> it. 
> When inserting my sd card or when I boot with it already inserted, the
> mtk-sd driver first sets the pinctrl state to default before switching
> to ufs. The GPIO02 pin config is also OK in both states.
> The mt8189 pinctrl driver seems to apply a default config for this pin
> that is the same as the one that is set here.
> 
> There might be u-boot particularities that could explain it fixes your
> issue.
> 
> Regards,
> Louis-Alexis
>>
>>> +	};
>>> +

Thanks for having a look at this and taking the time to explain. I will
see what I can do to fix it in U-Boot.


