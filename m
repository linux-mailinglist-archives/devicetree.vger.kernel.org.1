Return-Path: <devicetree+bounces-80956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BF75C91AD07
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 18:42:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 749621F26BE3
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 16:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C0DF199E83;
	Thu, 27 Jun 2024 16:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="N4eaGq5R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944F91993B4
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 16:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719506522; cv=none; b=F3cMdCwT9zTCZXmxmB68k2A8Qx0i56WJBRS7ncs6QhR+2WytsrvXw7LkrhmveW9VxjT9gSNNasQkc31QCdARl8vV5bnA/D+WZVso8x5alVDP+JR/FZ/VHS1hKTz7VPlbNsThQf20iUAW+3T5HMnMFcCtYpH8vzU9fidmNGcw55Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719506522; c=relaxed/simple;
	bh=7rvwN+5JAyIiGWGIyml+PLmYwXOYSMAVm9NJrmFCrDA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=E50cY6VbdZBAaqbut2tCSXB60y0P+gxpJiF+Uuz6K4d/Aw5h4Kjn361vVgS4iU/kZu/FLq4KDD4OiDTh4QceJHq0dEqCDGFBCzci7XR8XnLzprde+dUXbAhGmSk+9Q5USnUotNqoMW0BKIRJ7zsT+og//LSNUKVikarI+mXi/T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=N4eaGq5R; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4248ea53493so36358475e9.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 09:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1719506518; x=1720111318; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eCkEwjsDLm0XGJB8xms/SKimkP02Q1zp6ZqAPKni7Cs=;
        b=N4eaGq5Ra0q7A4BUtRwRjkWuTyTBW81Bpnh68jZiQkLRodtcv50uDEuh7yGW1jy/e4
         Q2//3vDt2xyI2aDhWbKgHeay7tUnLhmGpgsf3elEd7F7ddherbgBbh9IT0cYU/f1YvKK
         YEpjEJrTstZ+4mkQGcn1Kv7Y2vIrgk3yvc6PcNMxaH7Vel1dVWjcpCBh2SrejZqi0btY
         o54UIfzf9FMEAHGwaTVMbGhAZranJ0N1yw37CDM7LTu+yOFTpJhEGVgA6x2faeXwzAz7
         hwFrcwDoSzlQUDH+VXDMy2IR/O8nCVmnqdTcvEnMOTgT2StPGdbnJb/MccRD1f2RsY3n
         W6TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719506518; x=1720111318;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eCkEwjsDLm0XGJB8xms/SKimkP02Q1zp6ZqAPKni7Cs=;
        b=HuSvRGOuFFrlNy4X/a7r9y8Vl6aPH9QUMPbLsyT6WPptG+0Wn0viiUMFOhsFl9OxYd
         P8Wb0xdcBrD5tx/VIOoiKoBPuqPtBIlbA9hBziR4UOHH+AYcugC58+MLj+1i+RJ4aH94
         90sLh510P24WKstGX+PtiNen24wEnLWLlvVnr+FqBmOThfJApXujKoxMlzLuOBRC6rfv
         /u3mz7Kvk3YSEGh84Fq5i6pETkyiHIhcOkS7LHqA4R0jYyVngN6sQqOX/PtAmN8eMEv+
         pLwbHymz9t4uJ15rRaQgfC6dhLAOt+ue7s7gNIqWgvxynqHNYrbkdrGIfvfFYfI7qY7s
         TQeg==
X-Forwarded-Encrypted: i=1; AJvYcCU/DYMoQAv3m+gaKG9w4rR1HyftQIhrJjyS4OgfC3twI8VXJyKh+RPR/DDprDcefLx9Y/5UuQEDigVOqLERR2Z8K8cJu7bsdTQubA==
X-Gm-Message-State: AOJu0YzEllyPr0d3IY1+IY6ZABVpncqnnmFFh4uxG/iXp5VclYuOt7JP
	tiGn1UW3VApz50bn6n+4m9CvNhyM9nxsBYqJCS22bawCyhPc+cKxPJBD9tnpft8=
X-Google-Smtp-Source: AGHT+IFoughng9rudyhYvDZWWiOJXK0eg6Kt8g3iwAfz2BbedZzxIyaBmb2c2QaepjOkaw4EpuxaLA==
X-Received: by 2002:a05:600c:2e04:b0:424:ae0c:6587 with SMTP id 5b1f17b1804b1-424ae0c65efmr41006865e9.14.1719506517953;
        Thu, 27 Jun 2024 09:41:57 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c84245f0sm76109465e9.33.2024.06.27.09.41.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 09:41:57 -0700 (PDT)
Message-ID: <e34ee0f2-8bc0-453b-8869-e261ffb83e68@freebox.fr>
Date: Thu, 27 Jun 2024 18:41:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/3] Add support for qcom msm8998-venus (HW vdec /
 venc)
From: Marc Gonzalez <mgonzalez@freebox.fr>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>
Cc: linux-media <linux-media@vger.kernel.org>,
 MSM <linux-arm-msm@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>,
 Vikash Garodia <quic_vgarodia@quicinc.com>
References: <8b2705b7-f33c-4ebe-a6a8-c5ef776fe9ad@freebox.fr>
 <abfedc39-43d6-4ab0-b7b2-de68371d5d28@freebox.fr>
Content-Language: en-US
In-Reply-To: <abfedc39-43d6-4ab0-b7b2-de68371d5d28@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,

It is still unclear to me exactly who is expected to merge patches 1 and 2.

In patchwork, patch 2 is marked as "Delegated to: Stanimir Varbanov"

https://patchwork.linuxtv.org/project/linux-media/patch/eb15a48b-6185-42dd-92ca-8df33b0ea4b5@freebox.fr/

Stanimir are you supposed to Ack? Review? Merge? None of the above?

Regards


On 17/06/2024 15:36, Marc Gonzalez wrote:

> Hello Mauro,
> 
> Can you merge patches 1 & 2 in time for 6.11 ?
> 
> Regards
> 
> 
> On 04/06/2024 18:41, Marc Gonzalez wrote:
> 
>> Changes in v5
>> - Collect latest Acks (from Vikash)
>> - Resend to Mauro
>>
>> Marc Gonzalez (1):
>>   dt-bindings: media: add qcom,msm8998-venus
>>
>> Pierre-Hugues Husson (2):
>>   arm64: dts: qcom: msm8998: add venus node
>>   media: venus: add msm8998 support
>>
>>  Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml |  4 ++-
>>  arch/arm64/boot/dts/qcom/msm8998.dtsi                           | 48 +++++++++++++++++++++++++++++
>>  drivers/media/platform/qcom/venus/core.c                        | 39 +++++++++++++++++++++++
>>  3 files changed, 90 insertions(+), 1 deletion(-)


