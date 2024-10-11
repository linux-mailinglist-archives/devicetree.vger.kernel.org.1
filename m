Return-Path: <devicetree+bounces-110545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3307399AEB0
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 00:32:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEEB52846F8
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 22:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 820E11D221D;
	Fri, 11 Oct 2024 22:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FEZugFtv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAA71D0E31
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 22:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728685924; cv=none; b=gOpQes5cg/fTgfovOAZLTUTwAplURYItuMvlHYWzB0l4J7E3QPBhbgAN4rfwAHjsQbNS9M8a7N8abrjKX8U1jtwGdcOdYI/uCFIhufoPYtzwVHz5zW7Wiq9oGbIFgmPglYopqS1QtyW999ULgUrp129QYJe8p3ajZj1MzEQfqQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728685924; c=relaxed/simple;
	bh=h8jDK5yst+t6SVTBbM8byilTslHC1KtG4mgA8TITvUA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TQyJ3QQZXs6W8vjVm8sPtKrypNr1r5epVPo39DElvhFM0a9nDw80DtpilXKdUMQsRR6uALurw6o+rtWc3JeAjHO1X1DHFJMU2phuYJes70w3Ik1Uig5883nfRKgAxaBzXooH2FHHF2bQm5sEikyA/59iBtbbW6OcmtIsV42N+NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FEZugFtv; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a995f56ea2dso391802266b.1
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 15:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728685921; x=1729290721; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7dYEjVJeWeKBsQqV478t9ZT5xyiJzppDYZSrZjIOGlE=;
        b=FEZugFtvl0J1+0FMamlhH9q/biPNHWhAriA4XtjU9eE2TrkZmD2AsgGyd/5b4Dwfqd
         M8C/3n+++QiIdVNSqZ9qoR5J25Spd71NWkKV9HSeMBynuIEii1+CVgOGX4Qdx6IUcoW/
         G9LNt9b370zP6bA4lo+DrpRGs1ymkKE70mcK32s0B5jrdnWrvySKiEe+wDrNTgNBLH86
         uq3E+yTkJVv74UQwELT9ryfIIvf9CoLUxXHWOI/YMoRll/xjYhnlOwYKN+d+WYfBVFCM
         /kHIXasjVWUzDXkFbOnPLdN1yWGZZyPod6gij9OkPVa07YOi4oFZrIniNrZcKwJ1C9aj
         n3Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728685921; x=1729290721;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7dYEjVJeWeKBsQqV478t9ZT5xyiJzppDYZSrZjIOGlE=;
        b=Gt5rbPizo0gzr75rXsEic/XqgXizwIdsNTcyabweFWUVYXluOpCuFBSfk4mCZnQztj
         3xB3th1IpcBjHfgc3wiJ08YS638x9tTuQkQwUphwypGOZ2Dlgsu01DDfwMN0sPRqb6QE
         Nm8g1+mwlMYMaOfmfCB8IRD26IgPaJhU7VdJ4dZi0+Qe+Hb7Me+rZTLSIj5dfQ+F2sqx
         hc15tLW4xivnYOPyLoxUPUPWD0QqdnYzErrpt6BmRdzQ3syAy8zbJptTwHCLh0iz9tF0
         Bp60Z7Du7hzgnCC8qKOQQdX8qqpB4TVSXXyikmPGjecnv8I5V1Gw5gLAtahl4rla5Hv/
         IgBg==
X-Forwarded-Encrypted: i=1; AJvYcCWq8tToMef67wwUoFIhfWJ7s/fuV3QWAG7oGJq4NQRwyLwiuzCA8toIzKHbgF+LS7OGEhW2zIHsHt/1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+O5yQyZ2L6WMSiYZEZXlsMmKozgbpqLYWLxlQ/wKc0s4MBClX
	C4o5kEaP70SKLTasOXjBWjrPHRNX8wpg/DlO7hInf/YVvRoFKtlscnAmauWnnoY=
X-Google-Smtp-Source: AGHT+IEbKbpnTVUS0yOgo8MSx+Fpz0QB/QAoFKFpoEv8h9F3HBQ1+TmCxeZNTaHD83KXx3oJN9KijA==
X-Received: by 2002:a17:907:1c05:b0:a86:82e2:8c64 with SMTP id a640c23a62f3a-a99e3c9d614mr104196466b.35.1728685921048;
        Fri, 11 Oct 2024 15:32:01 -0700 (PDT)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a80c03b3sm256498866b.127.2024.10.11.15.31.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2024 15:32:00 -0700 (PDT)
Message-ID: <20603976-907a-4254-a79e-23c1f0e06286@linaro.org>
Date: Fri, 11 Oct 2024 23:31:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/8] media: dt-bindings: Add
 qcs6490-rb3gen2-vision-mezzanine
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, akapatra@quicinc.com,
 hariramp@quicinc.com, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241011140932.1744124-1-quic_vikramsa@quicinc.com>
 <20241011140932.1744124-3-quic_vikramsa@quicinc.com>
 <nsylilmzl6zzukpgih65kmeibbllek6dpgryzkso2ttpuztk2x@3q5xiujcdujo>
 <b3c1431e-9a5d-4c38-ae7d-605d4a2cf3ac@linaro.org>
 <bzszh7m52o3xzeybp4odwki6bz53aqctolrbvvbqizvk4bkj2h@k7r2i2rhgyqs>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <bzszh7m52o3xzeybp4odwki6bz53aqctolrbvvbqizvk4bkj2h@k7r2i2rhgyqs>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/2024 22:33, Dmitry Baryshkov wrote:
> See arch/arm64/boot/dts/qcom/Makefile:
> 
> sm8650-hdk-display-card-dtbs    := sm8650-hdk.dtb sm8650-hdk-display-card.dtbo
> 
> dtb-$(CONFIG_ARCH_QCOM) += sm8650-hdk-display-card.dtb

Aha, yes ok _that_ makes sense to me.

---
bod

