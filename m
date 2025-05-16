Return-Path: <devicetree+bounces-177917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF208AB99EB
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 12:15:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B32216835F
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 10:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 847B3227E83;
	Fri, 16 May 2025 10:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m6P3fYOj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9D051EBFE0
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 10:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747390554; cv=none; b=r2MjCA8zLh3MbF3Cmnw3UaxDXBKfAoJf/YMUFsPf55DXsJMlkx84kjILXst1wOBc/qK/9uuHWIWFdZMyHJshK7pR8WQt3ekJ19dpc11tEt+E3jN13LYkyV9oFlYGoY+Uidi+eVfoCoJ9PQeuTSenaGTTy7xNfSZTcPbj6xgaZew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747390554; c=relaxed/simple;
	bh=QA7w+JQP1X41RoztXYe1wBWPs6Q/cQ0RamgdfI5nt5o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g24YxxI/gmQtL3o5IZ7jurmv4SndkRQMDTXsNZN1ZShhuvVE705gyxXJW5Fh54WNh43kNAZm9T6tYYjuEzBprkIezO/OpjgVXQExmF9xmZURJaEZ2A6PaLFt6Cym4oq8S/CF3swVF+HlM4KFAYcBYYShPiMAHMYMUWGtHfjuzEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m6P3fYOj; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a35b7e60cbso926325f8f.1
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747390551; x=1747995351; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hf9JUffKXEnurX0H5ucC/QRAQlUyAYzPYXVgjENoyR8=;
        b=m6P3fYOjAN/nQnftkKb8T75OTFJiTS65g7wnxVMaA0W1tdE800dH4ZB7OnvDEiTSMr
         S11aPrC0kfEZqCEE+3KvIvnB9h/WwW8xdZaTNzcschMm0ji48CjSMJhM6slZtJDpxCT9
         qvUQrb6tc5T/qP3AYrCtCTfrjbY07XPs9LmdwCnNjGKZGS6eD8enAafOkqVQx5aXFPue
         MbYrcLFkP/HlcqOiiWKqYLZCoNNn3DWeJT5cPyvkBNSK4k0C2uEQtLo8EtiFl4n2lEq/
         m6UfwWA4bsHOCsIsoqossIoIZ9jT24YZtMBVC6RNUfWGv46kdvkhJyhCYTrE55dAKP8C
         nf/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747390551; x=1747995351;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hf9JUffKXEnurX0H5ucC/QRAQlUyAYzPYXVgjENoyR8=;
        b=NUhnrTxf0Sc6TUDb5O/vTBZH9nl0JUAdax4YIwhyIeflMCxyO1mXkm7eVYHpIrKduY
         i8NNjKk6s5S5hGttFLuFqMaohzE/sGvQcmIyyfAIoHc2NGz/fH4j+tJ/1iroyhcKdrDX
         YEfF4xnkKWFRefxB/00ZLgflaZRh6RN/Lw/8V58eOT5dhoISB41QozdMb8x4rDkMp7o7
         ojKUL7uQjF5W9c6jZ7heNgl2HP0Vn9BSTYinykp5eeWjJNpIb+Xo9bjFGU9vAVBwCyHm
         SgW8C+fGTxPVULvLtSQCbJNsdQLpAvc9n0KvXOQMXSCtlwQcSQfzDmZk1KI2vv+N6vj3
         A+1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWvh3+aLf3rKSJ515GnHK71VuFidImCS7ja8ngg6eGxZ9Ie45sgQ3fU8cPlkl44M5dZNhZqs6U0x+NI@vger.kernel.org
X-Gm-Message-State: AOJu0YxlB4ANhEJg3E1E+0420XFYyfsP2iUX+1Sp5V/8l83+IRC3grt7
	0ExDO5+/12lZrQy0GOhkpc4AV+e8bgeHtj2wUZdydnI+t0QnZ+861uFGyOaj9by9VoU=
X-Gm-Gg: ASbGnctCfQrMTTCpfXd7zUotq2Y6xRr7TINsUPJ7KyKPxzWK3fQJXP6r3uRuN6YpDwy
	9jark5S7/HRA2pNP71xj+vreX4IcKJhYav07qEhZrBdnDjc6eR0xjmRYPzwNWOArjgtY+gcugZX
	R3Oo37ADVXCH+h6NN/4285ctq37QY6u8oEnWlLnbCBe120Enpa1fN3vLF2xELQru/Tg/LdXbw0G
	5weou/Kugq81BDVQLXzgO8wLRB41U50FXtATtA24kgEBjS2DfWYcYNdugJClBVRO4nYaJUGk3ZO
	DZWplE0yn2BjwsCZbzL6VOqk31H3XZ1A7xaMdAHLvgRdXRyDRJDmVU1ZbDS1F6wbpVnJLRSzw7x
	ENxBCkjxIzgrk
X-Google-Smtp-Source: AGHT+IFhNRLORL0s3WapKxF1HYgMEShdvKo3BGr0+F77ZeAxJEMvDNCLG/bxou1DJVtfsgYa4Ni5yg==
X-Received: by 2002:a5d:4e0d:0:b0:3a3:6434:5d34 with SMTP id ffacd0b85a97d-3a364345dc6mr22238f8f.17.1747390550909;
        Fri, 16 May 2025 03:15:50 -0700 (PDT)
Received: from [10.61.1.70] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a3622b8a3esm1222224f8f.14.2025.05.16.03.15.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 May 2025 03:15:50 -0700 (PDT)
Message-ID: <36f02ed8-b440-4760-8d08-b633406ce92a@linaro.org>
Date: Fri, 16 May 2025 11:15:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8550: Add support for camss
To: Wenmeng Liu <quic_wenmliu@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Depeng Shao <quic_depengs@quicinc.com>
References: <20250415-sm8550_camss-v1-1-d4b7daa168ac@quicinc.com>
 <wOxjiEBKO2XU-PikPlT8IMpSGOrP4ocgZEIj_zNhLzzBjySkhGQzupjmJAFhUHcnknLKSASwk33LjBI6WrZ9vg==@protonmail.internalid>
 <1ee8587b-2bf6-418a-9834-8f8cbf1e94d8@oss.qualcomm.com>
 <4e81a1fe-3ee5-4f5f-b958-13e6cf9138f7@linaro.org>
 <db059233-523d-420b-81a7-73b02beef4d1@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <db059233-523d-420b-81a7-73b02beef4d1@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/05/2025 08:34, Wenmeng Liu wrote:
>> This should be 689 yes
>>
>> ---
>> bod
> 
> Hi Bryan,Konrad,
> 
> I confirmed that the value is 688 instead of 689. The documentation 
> incorrectly listed it as 689. To CC linux-media, I have resent the patch:
> https://lore.kernel.org/linux-arm-msm/20250516072707.388332-1- 
> quic_wenmliu@quicinc.com/

Do you mean the documentation in the kernel or the documentation inside 
of qcom ?

I checked the internal silicon definition, I think Konrad did also.

Which documentation do you mean here ?

---
bod

