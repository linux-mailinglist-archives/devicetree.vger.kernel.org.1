Return-Path: <devicetree+bounces-253329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3487D0AC47
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 15:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 07C5530445EE
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 14:58:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18F3B312809;
	Fri,  9 Jan 2026 14:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EXWUj+yI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B41C311949
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 14:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767970711; cv=none; b=fWd12HjVYAuH7DCXH7FkBeOMdAB7ejyD1McQLzN01j517HniSjcUZ38QCHicL8IbNagVI1lWjuqXoBbUhApExb3ekS0dmgLDK3fC9z+Pnw9FAr9rJPsROyYYfs+WXjKrL9XsUzomNNy/KOL5onSbgFkTBa303FNcHwgsSKa93KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767970711; c=relaxed/simple;
	bh=beZLShpvCx6q40/gob7SBHTRFvOC3vhNmXrChey/qHI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VC/SUsTWspa8wSGKYX4z6quG0V7RbzuyEngq/FTRN42gFvfAZ8BYJqqhJpPq1fWVU5JoH1MAe/LU7SnOhPtmJiFwlrqWkuXifBPQs8kCd0E45N+Hh4zLE/KvN3r1+wSZjhjE91/fOu7IAsyncZpKYxI+et0Zm3NgjrxqrbD6dbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EXWUj+yI; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47d493a9b96so25915105e9.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 06:58:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767970708; x=1768575508; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i3y7l6Oksk3QzETmQ7FC3JjIhgTCh90d664PehqE/z0=;
        b=EXWUj+yI5wYfST7O7cpMHv/cm4ScUnbtd7rFof+17NNg6P5r3oiUyiITmhifW+KIvm
         Fi56HhyDvTAgfixzvn8yH6CseNGKzRN4DItW5WlHhoxToHuxrkK/u89jnpNtptuQaoZP
         iwrypTSs5rtCRk5+K+VCJttgQsWlBi6ePpzUJhrPhZix2T4jubGaoa3bui91C+e1KPqf
         PWtQ7f8qB+Uz81/UeJ0RujeP9fNjNHhHgwidYY8lZkhh9XPjoqdygnC9Du2+aUF5VD9l
         bYcU1BHpex1nXizK2SUGIcbVYsC9cYR/dKzxtC/vJw345nAxRjWChNYLlHCTm4e1z0yf
         S5yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767970708; x=1768575508;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i3y7l6Oksk3QzETmQ7FC3JjIhgTCh90d664PehqE/z0=;
        b=soHQJXNf2QP2beMf4cmIse04zgXVutUNjAZ4ACFHke22AyRnflFgxGd5kr+tHT3Ix/
         CKQz93NdcFTaXS4X4Dv3e4A+CE8dO7JLitB0ZnL4nyaYYkdPXfUKyNR97jLyxr5Vp1Ys
         rfgIQ6y93aZZZZLElfa4XF12Osj/nFex/NM5Tpkm2e74WSCvAzju8LZCF5Nko7VOcc0g
         +JclXG6cGRI8DyPK3vHE1PiTXoVZO6SzJ7oVO+s1CyXHoSk21IcxrTwQKTOiCXYADQTV
         NJmSypch04b6POD7cf+9f1p6HvycJzKaDavFxqa5ZEDa3MvPznrEMqPOASHpuZmCZD0s
         nweg==
X-Forwarded-Encrypted: i=1; AJvYcCW7V5LJ0p00bHnq5vOrXie3PDGETpixNlrJsoxovqF06Pn0OoEy1SpmuZxrCO/wf5C3801f9u5gH+8/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6An2NwvDwnyj/2lp2vawfbSj3M33oiQNLhv563EOL1IHZ3Ho2
	WDhM+NM+Q0sGBIrj/Y/rsf3NJRPFoe3F9lKW9+WhbwW0B9TIoRAFa+dvayDR/1n9yK8=
X-Gm-Gg: AY/fxX5gb6OSAcKHjYTntnddmkELa5PnXQHM6rC9Zz7tQzfya+t0QG0LuUiWWbmuMRq
	63Q4v0u7ixoYhhrQA36+XGtrkVFQHoCEiFul2BFbs8Yf01DuF9kd2aWYsd1vbpRIv5z2FkVWspM
	7Apbfyatv5IeiMQDaDHkPLzWe28ZN2q2ReoPgeeS7AeVltkoNRZ94vniyczjrRZPchnzWLX3mv7
	6LjOOzFQaiz+douB9P7DI13ilCNXwSoJnRgTZ2lbh6MIwtqpj7zI0gTu+3qh1FJS79x53B/9ejC
	rkyi6mgLXGbxJ821YURHnJeJQMr+8/3ODvSGzTRs7iSJDSWWJWX+0CeKtHS52NNyW/BRUlE7Y7h
	F7ZpmkRyGvGvLgoHWisGlqpp/DNoU39pkeCWHi5OuNVlBlsTkMpT2BikRXKMBJLIPlBd5/Ibvpe
	qZwKBBDC9MfQIeWCaC0U3l8GS7owF/BeknVEN82vLpWFUJKicQhVJddTGp00IU6w4=
X-Google-Smtp-Source: AGHT+IE10qtTTvpifNaH6iGjIokQigTLlrCWVS3rMBPmfZRI782VaqCSwvzKVAeRor6aTRGNE8/Bdw==
X-Received: by 2002:a05:600c:3b28:b0:477:8a2a:123e with SMTP id 5b1f17b1804b1-47d84b41bbfmr114581785e9.33.1767970705825;
        Fri, 09 Jan 2026 06:58:25 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8636cb0dsm75966465e9.0.2026.01.09.06.58.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 06:58:25 -0800 (PST)
Message-ID: <073784d1-d798-43b6-b6e1-baf818a66fb1@linaro.org>
Date: Fri, 9 Jan 2026 14:58:24 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 3/5] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
References: <20251211-add-support-for-camss-on-kaanapali-v10-0-39e8874dcd27@oss.qualcomm.com>
 <20251211-add-support-for-camss-on-kaanapali-v10-3-39e8874dcd27@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251211-add-support-for-camss-on-kaanapali-v10-3-39e8874dcd27@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/12/2025 12:03, Hangxiang Ma wrote:
> Add more detailed resource information for CSIPHY devices in the camss
> driver along with the support for v2.4.0 in the 2 phase CSIPHY driver
> that is responsible for the PHY lane register configuration, module
> reset and interrupt handling.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

I'm giving up on this series, please rebase.

╰─$ git apply --3way < /tmp/\[PATCH\ v10\ 3_5\]\ media:\ qcom:\ camss:\ 
csiphy:\ Add\ support\ for\ v2.4.0\ two-phase\ CSIPHY\ -\ Hangxiang\ Ma\ 
\<hangxiang.ma@oss.qualcomm.com\>\ -\ 2025-12-11\ 1203.eml
error: repository lacks the necessary blob to perform 3-way merge.
Falling back to direct application...
error: patch failed: 
drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c:588
error: drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c: patch 
does not apply
error: patch failed: drivers/media/platform/qcom/camss/camss.c:34
Falling back to direct application...
error: patch failed: drivers/media/platform/qcom/camss/camss.c:34
error: drivers/media/platform/qcom/camss/camss.c: patch does not apply

╭─deckard@sagittarius-a 
~/Development/worktree/merges/media-committers-next-qcom ‹knp-test●›
╰─$ git-log-graph 
  
                                     1 ↵
* 84de87a909327 - (HEAD -> knp-test) media: qcom: camss: Add Kaanapali 
compatible camss driver (62 seconds ago)
* d6a22e0ea1d47 - media: dt-bindings: Add CAMSS device for Kaanapali (70 
seconds ago)
* 336367fab9b96 - (media-committers/next, media-committers/HEAD) media: 
chips-media: wave5: Fix Potential Probe Resource Leak (4 days ago)


