Return-Path: <devicetree+bounces-202710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB7CB1E74C
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 13:28:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 889AF3AB949
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 11:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5B75274B31;
	Fri,  8 Aug 2025 11:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fzDoCjIX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858022749ED
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 11:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754652420; cv=none; b=u//6MBdwOeOsi+lPqFhN++mz50jQBpnOa80GXoVEIhl/iIiOkIpE1SZyRJP5Zi0R7cc1vJbQgxuQQHgItQVbZOIPCq9A/J0r5hRgV+Azs/lhuhejd89ExWE4/mNxMVxrK4DBwqdWKEV9m8JyrZ5f+xgfbmncIKzFNZk9gdnXr9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754652420; c=relaxed/simple;
	bh=PHwIx/DdNtH6flF1xerQiN6Sk7tIPcKXZKHuKQM8yJc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M5QdgbLwrRxd+XqqhN0/mK3XmRPqF1GQlRGqwH/hqRLLAvD1Cur7zhRf5lI+Rrfs0cz5CLzCY+e6Y7UWghXkhSPF5m/iUsTIJpFNost41zwcB3G1g8kRJWm8VcS3SINLaUiet6OiPg/UOeKKEwQfvTETB23c3T2lBDUEjGseB4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fzDoCjIX; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3b7825e2775so1829003f8f.2
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 04:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754652417; x=1755257217; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kQD9ZN86fbnOv3Py6c0GNoRIiGV/UrKy3H7tuotUIpg=;
        b=fzDoCjIXV/4UdeKdFmlmaB8G5G/Uylcj6tY5c+8e35wa4iRkq9rFY322hzLktQ54MO
         j4oj09k+WhbZS9heeaEyGeZDQUcld/H6lPCq23fM55va8rAYIfPfrTogT0rgK3r/cpAt
         gRpUaNCh7AB5V7YLRPpjQJ3c4feS2vX8dAeLHF/Y9NG3GkZOHSowU/VsBtSeCRSgYwqL
         LDPbS7SeMmf87H/OE8gKlBWW7NWqto+/Kl2Wd5Wx+D1MMm/S/jF+9eKikQFleuwQK5Tb
         gVrhy7Ib+9pXkWvnbNTd2yYLy3y3sOnG+JU/wQInTlJ6aF5fUv8EGqKgFph4iQVpm9H2
         7sZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754652417; x=1755257217;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kQD9ZN86fbnOv3Py6c0GNoRIiGV/UrKy3H7tuotUIpg=;
        b=xMXRi6vf4s0GH99X88dt37q+6IZsDeD6jJJdDJArARbLyRESjRAXIajvh0YnpAHMJG
         pUm/rmjws321cJQQiViXMHC6f1zoQ04R3TYx4i4iEJBQjfWPjWcoiu1yE3WPr1zSyDv2
         iKhOlOmFN0A/bsfob2RFaymzT9kBr9Gs5MtylqpeBLTYtvYFJw6kT0jxoaKsA3M415Ob
         w0ubnxBlrpqQv1SygetmRduxbpLUW1BIM0fqOMrcPremffFvUqy59TCT1CVHYufaj5pb
         iaE9rQgn5Cp5NQFQLoKFl5cZYzXshx1o/PimnJXWxgjpP4lDoqGwWmikZPP1WlxrMD+z
         gxpg==
X-Forwarded-Encrypted: i=1; AJvYcCVDAzfCamuNTptkJ4yyszMjZ+8gYabJOuXu1XJvb7klWGlc35ga9jEJ0rI6CudXv9d+xA8tveJpMGYN@vger.kernel.org
X-Gm-Message-State: AOJu0YxglBFttZ+6E5SqjqVG3ee0FmCN7LZab/33K7ijWiAYmr+wv2Y6
	eL1f8HasbsLERxpTPfneAyZV0zUHMi983khnPasOhgqVkpLwwc8k42UNEvz7CVwLfu4=
X-Gm-Gg: ASbGncsZMg+s1i3UBKEOlGR1U7qjfMwwgSmbmpPC4z536Hje0auOQtXhSeqryX9XAaP
	6cKNz7X7bbQMQnb1XqnQlENhdM/snXa5azYqrA+wavXopiycLtSEmmNxFFCJX7hy6OsjeExFoUe
	14dNyxnT2caz70kZUmCZ4DksuQK+1GP3XPDKSj0NBMv8p8AI8J+QWWfa5p7mJvmSLw5W3TRVpX0
	OrUaLjuNrWGNo0Q2Tj19ERB4WNSSms/Q7Nxm+A8IA3BtCa5kA9Ua3vKavVB3NuhUrNTIqQUIdYe
	86a+VXP5GkmzOytuL4fnddchkssHvVerTBqlUV4VLgzi8CTeDvCf7EUKo8bjMkwkkX1zTUwhU34
	46q0T9IkwTQH87XMlFVdKsb7qBS5RSfk=
X-Google-Smtp-Source: AGHT+IGrw6qJfbOAqNVKVNHju607OPKnyRwv/T0hcF1UsbBaa/pvlDY7WeC0PqYLDYFHFXx38VFdTg==
X-Received: by 2002:a05:6000:26c9:b0:3b7:89c2:464b with SMTP id ffacd0b85a97d-3b900b4496bmr2232459f8f.5.1754652416806;
        Fri, 08 Aug 2025 04:26:56 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c4a2187sm31150895f8f.70.2025.08.08.04.26.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 04:26:56 -0700 (PDT)
Message-ID: <0addc570-a3c6-4d7e-9cbd-06eedd2447bb@tuxon.dev>
Date: Fri, 8 Aug 2025 14:26:54 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/9] dt-bindings: PCI: renesas,r9a08g045s33-pcie: Add
 documentation for the PCIe IP on Renesas RZ/G3S
To: Krzysztof Kozlowski <krzk@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, catalin.marinas@arm.com,
 will@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, lizhi.hou@amd.com, linux-pci@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, Claudiu Beznea
 <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20250709132449.GA2193594@bhelgaas>
 <2e0d815a-774a-4e31-92f1-71e0772294c7@kernel.org>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <2e0d815a-774a-4e31-92f1-71e0772294c7@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, all,

Apologies for the late reply.


On 09.07.2025 16:43, Krzysztof Kozlowski wrote:
> On 09/07/2025 15:24, Bjorn Helgaas wrote:
>> On Wed, Jul 09, 2025 at 08:47:05AM +0200, Krzysztof Kozlowski wrote:
>>> On 08/07/2025 18:34, Bjorn Helgaas wrote:
>>>> On Fri, Jul 04, 2025 at 07:14:04PM +0300, Claudiu wrote:
>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>
>>>>> The PCIe IP available on the Renesas RZ/G3S complies with the PCI Express
>>>>> Base Specification 4.0. It is designed for root complex applications and
>>>>> features a single-lane (x1) implementation. Add documentation for it.
>>>>
>>>>> +++ b/Documentation/devicetree/bindings/pci/renesas,r9a08g045s33-pcie.yaml
>>>>
>>>> The "r9a08g045s33" in the filename seems oddly specific.  Does it
>>>> leave room for descendants of the current chip that will inevitably be
>>>> added in the future?  Most bindings are named with a fairly generic
>>>> family name, e.g., "fsl,layerscape", "hisilicon,kirin", "intel,
>>>> keembay", "samsung,exynos", etc.
>>>>
>>>
>>> Bindings should be named by compatible, not in a generic way, so name is
>>> correct. It can always grow with new compatibles even if name matches
>>> old one, it's not a problem.
>>
>> Ok, thanks!
>>
>> I guess that means I'm casting shade on the "r9a08g045s33" compatible.
>> I suppose it means something to somebody.
> 
> Well, I hope it matches the name of the SoC, from which the compatible
> should come :)

The r9a08g45s33 is the part number of a device from the RZ/G3S group. This
particular device from RZ/G3S group supports PCIe.

In the RZ/G3S group there are more SoC variants (each with its own part
number). Not all support PCIe. To differentiate b/w PCIe and non-PCIe
variants it has been chosen to use the full part number here.

The available RZ/G3S part numbers are listed in Table 1.1 Product Lineup at [1]

(The following steps should be followed to access the manual:
1/ Click the "User Manual" button
2/ Click "Confirm"; this will start downloading an archive
3/ Open the downloaded archive
4/ Navigate to r01uh1014ej*-rzg3s-users-manual-hardware -> Deliverables
5/ Open the file r01uh1014ej*-rzg3s.pdf)

We use a similar compatible scheme in other drivers.

Geert, I may be wrong. Please correct me otherwise, as I don't have the
full picture of this.

Maybe, the other variant would be to use "renesas,rzg3s-pcie", or maybe a
more generic one "renesas,rz-pcie" (though I think this last one is too
generic).

Geert, please let us know if you have some suggestions here with regards to
the compatible. The IP on RZ/G3S is compatible also with the one in RZ/V2H,
RZ/G3E.

Thank you,
Claudiu

[1]
https://www.renesas.com/en/products/rz-g3s?queryID=695cc067c2d89e3f271d43656ede4d12

> 
> Best regards,
> Krzysztof


