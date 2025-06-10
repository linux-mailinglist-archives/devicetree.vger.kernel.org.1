Return-Path: <devicetree+bounces-184536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 267BBAD45C7
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 00:17:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D78C93A681E
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 22:16:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9386F28A737;
	Tue, 10 Jun 2025 22:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AlVtTujI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33D4246798
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749593829; cv=none; b=N/8LXBErUQEkSNfmFf+5aTX1GIxBguk/9Z7wRSy48QyW0HrAgXncY/5AS25gZg8HrUUfkvx+UzB5w1tGOQh3f20WmKuNvPVdXPt2rR4g14KtadhknoMgMDCGDqo5w2lfHARaqQZP1hIL/dY+d1aH7IJu7O4nlOHvPVE02h8Qj5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749593829; c=relaxed/simple;
	bh=7TfUR8R2IrpRs1f5np0P2PSPG9JH0doPxboC0XmNhik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X8Snu/Vo4ZAuz6DyKrbkS1+tyDaGdw5ei/I/lQFRgCgMND9z+GJSwxt3z6U29pYNVlfRmRz+wORTCv5BuZaTMOvfXsKHDzIJOzQi10cUZUyybh0sW+G4iHYsW9/eZYiR+CCS4UiOif/B36ajoicJw8EekW4c6sB0PFkVF9Xwcng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AlVtTujI; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a50fc819f2so4860788f8f.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 15:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749593826; x=1750198626; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DIt2WsPysp6xDtdH49fFBClr+UXdYRyo8pVXPNJ74C0=;
        b=AlVtTujIl4s2x1TJUtdWI+Nc4y3lKISil4BGa4q50EP0cuwOOk+NFS9hEt+Chdezk6
         ozYCX8q048nj02uxRcDGafRs5bZ6xxErghsoS4XW7mmGrBQZNjeC6T7LkM68WWPBbfog
         0JmvDx7RhuYAfoJy9FBecQBt2L3zQXsyG2RtXm3Fdh/wZH6m/ceVEnS+bjWyU+xZpB0F
         Lto1ejC4VBenDjmlaYQIbEh4crXYxTx/t1sN09Rw1EWCsTURFCM5ba/1Yrz9j0ofo6B7
         qZZ+Vlym9w62N+U7/FtIrlTKdpXKA48ZSlnwz9hPwV88grY3GMtEXZytHfQQyIgHUcVi
         2hDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749593826; x=1750198626;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DIt2WsPysp6xDtdH49fFBClr+UXdYRyo8pVXPNJ74C0=;
        b=cF8kNv8qCpx7GW2O2+osDg01+sLmvDGNRVjxYDB+Njg8k9GSuQ1h9TGeM0K2+/uvUE
         yYi1GunVcLzJSG8GOFHbAPURPXFCUbca0U5etN5FnDV3mYQCqPH5H7mAaVioxmUuP+aO
         M/8bJjfTEDRvdNKBlyO0nH7slSlFtHjxRQokP0CFHvAH4PELfYtSfwiZSkdmtT6dclZe
         o5z0Z1HfbLkqENEOiOc/F+5v5bc0sPZcdZtl1lv9aCMENxCTONtJEiitUypH4ss5MzfD
         g7TrNDIy9Gg6ED8sLLkl6KpCNHFnyu7UemqXCVDOJrOEqjv6kUV0cMdjtL2W1TCFFOXi
         HT8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVDce76+h28kInF2CncWH8yEhhSiaanW7WsZJ3jrYaFDYrJuEoGYCIT/Hk9Kyg7xy4ESr8GEgCqlp5A@vger.kernel.org
X-Gm-Message-State: AOJu0YzvbpjZ3/5peAvuCOqAARXGYj+hWibxORHREJoqJJzFmBVhI0Mn
	f5v6HVC8B7GF5Kl9j5NvN76dmCPsFjXyOS17KPOWlFjBZNTGqmNT+O41Jt7gXnqzdWs=
X-Gm-Gg: ASbGncuG+vnVbODCisFJM8hPYJSl0xn0+i6JIbF9e1CA5pJOQLIDlt4754kIHv8HyKv
	ubbkd8+p+xdMeIYRmUYm9pkOmI/HXQxL1lKwdShYVIeXQfN9r3VjezKd7AOSbOqBOxGuwLNHawX
	xRHYKt8vhmo0NMJnh/6QZhE7MBU/Q5XQTO+cBpv6nQZF4jlRSyf2vMMULCjv0a1CsIjzrvrKsvY
	e/r4TZTY+R1LBGFk4LBBOMTWCPtRUjMdCKHaQ2Qf+ZAN9vjLUpoOlD+F/AHxtYfkb84axpvvV45
	P4V4a25Rgx5x16NfLsdVXMM9mfEzjn67dzt0yhk3abrroh7RGjXs01T3E5kP2RfjJpeqmSdPnAW
	4dKKP5Kjy+AleUUc1FClJZn0uaFU=
X-Google-Smtp-Source: AGHT+IERnljNf31VprhAEokS9VT8ilK90CxWqw6sUIOgCUXrKGJiaOEei3ELCJOxQ0LlxD+btzZ1Ww==
X-Received: by 2002:a05:6000:2285:b0:3a4:d6ed:8e07 with SMTP id ffacd0b85a97d-3a558a27717mr467480f8f.32.1749593826029;
        Tue, 10 Jun 2025 15:17:06 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a532464f20sm13422204f8f.98.2025.06.10.15.17.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 15:17:05 -0700 (PDT)
Message-ID: <10f07a65-0549-443d-889b-d36b3515a237@linaro.org>
Date: Tue, 10 Jun 2025 23:17:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] arm64: dts: qcom: sm8550: Add support for camss
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Wenmeng Liu <quic_wenmliu@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, andersson@kernel.org, konradybcio@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 quic_depengs@quicinc.com
References: <20250516072707.388332-1-quic_wenmliu@quicinc.com>
 <0367d5bd-a42e-4b6c-b841-ba20190b3127@linaro.org>
 <dc4720a8-2f15-44aa-9a52-8440c7518328@linaro.org>
 <739bad1b-f26d-44a6-9cc1-eee28023474f@linaro.org>
 <dc82457e-de2b-43ec-a50c-08f7d8bdeff1@linaro.org>
 <1883d9d7-26d4-40b1-9848-ae0477cf95c7@linaro.org>
 <6bbd526c-3193-40c7-91be-e629949dca8a@oss.qualcomm.com>
 <b4a7aed0-a05e-4d1b-965f-78e0c5e0709b@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <b4a7aed0-a05e-4d1b-965f-78e0c5e0709b@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/06/2025 22:13, Vladimir Zapolskiy wrote:
> Hi Konrad.
> 
> On 6/11/25 00:04, Konrad Dybcio wrote:
>> On 6/10/25 11:02 PM, Vladimir Zapolskiy wrote:
>>> On 6/10/25 22:02, Bryan O'Donoghue wrote:
>>>> On 10/06/2025 13:49, Vladimir Zapolskiy wrote:
>>>>>>
>>>>>> List feedback from DT people is isp@ is the correct prefix.
>>>>>>
>>>>>
>>>>> My bad, but I don't understand this comment, it seems irrelevant...
>>>>>
>>>>> The expressed concern is about the novel label name.
>>>>
>>>> I mean to say the feedback from Krzysztof was that we should use isp@
>>>> not camss@ and I agree.
>>>>
>>>
>>> Let me repeat it thrice, it's okay...
>>>
>>> I don't object against the properly selected device tree node name 
>>> "isp",
>>> here I object against a never used and very questionable label name 
>>> "isp".
>>>
>>> Please feel free to ask more questions, if you still find it confusing.
>>>
>>> Again, I may missed a discussion about the need to get and use a novel
>>> label name, then please share a link to it, it'll be very much 
>>> appreciated.
>>
>> To hopefully help out:
>>
>> label: node-name@unit-address {
>>     property = value;
>> };
>>
> 
> Thank you, here is a link to the wanted section of the dt specification
> for Bryan's comprehension:
> 
> * https://github.com/devicetree-org/devicetree-specification/blob/main/ 
> source/chapter6-source-language.rst.
> 
> If for whatever reason a proposed "isp" label is preferred, then
> since a label rename is not an ABI change, it would make sense to
> do a massive change of renaming all camss labels. Otherwise there will
> be an outstanding incorrespondence/confusion of the label names in
> board .dts files, and that's bad.
> 
> -- 
> Best wishes,
> Vladimir

Ah the label, I thought you meant node.

camss: isp@value

Yes
---
bod

