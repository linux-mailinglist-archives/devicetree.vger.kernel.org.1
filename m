Return-Path: <devicetree+bounces-197746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E53DFB0A7A7
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:38:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D38418876FE
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 15:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE1D32E5427;
	Fri, 18 Jul 2025 15:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="opQKPy6/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D901D2DFA5B
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752852861; cv=none; b=pUZEBoYTiakpegIVTgom+8qvob9LwaOjgSxzljzqlHbes96QOvMvqe5GVA0vf2rX/ryvumXzblo5/fIBx08JWUmzBUrg1+0Mv7Z5bRUe0gIVCG0daPgA1nrOkuTVsK79r1n35EiAWPCu8sR1+a71UgTn0qfH8uLv/WNq92PhpHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752852861; c=relaxed/simple;
	bh=K3NQjhgoiNm8lMx4+MVnvFPTPl3eulyzeXdbVgmruJ8=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=QsoTZEJCNzkaF9WU752c6Q8zbRTbY0ByrCJGql2MuKP6+SPz4QTEsjiFyU7j3YMxtW1wIimq6iutzz4HUcKpMMkSDd5x/5dwmHIGKppTqRm0nfsJQ3+vMqI9T1irl0eEZA3lkREX/HI61VQBojhd3mEA1119ZsGs9a5fRTxaHSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=opQKPy6/; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-3b5e6bfb427so1293732f8f.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752852858; x=1753457658; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3iipV5xdsK0MwvbEtYksPewl9/0L6LIT/vf6062yUSs=;
        b=opQKPy6/1Sg/7T9T2uE7VpEsHkjKMWB8ZKXe7//kx/8OGUU5oae4h6x499khiOfzlR
         Yy57NKNEuo3vyZyzZ0sYUFGMb7dXvlfCR+o1S4sWf2ZOOtcrV73SMCrZnt7PFgdSt2Z3
         1sj3KjT4Flr73vYMadNEwvQnSqQKugB/gxFN681HT9NjOkXl9ee8LNlQs22LHD0Uk4Nn
         7hD+gLt2oR3ZvtONrTBZbtJ9ZueG4Ld5V0Qo0CmQN4wOXwleiJvk48lBM8TaEqB/TN+O
         VVrhiqkynlDDV31j/Hca+oz7xXIv3AANfAvfn5GHXjKLtrHd/63gBOn0Q1vYc79EgJpz
         3Tmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752852858; x=1753457658;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3iipV5xdsK0MwvbEtYksPewl9/0L6LIT/vf6062yUSs=;
        b=kHPUA8o8lxvwopdcpBClEKg9u5UI2zyv9srrcTG/IqIinFs7+D254IlSimhVgxvOWo
         j8HQr+bb53W8Hh5mx55HU12Z7fZVEImNPe53OArK9iqQB02HcWU7OWBQyv4LpSGY/JdV
         Juyn7c6mc3l18VT9ao85OH4CHZhXXM2bM0yAYTExeZrma/3sQlYnWLbfQCLeiCWYOeFK
         l96d3OrjKEViPUJ8+u9qdsiIxmuK4hNAdDcEN9HMjioUTKEGGTDFrtLMkX7B1/5TOj0B
         MguXkWPxdHJEirwzSRp4S6429l9hFjqwF2xVrjgYYveJyc60mozMlAXqGXKTZJ/veuzG
         Pocg==
X-Forwarded-Encrypted: i=1; AJvYcCWauKSQyHrcahSoOD3R9irW9/MFVi20TkBHG4pqPs85gaNKzWCfVGNDA+EMNWCWcwYZJYCBOeVPXt+O@vger.kernel.org
X-Gm-Message-State: AOJu0YxE5K192p/XfRAACUeLOQ+ZMjxaPKcTLbrMJW8ZMO+S6HBhARzt
	6laaKcFzLuHnuxFXql8kEZ6ykkqh0wc22CyAaHbtlVvKDPyW4q3q7WhPJ9bfyWqGCdo=
X-Gm-Gg: ASbGnctFYNrVcodKXuwJCiVK1GmcN7VQ5/fQ5vRoevbt7AS+JdDcZLVfGlknDEFXci5
	ogXCULQaCbsKb1nZvmilB5ruN4MMghXJXlk4pGf9QDD9ZnYKqBSFwvPlz8olxM/eWsxIN+obVIJ
	Y5LfPJT/GYHR9u6i97j1fFOTolr2OKMi0nAVIWkHHhSYWdiL+EsuxilSuTDD647Cdtsdw/Vc5yK
	lcTLvwifvJ55+fX1oQwuGG7S9eYImVr1xBjsGc8HSYUUndvieksXfjm4ovDKp8E2SnRtiwfkLqj
	JVk34FhBbuqPmXqKzN05UcGS/JJVrJsgo107zjHximhbAnUdBTGSBTkwKua1TrnvTXY/PO0ApKq
	sfVNS/RQWLOo47QyA5rPByPnX3dIYzw33YlWvZaWY+LZSFO4Ee6ZDgUkEkzO0LNo=
X-Google-Smtp-Source: AGHT+IEKZu1u8s2VVWUMdCPz30xTR8FlRWALcZqZAODUU/SIzT3B274xFGen3mJx9foyZcEa07s/qg==
X-Received: by 2002:a05:6000:4109:b0:391:3aaf:1d5f with SMTP id ffacd0b85a97d-3b61b22e416mr2221624f8f.52.1752852857943;
        Fri, 18 Jul 2025 08:34:17 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca5c5e3sm2213659f8f.78.2025.07.18.08.34.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 08:34:17 -0700 (PDT)
Message-ID: <2c5b3ddb-d171-4b30-9b64-def913ca5af2@linaro.org>
Date: Fri, 18 Jul 2025 16:34:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] Add Dell Inspiron 7441 / Latitude 7455
 (X1E-80-100)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: Val Packett <val@packett.cool>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250716003139.18543-1-val@packett.cool>
 <a2681844-a96a-465a-a48d-49e1ede526c6@linaro.org>
 <316007b6-6e24-4095-be24-fbd4ae7d425c@linaro.org>
Content-Language: en-US
In-Reply-To: <316007b6-6e24-4095-be24-fbd4ae7d425c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 18/07/2025 16:33, Bryan O'Donoghue wrote:
> On 16/07/2025 11:53, Bryan O'Donoghue wrote:
>> On 16/07/2025 01:26, Val Packett wrote:
>>> Since v3[1]:
>>>
>>> - Applied R-b tags
>>> - Skipping the eDP panel ID patch now since it's been applied
>>> - Fixed the last remaining '-names before -0' order issue
>>> - Changed usb_mp: keep the unused PHYs enabled in the DT
>>>    (to let them go to sleep), like how it is done for the XPS
>>>
>>> [1]: https://lore.kernel.org/all/20250706205723.9790-2-val@packett.cool/
>>>
>>> Bryan O'Donoghue (2):
>>>    dt-bindings: arm: qcom: Add Dell Inspiron 14 Plus 7441
>>>    arm64: dts: qcom: Add support for Dell Inspiron 7441 / Latitude 7455
>>>
>>> Val Packett (2):
>>>    dt-bindings: arm: qcom: Add Dell Latitude 7455
>>>    firmware: qcom: scm: Allow QSEECOM on Dell Inspiron 7441 / Latitude
>>>      7455
>>>
>>>   .../devicetree/bindings/arm/qcom.yaml         |    2 +
>>>   arch/arm64/boot/dts/qcom/Makefile             |    4 +
>>>   arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi   | 1666 +++++++++++++++++
>>>   .../x1e80100-dell-inspiron-14-plus-7441.dts   |   52 +
>>>   .../dts/qcom/x1e80100-dell-latitude-7455.dts  |   53 +
>>>   drivers/firmware/qcom/qcom_scm.c              |    2 +
>>>   6 files changed, 1779 insertions(+)
>>>   create mode 100644 arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
>>>   create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-dell- 
>>> inspiron-14-plus-7441.dts
>>>   create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-dell- 
>>> latitude-7455.dts
>>>
>>
>> Just tested on the 14p this updated version seems to work just about 
>> fine - or no worse than previous.
>>
>> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> Ah I was booting my old dts with the spelling mistake "inspir I on" 
> booting the insprion.dtb here is a no-boot for me.
> 
> Please hold off on applying this, until its root-caused.
> 
> ---
> bod

[sic] inspiron.dtb

