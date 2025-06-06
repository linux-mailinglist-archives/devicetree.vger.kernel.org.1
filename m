Return-Path: <devicetree+bounces-183296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45ACDAD00EB
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 12:59:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B7BE16AE52
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 10:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 507DD28750A;
	Fri,  6 Jun 2025 10:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y7HvIGO6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBE8286428
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 10:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749207588; cv=none; b=S6VmSydfFguaRlnWgmt+l8TXPW6pcSa1ucI3EhidQW2jXKzNHVB+sFgTYX6+PTMmVJ6luOCq4RrAha69sZJTWEHyMFI1YYWtZgzOarCjQXS9JHk+nTRs65oPpEt2xYvG7Z1ANoQWJb4BLJshfh29TU8YiHkKfXicCGRPNvXgilU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749207588; c=relaxed/simple;
	bh=eNvJDVx2RVD1ON1QjqqCkfACmTkFJYvAfRFH/oO/c8w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CTU2Guwd3JAJFplvcq//81C4XT8wokNOVnOQy3pgPWCDWnlSi1ypm2A0esJ43JT04KUBt/18dfPSB1rE/tHsVi0ErF5G9m2ud7oB8v6CKjcoyBB/1pi0iVgejiPz2f6TgXPTkGZVCkpC2YuVEwytHzZG0Auq2tCxCUu6jIAtJs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y7HvIGO6; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-55342f0a688so247105e87.2
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 03:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749207584; x=1749812384; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gvqW3AWqkK+q0nQJutHUZ9u8mAXK0/731ZCrAoRGHHE=;
        b=y7HvIGO6Qgb8Jd6cOhGPeEheZl0oTWJsquM7T8v1Pt4XRmNmpQzdBIKhcEGqV3RoRb
         JzFKHSYxau83ee0ZkqjtQbQVm2lMOV5CH0r9qb0RaiakGI5CZvlGJANB/fgoswf5hPB6
         VeHtydAr20LUS7q5LSYkezfHF2DCpH5h/5TglbOrd/BV0sTKZOk+1dpWjR2alnTmL039
         idYPqOFYnwox9Nm7YaToTgDOwTTz5xf2gZo39GIL+oloHCNX0RrUsnx81FT5t5N5RCx0
         2MfW2bBWTz0yNH4i5h9KIeYaxrq7qOczOk5bcXd+pd/roKChu/bG3NPMKw34oDIeWur5
         3bIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749207584; x=1749812384;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gvqW3AWqkK+q0nQJutHUZ9u8mAXK0/731ZCrAoRGHHE=;
        b=XPGhtiXqkb0Mt2gUUSnSp9gcbkpEDeCHtI0/nw9FPaD97+ZUiVEHDGYzzDYSK8rrI9
         fBC6HZNMXU0Qyaay2udYhOh5g6sxwysI35QusBuWY5BVwqX9ogN7AVoTNOqVt2iW48YF
         t8LKMUKnV+TkfLlnP2Yjd2MUYQcoalAxJdaWz09on2ZX/+bMD94jMCuGUvWWWyDCJgmu
         t3F7Q4gNGpVHJX26ZSzedm+O/uSOmz1fxE2My8vKnWoIcyYhjajHOc8oBEDrTd5JCj2O
         ojSmATosaFtBUo2tcXdGqgbxfo5oxqgtzATwCMX0XJH2yTcJuB3TxOvHdURibshNWD8a
         s9Xw==
X-Forwarded-Encrypted: i=1; AJvYcCX2EmdvULYz+yEMBf32b3F6bwJ1OpfiaYRieqPA5eS/1Ll9FE19lhY2woBXQYJ/MJgxLo5zf5spsUnj@vger.kernel.org
X-Gm-Message-State: AOJu0Yzqz3X6AWi/hc1YInHZ8+Vl4VoGty6DWqsBamnfFYQHNcBQgIaX
	KDOCrj1XDgadk4MY1VEzXlvXwJNH5CYTOjiya9FBdNE9LHsdsBc8A5XVWPs9fRIzzmo=
X-Gm-Gg: ASbGncseaitgAWmlfQOTui1dUXYKfPHnpO5t81hbUYUT6a/VEE4xxBvj/hlGsPRlQPT
	spoLYUm+REN/tOZwflk1uWF/YyPrVllu4ThC94emIrWKv2t3lifl2kbTqHiw4WopiL56gU/9pIM
	R/f2zHbPvstIhluM/CTOmh17dxtR4WpAX44X7cCjYmWSt22/+gaT11nYzowqHlAkHROXmyW8eZi
	uSvZ9LKyYq/uLdRWWjc3fKkv6sIKlCLidmVBPOnEetlF/NpQPqISWQB1TiVpxCu6FSTBYjA4NrO
	jB8NLl48oCZUY8//RRBiV62F2POZ4Lh513T6HsSz2uY5a6ZOIaDHjxi25fNmNIQOJJUJE/eVcFR
	QTPLohAIVbw44K24Abeje8tR3u64HF09oHlvv2XhL
X-Google-Smtp-Source: AGHT+IF6VGZzfzzaonioCVFuOZMDtflg4UEsDYktUq+bINrW6ckDf4AUU0LdM6+SSpNaHgJWBn5jVg==
X-Received: by 2002:a05:6512:401e:b0:54d:6dd3:614e with SMTP id 2adb3069b0e04-55366bd41d7mr243196e87.1.1749207584314;
        Fri, 06 Jun 2025 03:59:44 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55367731877sm151482e87.223.2025.06.06.03.59.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jun 2025 03:59:42 -0700 (PDT)
Message-ID: <877a72fa-cdae-4a66-9991-5ea86ef76aac@linaro.org>
Date: Fri, 6 Jun 2025 13:59:41 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] media: qcom: camss: Add support for MSM8939
Content-Language: ru-RU
To: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250602-camss-8x39-vbif-v4-0-32c277d8f9bf@mailoo.org>
 <20250602-camss-8x39-vbif-v4-2-32c277d8f9bf@mailoo.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250602-camss-8x39-vbif-v4-2-32c277d8f9bf@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Vincent.

On 6/2/25 20:27, Vincent Knecht via B4 Relay wrote:
> From: Vincent Knecht <vincent.knecht@mailoo.org>
> 
> The camera subsystem for the MSM8939 is the same as MSM8916 except with
> 3 CSID instead of 2, and some higher clock rates.
> 
> As a quirk, this SoC needs writing values to 2 VFE VBIF registers
> (see downstream msm8939-camera.dtsi vbif-{regs,settings} properties).
> This fixes black stripes across sensor and garbage in CSID TPG outputs.
> 
> Add support for the MSM8939 camera subsystem.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>

There was a preceding and partially reviewed changeset published on
linux-media [1] before v1 of the MSM8939 platform support in CAMSS,
due to a merge conflict this platform changeset should be rebased IMHO.

[1] https://lore.kernel.org/all/20250513142353.2572563-4-vladimir.zapolskiy@linaro.org/

--
Best wishes,
Vladimir

