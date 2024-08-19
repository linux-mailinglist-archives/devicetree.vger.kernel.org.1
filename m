Return-Path: <devicetree+bounces-94774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 78777956973
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 13:37:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DE5D1C219F9
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 11:37:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F923166F2A;
	Mon, 19 Aug 2024 11:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="YrpKA7bh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D534157A48
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 11:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724067470; cv=none; b=BJ0BLyriMl1Y5qw67I515XTZGOornoFwAx83HE6M9e2+mb3eS0y+y6y4/hFWGqbMF6FCKDsiPz87rQ6WPHD9JVuVpiXLeif0aFFj4iTZA0JvcZl25vhCt82HinXJy/cPlK9e0Ly+131o3vmLDDXIEfEdmjuPIbtVGpzX8WbGn+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724067470; c=relaxed/simple;
	bh=8/9B3QlhBwbDoJsFPD/l/32vonkGRYcKYIBM9WTI8Po=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dqquNn+4E7vBcPVwR3+o7uNl74H+18C1tCSx+9Zh7A2oZmpXEGTussuJjMmTyc/31EkHPjRWLLgKFvnFQjl8XFlgzcWBA7MRMTTigHrwTz5sYaJH+AmLzGC2Loj9zKDMmg69tsP9A+eOqIfcsIE8Zc7O9lU7rXnKtMQaNalQeaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=YrpKA7bh; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4280c55e488so21876085e9.0
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 04:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1724067466; x=1724672266; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RIDiWquIQ0tXErhdx+a7t4j4cfeeG9QXueTzJmbscTA=;
        b=YrpKA7bhB1N5//wDbAhq0cRvZ5xtaJS9L7I3csjI0cHnahiQFKsYZDNG7OP1fPMfc3
         1pzLxnlGDSBpLYACB4t7uVNICk+whJ7UYJOzIlT+cdxou801770KmoIelzJys8L7+xHr
         mtIcbM1GgSos7Y4eeKLKcLYUiqWFfSbPH4fEjLNZgMH3gBGWeuGWeerkNfsGnuo7gsU7
         CkFSF7Uilem2eqkorJ4XswKD3qfEEkmyFGvkgbzuPSC0U1ChZ9S+Ug4LStXQYEy6bjTz
         QlY5H9q3k5nO7gv7vGpKAoIgrR2yukQKEcf/QCDq64y5gdOQkzv5qZwwL7024s8G7iDP
         NtdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724067466; x=1724672266;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RIDiWquIQ0tXErhdx+a7t4j4cfeeG9QXueTzJmbscTA=;
        b=aP6utFIz2pEUCTM54g81Fgl/sAecM7UAfPOGL2sC+z1R7S06Av5EUQk6fKdlXI2lO6
         Qknv3uPlG9+rwvfa8n7BdefCwNNjMXB4supNA5iglLMYuTTtMe1wv+odpQl1oFDnBQUv
         fezOk1f3HFjGrNBz8y5MALdCyTuVCJNiQ+BFXdkr6sNwnpeTmv+tchINKHHqM1IWXOwW
         ExE8kL97AHb8nru4dEGOP163rkYDmFLeJdIYWJWyg42kDgOpE/e5tahKTk1NKFsyU4D/
         sTvDJB2TGHtLggisduVPc6q4PW/u3qvV3Z7Gqx6NJcZjnyQ56z0lWOIqzptn/tk7OemI
         HIcw==
X-Forwarded-Encrypted: i=1; AJvYcCXVVgbtGuxuc2Dznfw1KFgc8H94D6IF53BW4VvNviFmb6vp3MdmcHOJ7Smvj7vN3t49phPWc+iZr6FIbetkz171p1MlgR2FUwfIjg==
X-Gm-Message-State: AOJu0Yy0RKwUBRumda+BnmTcd+cY85HozqcnJxDmweBJx75rBowDv9l4
	A07WAiXpbUXI5ItZCBvWB2sIjmtCpgrDSYfO5ViHNwLuJ9J4S2TyG9DavA6fFis=
X-Google-Smtp-Source: AGHT+IFOJqjoHU776vMvmeNPhV5ABeHBYFbyd6hV4KkeFyukt8jo0BTVCxoIlRPdXMWDFe8ccG01ag==
X-Received: by 2002:a05:600c:468e:b0:426:5b19:d2b3 with SMTP id 5b1f17b1804b1-429e23b4b0cmr98450015e9.14.1724067465664;
        Mon, 19 Aug 2024 04:37:45 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37189896a9csm10335771f8f.79.2024.08.19.04.37.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2024 04:37:45 -0700 (PDT)
Message-ID: <30489eee-075b-461b-ab43-c8807d667630@freebox.fr>
Date: Mon, 19 Aug 2024 13:37:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: arm-smmu: Add
 qcom,last-ctx-bank-reserved
To: Rob Herring <robh@kernel.org>
Cc: Rob Clark <robdclark@gmail.com>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, iommu@lists.linux.dev, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Marijn Suijten <marijn.suijten@somainline.org>
References: <20240814-smmu-v1-0-3d6c27027d5b@freebox.fr>
 <20240814-smmu-v1-1-3d6c27027d5b@freebox.fr>
 <20240818152515.GA104481-robh@kernel.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240818152515.GA104481-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/08/2024 17:25, Rob Herring wrote:

> On Wed, Aug 14, 2024 at 03:59:55PM +0200, Marc Gonzalez wrote:
>
>> On qcom msm8998, writing to the last context bank of lpass_q6_smmu
>> (base address 0x05100000) produces a system freeze & reboot.
>>
>> Specifically, here:
>>
>> 	qsmmu->bypass_cbndx = smmu->num_context_banks - 1;
>> 	arm_smmu_cb_write(smmu, qsmmu->bypass_cbndx, ARM_SMMU_CB_SCTLR, 0);
>>
>> and here:
>>
>> 	arm_smmu_write_context_bank(smmu, i);
>> 	arm_smmu_cb_write(smmu, i, ARM_SMMU_CB_FSR, ARM_SMMU_CB_FSR_FAULT);
>>
>> It is likely that FW reserves the last context bank for its own use,
>> thus a simple work-around would be: DON'T USE IT in Linux.
>>
>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>> ---
>>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
>> index 280b4e49f2191..f9b23aef351b0 100644
>> --- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
>> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
>> @@ -204,6 +204,12 @@ properties:
>>        access to SMMU configuration registers. In this case non-secure aliases of
>>        secure registers have to be used during SMMU configuration.
>>  
>> +  qcom,last-ctx-bank-reserved:
>> +    type: boolean
>> +    description:
>> +      FW reserves the last context bank of this SMMU for its own use.
>> +      If Linux tries to use it, Linux gets nuked.
> 
> How is this Qualcomm specific? Presumably any implementation could do 
> this if there's no way to properly partition things. Robin?

Obviously, there is nothing Qualcomm specific about reserving   
an SMMU context bank for the FW / hypervisor, other than it
appears that qcom is the first to do it; or at least the
LPASS SMMU on qcom msm8998 is the first known SMMU where such
a work-around is required.

What is the correct nomenclature?

Can we just drop the vendor prefix if a property is generic
across vendors? But does it require a subsystem prefix like
"iommu" in order to not clash with generic props in other subsystems?

> Also, this property isn't very flexible. What happens when it is not the 
> last bank or more than 1 bank reserved? This should probably be a mask 
> instead.

OK, I'm getting conflicting requests here.

Bjorn has recommended dropping the property altogether:

> It also seems, as the different SMMUs in this platform behave
> differently it might be worth giving them further specific compatibles,
> in which case we could just check if it's the qcom,msm8998-lpass-smmu,
> instead of inventing a property for this quirk.


I'll send a patch series in line with Bjorn's request.

Regards


