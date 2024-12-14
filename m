Return-Path: <devicetree+bounces-131016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A076F9F1B79
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 01:50:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16FBF188C454
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 00:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B04CACA6F;
	Sat, 14 Dec 2024 00:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LRnV8jwO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B64C2ED
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 00:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734137398; cv=none; b=tc4bwcLxaaNgtLZ5FcpwXSO86h7y+90qoL4nYLY1RZIDJhoe0wkfg/qOHxO4iAR9WcjdaHPV1/or2fPUR3ulsCwbbhdlEfN/l1Z7bqFh+ue8jqveE9ymfW5cDpFeOa+3i1ykxprRNX5/no3kkLPPOyh59qjacm1f5LYx1Mnxusk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734137398; c=relaxed/simple;
	bh=LF9f2q7wQ5vyQD4uKD7ZO6qHf8a3O2obFR51imVhytg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K9G8JKi03C97o9DhuID1+Un8MgCFo+X35YSF1Mgx1Fyg0FKJz4fKn5fZyRECA9oz8BvfzKZRfbFZrl+lZHEoweQ23Z+8ik/n8K9Epclr5QgLQZuYioUyskx6/l6/nkAXpDs8KPSkK96oxv6NSwMVznGvxeVjbMpIREVkrUrS7yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LRnV8jwO; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-38633b5dbcfso2520880f8f.2
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 16:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734137395; x=1734742195; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zZHQT3+1AXOHwySh7rmIQ56owPwbOS+jVtet/I/oewQ=;
        b=LRnV8jwOV0SG5IWaihuzl1//P4nNulgNrK6O9E3pUa6+cJN/VVgaE2c9QgnFMe4+mC
         /Fhk1SKuSyOX28ryvEPjT+bq1zM9YOWYznKUlObqG/fa9HC02KW/rnD49jQ7XR4rTPEI
         o2TljLwj7MGTe5fCz4EgFG7PVU2OjNVqLfJJEZ8HaReM0dHFlUehhvdLtxl8CzW/qBdS
         x4ANxNQZ6ipRfet0D8fGjMDsQ1jBabuaCbAj5rGjq6w3IzO7RoDfRrAiazHbKWq4KV2N
         jnIpkkM+dwJz3GSB1KOhZ19RBk+OjprgptwoWngOBb3CbRJJKyzdiY6LH3X0MsEt0/7T
         necg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734137395; x=1734742195;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zZHQT3+1AXOHwySh7rmIQ56owPwbOS+jVtet/I/oewQ=;
        b=dbmH7317oI6aEW0Q2qdJxLwOIW9Ip4TOkzH2tjRGOzzzFn3AgrrfRdboCsui+pps2v
         37wMhlYMJYrz0bK9zhm6zpxtoAKkJiittS+Xpg2WhVmSKqHqdc2Z+DyNluhuNJsxP4fa
         87TC6O8gp7hVd8sA8+UUYZCE0TSuOXFrntqZmtxvlgE/0VyM2oxByWdndcIQqMuRx1iZ
         l89FqUrT8qiZP3LGp05e7jkWogAG5/1ieOJiWuDrMBRoIbdkk4rg320xz2k0OyrTS2IJ
         N3mpIDapAfse5UVA3imyv7bAzvXuCRNZPKDxN53A1vbfJV49jtOHLXzKhePZxfpu0rxl
         18CQ==
X-Forwarded-Encrypted: i=1; AJvYcCXaFr8bPh5jn2ErGSPGGAgFosNST0KO7i5dKLpO94UftqjMJmdQXZxYE97qRyuJ15dnP2l0aIaWvkyU@vger.kernel.org
X-Gm-Message-State: AOJu0YzyX1BxKvJUCh5I5aBUt2HMUqMKjci82SDYU6mW7QEdgo2UZC8U
	s7i+KGwxlPba9qUVgqUy3tTFmNL/KQ8glDhzkXfUHKVtXSEwE3q01GxaNBZl03A=
X-Gm-Gg: ASbGnctjyzpE6llhyZDlMla+0uM+BaUT4jdU5UmacSRmmfz9E8SX1l1XxM6EdN5GywU
	EfOV/t+zEOCbWX1KHn5MWBjm15CPCqZFmhOJCEpjJHilIG7wSNl1fo8gi6xV6l26dDKJiMGMKt+
	YjZv4ClLRt4LVW/uFmpL5q0V1++xSa9gJ4H9qaA4discICyhQkrWYedhz7SEryEWq/43o/fI+jn
	aduO1+3ryktB6NjiZPd/Ny97/WUWzmckv1k2IoXTu86DRgk3CMk6WppEq0+ZZ4WupyS7g==
X-Google-Smtp-Source: AGHT+IHGByL+SnFZLh6TJ7bPmNjCMhZaO4qaTKsbRPxcaxQjrB96T87kcly1ELijtAI4mJfcF9Gh8g==
X-Received: by 2002:a5d:5985:0:b0:385:df73:2f42 with SMTP id ffacd0b85a97d-38880ae14c3mr3370858f8f.32.1734137395326;
        Fri, 13 Dec 2024 16:49:55 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c80165c5sm995925f8f.25.2024.12.13.16.49.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 16:49:54 -0800 (PST)
Message-ID: <08241f60-a6a1-4b69-bdb9-c9b83ec504f3@linaro.org>
Date: Sat, 14 Dec 2024 00:49:52 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/5] media: qcom: camss: Add sc7280 support
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, akapatra@quicinc.com,
 hariramp@quicinc.com, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com,
 Luca Weiss <luca.weiss@fairphone.com>
References: <20241206191900.2545069-1-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241206191900.2545069-1-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/12/2024 19:18, Vikram Sharma wrote:
> SC7280 is a Qualcomm SoC. This series adds support to bring up the CSIPHY,
> CSID, VFE/RDI interfaces in SC7280.
> 
> SC7280 provides
> 
> - 3 x VFE, 3 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE
> - 3 x CSID
> - 2 x CSID Lite
> - 5 x CSI PHY
> 
> We have tested this on qcs6490-rb3gen2-vision-mezzanine board having IMX577
> sensor. Verified both TPG and IMX577 sensor.
> 
> Used following tools for the sanity check of these changes.
You should state in your cover-letter that you depend on a prior series.

Unfortunately I found a bug in your depends series:

https://lore.kernel.org/linux-arm-msm/1a570c17-c501-4a29-a4f7-020f41563f3d@linaro.org

v9 will have to be gated on that series being fixed.

---
bod

