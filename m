Return-Path: <devicetree+bounces-32866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62016830DD2
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 21:15:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B6035B247FA
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 20:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EECA824B24;
	Wed, 17 Jan 2024 20:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iaPILt36"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F17224A1F
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 20:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705522546; cv=none; b=uy4UjSe/6oA3/LdNU/BMfy0pZFCe6q3H8VWT1i3P/JGoSeleUx1oRgzsJt5YCAKpuj4pmdgasns0OpJLWORMFqa3t7prFn/nKwILlV3nFM3O19VsIz7MO6AaXScc9Ho/R38oqgww1u7a1sNiOkZgoezZRJxMJ2WUgXBk24hhRyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705522546; c=relaxed/simple;
	bh=tWtaEStSXXeY4ZlUW4rPFxMeNANJkKEc7+GCVGjK7a8=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:Content-Language:
	 To:Cc:References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding; b=kX4e2XsXAW9iFbZotq/ql3Iu17YPK8+dY4ejVISu1j5CMXAhgne0KtYaMuQrakXqTAKoekQd9bLbAJ0cqm4Lxw9ed9ZVNd83duRkwILs/SbLUvoxK0p5VpcapLnOuQ0ZlXmw+XMg5ms1gBK7aeocNkzpN2sD4KLlcX1CiIE7qfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iaPILt36; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-50ea9daac4cso12228013e87.3
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 12:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705522543; x=1706127343; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iPTVBifCyaSXrtahIMjrSyS80T5F+j2fg/7+8A/XGuM=;
        b=iaPILt36c2KjfTUi22sin5SWtIiKFogOlVqr6tUXuWJOL0ggyEiM1MFAIQDixWfxmI
         eI8ogH/sG0/d5FRWmMNTHp0AksBmKAu5Ho//4XPz1E7PbFkFHZbS8PJuOMjERo1gF6kl
         3KbYQff6y95BazVxOudWm98Gm6909Xy0TLinDTaXsQ6rtAk5wwkX9oIv/5XqW/pFme6p
         b0gsVV8+5XLE1LerN9kR4Ydvo1tAss4GiRt7HpupCziF/ah9nnFKJbQXVWRDmxFNUEqo
         ePVQJgq6+TQVHcFZTlFohegVprY4lxBSPR+neE8hpDc7BXHS0B5be0tSbWBaQPTfOK/b
         60SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705522543; x=1706127343;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iPTVBifCyaSXrtahIMjrSyS80T5F+j2fg/7+8A/XGuM=;
        b=KDEXQwXzZpTXPKD2KIesRtkloKi+zGq2WsaMIRuVKUS5i2+ZEL7gjGZGzD7d2Qai9R
         hDkPFTeRn7faFCy2n41RxOrdSZVKjJl+OE0JKppz8msix7fUivDa2fe9ISfANwVmJHOv
         UpFrECf498WwSUKa+EORHV7l1dbYkq2AMhQ+5IXEhzC0sopTuYqooy32rvtORTLFKqYr
         85PGvkaeJqFXbYS/7GjYHswPPNNjL/A7gZRdwLGue+n+AriNs0GTiVV70AwCJ2+KwKCz
         9o6sf7ARdwZqtTS+11xFaiuUdeN8alNPXfZNkbNBEFLw71jMtPI+cMda+VpmUoGrCHCq
         vY4w==
X-Gm-Message-State: AOJu0Yyp3nHNHqDP/4WJse9UJKGsyJw4cf2Hg8MCk79Fu8cJnBj3hhRq
	MRUKrEPEROIAEEFOSvDyIQIWLgXKi5u3nA==
X-Google-Smtp-Source: AGHT+IGVmxuPFEYZ4/Vu+25N/DBMN84UjHFCbhKCCV3Z7wL8tHrxSwitzOOGHGoxY5EN0OGMnTsD+Q==
X-Received: by 2002:ac2:5b9e:0:b0:50e:9da7:3136 with SMTP id o30-20020ac25b9e000000b0050e9da73136mr4393019lfn.75.1705522543057;
        Wed, 17 Jan 2024 12:15:43 -0800 (PST)
Received: from [172.30.204.151] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id x5-20020ac25dc5000000b0050eaa1a35f4sm359621lfq.303.2024.01.17.12.15.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 12:15:42 -0800 (PST)
Message-ID: <3325c6ea-ca30-40ee-83ba-c489dc9964b1@linaro.org>
Date: Wed, 17 Jan 2024 21:15:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 3/7] firmware: arm_scmi: Add QCOM vendor protocol
Content-Language: en-US
To: Sibi Sankar <quic_sibis@quicinc.com>, sudeep.holla@arm.com,
 cristian.marussi@arm.com, andersson@kernel.org, jassisinghbrar@gmail.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, quic_rgottimu@quicinc.com,
 quic_kshivnan@quicinc.com, conor+dt@kernel.org,
 Amir Vajid <avajid@quicinc.com>
References: <20240117173458.2312669-1-quic_sibis@quicinc.com>
 <20240117173458.2312669-4-quic_sibis@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240117173458.2312669-4-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/17/24 18:34, Sibi Sankar wrote:
> From: Shivnandan Kumar <quic_kshivnan@quicinc.com>
> 
> SCMI QCOM vendor protocol provides interface to communicate with SCMI
> controller and enable vendor specific features like bus scaling capable
> of running on it.

"QCOM protocol" sounds overly generic, especially given how many
different vendor protocols have historically been present in
QC firmware..

> 
> Signed-off-by: Shivnandan Kumar <quic_kshivnan@quicinc.com>
> Co-developed-by: Ramakrishna Gottimukkula <quic_rgottimu@quicinc.com>
> Signed-off-by: Ramakrishna Gottimukkula <quic_rgottimu@quicinc.com>
> Co-developed-by: Amir Vajid <avajid@quicinc.com>
> Signed-off-by: Amir Vajid <avajid@quicinc.com>
> Co-developed-by: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---

So, this is another 0x80 protocol, different to the one that has
been shipping on devices that got released with msm-5.4, msm-5.10
and msm-5.15 [1][2]. They're totally incompatible (judging by the
msg format), use the same protocol ID and they are (at a glance)
providing access to the same HW/FW/tunables.

I'm not sure if this can be trusted not to change again.. Unless
we get a strong commitment that all platforms (compute, mobile,
auto, iot, whatever) stick to this one..

That said, the spec (DEN0056C) says that protocol IDs 0x80-0xff
are: "Reserved for vendor or platform-specific extensions to
this interface.". So if perhaps there's a will to maintain
multiple versions of this, with a way to discern between them..

Konrad

[1] https://git.codelinaro.org/clo/la/kernel/msm-5.15/-/blob/KERNEL.PLATFORM.2.1.r5-05400-kernel.0/drivers/firmware/arm_scmi/memlat_vendor.c?ref_type=tags
[2] https://git.codelinaro.org/clo/la/kernel/msm-5.15/-/blob/KERNEL.PLATFORM.2.1.r5-05400-kernel.0/include/linux/scmi_memlat.h#L16

