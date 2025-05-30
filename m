Return-Path: <devicetree+bounces-181771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C910CAC8D32
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 13:53:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 113C39E354E
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 11:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 330EA22A7F8;
	Fri, 30 May 2025 11:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kuJgAGYB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE9522A1F1
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 11:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748606017; cv=none; b=jM0ysLrKtD6yxtUTmqd6vHflgKoIuHRHHciX1gmiYdoSzz51J/3XR2vhvDiMxbJWqyN4N6HcpKdcY2QsYhqrSwqJ4iUayF76pICAA/8kMV/HTQQaMeLED1+pk6Fn4QGUPMESZEqVsh9oEoz78GF/c/O9HVNdLztrDbmxyVVE/nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748606017; c=relaxed/simple;
	bh=S3VeWtxKlJvzTgUsBlJdwT0AenvLuNtDX75s3YzO5DM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FUilAUy/F9EaBotHy1P+67KmoBUYLXNZeZcJUo0gAPU+5h8mL4dO2CqtkHDssaJ+10I4b7ZF7JbKxyzkK17p4T8M+DwNN7QQejJtliVoNxtreT5gukxW4qPGOZGYVPm7milobBOy7qrVesELUBjKmHSPKJFmARB/zif+1zENOMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kuJgAGYB; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43cf257158fso14671675e9.2
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 04:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748606013; x=1749210813; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4UPJVljTY3N7PN9rlPr1KNAMnaMWaV65uercPLaJI+o=;
        b=kuJgAGYBzJCf6Ip7t/utX+OMl1melh/8OtH6rBCZ8QfFzYHE5lbO+ozlZFdYfxqPON
         4VVf8TjtC90VND4TUeJORRMOWTRJf5bbtecJO7/ov+ahPz0RPwLRYPqBDmFHAd2f227k
         33J5AC2X6UdxnmHqyN7u/D+xvwgKIAd4ARHwjQu5pOMdPX3nGIIVA7f+IL2dyzcuSnWZ
         AjPHEn5RCVB3uAz1WUuRx7Jc1zO/ZAENf9PIi8jLL+KlyN28g6Rm1yznEC4DyrZpYaPV
         qKNrLaGMkDLhVFKe0w5xs2DGvxc/Ud3ez4L0yifW+29KEuWhk9UotL7u+UWBWohbg07I
         8hhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748606013; x=1749210813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4UPJVljTY3N7PN9rlPr1KNAMnaMWaV65uercPLaJI+o=;
        b=LL2rS+9zmA9ZyO3LvnLKj5nny1JCJKULX5KrCdDNyD+OBapbatrk5eW3vtNp3iQGQn
         yA2L+hggchqnJO0aQ9UHlQWaJUQD+zh5u9qgMIpCMk50BTr1JYAZKfmzMby1Y2WEbMKn
         sIh8NlF7G5afL8h7TvYbH06sr+MHwpAg08kjqixn8yIrbLwqJ17alIMwiy6spOHkcM/2
         kwjhDTlOfUFKKSg9R/gno6x2rCLJZUP47NBV56yunSq3ZAg8frZ89tYsLBVbKt1uH/GW
         9FRaTUglTbG/qTNuclEz1s/tr9ENT2A8fxgvjPdCPKcaos6bIZfmJJql1otjpKLYlKIv
         rmFQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0J49M9z3lSD8byXxiOFb3AlVW/+xMXMvPTrjz1/x+h/Tt0cQ7sbMoifQQt9tAAF+Cz+v+agHFn9Qg@vger.kernel.org
X-Gm-Message-State: AOJu0YxkRJxojcjk++b5Fa/bmXRunSVCSVGsrwSIO4XUUoQ14fB16wv2
	sL/lMb8SDkenw2p128KKnD9Imm8myptCHhO0g2cMdsbYXnEZC19R1QCANQsxvxhEVCQ=
X-Gm-Gg: ASbGncv4k0SVdLe729wigEf5SVeL3wIwDP6Xe0ocI3U8jEQ9ouaSTQAseDF7homaXvV
	97uB2ljFCC5GKfCYcEiZGYbe70MqIt3SHZdrB6Y5aDQAFFCE0W+8RO3AamcHoznSm2y35+IsvGN
	0BWJPIzRdAgYFzazI0IXAv+9B3Bzs/vdse9W5AbqlQpnCrFbf+6zQQiS5rgI5EEpZqKKMJi98Sw
	rVFsPeqCmxnW31ToCjbIfJLKsKXqdFwh8KD8vG1Z8+QLUQ1/VQPktT7rLGdMkgnaIxu8qXqh0xD
	M+SdB27hqK6ErhygAcMgh0Mg5FkiHg0Fl96IEWH9g9fzXUblyZ871byqKENd6wCrZOLSxrihESG
	jrGeyfsPtl5bdlXEidCSsgsuh2YY=
X-Google-Smtp-Source: AGHT+IEf5MxDQRZ1AOD7sTcnaYqSwj8ugFOpC72ckU4hsD9LywwTEslaQnTKyHBKOB6AHALVuW7X/A==
X-Received: by 2002:a05:600c:348c:b0:450:d07e:ee14 with SMTP id 5b1f17b1804b1-450d8874cecmr19582285e9.17.1748606013438;
        Fri, 30 May 2025 04:53:33 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d8000d8csm16096695e9.24.2025.05.30.04.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 04:53:32 -0700 (PDT)
Message-ID: <05ac9918-cc95-4288-a185-48bd4b31b77c@linaro.org>
Date: Fri, 30 May 2025 12:53:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] media: qcom: camss: Add support for MSM8939
To: Bryan O'Donoghue <bod.linux@nxsw.ie>, vincent.knecht@mailoo.org,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250530-camss-8x39-vbif-v3-0-fc91d15bb5d6@mailoo.org>
 <20250530-camss-8x39-vbif-v3-2-fc91d15bb5d6@mailoo.org>
 <e28b518b-26ac-4d3c-bfaa-21a7cce63366@nxsw.ie>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <e28b518b-26ac-4d3c-bfaa-21a7cce63366@nxsw.ie>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/05/2025 12:49, Bryan O'Donoghue wrote:
> On 30/05/2025 10:00, Vincent Knecht via B4 Relay wrote:
>> +	    camss->res->version == CAMSS_8x39 ||
> This is not correct - it should be 893x since 8939 and 8936 are ~ the
> same SoC - probably 36 is just a binned version of 39.
> 
> Anyway the x is the least significant digit.
> 
> Please fix
> ---
> bod
> 

No wait I'm wrong 8939 or 8039 - when adding 36 we will probably just 
use the compat string to differentiate.

This is fine.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

