Return-Path: <devicetree+bounces-259914-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UONBF+TDeGmltAEAu9opvQ
	(envelope-from <devicetree+bounces-259914-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:55:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7A795327
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8DD943018764
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C16A35B631;
	Tue, 27 Jan 2026 13:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bf07ZmAU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2633587DA
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769522141; cv=none; b=HEjqf4P82I5Tzb3pd8WhEc/Eb8VNRUpKbE/9RZX2W5KKtZY4P3zDsxsYQNHc+I33MgppkOaSc7Z9GSH34jClOOvq2SOeRvLIN7nkZiO4BIancTYnMryfaC35FuHxWJ9D2Bx9u1FLpP6szfURQoCxJnH1ynxcB4bzZUOn3PjloG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769522141; c=relaxed/simple;
	bh=5SQOjFLhGEybXrWiy00N6n6VrcuASmRkZiwk6Xb9Qfw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=XijxcO30Vpll+3qkBo45ZSZt6cw9Ef/0G5ZYLa2kWRLczXBkzeBdrcPIRH4KbBzf2cUH9w3Zb6wYndBnFE8R6oVGr39i+zzIwsudHfX3ce2X1d1rMV8gfRD8wHxSaAfv7ZSggVDfdcp6D3om7I7hrPcg1Q7px6O1foCkpsfkK0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bf07ZmAU; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-432d2c7a8b9so5543561f8f.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 05:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769522138; x=1770126938; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/kgLI7MhizMgsKZU+Aw847BhJRGZNY1cPGvaWvEvDlk=;
        b=Bf07ZmAUocI5EY0cbFzyARSC8gwmmpLL9mcZYK3lMj6ekV+2aRVsiLE8H8n13Lupda
         jyV1YpBFzg3onAaHLFgKym5TdAmCWG3XjtjheQaBuiRWXDmSGoO8qJ7nDdsCmCo5KHeI
         EXkvQFvZ+VmJUDPLuAstwwGY59cYHawQsMVMh09lNdM0A/N/X3h2cpTbAJm1tQahjvb5
         wW5m846tMwaLSh2b/gay7tEIhARE3SibXPA2iChmDeP+Cah8lBX4URfa29Q/UumeX47z
         5+6VFcdoYPZmRJIAN7XV9hrftD0CPbgzMjSirA8RM6Lq+zfOPW9RV2wGPQ2pSXmzmcCK
         +5ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769522138; x=1770126938;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/kgLI7MhizMgsKZU+Aw847BhJRGZNY1cPGvaWvEvDlk=;
        b=vcLYaGjDt9boJUzcrZhzkrSIU93FXhx21R/+L4AFd/w2Y+Ko9AaiqvBbk6VQn3dTFn
         hE4J8Lw+k9Yyl9mCqqizd+Bkov68O00AEOtS7CovekmbA+qS9jcYku1rZT0WjAxdydvl
         CgIF3pdKx07uEVE5Yl/CnizplYgKGU3UfJxuKOx9VpblcEsnunNRpvtAmYz0+RAQnOVR
         mx0gK0/RCvofUC/T6iYHYiR4eenoFHgdPfS31EnCMxnYXfbpaGWkj2Z/g9ongdJFBNoB
         XXjBeH87OpMzXpQS9EJtcBVdua3QVl50pJbCgbvgbcP0Pl5di+Xr2HrQOwWvB4hgxVY9
         C7Sg==
X-Forwarded-Encrypted: i=1; AJvYcCXl+jJq1YONdlHtTX7Rru4zP56vWKbMDL0znBS7SQ4Ja2TIQWtl4+EDLNRPS8R2tAWuuWLO3wE2Jiu3@vger.kernel.org
X-Gm-Message-State: AOJu0YxOhegU3RgTtyuCLuIC2jFrJW4VgKIkXEHpxBIq3ixRxXrPCNwf
	K8RqUZ4QMLJX68iX8OqwZcZcB9nn2QFcBc87piCL9utNVPsNtigkZRPQ2+PTQ0a/Ftc=
X-Gm-Gg: AZuq6aJuZKu7i3K3ZaGHIng5ZE5qWKdiTwdW3p6aKUPp6kFehcuqlgy98ncKBqyJUiT
	msF32zJ0g8/8UYAuxv1zCokNI4vvKw8cFV69qqhJjBDu6Su6h53Ymcd7jl5jsGW97rDzyGKO9v+
	Yp8bgH1SZhU/XZquBZ8hMQR5JwU+4pIATlYn7zsB1WYZKPflvZDfNo4hkah63P+IuuH3isNYl05
	vBH2lEgOKy1cfSZxTVmyNyXTN3JOkDmKQAJFu7oeqD+MSNLJbh1VoSbOjSUuugj5RqfONI0nj3O
	b6Rndcyoc7HFQtIcsgNLJe0DZHN3JkuydDmFN8r0q5I2QP+B5ugGyUEH6xUfjIvGtipf1YuYKhS
	/Lfe97OcRAI5GoLiwcjkAASkHS8zaj0ghBUh5Epq8eRmqzV/gylihvbLruhXwe/uOrCL7OsHZ1B
	6k7L5ieeCS21hwhjnZ5eQmm4qPnGgEYca5kF5GDE38h6DDk9hbJmRTFq5fLZAKgI85z26vtXS9f
	A==
X-Received: by 2002:a05:6000:2dc9:b0:432:5b81:480 with SMTP id ffacd0b85a97d-435dd06a466mr2267894f8f.24.1769522137688;
        Tue, 27 Jan 2026 05:55:37 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:53a6:bd3c:8e65:509d? ([2a01:e0a:3d9:2080:53a6:bd3c:8e65:509d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1e717cbsm38798477f8f.24.2026.01.27.05.55.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 05:55:37 -0800 (PST)
Message-ID: <6e8c3d6b-8cba-42da-bafa-28becfa15d60@linaro.org>
Date: Tue, 27 Jan 2026 14:55:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 1/7] dt-bindings: usb: document the Renesas
 UPD720201/UPD720202 USB 3.0 xHCI Host Controller
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov
 <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Bartosz Golaszewski <brgl@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 linux-usb@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-pci@vger.kernel.org
References: <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-0-c55ec1b5d8bf@linaro.org>
 <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-1-c55ec1b5d8bf@linaro.org>
 <CAMuHMdU9HcK3xX=itqe2di1HS1SJvV6=ySqKyrtj7Yr1yXyuqQ@mail.gmail.com>
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
In-Reply-To: <CAMuHMdU9HcK3xX=itqe2di1HS1SJvV6=ySqKyrtj7Yr1yXyuqQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linuxfoundation.org,glider.be,google.com,vger.kernel.org,lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259914-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,linaro.org:dkim,linaro.org:email,linaro.org:replyto,linaro.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,linux-m68k.org:email];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: BA7A795327
X-Rspamd-Action: no action

Hi,

On 1/27/26 11:20, Geert Uytterhoeven wrote:
> Hi Neil,
> 
> On Tue, 27 Jan 2026 at 10:57, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>> Document the Renesas UPD720201/UPD720202 USB 3.0 xHCI Host Controller,
>> which connects over PCIe and requires specific power supplies to
> 
> Here: "requires"...

Sorry I don't understand

> 
>> start up.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   .../bindings/usb/renesas,upd720201-pci.yaml        | 55 ++++++++++++++++++++++
>>   1 file changed, 55 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/renesas,upd720201-pci.yaml b/Documentation/devicetree/bindings/usb/renesas,upd720201-pci.yaml
>> new file mode 100644
>> index 000000000000..df3cdcf44747
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/usb/renesas,upd720201-pci.yaml
>> @@ -0,0 +1,55 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/usb/renesas,upd720201-pci.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: UPD720201/UPD720202 USB 3.0 xHCI Host Controller (PCIe)
>> +
>> +maintainers:
>> +  - Neil Armstrong <neil.armstrong@linaro.org>
>> +
>> +description:
>> +  UPD720201 USB 3.0 xHCI Host Controller via PCIe x1 Gen2 interface.
>> +  The UPD720202 up to two downstream ports, while UPD720201 supports up to
>> +  four downstream USB 3.0 rev1.0 ports.
>> +
>> +properties:
>> +  compatible:
>> +    const: pci1912,0014
> 
> Just wondering: how does having a new driver
> drivers/pci/pwrctrl/pci-pwrctrl-upd720201.c matching against this
> compatible play well with normal PCI discovery and probing of
> drivers/usb/host/xhci-pci-renesas.c?

In Linux, power control is implemented as a platform device driver,
so it doesn't collide with the pci driver.

The pci driver won't probe until the device shows up on the bus anyway,
so he power control will attach as platform for this purpose.

> 
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  avdd33-supply:
>> +    description: +3.3 V power supply for analog circuit
>> +
>> +  vdd10-supply:
>> +    description: +1.05 V power supply
>> +
>> +  vdd33-supply:
>> +    description: +3.3 V power supply
>> +
>> +required:
>> +  - compatible
>> +  - reg
> 
> ... but no power supplies are listed here? ...

None are stricly required, they can be supplied directly without
a passive regulator. Not sure they should be required

> 
>> +
>> +allOf:
>> +  - $ref: usb-xhci.yaml
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    pcie@0 {
>> +        reg = <0x0 0x1000>;
>> +        ranges = <0x02000000 0x0 0x100000 0x10000000 0x0 0x0>;
>> +        #address-cells = <3>;
>> +        #size-cells = <2>;
>> +        device_type = "pci";
>> +
>> +        usb@0 {
> 
> The actual DTS uses "usb-controller".
> 
>> +            compatible = "pci1912,0014";
>> +            reg = <0x0 0x0 0x0 0x0 0x0>;
> 
> ... also not in the example?
> 
>> +        };
>> +    };
>>
>> --
>> 2.34.1
> 
> Gr{oetje,eeting}s,
> 
>                          Geert
> 
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                  -- Linus Torvalds

Thanks,
Neil

