Return-Path: <devicetree+bounces-161080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 649EDA726AA
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 23:51:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F9FB1893A3C
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 22:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35AC2263F2F;
	Wed, 26 Mar 2025 22:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VOgg/BhS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BA3262811
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 22:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743029499; cv=none; b=NwXS5cY8I/7QSpx6hWc3Az6M+B13oneWChPGUi59IJy6gfvJne93ZhTQ9CCGPIzP15H4SJAFYI26ikkjweSIZT8GPvf5Av6pzdeKB2aT/bvYzqy+j5xfhDkG6fKUg/MlqCzubZWbtHaSdzIfU5G11/MKiy1yhGE+l0mTgoUCDh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743029499; c=relaxed/simple;
	bh=9W8BT1rU43QQlM3nGYO2e/Y+imPrehWaKApa5DpYXV4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NTVF5D3vFYqEgFMDKUw+c8uWuQcJrQQhEAy/VV2Q+0NJc/VP78yrM8e6P0glhNBItJfXC9+hgNUjrt1/xx3RG4ucuScUTBg9aNb7A4A/Hskxtn1pecWFVrD6lz/SY7LgDGnuVj4yu0MB2/gmMLzIkJTOBao6JI0hzZ9kgpduzUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VOgg/BhS; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cfdc2c8c9so2129875e9.2
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 15:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743029495; x=1743634295; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9W8BT1rU43QQlM3nGYO2e/Y+imPrehWaKApa5DpYXV4=;
        b=VOgg/BhSmJAiJgAm87D3F8MZlouJMCeHJWZRBiDPasL6DIK3woDpOMmf2iMJBvMg0r
         ChZbfnDRwlfLleNBC2xvlEaYPb0jjMc61NQ2l9qz/MZ8g9jsJbEUrcJkHFGNCZJhes8O
         TCqwJ7m/znyuvVqfM53oC+wVuTjGiUIrd5f7bE8JDkKch+k+Ygpd2VwikAb4W+QMgVwH
         GpCznW3GSPzCRXNowYvZ5a2gkV4c1GNUkxzVRN61ACZh7oNkViMDah0tZTUIQjvA8BU1
         I91e5bs++ybUIwF79Wfxbvxul7FP5bTKnkIJbADRQ7y/NsPgYS+T9qBO1kcYj8ILAu4Q
         m8tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743029495; x=1743634295;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9W8BT1rU43QQlM3nGYO2e/Y+imPrehWaKApa5DpYXV4=;
        b=ge7i1FssSFj+B0Xh2WgvLSLPfkNZGTD3ab0JhpIDu3Zh4ZPW+AE0aLgqSeWs/5OI59
         erHOuxy3bHDs/hVj20Xob1BvwLbZim7CR5OAqw9hA8YvFWS2+zhMxGZALub/SMmkt2Kn
         ljSDS6FV/iUEMFBYAZ7ATusRs5r07BJmM6brQN8W0gJ2A08vpxsQk+7Xuab4LdCUq2XA
         IYFl+jT+5wfkNg7sdzQ2G6CanUFETLkr/MHq6wOdPC6r+hJbUOTbmxF8L4G5DQhQKmV0
         m6+tPW1iT7+T6V6ABew0GPboVwVEOIgcrVcSkC8D/TwrAvVJwVuE1bcaKS3xPa1o18aO
         CbQA==
X-Forwarded-Encrypted: i=1; AJvYcCUOUFnhStfsuCKQt4kMj9CDU69yuKc+cETrFxCstA2rdclvkusP8hZIIaMhTYArzKF3k98rowt6SQRf@vger.kernel.org
X-Gm-Message-State: AOJu0Ywfe0W+9ZJXGLJD/Uf1dOk7/zcJJqGOmOxDyzP94Ys45oxXxd57
	5BoW/f1pTYbD0T2+5CwOdAl1iRq4N9pBeeOPYcTmrhJqBnTdbiQABjdnsfE4fIo=
X-Gm-Gg: ASbGncvjsUkIGf1o4pHcwPpBHI09MNTbBs48QoIfw+XvWXhdtfmi0x4d1WK3rEPspAW
	fVFkjwDeTCiOAZy+vEFI0r9naWd0SmzgXd6oQikFP5G5bRYr1WNEHIxPmgy/qRaXN6sjPLV27Hl
	RyX4l3bxKoDjhlYCXyvWtVxystOd22mBELzisUYuByYojWff1KINmWsLGV3KvmSTj1KT0TT3WkZ
	bmIwTbMjkNj849Ef5OIdG+13NST9Td94HcfST47fcPZ+XB606QLFmDBYuBWoPUQvf43eRjcEuGW
	nu2DqCJQoW6XCs+XqUSiw5Nq6EN0GlaeN6q0xBY6NrSNLD2MQnl3rUScyyr0CX9IQwf4q071YZd
	1oIxOV/fZzxfiGSCZ4UOG
X-Google-Smtp-Source: AGHT+IF3X3/hnoBsNfxpWnPlMXapCurjNlJImTiX0kVvl4eg95HRoqZ39nIoykw0ueeFjPTVdJiVag==
X-Received: by 2002:a05:600c:4712:b0:43c:f8fc:f686 with SMTP id 5b1f17b1804b1-43d84f5b6b9mr8578955e9.3.1743029495605;
        Wed, 26 Mar 2025 15:51:35 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d830f5708sm17268115e9.32.2025.03.26.15.51.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Mar 2025 15:51:35 -0700 (PDT)
Message-ID: <bd73de09-bf5f-43af-bdfa-70b3c9d82698@linaro.org>
Date: Wed, 26 Mar 2025 22:51:33 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/8] arm64: dts: qcom: sc7280: Add gpr node
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250317054151.6095-1-quic_pkumpatl@quicinc.com>
 <99Kmw5-BXfX05ZwNUzOT9v3wiUXyJRCIyH_U5oOlBvz6-3i6cCbHAnDSD2431sH3adMtdNWeAwbc-05oPm405Q==@protonmail.internalid>
 <20250317054151.6095-2-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250317054151.6095-2-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/03/2025 05:41, Prasad Kumpatla wrote:
> Add GPR node along with APM(Audio Process Manager) and PRM(Proxy
> resource Manager) audio services.

Nitpick.

You've defined APM and RPM but not GPR.

Your triumvirate of TLAs is missing 1/3 !

Please add.

---
bod

