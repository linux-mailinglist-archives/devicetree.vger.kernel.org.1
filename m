Return-Path: <devicetree+bounces-227709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A46A8BE3C81
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:45:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C41D81A67B2A
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 13:44:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3851933CE82;
	Thu, 16 Oct 2025 13:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r+LOjHf7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB2033A00A
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760622204; cv=none; b=uf8RGczFfO0lxWRdQNy/+1bD8PzYRjgBY0iLJdGKwFrDuS/atj4KUuRTK5CUPOja3LUehjMCvV39PaOC4KoOvirT2/AN74OcSqfZuSNe+mxkQVDngeojqqPebErmUn2pavxddrt57mUDx68RNXmESBWS0/cHOCKPNHRe2fQ3TVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760622204; c=relaxed/simple;
	bh=5TrM2ZnN+9KpKLJvqPFL6c5/oivBrxMunFTU+lMblU8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aYiDPtUIq9eEg6FniEDx5F1cRKhQO0EStqD0xl5J9re+uVCVchVtSsc6XkxBlmxQ+sH/hwm+5Obq+oDuwQjwq6+9N2OG2lxJQd6DIep7eItlqYfQLfDP4Rj4DsRguKVJlpnf4HKSZ8ql+u91qqGcRXj4H9SKNbFIvX4xRogkS1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r+LOjHf7; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3ee12807d97so709043f8f.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 06:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760622200; x=1761227000; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c2QdJEetTz7G8fczLPIsJNR1ytZ7zxdk7c3bXt/pSJY=;
        b=r+LOjHf7pwr59oo3WRMdZf3j8lvlyO8FgSr3/2+6Mw8WxHeHztRJux9Ut5UPrLeARU
         ogVoFzBV/bNZ9Vqmd1WP2EioPbjqepd7d+8JViKlIMD6xdB2q57vs5KKA7lRpbyVbdw3
         kIKV8ZzsrxwCyJ6NlBZUJGNZlSFhJc/BvORhUGgG61nVR+cr/OEiWJF79MpIwpB5GnSG
         VQ9Vp+5DJl7y/52o5awShKqKSfPMmcj86QBE/3qiLv+egPs4MyYBe75P29DEl9uqkJuP
         P7ZPols/3YgDj9Z7tsm3HmA0ESDAz7/L60rCob5Z/QgBF/RnuAY7n8GrMn2XJmpt9CeX
         5RQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760622200; x=1761227000;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c2QdJEetTz7G8fczLPIsJNR1ytZ7zxdk7c3bXt/pSJY=;
        b=JLhCPtoeHIKm2zpp0iSaZPoqMXi1An1Y0m7umfV0RVR7mk+6L27g+wUj+EXbxNU5L5
         92kkRIvmlr1pQxOQtm/GSeaQ+Hf63iw4tqmk6riJONGxdCUDwyC3XQVtvfjTgXTibU4Y
         fYgjNNgBJtCbFiQlNDXHsbFXtlW+m4K0CkDnIN/tj77Mqv6Ii4gtFbGUCQLvbYSa/SmN
         juAaUjOTgKqp9bGtGNMf/TMPQ1pGvAHNXjUUO2SiPzJQTx9S0dZjW0iafRND9yBgZMNT
         odi2Nb8Tkk0QO0Bd7ai+ccMwv3OLXPvJ/AJcYzJvNhlR34wC88UfSCVG3gVLu/x40F8X
         kRog==
X-Forwarded-Encrypted: i=1; AJvYcCU0Qy48xS0bF3dxm0p6zuQpNZb087HZd8No5UtCiEYmeSCBhFZJmmy29YB9w40gqaUsWLCEhibNKha/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/XgmAx6/r+1z9RXNb4UgJMR8TLe2tZQDzjCHD3d6ADE+6ddqM
	kCs7kqeFbxfQF0CEhBMnC5XNvpIitZhfuHSzwrECaQx3aXL+RZS6mLV+t187dqOyYbk=
X-Gm-Gg: ASbGncv3LLWF92ev79VCeRrG5Mn0HcMyWnwBrp8ikXr20y6803Zg87NMTOeFIx3gyD+
	syVknB84PAfjV5MiAIRMW2otbHMLT9B7tP/K5gFf2WhoCnpldxPbBGyFLxBuPHeBV2K0xKJivMA
	g1BT8JyNTTgC52LDnbIPwch3Uu4AGiKQEhza0OAH7844dESKpscCta+Y/FsgqoxdefOoJkpWSf5
	NOlXqFT13XAxzCT0BxJg5jkemq23j9vuEcxWzxiUxSqcPeqyKwl6fmdrppTCSo097vNAtqr9gLF
	CXSDlkrraW0WNE+6ppVVabL5dw2/Uuqk9TW0ELE75L22S5A71PJPSVzWHbSbp1SNXdFFkHgVN2M
	aoSxDHZwKFd2Cxf1mPRJi8sG7l5fOX15KRukylGo7nQ6t1fv7PDOTDrwX8J3vTyICbTENhiS/tQ
	5bo4u5rKAxer2BX3G4Nt28Xzk2VWcnFIQvONgLNvE4KZ11sOJP1omFeG5O
X-Google-Smtp-Source: AGHT+IFS4bL1OHrvlJ7NauXkhXRppJ+gq5qkliJnQbz4dYw/SqTcv90p5EoSsU8V1stfZIXijs5KTg==
X-Received: by 2002:a5d:5f46:0:b0:3eb:4e88:585 with SMTP id ffacd0b85a97d-42704d966ddmr122992f8f.29.1760622200498;
        Thu, 16 Oct 2025 06:43:20 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47114461debsm31418275e9.18.2025.10.16.06.43.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 06:43:20 -0700 (PDT)
Message-ID: <e7469a02-1159-472c-811f-2004fa7b8c64@linaro.org>
Date: Thu, 16 Oct 2025 14:43:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: qcs8300: Add CCI definitions
To: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ravi Shankar <quic_rshankar@quicinc.com>,
 Vishal Verma <quic_vishverm@quicinc.com>
References: <20251015131303.2797800-1-quic_vikramsa@quicinc.com>
 <20251015131303.2797800-3-quic_vikramsa@quicinc.com>
 <84f17b74-a3ea-46bd-a6d4-efa79c1cb43a@linaro.org>
 <e0e0fa36-b75f-4d04-b179-772fa4b9d10c@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <e0e0fa36-b75f-4d04-b179-772fa4b9d10c@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/10/2025 13:04, Nihal Kumar Gupta wrote:
> I assume you're referring to update s/lemans/Lemans
> 
> Codename for QCS8775P SoC corresponds to Lemans while QCS8300 SoC corresponds to Monaco
> 
> https://lore.kernel.org/all/20250923-rename-dts- 
> v1-0-21888b68c781@oss.qualcomm.com/ 
> Following the above change,  I will update the commit message from
> "Qualcomm QCS8300 SoC contains 3 Camera.. " to "Monaco contains three Camera .."

Eh you're right "Lemans" is incidental, you're comparing to not 
declaring "this is".

Seems not really worth updated text in that context. Feel free to ignore.

---
bod

