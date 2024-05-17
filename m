Return-Path: <devicetree+bounces-67438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8762E8C8266
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 10:08:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B7D71C21855
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 08:08:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 571E020B0E;
	Fri, 17 May 2024 08:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WQWyUfhp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398F73BBD7
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 08:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715933277; cv=none; b=q1st3Q4IacNC9Gd0zkhrCRvhgXRm9Vpjf5MZgMvtQHAvZTKBDF9ThYVaMv2c+BjA5wK7g8mLGQrRihT3j9A67KVDsOwkmnigjWyqPgzgsQdB0MKdZR2aUhPsCANP+J/9NKXxN9iFzpV3uE8fWyJ+QPvfATXEJvchsJc+Q52/8f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715933277; c=relaxed/simple;
	bh=67kJhvVJgfr3fdLhnw6mtmsME4ghMjbF6tKsfeoLtJE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BhfprBW3P8i1Jt8YZpyEEAAt+roW0iPszGeQfW8I2KdOhJ0P/PEMBPg0CL26FDJcsv1VVsmtoLvOL5Aa6t7zZzOcab/4ZNVAiFf8XkFZXvHEgrU/esA5JN2AdFUeyp8J/FkwdpfEMBaHiq4EBr6l3Taxk2oiq9qTNyMDFO6d40M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WQWyUfhp; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-56e37503115so3293426a12.1
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 01:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715933272; x=1716538072; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ADMoLBL5cnEifhHVW0n3dyo7J3ncObAka0zVx8KrFmM=;
        b=WQWyUfhp+XHzzN1zHf+gqxgRF7xECOlJuPrB+F4QcszkKIYJl98OFMfwwrRmN7myXh
         1wvYO4Jd/k0YgxOu1vX2mu60VTD9TdYtKYYvolds9YoVpA5lpesrSAwmF7txEhV2zxuO
         OezUTQMm5HD+xiGUicgv3muZPUICGCxr552pQXAdDE2cqOKd408WYV7NHTF3egMkOK1n
         5nkRcD3zzhpspbHhF92q4zhRaQgpftQ6DAip5/SidGckTtmvfupQPqL+s5PoulFGwEKP
         7hx2IJGav6244guVZjisu+34Ho+t177lg5664BNCxqNKyqFQTplb6N1dL2HkxS9SkzrZ
         y7hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715933272; x=1716538072;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ADMoLBL5cnEifhHVW0n3dyo7J3ncObAka0zVx8KrFmM=;
        b=tfXyl07Ew972LIFGEEHpJSiIYjFD0cR4Mr+Z0Ts9aGLCMK9BXDepxJJ6xmAgzYCn7n
         Jj3bBfPP50F9HrgSg5dP4AWKG8znZnF5QvcoF+raIDQErsRDOkmwHX9USRf+5Qzw3/wA
         LkCi12wbbyeneApsK9GMf1EagMjF3Ui7nmbZHmxzrlXEoeAUmUqdpLztX/DjtlZts6ki
         UCTezn4TTqfHtYei3gf44CDPhbCeyTRpBG8i7Pm4lAcD18nU/SmMsPcbPv10YHOWRdxP
         Jo9Son8BgCqrBgBp6BRbaiGza2oA81nzc3gDzVq3fmUJnT08Q+Opl2oNLN7XfkTCb3OW
         ureQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzWBX61Yn5oE1FZPhngUrLLb5gyikNJVkF1EXl9yjggp3pePlJmGLY9OpVhKg354IfpTSbU+LRYeZNH5kpZeqYgyljaHeiRMpq+A==
X-Gm-Message-State: AOJu0Yw1O2pL4wzZfpHV05KquNo7t1lRX/vMQOXLayySE+hHGTNWOWU4
	t5vhSac1hAcKeB075t8ZOXAsPVeuyFPyV/mBZa5OXhl7+XaT/dRGosXxAmW3q58=
X-Google-Smtp-Source: AGHT+IE2fmU8pDp6UlRMGDlXg5CeGrnSfA6SEVVbOUx4aG63KRG891PKcbwDpqb4LC/Ug/MAPPvzjQ==
X-Received: by 2002:a50:d654:0:b0:572:6cd5:f8d with SMTP id 4fb4d7f45d1cf-5734d5ce1b1mr15053517a12.22.1715933272636;
        Fri, 17 May 2024 01:07:52 -0700 (PDT)
Received: from [10.91.2.68] ([149.14.240.163])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-574eba4bc3dsm4452608a12.94.2024.05.17.01.07.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 May 2024 01:07:52 -0700 (PDT)
Message-ID: <77b01a97-de2d-4e10-91f6-915ec414eede@linaro.org>
Date: Fri, 17 May 2024 10:07:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] hwspinlock: Introduce hwspin_lock_bust()
Content-Language: en-US
To: Chris Lew <quic_clew@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Baolin Wang <baolin.wang@linux.alibaba.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>,
 Boqun Feng <boqun.feng@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, Richard Maina <quic_rmaina@quicinc.com>
References: <20240516-hwspinlock-bust-v1-0-47a90a859238@quicinc.com>
 <20240516-hwspinlock-bust-v1-3-47a90a859238@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240516-hwspinlock-bust-v1-3-47a90a859238@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/05/2024 00:58, Chris Lew wrote:
> From: Richard Maina <quic_rmaina@quicinc.com>
> 
> When a remoteproc crashes or goes down unexpectedly this can result in
> a state where locks held by the remoteproc will remain locked possibly
> resulting in deadlock. This new API hwspin_lock_bust() allows
> hwspinlock implementers to define a bust operation for freeing previously
> acquired hwspinlocks after verifying ownership of the acquired lock.
> 
> Signed-off-by: Richard Maina <quic_rmaina@quicinc.com>
> Signed-off-by: Chris Lew <quic_clew@quicinc.com>
> ---
>   Documentation/locking/hwspinlock.rst     | 11 +++++++++++
>   drivers/hwspinlock/hwspinlock_core.c     | 30 +++++++++++++++++++++++++++++-

Shouldn't this be added to drivers/hwspinlock/qcom_hwspinlock.c ?

>   drivers/hwspinlock/hwspinlock_internal.h |  3 +++
>   include/linux/hwspinlock.h               |  6 ++++++
>   4 files changed, 49 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/locking/hwspinlock.rst b/Documentation/locking/hwspinlock.rst
> index c1c2c827b575..6ee94cc6d3b7 100644
> --- a/Documentation/locking/hwspinlock.rst
> +++ b/Documentation/locking/hwspinlock.rst
> @@ -85,6 +85,17 @@ is already free).
>   
>   Should be called from a process context (might sleep).
>   
> +::
> +
> +  int hwspin_lock_bust(struct hwspinlock *hwlock, unsigned int id);

I don't think this is a geat name "bust" looks alot like "burst" and I 
don't think aligns well with the established namespace.

Why not simply qcom_hwspinlock_unlock_force() - which is what you are 
doing - forcing the hw spinlock to unlock.

---
bod

