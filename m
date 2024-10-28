Return-Path: <devicetree+bounces-116678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3B19B399A
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 19:51:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD4AD1C22132
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 18:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1A7A1DFDBE;
	Mon, 28 Oct 2024 18:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="POY/dOYH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A095F1DF97C
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 18:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730141500; cv=none; b=OJZXT9BbdY3jYbqQVLM4gBl6XzVcrRcIZFUQ5rtDkUdHQpMO5sU8qiEyPyQZqrWdAtMCdD6Ys208WCE/mXnpzvpd+Me+pvGh3EGmPLXz6Q+VMFVGFbaoB1CdZRV9bYroZlvQMTjmgERuIzhJO4CDXYIP7C5+pel5TXDky32tNiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730141500; c=relaxed/simple;
	bh=lHnEmeLYSwWDVtASs0k6ccDztbX34meWRd7vu0mWFBw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f2q8R+hHqiiOpAMruFqDEIYTvTOu5EhYvTc8DeRdbCh5mw9PdRU33IHnQUXuuj4nP6NALx3CMlmXgJ0mp7bAaNDfRoJ35OtoPZ52RLk9xN5aARks1yqrCueLDNnhFw2zQrEougRI2ExbajXUyorE3JtbRU0sp6PvjWFqdsSOC90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=POY/dOYH; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-460c0f9c13eso40169181cf.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 11:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1730141497; x=1730746297; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=vvMPCIRxcWlgVDj1SYKpQOgqABEqS4mtXMluObvexxE=;
        b=POY/dOYHg0WMosyFfx3nSDI+lEqKoBAL6FIZA63YP3gm6Z97QO+O+SeTLLP+v6TWxA
         fVFuAVqDv5icn3px7954RR9WfOXpUxsAoqLyQF6mSKXfQf/d6TAJQ+UGcTLMs+bjvIrU
         H/9ELkTrfaQhPRw5l2mKJk7krzrMUUS5VGUT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730141497; x=1730746297;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vvMPCIRxcWlgVDj1SYKpQOgqABEqS4mtXMluObvexxE=;
        b=LCSuyphVetrT45ASm4F9ZZ0CEV/4Ou9aGnNU/SRD5CjaYCG++0bq0AStl6XuqTmsqY
         5S+CRMip5/AIBTL5gX0NHEdVo6KBUOO1+A/UfLRibFlloXsRvmYAZZFVOxEeLf1mpzrR
         MxHjE3HXi8tEE0LMSfNv4AUnOFSdpZrrl37hkRRUp30A29N3/GAFPbTqmnOaCKVXfCqL
         jOI2UpEqSr1JT2/dcF+fHUd+A3qE7QCuVutdCHsHTiAXqMcn6qOROlZDTNP3+noDuwBw
         /Ij7QzYAxcCVuxEBXwUQwGHS/PHY15ccTeiCHaTCvCKay+j2uD8zv2XWQu9WBTbysM9a
         yO1g==
X-Forwarded-Encrypted: i=1; AJvYcCVnpCBZiiItz5TzpCSHkKiWzHgVegAm5lI06Nh3T7ErxYZmWfSIyqamVrU7G1QEofNfXc7fQs+W0kYe@vger.kernel.org
X-Gm-Message-State: AOJu0YxnibOazYlRvoKa0voogyYYc2x3klzRrjm/RnXlxRhR/gnNmDRz
	hknFJyfK18DUDedMWKOE/vO9SiYs69LBjRoJ9OePI1GwrDMl8LP4rlbHgbMrHQ==
X-Google-Smtp-Source: AGHT+IHJLJXC2SFObrOT9aEQl9Km+EitJdlHJzZPAOFX9KFB/utnurItv65zf+HdnNn6NbuOje/Y8g==
X-Received: by 2002:ac8:7dc6:0:b0:461:371d:89c9 with SMTP id d75a77b69052e-4616425c606mr9887591cf.20.1730141497517;
        Mon, 28 Oct 2024 11:51:37 -0700 (PDT)
Received: from [10.28.17.173] ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d179a068d1sm34605066d6.101.2024.10.28.11.51.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 11:51:36 -0700 (PDT)
Message-ID: <954d6c11-ab4e-485f-8152-94bf38625f9c@broadcom.com>
Date: Mon, 28 Oct 2024 14:51:34 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH 1/1] RFC: dt bindings: Add property "brcm,gen3-eq-presets"
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
 Rob Herring <robh@kernel.org>
Cc: linux-pci@vger.kernel.org, Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, jim2101024@gmail.com,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20241018182247.41130-1-james.quinlan@broadcom.com>
 <20241018182247.41130-2-james.quinlan@broadcom.com>
 <20241021190334.GA953710-robh@kernel.org>
 <77d3a1a9-c22d-0fd3-5942-91b9a3d74a43@quicinc.com>
Content-Language: en-US
From: James Quinlan <james.quinlan@broadcom.com>
Autocrypt: addr=james.quinlan@broadcom.com; keydata=
 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
In-Reply-To: <77d3a1a9-c22d-0fd3-5942-91b9a3d74a43@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/24/24 21:08, Krishna Chaitanya Chundru wrote:
>
>
> On 10/22/2024 12:33 AM, Rob Herring wrote:
>> On Fri, Oct 18, 2024 at 02:22:45PM -0400, Jim Quinlan wrote:
>>> Support configuration of the GEN3 preset equalization settings, aka the
>>> Lane Equalization Control Register(s) of the Secondary PCI Express
>>> Extended Capability.  These registers are of type HwInit/RsvdP and
>>> typically set by FW.  In our case they are set by our RC host bridge
>>> driver using internal registers.
>>>
>>> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
>>> ---
>>>   .../devicetree/bindings/pci/brcm,stb-pcie.yaml       | 12 
>>> ++++++++++++
>>>   1 file changed, 12 insertions(+)
>>>
>>> diff --git 
>>> a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml 
>>> b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
>>> index 0925c520195a..f965ad57f32f 100644
>>> --- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
>>> +++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
>>> @@ -104,6 +104,18 @@ properties:
>>>       minItems: 1
>>>       maxItems: 3
>>>   +  brcm,gen3-eq-presets:
>>> +    description: |
>>> +      A u16 array giving the GEN3 equilization presets, one for 
>>> each lane.
>>> +      These values are destined for the 16bit registers known as the
>>> +      Lane Equalization Control Register(s) of the Secondary PCI 
>>> Express
>>> +      Extended Capability.  In the array, lane 0 is first term, 
>>> lane 1 next,
>>> +      etc. The contents of the entries reflect what is necessary for
>>> +      the current board and SoC, and the details of each preset are
>>> +      described in Section 7.27.4 of the PCI base spec, Revision 3.0.
>>
>> If these are defined by the PCIe spec, then why is it Broadcom specific
>> property?
Yes, I will remove the "brcm," prefix.
>>
> Hi Rob,
>
> qcom pcie driver also needs to program these presets as you suggested
> this can go to common pci bridge binding.
>
> from PCIe spec 6.0.1 revision section 8.3.3.3 & 4.2.4.2 for data rates
> of  8.0 GT/s, 16.0 GT/s, and 32.0 GT/s uses one class of preset (P0
> through P10) and where as data rates of 64.0 GT/s use different class of
> presets (Q0 through Q10) (Table 4-23). And data rates of 8.0 GT/s also
> have optional preset hints (Table 4-24).
>
> And there is possibility that for each data rate we may require
> different preset configuration.
>
> Can we have a dt binding for each data rate of 16 byte array.
> like gen3-eq-preset array, gen4-eq-preset array etc.

Yes, that was the idea when using "genX-eq-preset", for X in {3,4...}.

Keep in mind that this is an RFC; I have a backlog of commit submissions 
before I can submit the code that uses this DT property.  If you 
(Krishna) want to submit something now I'd be quite happy to go with 
that.  I don't believe it is acceptable to submit a bindings commit w/o 
code that uses it (if I'm incorrect I'll be glad to do a V2).

Regards,

Jim Quinlan
Broadcom STB/CM

>
> - Krishna Chaitanya
>>> +
>>> +    $ref: /schemas/types.yaml#/definitions/uint16-array
>>
>> minItems: 1
>> maxItems: 16
>>
>> Last I saw, you can only have up to 16 lanes.
>>
>> Rob
>>


