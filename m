Return-Path: <devicetree+bounces-20270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5287B7FEA4C
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 09:16:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81B3A1C20C14
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 08:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AABC2209D;
	Thu, 30 Nov 2023 08:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jvjm0klh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E703A3
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 00:16:45 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-54b8a4d64b5so572066a12.0
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 00:16:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701332204; x=1701937004; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E26I7mF32d7TZiN90S+MaDwaONY/27p8LP/G6VOqH6w=;
        b=jvjm0klhB56i60FPsd6pdO2Nz5D9V5Ipt1+8KevAF9QIayrNgxiOHp3+LtRSs5Cu6O
         1M2gzSSsSPZJB9lo4t8coMmd6oF0B5noQqTkYzNx/UnGXCEWZVUSwhCdD6HDR03WxA8q
         jZaa3ls1dMfFmEfOE6MsB+MgzHfe10isp0BQ6DtR5Y096KUx/ozvwZiWFTWmgvjdUttl
         uxb7TXPIdntaxjfH2GvCbFI5ZQNsqfL5Mih85WLV7G61sOQOyJZrts9KmxYT08Ohy3Rq
         6N406Jbe6ZRacXRP+3PgtvWYr8bmsF8fBSfhsmFJIIy2aOLGvKiokGTzNE9zwn7jBeqh
         207g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701332204; x=1701937004;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E26I7mF32d7TZiN90S+MaDwaONY/27p8LP/G6VOqH6w=;
        b=N/J+XLieHdBm7z3kIFhYWsJi2BMc4pgyOx+gcjlXvNoJlALyVHq5hgxpAOzoQWWip8
         ygjI01fsW6Zf9JsnIQoVWw5E2fPK8waDUaWlnTOruPjy5Z5iJiA+P67k0Z7fZcPmjx4Q
         p7fY8PKG1lnlgSCQpP21zHMfFNYdEKcMpSdWtmqROrQm5tUS8z3+MPQPTzrQ3TXSgT9a
         sGn+Psi0GqQ+dHrie6fe8cA/nADDUdtQm42g1BLFf69WxJKSGv6WLXw5Qk/gGOpbOem1
         N33Yeks5zyK+7uJB8MyruSHSmtD1RsYqb/ga0oT14RvguY7n8wY2/c/x58dSEN2ncz0i
         XLuA==
X-Gm-Message-State: AOJu0YyBcbQfdoSBqPEFq6/oZhPgluu7DFDh+n8JJRe0SrcmoeX9+Ixu
	2IAr0pYX1r3Wh/IOP1+sPik5Pw==
X-Google-Smtp-Source: AGHT+IG17hbQ90Xbowdr9xPnDYDdzsVr9taq8BAj8p0KyjiLAk7MDQBcUED2kuU8c2j/r+7UTKDZCg==
X-Received: by 2002:a17:906:8b:b0:a18:abdc:17ca with SMTP id 11-20020a170906008b00b00a18abdc17camr580812ejc.68.1701332204034;
        Thu, 30 Nov 2023 00:16:44 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id p7-20020a17090635c700b009fc576e26e6sm406533ejb.80.2023.11.30.00.16.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Nov 2023 00:16:43 -0800 (PST)
Message-ID: <85527699-f549-4728-b263-7d10c669b889@linaro.org>
Date: Thu, 30 Nov 2023 09:16:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: usb: dwc3: Clean up hs_phy_irq in
 bindings
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_ppratap@quicinc.com, quic_jackp@quicinc.com
References: <20231122191335.3058-1-quic_kriskura@quicinc.com>
 <ZV9dYpTYRXn63tXe@hovoldconsulting.com>
 <1192d91f-11bf-44af-953a-14e08e2b6ca8@quicinc.com>
 <ZWCpGdJRexnk98IN@hovoldconsulting.com>
 <004ddc69-1566-4de4-b260-0fca96a9395f@quicinc.com>
 <ZWW_FOAKp95Cf9vN@hovoldconsulting.com>
 <18965bb9-7afa-4892-8b71-981ba29d2cd4@quicinc.com>
 <ZWXHrvUDnF2dMk6r@hovoldconsulting.com>
 <6d7527bf-8c1a-49b5-a0cf-99a92098c971@quicinc.com>
 <c8a28c72-5c0a-4a67-a4c9-e46a5716cda4@linaro.org>
 <ZWcPZPX-eT-xHAOv@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ZWcPZPX-eT-xHAOv@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/11/2023 11:16, Johan Hovold wrote:
> On Wed, Nov 29, 2023 at 10:28:25AM +0100, Krzysztof Kozlowski wrote:
>> On 28/11/2023 12:32, Krishna Kurapati PSSNV wrote:
>>>
>>>>
>>>> So back to my initial proposal, with a slight modification moving
>>>> pwr_event first (e.g. as it is not a wakeup interrupt):
>>>>
>>>> qusb2-:
>>>>
>>>> 	- const: pwr_event
>>>> 	- const: qusb2_phy
>>>> 	- const: ss_phy_irq	(optional)
>>>>
>>>> qusb2:
>>>>
>>>> 	- const: pwr_event
>>>> 	- const: hs_phy_irq
>>>> 	- const: qusb2_phy
>>>> 	- const: ss_phy_irq	(optional)
>>>>
>>>> femto-:
>>>> 	- const: pwr_event
>>>> 	- const: dp_hs_phy_irq
>>>> 	- const: dm_hs_phy_irq
>>>> 	- const: ss_phy_irq	(optional)
>>>>
>>>> femto:
>>>> 	- const: pwr_event
>>>> 	- const: hs_phy_irq
>>>> 	- const: dp_hs_phy_irq
>>>> 	- const: dm_hs_phy_irq
>>>> 	- const: ss_phy_irq	(optional)
>>
>> I did not follow entire thread and I do not know whether you change the
>> order in existing bindings, but just in case: the entries in existing
>> bindings cannot change the order. That's a strict ABI requirement
>> recently also discussed with Bjorn, because we want to have stable DTB
>> for laptop platforms. If my comment is not relevant, then please ignore.
> 
> Your comment is relevant, but I'm not sure I agree.
> 
> The Qualcomm bindings are a complete mess of DT snippets copied from
> vendor trees and which have not been sanitised properly before being
> merged upstream (partly due to there not being any public documentation
> available).

True.

> 
> This amounts to an unmaintainable mess which is reflected in the
> binding schemas which similarly needs to encode every random order which
> the SoC happened to use when being upstreamed. That makes the binding
> documentation unreadable too, and the next time a new SoC is upstreamed
> there is no clear hints of what the binding should look like, and we end
> up with yet another permutation.


While in general I agree for the bindings, but here, for order of the
interrupts, I am not really sure if this contributes to unreadable or
unmaintainable binding.

> 
> As part of this exercise, we've also determined that some of the
> devicetrees that are already upstream are incorrect as well as
> incomplete.

Sure, good explanation for an ABI break.

> 
> I really see no alternative to ripping of the plaster and cleaning this
> up once and for all even if it "breaks" some imaginary OS which (unlike
> Linux) relies on the current random order of these interrupts.
> 
> [ If there were any real OSes actually relying on the order, then that
> would be a different thing of course. ]

The commit breaking the ABI can justify the reasons, including expected
impact (e.g. none for Linux).

While the second part probably you can justify (interrupts are taken by
name), the reason for ABI break like "I think it is poor code, so I will
ignore ABI" is not enough.

Best regards,
Krzysztof


