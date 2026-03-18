Return-Path: <devicetree+bounces-277383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WH3/NNDmumkpdAIAu9opvQ
	(envelope-from <devicetree+bounces-277383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:54:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 509652C0BA5
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:54:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 476C63263E40
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA4EA2BE04C;
	Wed, 18 Mar 2026 17:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q7ShYkTh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3218F2DB790
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 17:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773854368; cv=none; b=AfErjNY3WTJ3mXbO23wnt3gjEyk02k9EY/znAGB2ON8TUxyrrKoMCvK3CtwbIGVZ4m6yHPmTzgKdsxFpphV/DGuq8mXdQMXU+agxkFBMAqHS4lgpTjWlZREOVczatJi7ukbTxshahf5J5xNrLdOFU7l48/jprIIaccCOsj3io9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773854368; c=relaxed/simple;
	bh=MG3X2ZEDWTa8Pq/FDrZr++pCLMneFSRczgraMiw8aa8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=epS0sDBmdWfpIJrrzG49fk2ELOXKwvJuWNpRmInPtc3iiayb55IAr6FQ5hvRcAUQKtDpSDEz+I6W8vdbHSjpwcIgZqVwdgzFMnOy19fJjaicd8w0E3MgP4DqHYXjvueSTxsBupOyEJIL/Zz8PQ8NXqkJqjCSIg+ykNqX3ghO3Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q7ShYkTh; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-485409ab264so127785e9.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773854365; x=1774459165; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fnOtvOn7pZpUz2FQiTPP/64haRLflpFLildzQHxvHt4=;
        b=Q7ShYkThXM89J2i0NHB8pdky5ZMaFJSbvLaEGCbtqVoKwEaszOvzhcShaN6R6sCMdK
         GcJijpudrtou7AVWUWeZQbEFNVuHiNwtlS+sH3PnxW6uSQWBM70vOL0utG1N0AKfnMUl
         F+G4WgIjLHrKKhS1hOxz4QrkIWGUGaD5IdABonXueoUD1Ps6c5WZ8Kdym4UoUF1pr8EC
         juY6B2lt6syghbPE43o0KXguC/Ukx268l41TXk1276j4Qrg+I9SKbW3f3SL5eM395tsW
         fiFN8oSUQsZ+3u0VBKZE3LSFYEdzl22XLFX/+dYjWH8agVUXVw9K9vFYdilVaFr+2HIe
         8skg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773854365; x=1774459165;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fnOtvOn7pZpUz2FQiTPP/64haRLflpFLildzQHxvHt4=;
        b=WIkGBYLa9wk+uBcU28BR/2EmnGclqeMkox1jMiCoY/WgSM8ZkPKUv5ybKRkPT3Y/js
         ZSIIPMDeS5u3YzkYDAsKoeBV5iOrnkvkBHSBdamHUTF/hG+TkPz2d1aX1ULPgF+ex4hv
         Uc37CtuihNpQ+GRBCldcsMLKHqwyiuOfA3h+s+aXUZ/G/0gnljEO/hAdBPvXuteqyTEu
         buyVRdjrOJNJKg2pFNrWAtjHW8SgbACaKoHvhXyEbCm+cPymhe5vIW3lNgKd/mExmY9Y
         8sO09gXkZ+/Wqz3owQQfZnMzRDD1S2fn4Af05zwAeWNGeYnlJFx/Fvspv5iDLQzGWDuE
         Z41A==
X-Forwarded-Encrypted: i=1; AJvYcCUo7niH6XVNo+YMx8Z1WQ69T9J5Xo1GVDVaapAz1ns9tMrnAOMveYC/BLKjvWbD1YfXONl/U9XHi0lt@vger.kernel.org
X-Gm-Message-State: AOJu0Yz10y/KaPR4Bfccge0/kZak6BQJkBTyZcIArOze/vlmXR+/zLxX
	SYgvlGJE9fA/EnJhP2Wh8tKaa9Y4widTKtxGSiSig6nAgzWSE1uhe28FIwCHW/hy8nc=
X-Gm-Gg: ATEYQzxXy47UX1q2hgjS+v57B3jalkqqp4lKsgtJfPCIln4NimlqbLQF843DG7gEKfD
	LvMjN08nDc+vvB21uV/lPXpylSEhDvWFNHAX0584VP84vfA3/bFijCR6yWdO5PRLccN+owEJ/mt
	Xtd+oTgTeE8J28Ba2IP8aSbpKsUdYtCZ5dHj5/Br85fCUWVdt2ehhCNwKSrkGb7Vs+/JJM4TjUG
	l5SNRIxt8qaxdzT0LNCNuAFtFP/s3XqzoMAoV1VzrsWkTAgVG3t/KrjQGv2H7HC2K98uxx5UDtI
	7HuDnXt7YWrkmC3XfcgGGa2baKBj3aWKsmBHq/m4OJzJ8mzJ6Bc8gw2ag8Bpg3TCGdO3CQPFIKv
	dU/PMAbe9jTGUzxNcvrh9fbjbRQQzdJUSGOEwPlEGRclPqClgbjLzjk7eo/gnPBWzxCEdUbTBk+
	1nuBFRPkdXsHbGtts3nT0IG35sY0Az17J439BEXZNPeCjzHzrQHaxRhpsIFgykHS1LCcDnlhf4P
	5+JBFc=
X-Received: by 2002:a05:600c:c0c7:b0:485:526d:ea77 with SMTP id 5b1f17b1804b1-486f8b6cea2mr7358495e9.11.1773854365392;
        Wed, 18 Mar 2026 10:19:25 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:ac75:790f:ef3c:2eb0? ([2a01:e0a:106d:1080:ac75:790f:ef3c:2eb0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b518922absm10076233f8f.18.2026.03.18.10.19.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 10:19:25 -0700 (PDT)
Message-ID: <1822b843-8fd7-4154-8f9b-0e38b13342c9@linaro.org>
Date: Wed, 18 Mar 2026 18:19:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v5 0/9] arm64: dts: qcom: Add support for the Ayaneo
 Pocket S2
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Bartosz Golaszewski <brgl@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 KancyJoe <kancy2333@outlook.com>
References: <20260318171725.GA51567@bhelgaas>
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
In-Reply-To: <20260318171725.GA51567@bhelgaas>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,glider.be,gmail.com,google.com,vger.kernel.org,oss.qualcomm.com,outlook.com];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-277383-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:replyto,linaro.org:mid,ayaneo.com:url,msgid.link:url];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 509652C0BA5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 18:17, Bjorn Helgaas wrote:
> On Fri, Feb 20, 2026 at 04:04:39PM +0100, Neil Armstrong wrote:
>> The Ayaneo Pocket S2 is a gaming console based on the Qualcomm
>> Snapdragon 8 Gen 3. It has an internal UFS storage, WiFi,
>> Bluetooth, gaming buttons, SDCard, 2K display and USB-C
>> connector.
>>
>> Product Page [1].
>>
>> The Initial linux port was done by KancyJoe (Sunflower2333)
>> at [2].
>>
>> [1] https://www.ayaneo.com/goods/9344082149621
>> [2] https://github.com/sunflower2333/linux/tree/master
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>> Changes in v5:
>> - Rebased on -next
>> - Collected tags
>> - Rebased/renamed slot to generic based on changes from Bjorn
>> - Link to v4: https://patch.msgid.link/20260216-topic-sm8650-ayaneo-pocket-s2-base-v4-0-802c82795431@linaro.org
>>
>> Changes in v4:
>> - Renamed slot to generic, in the code as well, fixed Kconfig & commit message
>> - Switched the UPD72020x bindings additionalProperties to true to allow devices subnodes
>> - Collected acks
>> - Link to v3: https://patch.msgid.link/20260206-topic-sm8650-ayaneo-pocket-s2-base-v3-0-5b79c5d61a03@linaro.org
>>
>> Changes in v3:
>> - Made renesas,upd720201-pci bindings supplies required
>> - Fixed description and example of renesas,upd720201-pci bindings
>> - Renamed slot to generic, added renesas,upd720201-pci entry
>> - Used PMIC_GPIO_STRENGTH_LOW instead of numbers
>> - Removed all output-low in pinconf
>> - Link to v2: https://patch.msgid.link/20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-0-c55ec1b5d8bf@linaro.org
>>
>> Changes in v2:
>> - Add proper regulators for the USB controller, with bindings & power ctrl
>> - Add proper regulators for FAN
>> - Dropped support for headset over USB-C, audio is connected to a jack port
>> - Cleaned up Audio routing and fixed the DP endpoint index
>> - Added i2c clk frequencies
>> - Renamed fan node and used interrupts-extended
>> - Dropped the usb-c self-powered
>> - Reordered nodes alphabetically
>> - Renamed pcieport1 to pcie1_port0
>> - Link to v1: https://patch.msgid.link/20260121-topic-sm8650-ayaneo-pocket-s2-base-v1-0-bb3f95f1c085@linaro.org
>>
>> ---
>> KancyJoe (1):
>>        arm64: dts: qcom: add basic devicetree for Ayaneo Pocket S2 gaming console
>>
>> Neil Armstrong (8):
>>        dt-bindings: usb: document the Renesas UPD720201/UPD720202 USB 3.0 xHCI Host Controller
>>        pci: pwrctrl: slot: fix dev_err_probe() usage
>>        pci: pwrctrl: rename pci-pwrctrl-slot as generic
>>        pci: pwrctrl: generic: support for the UPD720201/UPD720202 USB 3.0 xHCI Host Controller
>>        arm64: defconfig: enable pci-pwrctrl-generic as module
>>        dt-binding: vendor-prefixes: document the Ayaneo brand
>>        dt-bindings: arm: qcom: document the Ayaneo Pocket S2
>>        arm64: dts: qcom: sm8650: Add sound DAI prefix for DP
> 
> I applied the drivers/pci/pwrctrl patches to pci/pwrctrl for v7.1,
> thanks!
> 
> I reordered the rename to be first (and used "git mv") and updated the
> subject lines to match the history.

Thank you !

Neil

> 
>>   Documentation/devicetree/bindings/arm/qcom.yaml    |    1 +
>>   .../bindings/usb/renesas,upd720201-pci.yaml        |   61 +
>>   .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
>>   arch/arm64/boot/dts/qcom/Makefile                  |    1 +
>>   .../boot/dts/qcom/sm8650-ayaneo-pocket-s2.dts      | 1551 ++++++++++++++++++++
>>   arch/arm64/boot/dts/qcom/sm8650.dtsi               |   47 +-
>>   arch/arm64/configs/defconfig                       |    1 +
>>   drivers/pci/controller/dwc/Kconfig                 |    4 +-
>>   drivers/pci/pwrctrl/Kconfig                        |   13 +-
>>   drivers/pci/pwrctrl/Makefile                       |    4 +-
>>   drivers/pci/pwrctrl/generic.c                      |  143 ++
>>   drivers/pci/pwrctrl/slot.c                         |  140 --
>>   12 files changed, 1795 insertions(+), 173 deletions(-)
>> ---
>> base-commit: df94cc5ccb88d2f6ebc0cac480a1b94162f4ff0f
>> change-id: 20260121-topic-sm8650-ayaneo-pocket-s2-base-05c348efd86d
>>
>> Best regards,
>> -- 
>> Neil Armstrong <neil.armstrong@linaro.org>
>>


