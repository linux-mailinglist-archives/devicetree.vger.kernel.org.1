Return-Path: <devicetree+bounces-78706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF0D91335E
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 13:30:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C5FA1C21127
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 11:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10625155326;
	Sat, 22 Jun 2024 11:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OLvmb2+X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D7C14B950
	for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 11:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719055804; cv=none; b=hjLAdGL3VZoiFE4TMjVUJ8xbzF+TZAi6RwuTxGUj72UXVFjzD34vWwmFeulJGHDuYan2/XL2BiJ2BU+9bdNdU336qE1f86QramHIPx2Qzy/uPRZpgVnuXnLb3hCKI0XFYO/t0R09rS4m2pRgOPKUQanhJN3YQzpF/ixUagHVxeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719055804; c=relaxed/simple;
	bh=11K6LHfHWicAB69b7ZUFPdDJh8TfuamrvSt4v8WuTP4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eP3QUJz/ah38x64M5mVFE886Pn3iB/FbnjHlqDXeEHFuLzoYg+mnWxNTBCzMtw7hdOTT3uMlrcNh6twWIaKzdo2T+KoM0JFsH6Ph6Of6lVeT5xchMITSEoXhjGNxkBpvuMW9Wn/kf0nUsn2AAVqCjAxZQ9lvv8iaTAQ3CX6LsSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OLvmb2+X; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a6ef46d25efso325767066b.0
        for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 04:30:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719055799; x=1719660599; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=AHw6zgmKkDqBQPRgR2CkRYLz/m5aTAALidJWJQVysqM=;
        b=OLvmb2+Xocgr/ySHeH3GigPOgHqjyNcCSqdUXkSDe77QYaHHuonpA1ckme3bbO3fLJ
         oh4NG2Dll36k+JeUk3tJYI2n2vsqQU67IzHjfC7E7LjLUkyWLcS+84W0qNDQFZgAaIok
         lpBxg06FqL0uzaaZ7/siVl+yQXbkzXNTPckITLa3Jtah9KUJHZPypkbG9t+XqCFnsRko
         FBBta1TGE1uRGGASMfoAzDfXYPNiFg3MR2sh68n9pB36xv59NEfjdahGpCqTrkMwxN5h
         zqxFyRMrxiSy1nXqG+UlLjDnZaOUQAMZvIC7ls+9coO27W/ND1vNLjRzvXnszyaGHJ36
         M8cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719055799; x=1719660599;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AHw6zgmKkDqBQPRgR2CkRYLz/m5aTAALidJWJQVysqM=;
        b=vG/iN2FcTzV87n/Y4JKzyLSrZxgvC4PCbrjRkXhRmce87satDxAQOd6KrUULTBXIij
         6On6vhv6/H6VzMhQFndCNrgB6YxIW/abg+AzkBMub4Lna4PQlo4Rx6r36/xCWU5pme+O
         bYwlXFNZe+Ked+PAR7Uq8VZ6bpgmns7Tk0yxyasbaZcNKL4DrOHIy+CgknshNuVw8/Nj
         OwwFN6jpWH/igoBJryKIZJ+bzbosHkQZSRFKQMDS2oOliuqu1TEclq0mfTh/SfPOBEVz
         cYX0jHrmzYopgmdijjl40Rgkc3O78wjX65h64mqdORxqXiw1fZcFxCGR++qDe0wYuM7K
         xbJA==
X-Forwarded-Encrypted: i=1; AJvYcCX9TeO9dFaNlUl8+470m6wNqEHLA9TYsy1V0CJUlGMctaTCt84wEk28ot5dnIP/l7twG9ApPsMe3CqP3Ubf2d3cQSlpPDBDDeoK8A==
X-Gm-Message-State: AOJu0YwOd/NLgjU25ZnHn+zv5UQvvAyvQRVLzYLpnf//u/BkYXQdVOGT
	jIiA9RlZvnzCNL+ISvqicRlF0dsoF2FKJfHa32105pS9u/TWPZN60oSPP1f8ipw=
X-Google-Smtp-Source: AGHT+IFogKfFRFyQAIZVyLSOzULnr1yl+zaZYU8kuvCtXUB8MFaWyGb/EfrIxBoejcs/GFgJ7+7fyQ==
X-Received: by 2002:a17:907:9405:b0:a6f:5c1a:c9a6 with SMTP id a640c23a62f3a-a6fab77a20fmr756042866b.62.1719055798997;
        Sat, 22 Jun 2024 04:29:58 -0700 (PDT)
Received: from [192.168.128.35] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fd640fac1sm140873766b.213.2024.06.22.04.29.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Jun 2024 04:29:58 -0700 (PDT)
Message-ID: <f171e9f2-0a62-497b-a460-874d5ee1ada3@linaro.org>
Date: Sat, 22 Jun 2024 13:29:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: x1e80100: Enable tsens and thermal
 zone nodes
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rajendra Nayak <quic_rjendra@quicinc.com>
References: <20240621-x1e80100-dts-thermal-v3-1-abd6f416b609@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240621-x1e80100-dts-thermal-v3-1-abd6f416b609@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21.06.2024 9:20 AM, Abel Vesa wrote:
> From: Rajendra Nayak <quic_rjendra@quicinc.com>
> 
> Add tsens and thermal zones nodes for x1e80100 SoC.
> 
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> Changes in v3:
> - Changed the upper-lower tsense interrupts to PDC.

I'm still puzzled that the critical irq is not wired up through pdc as
you've said, since it would make a lot of sense that if the thermal subsystem
detects a dangerous situation, the AP would be woken up and the soc would be
then shut down by the OS before any last-moment safety mechanisms (if such
exist) kick in..

Anyway, this looks good now to my brain compiler and the device seems to agree

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Tested-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

