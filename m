Return-Path: <devicetree+bounces-215456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 121A7B5177A
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 14:59:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3F8246512F
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 12:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9905C31DD8B;
	Wed, 10 Sep 2025 12:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PqrPZCTL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61402877C1
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 12:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757509150; cv=none; b=uC7ty/8GhNQ5BedZa+xvprcO6C4YcdVtv9+8xEnu+wWW/Ztc3VqJ9M2m5yrAqRWG8uZJkF/v9E64H/KX2TfjsBRclZoqWCnvIjxdFFglQbWy3s3ZglhD0W4iLpo3KWYN2KcES+diuqel+PqNE6ijd81Vq+qKDg8tVHwla7bnr74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757509150; c=relaxed/simple;
	bh=/IAl3c3EYOoYwYw+XjY3kagWIsE4eP8CBIYYAfbZtn8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MVKEBpI/rXDTlQw4x1376ABJkey5i5xOxAiXr9Co8ZbZQ6oIwuE1vyIyuwZ1PIdrNCo3Y7d6OScu05RFTvADlNqMcuvJHIz5PVdpznG0s4T3ODXG2q/jBUeJ33+xqNNMhUqFr/He6vEQ5tzcyZqB2RBzO4AkBIM1jaZWy9uGl60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PqrPZCTL; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b042cc3954fso1126364066b.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 05:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757509147; x=1758113947; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MB4gaimWoDJk3NhrrABBopa5Fo6F6OnWDi3KrUcJvnA=;
        b=PqrPZCTLTVCB529j6sqpDAmnwnTCdm4lZB6MPhABCVrvACqS27XCIYSoqqKfo0tIbE
         C9Tdhb7Fn8RHGXyfVAqJumidd5QIaDZF9Pw1SqAyS/3+HNRBAAw3GLG2xcMglNDgymLK
         c2T3f4/yg9k8hE7o/YLgeFeMwYZx+uww8OeuumjSaztj41pyu/MVfHVxVU2CEQ3GTPkU
         IAKQb0AAxKowlenkwjq431YyHwu+Mcx0S8azbL4F/ZgqauKj3SWMY07t13dRau8nXOSp
         FrV3P6jc2mCf/IUODxDJ+nAbCHp/xZsi4pleVopExPb4rNwtFT6KoyOrwxBcgn4MhpEi
         AokA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757509147; x=1758113947;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MB4gaimWoDJk3NhrrABBopa5Fo6F6OnWDi3KrUcJvnA=;
        b=GZpVMFkaRpXPoS8jAf46X83Bf3KnjiPekGCK1TxwNLkgytX262ZBJYLNE0GV6jPXQC
         LOcBB48BVbaJ9RuStFLWKvSV2O+59Zn59W8DJmmnUnfUra9GbTZlQEnlxWCUDm2D1lPk
         BIKQJSUdxGKZldgNGke+Cd1sQC40TjcWKALmYEJzJccvQbji4klf2RPw8IlTJDAl5Cw0
         c5UrhrKC+LNHPUxOq3+1XZbMO8reAe3eeWXntST3rEq3JA5wpTrzSgcYFvbStwTRxslo
         l4VIUx/LoHXT6xcWStCU7mWfQi8/HXlN/GCrz611JXZIFJ6S53TPm/cnCwjAvDTQJAeb
         a48g==
X-Forwarded-Encrypted: i=1; AJvYcCU20/VOTOgTsi6tQiap7kROL0MpvhLBOtRWm+bNPxZnp10wgoGE/VFP9Pdx9VCXNrioH5N9KYxLh2RJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8Gd9pOjgeFoPVaYQz+pcAK3KHL6XestPV16/M4JJGkSkJdVNA
	+cGGuXU3853sNTL2qfupSGg/kZh9x31DefhLnRX8VlkcUvRUYOkKcCstcVZKdrZP3+8=
X-Gm-Gg: ASbGnctDVewP+c3rE5qJiRrzSvKh3BhZgIaIeCM8N2NyRB9SOKJ+Lh404E4MvslMMLM
	PHugcrVoLto2km9wN57RvuMsh2tuQZ7MnOtwAuksC7Syn5l8o/EE7jCLu/of3U4XsRQeR9J1Qc6
	wKnMyYEsKmgnmwHUNMHb5cs4P/TmZDxV1aqGEkHzmgGL9wWz3rhvft3sZRtlLHFT+r88jLL4xfw
	A63rJBXZv78lH1MsuQpwm5nZDIMRdfMQKgmqUqE0YN6TA+u4RqjWL1FmQkcHZHuQpeMwwuD2NQs
	xX7DBTIsGwHoqsKBfGiK86NV3UIsrCcdVg0712BE7EGbHazIpqu3PU4kF9WIdYq8mVuFSjPTeBj
	w+6jk1+EUZfwpgdB0pVnIrXTuwcBhU13Graro4MchHe7xX54muXsBqU57sHagovIGs+c4kxQ59l
	svW9tjoLU6JbukLM6uJ7FJDkmM4yHzam1kxDmoJQo8
X-Google-Smtp-Source: AGHT+IHo42Ln/UQnJWBf+4snnXCY6UqBRGuJxVk3ykkRWA2Up2JqPWEeup1W5Piw4s3VUCTN4TNccw==
X-Received: by 2002:a17:907:3d90:b0:af9:eace:8a52 with SMTP id a640c23a62f3a-b04b1712177mr1353371566b.50.1757509146401;
        Wed, 10 Sep 2025 05:59:06 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07830e613csm164708866b.46.2025.09.10.05.59.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 05:59:05 -0700 (PDT)
Message-ID: <8ea6406e-0312-4ecc-8527-3b3740c4c01c@linaro.org>
Date: Wed, 10 Sep 2025 13:59:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3.1] media: dt-bindings: Add qcom,qcs8300-camss
 compatible
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
References: <20250813053724.232494-2-quic_vikramsa@quicinc.com>
 <20250910104915.1444669-1-quic_vikramsa@quicinc.com>
 <5a087d08-273e-4740-b47d-fc25be952ebd@kernel.org>
 <2a7bd0cd-a6c4-47c3-a6ca-f9d94c9b65ec@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <2a7bd0cd-a6c4-47c3-a6ca-f9d94c9b65ec@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/09/2025 13:25, Konrad Dybcio wrote:
> On 9/10/25 1:38 PM, Krzysztof Kozlowski wrote:
>> On 10/09/2025 12:49, Vikram Sharma wrote:
>>> Add the compatible string "qcom,qcs8300-camss" to support the
>>> Camera Subsystem (CAMSS) on the Qualcomm QCS8300 platform.
>>>
>>> The QCS8300 platform provides:
>>> - 2 x VFE (version 690), each with 3 RDI
>>> - 5 x VFE Lite (version 690), each with 6 RDI
>>> - 2 x CSID (version 690)
>>> - 5 x CSID Lite (version 690)
>>> - 3 x CSIPHY (version 690)
>>> - 3 x TPG
>>>
>>> Co-developed-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
>>> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
>>> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
>>
>> Do not attach (thread) your patchsets to some other threads (unrelated
>> or older versions). This buries them deep in the mailbox and might
>> interfere with applying entire sets. See also:
>> https://elixir.bootlin.com/linux/v6.16-rc2/source/Documentation/process/submitting-patches.rst#L830
>>
>> Please version your patches correctly, e.g. use b4 or git format-patch
>> -vX, and add changelog in cover letter or under '---' of individual
>> patches describing changes from previous version.
>>
>> What is v3.1? How to compare it? Try yourself:
> 
> This is a weird invention that some media maintainers seem to promote..
> 
> As a b4 user, I would also like it to stop, as doing anything other than
> v(integer) will open the door for unlimited craziness
> 
> Konrad

This is from me, I asked Vikram for 3.1 instead of a whole new series.

Anyway the fix isn't this patch its 
20250909114241.840842-5-quic_vikramsa@quicinc.com

---
bod

