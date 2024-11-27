Return-Path: <devicetree+bounces-124931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4429DA5B6
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:27:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1E39283063
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 10:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785CB19884B;
	Wed, 27 Nov 2024 10:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DMn+fCTe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6161974FA
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 10:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732703217; cv=none; b=MJ64eMfsdFlDHG5bEvfUssv9F/aZ5K46alswmzuAQUQpBFZgFOCWyjvMbtSkr1NcKgr1AKeK8XUGJmBB7WqNbwU9hO+IbGPtLHHJLzA66dLfOPTIl0BfUwZxDd5Ze3QQVyCa+QB7hoGYloSaNL3ksXA2hXhqY/KiDIQqmgQ3faI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732703217; c=relaxed/simple;
	bh=S6bt788GwhrWwpfabdGGotkjGPQzcxS0+bPJYUswNRQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Cqe+4Me7FhdLpHEKELSBo8QAn8K/UAL69VgBTeKZB/81Wp8etEzoWeDLbFiRUvUU6U70l29hTcyqLoEGDMjikDkn1JAAKYvBuwU5G7EIyLfIgn3AVlCvwrbykS/QjYBPWrtPvMs1NFcrOR5/QNMWM2+C2CX1Kz3Q/fhoOhExzUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DMn+fCTe; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-434a95095efso3703375e9.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 02:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732703214; x=1733308014; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7+cmfbelmRSaQQFPiUTQDZitDA2TYw9iUjlwm476pkA=;
        b=DMn+fCTeeMNZZenU8eF6Bzwf/t94dPxrqp5g4hCwWZubvsx+228sefVDGPRV/Kz7CY
         QcDbKFvOX546yja/sDHj/GcxLcyFpQ27FnbU2mN3oTbl+jg4r+UOxtRzF5iMvAup9RFF
         uL1uia41dWn9QqEOii59AxmL1OU/RWL9f7eanGJqqbsmyvHFMhO+00Sb2MnJGFlDNltl
         Y+Y7fYTP+wkd6F/HPWZNqlEkFQkebNuqnwD+W7/KkGgpreQb2nxbuTziSGpMxiwz8NJb
         Oph4zW06pyDElFKPOPXDDKcOHVKav1xD/xE25hV7k1YprkYFbEv8j270RVHN9Ll4qM2J
         MdNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732703214; x=1733308014;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7+cmfbelmRSaQQFPiUTQDZitDA2TYw9iUjlwm476pkA=;
        b=dJZLKaUZZVfZa36D51d0JzdmYIWeg+VAobzddY7FaDrOLJz+r0Lf69xMA8Bnm2NJxr
         9zrfLy++IDwgIuSAXfsgih9/k9XV06NbYZ3b97AnXIraZo+ECV0jMy08LN8bqIwV+Fj7
         kDUulcpOgVMgvdDqPMU+E+kWIkRzRwcsM7mT4WrTb1XJHBr2UTO2L+3x9bUkZ202u60/
         yShhcP2ARtVZ+cxCEVwoGJZFCSqlkGAQQSxwiVrN5HpXtbZQCOnoPj1fR/QFaMipqJHw
         tmTVVnAXP3XhS7rBd/qTR99PmZfTs7x/3fjnHzC1wZFbn+6CO8Y2Qs1mkhrJRePS+gSi
         osUg==
X-Forwarded-Encrypted: i=1; AJvYcCVWl80b6KVaevS53CvUvEWJ/LddjXbfBOTBaoaPl4TmRY/bd+4N8L9O/EllbhHUsX8pdgoV+espnUu4@vger.kernel.org
X-Gm-Message-State: AOJu0YxsDWK6XysnhrhxxMLVcB9xYMkhTAmx16MUaNGY7oX7/iSQc+kf
	mHRiW68ARF2HuJ+cUrCRQ76Cnxt6YXZ9s6WkU3jvqngfW/6nE3KcekvKrp0LeLE=
X-Gm-Gg: ASbGncutUDpXABN5gNpyMa+7zHu4NMLU3NwQ7dzZ/CZU0RwDQgw7QeXum2/EAHXq4TB
	x5Lkl57Dz5XFAmdqlaDFf0e66UM/D157stOn/5qs505b15LGnHFVUzEjny1HMNYfMn8AgGzg47n
	hyFirYkOl3YD2IoJAYSNGEwHj/XQIRfTjCVYb2otNwdAgECsL6n5O+uG5K3u1QxBZ9myBxCkole
	AjuLHEEzVtGDxkSqYlC4wxBjA4r4Jy3VkAVwgtoZqucuZaw0R/MtbAELWexlUA=
X-Google-Smtp-Source: AGHT+IHg6WbnrX0TF7Gf5SRVmRbOlRCRzVlxg9KnxKtMXHlYhNgEnOW4AlPtq4E09rvfEVr0xHICWA==
X-Received: by 2002:a05:600c:1e88:b0:434:9e17:190c with SMTP id 5b1f17b1804b1-434a9d816aemr19447135e9.0.1732703214187;
        Wed, 27 Nov 2024 02:26:54 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa76a981sm16464015e9.16.2024.11.27.02.26.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Nov 2024 02:26:53 -0800 (PST)
Message-ID: <fab23e56-9ef0-409a-b9da-a866e92590f4@linaro.org>
Date: Wed, 27 Nov 2024 10:26:52 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] arm64: dts: qcom:
 qcs6490-rb3gen2-vision-mezzanine: Add vision mezzanine
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, akapatra@quicinc.com,
 hariramp@quicinc.com, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241127100421.3447601-1-quic_vikramsa@quicinc.com>
 <20241127100421.3447601-6-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241127100421.3447601-6-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/11/2024 10:04, Vikram Sharma wrote:
> +		dovdd-supply  = <&vreg_l18b_1p8>;

You seem to be missing some supplies here.

I'm not sure if we've covered this before but, it looks to me as though 
avdd and dvdd are missing.

On rb5/sm8250 it looks like this.

     dovdd-supply = <&vreg_l7f_1p8>;
     avdd-supply = <&vdc_5v>;
     dvdd-supply = <&vdc_5v>;

Can you point to the right supplies here in your dtbo ?

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

