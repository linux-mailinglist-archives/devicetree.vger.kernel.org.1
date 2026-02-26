Return-Path: <devicetree+bounces-268732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GHgKZ4boGmzfgQAu9opvQ
	(envelope-from <devicetree+bounces-268732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:08:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6D11A400F
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:08:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 711CE308AF7B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:06:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 068643A0EB8;
	Thu, 26 Feb 2026 10:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iUHNE/x9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A483A4F5D
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 10:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772100396; cv=none; b=FHrC1EFY9eleqfXTqz3L5vK6oevAuysGdjR2I47Mmh7r/P8KTk9qzAypn0v4XjKgNgpON/nluVPN85XsMTHs1xM68NTMUmJfOEeK9MmQN1CeDSdFXGjnn4PatFjCEoStxiBlo9JFeKV5Vyh9ikNRATmZkQxZtc0cQnxeVl2ogfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772100396; c=relaxed/simple;
	bh=Kb7Zr1q5fDprwOuIFKVHgYkCHY8BIbU86+n0nZmBXIM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oo+CFIXhvEWuPXhaOT7BQXteW6ROQ3FElJfaqbGuu4E9c/Z0XU8qiFOAD2LeLm5Ojmy8yhId2l5j/E8d7UnXfSChlyoviaqZXrWqx7OCxdkOdqfEmtQrU1Dd07ufyXH54tJ45i4XyraumeXa2P5UGofTSxXCLHTr/zhu3okK6E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iUHNE/x9; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-43988056dc3so657509f8f.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 02:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772100391; x=1772705191; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M45UmrhuMMqbMjpIjOb+glFVXPQnqnkmhvjio0VGfRA=;
        b=iUHNE/x9ZjIVYoKad9cyKQce52Pn9/sI+xFBh2jGnzYfiNWEuy3VdbDhyVJooyskQ6
         1ooeYtBVTp1D0RhPPeOexSksG6gT0F3MPGTVXSS1eIv3UpDIpWcpUL5Fk8HH3uzSAKJg
         FcEy26lUEKvPr9lkD+aLL5nxrx/mRgSxQCMjf6YNUIubhSvgxqnc+DIKE+1RmMAPQfip
         9bt9NCjRj0qa1nqAXRxxRiRPRAr7KfalY4+ABvhhl+ihib5CVYkANsCGVX3pYXRD5/7+
         k/FZS+3afVXBZsD6qEq4RKjnb2/vcYM0fmVL6xaPlcfXjGNfl5+aVHH6twZGaVifb4UX
         hfuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772100391; x=1772705191;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M45UmrhuMMqbMjpIjOb+glFVXPQnqnkmhvjio0VGfRA=;
        b=lLMziS9+o094YJMc2DHbmHcT8hlP/JvmNwFq+EvJWOC2ohzi7CB0ZIiSarnUubpW6b
         swL86++Xi0xn4lEuvpI6c633h7KUxS0e0ndLAM4r7XQMSRZLn7vhaR1QwC0OYpGzll9v
         6URAhq1zYVmXbYsfIQBqPfTxlWiAjjVl+AGaDSOf3t0k7uhuuoLsE5i9PhTdOG3XaqsY
         KGir375IlK6rVG+6UkUilkb6/PyC9pNhEcwoQ9n/UDlY6kOJsjuKVhdR3qks/o8o5/0g
         RWCGYxKHNj63YBv/C4Oyta3uZP+hQ/CvxnFAdMczDQGOUB2p1EHmLtcOO2SqegrIS2PX
         YrWg==
X-Forwarded-Encrypted: i=1; AJvYcCVrEdM/tpxiT9tzYSA+/Yp+LmeIKAAGdULKioHlCYsruYBzDm1+rnsoWlSk5Rpd/L1JAc3taym1u6MK@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi1f+PnWvbKaK+0LolTB+M02dP1PmTJYP6qDzvlQS2oU+eS1JL
	tS820//7ukxw8mrcyBN1f3Rd/2hmq0Zi9XPqMyDwBaI0EatYVBfVzyhN2/BMr4V6h6s=
X-Gm-Gg: ATEYQzwDEU0W68Vb5tcZtsVpzy2dGTvFR4LEBOrNRV7nUq++U38sJXZHiW0YP22fYCv
	JKjQorVNAiiQDtst480PDtU/dItKDykCEdw+goMIx2+CzTA0WbCF0khHMd9HMwYR9fgyQVt9bjI
	80nYQTFpB/GXC/LTrbUNQ+bb9u7t6HU/C938I9CilFyrsGvaIlfkOiTxHy38ykzxKE1wv/K29UI
	B/D+Oz6J+zDGNzy19DrrK7XuNJ3mg20nUVoeXELDpsIerblbJkpv0aOOBcifcgPh9L1EkiZ4G0U
	Vpj+/uzwmhwnk2dtysBew0ZuE/osgBXaV/489hGYObG4avThUABs8gxqPUTxEWCHI1hZ//buKmS
	K/WHLA1FL4/H8URYdYAx2ZiJUUBtxK9D8VwdSaBhPIe75amjRZ16ALN3k48HKJLta1kTKtjO1JQ
	LofcCM0GsYGTlr9yuNkRZUP7srmwvBOfqe6fO//B1d1Uj5St3EE/e4vzayIB8icQrKF0jOkpuCh
	9I=
X-Received: by 2002:a05:6000:288e:b0:439:8d73:58c4 with SMTP id ffacd0b85a97d-43997ee07efmr3050767f8f.18.1772100390701;
        Thu, 26 Feb 2026 02:06:30 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4bf89sm38109724f8f.29.2026.02.26.02.06.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 02:06:30 -0800 (PST)
Message-ID: <d1ddaa7f-cfba-4e71-8a9f-70014c57de74@linaro.org>
Date: Thu, 26 Feb 2026 10:06:28 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 02/18] dt-bindings: media: qcom,x1e80100-camss: Convert
 from inline PHY definitions to PHY handles
To: Krzysztof Kozlowski <krzk@kernel.org>, Bryan O'Donoghue <bod@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-2-95517393bcb2@linaro.org>
 <CuJMpimPBtwHGAd5-YHUArL6FkU2HQeY4SjbxeMwf0ToQ7LKO3zWSTn86L-HKxC1KfarWc4rRbZqnCMQsv0pcw==@protonmail.internalid>
 <20260226-fluffy-complex-malamute-7ecec6@quoll>
 <35b1ba2a-e156-4542-b33a-d4e53f6a62cb@kernel.org>
 <tVxcOw7tqTRGXAoW06WPM_voMVBY3SO7Mm_MTMWp6OuotVmgmyi0DOgVHdDavO2V6o3iRH7ax0NosgHuzGkHgw==@protonmail.internalid>
 <4ebe2f26-29fa-4104-bc90-3f5aa7009ec3@kernel.org>
 <c2d9742c-3d82-4340-a11b-16370bcad5ea@kernel.org>
 <72f0ed74-ac86-4571-8a72-d41282349718@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <72f0ed74-ac86-4571-8a72-d41282349718@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,gmail.com,linaro.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-268732-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,csiphy1:email]
X-Rspamd-Queue-Id: 0E6D11A400F
X-Rspamd-Action: no action

On 26/02/2026 09:50, Krzysztof Kozlowski wrote:
> On 26/02/2026 10:40, Bryan O'Donoghue wrote:
>> On 26/02/2026 09:33, Krzysztof Kozlowski wrote:
>>> On 26/02/2026 10:27, Bryan O'Donoghue wrote:
>>>> On 26/02/2026 07:07, Krzysztof Kozlowski wrote:
>>>>> No, it does not allow that. You cannto change the ABI.
>>>>>
>>>>> That's why I reminded multiple times before reviewing new CAMSS bindings
>>>>> for Milos and something more. Because once it gets accepted, you cannot
>>>>> change it anymore without valid reason. And there is no valid reason
>>>>> here provided. I kept these patches in staging/waiting for long
>>>>> enough...
>>>>
>>>> I thought your policy was - a dtsi had to have it, which we don't yet have.
>>>
>>> And from where did you take that policy? I am pretty sure my each
>>> comment is about ABI. Heh, I even commented few times about implied ABI
>>> purely based on kernel, without DTS.
>>
>> Correct me if I'm wrong. I thought we had discussed either @ the Linaro
>> Dublin meet or the Linaro Amsterdam meet that changing upstream YAML
>> would be feasible _if_ you could show there was no dependency on it -
>> say u-boot, FreeBSD etc.
> 
> And I mentioned multiple caveats and restrictions. Do you quote them
> here or just took the first part of sentence before ", but only ..."?
> 
> Anyway, whatever spoken is improvable and I am sure I did not give such
> permissions, maybe except that Dublin meeting was in 2024 thus before
> the release of previous user, so before v6.16, so of course you can
> still reshape unreleased ABI. And then you released it closing the
> discussion.
Well, is there a way to support both then ?

Right now I have csiphy and their registers listed in the camss block.

I could add phys = <> as optional in the schema. Is there any reason to 
stop adding adjacent csiphy nodes ?

isp@addr {
	regs = 0xCSID0,
	       0xCSIPH1;
	reg-names = "csidX",
		    "csiphy0";
};

csiphy@CSIPHY1 {}

I'm not sure if this is against DT rules.

The iommu items _should_ be fine as its maxItems so I can just set that 
to five instead of eight in the dtsi.

---
bod

