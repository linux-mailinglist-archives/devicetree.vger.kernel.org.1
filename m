Return-Path: <devicetree+bounces-131974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 128549F50CC
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 17:22:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 560D116E307
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 16:18:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3D441FA159;
	Tue, 17 Dec 2024 16:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QzKGxsaS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F84D1EE02E
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 16:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734451959; cv=none; b=K1m9K4uhhAcTt9h2UH0d98rnLR+xfWxvBNPAkj/mrL2cpOzWhuc+tMcPWsls4YXgaBsg1nkO9N1uVvOMCEF5/K2mo2a5zahR1HyzqYb61yW7F5tiwefZGh6BKKb13zMQtXkXtR5RSkknc388G8owXFa/IWorLiAzIeBYZa1Oy8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734451959; c=relaxed/simple;
	bh=sqzKG9IUExlr9KeYwf2YH/lDQlNJlbVgJNgZtw7i//0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qFXlG9cpD4JZnL9dfV4LqgsGoQw+XbOuKe1EqK2WQvw9cYVumusZ5LqQksioWZFPqJdvCNihOflVjTyBvIEluNmKOekzEznuj5mZ7bzKE9OyWXhT6iMx/xbq3LuVrLXE9TKLHeiBSPCaWKUM4zKjy7hHQquljr3ysZ0gH8B3Uvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QzKGxsaS; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-385d7b4da2bso5276157f8f.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 08:12:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734451956; x=1735056756; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O0MSBSw6+OhbTrh1m9W9JgXC4AYYLnaI//MfIF3U6z0=;
        b=QzKGxsaSswGje4kZD0R4Uajytp/h/lQAEKFim8aFhWa+n32/EK0wf+zYoI5ZlP+v24
         iauG68+ofWySIyrDnXySuesBjw+5F/MSuRIJy15QGcW1zK5Gj2FMibX5LZKD47B1YEgb
         HwDHHiQYySWYkwX6TgR3nwRsG0ilwNbjlhkuOyiW1Oc9c0FLqvCISzG/aFWEmWx4EhuV
         eZYm2VY+RffJDJfxGnivgX2MO+sZtGH83SzqjbreeeiQNZAskGKr/fl1XAinCY6K/sHl
         2xvdQL30cfOIriDH1E86opyq9eb/YcKs94Cz5bySpYt2ddN32lFoQW+NDtRN/CSKgTya
         eJFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734451956; x=1735056756;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O0MSBSw6+OhbTrh1m9W9JgXC4AYYLnaI//MfIF3U6z0=;
        b=lkXyh9OZSM1ihg+AAZ9W/9098H4Ukoju5MqL/sNCHNREf8Fr5IJKgojVLkVaX8zffL
         fvYyaT94MZRJdS+TOjACM7tysKAx3c0imbVBc+b6hAMP01OxwtS4vzAMQyezGQ6oSLWJ
         7kVqpYSzqXDOAkfpcECeySbirWAfTGLDw1hj6TnSEEFNX7AWKT/zY9S3iip2JUozIMMs
         3AM2TM43OTT8SNfYIRa+jfA381JKGaU9774W2+AGLHEbf3SXnNDYb94ewG2Ink2+nFeQ
         c96SHdSyF6707qdkUBbdK3ve14fStdrhxJkefnGm5uQ2kPcflKjbT+DKhd+lhaOdZoD8
         FuOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUtsVcjNV4VuyVFlf3RPu1w3wxN9t2qzJGELlTlegPT/t2raWXGYmOQOABcgESyAkRVnzWa9KJag/3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1t9g7Yh2ohj7GkWXyIPjr1c2MvezHDu9VDIwvIZr8le/u5FH9
	aRw3hJlcTx23Dcl81m123K7Qht0KLwiMlGZel5/OnaDfcJGLW/iI4mZfxF+TugQ=
X-Gm-Gg: ASbGncucwgqqmMRM4M7Jme2spheCPPcIyETA1lGezqv4iZiNJ/Yd2veFsMnzcm3DCW+
	5SWJbmXjJyQLM+VCIPmbVfUU0I119JDbr90LJw00yW6RJ9zs9PMdgGMtQm0PFRWWscwHY6GYWJR
	POLR8wDZY00O/9j6kbhFnqSGovKxWc7AjRII5U2w65ck2WUCBxIXIERaphIm8eWopoEmbqUSBMT
	17TUt2PRT7jygTo/ARUQlulunftgujGkzzg5B42Qhi5/Pl+MGpPR9CvDexM1+Y1sQ1yGg==
X-Google-Smtp-Source: AGHT+IGNQ7hhBEySJuTG7bF8w2ZzmrZV4ZxMbtUaczoA4N/EwDXYjOiMdMzulLRJCZ/qQh7rX7Zo2Q==
X-Received: by 2002:a05:6000:18c6:b0:385:fe66:9f32 with SMTP id ffacd0b85a97d-3888e0bfcc4mr12807413f8f.52.1734451956514;
        Tue, 17 Dec 2024 08:12:36 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c8046c05sm11739012f8f.73.2024.12.17.08.12.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2024 08:12:36 -0800 (PST)
Message-ID: <c14493b0-c9d3-4e1c-9f86-991b4cb25c98@linaro.org>
Date: Tue, 17 Dec 2024 16:12:34 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/4] media: dt-bindings: update clocks for
 sc7280-camss
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, akapatra@quicinc.com,
 hariramp@quicinc.com, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241217140656.965235-1-quic_vikramsa@quicinc.com>
 <20241217140656.965235-2-quic_vikramsa@quicinc.com>
 <02da691b-1f5d-41a6-847c-c7e9b8239919@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <02da691b-1f5d-41a6-847c-c7e9b8239919@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/12/2024 14:10, Krzysztof Kozlowski wrote:
> On 17/12/2024 15:06, Vikram Sharma wrote:
>> This patch change clock names to make it consistent with
>> existing platforms as gcc_cam_hf_axi -> gcc_axi_hf.
>> This also adds gcc_axi_sf and remove gcc_camera_ahb.
> 
> Don't combine ABI changes with some less important things.
> 
> You miss here explanation why doing the ABI change in the first place.
> Without that explanation I find it rather churn. But anyway, reason for
> ABI break and impact should be documented in commit msg.
> 
>>
>> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
>> ---
> 
> Best regards,
> Krzysztof

This change should be fine since we haven't committed and upstream dtsi, 
so there's no ABI to break yet.

Agree the cover letter should have been explicit in explaining.

---
bod

