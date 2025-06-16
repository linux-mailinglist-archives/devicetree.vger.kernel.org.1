Return-Path: <devicetree+bounces-186192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2404ADAA4C
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 10:09:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18BC23AD74A
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 08:08:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C77920F085;
	Mon, 16 Jun 2025 08:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zXmhxWFT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1364207A3A
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 08:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750061354; cv=none; b=hHzpwKKviuxl+bn5o4jiHtVTzX2Bmb/r2/OVkskT30CzpCpSuyiqUw86lW75bzJ7rhHkOuMUcHgZZxwazpQxXySeNOI/fqEl1WLgaEbDSRO2DpVG+pD+UYWSFCwiBFX2ddSq6dW0YuL0FWAFC1S2ZYPYk7D4I7A0Dlxt8pCOvYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750061354; c=relaxed/simple;
	bh=USkW9A8Y6Pc8W+vSjgDy1nhlge2z+SqxZaMzVGJgcwo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RsNrrkEaQgs/vT2TnvjMXd09YUapTlfPvAcVAmjOeDqbc7q60bjTUFHpziohmbEfwfZQpdhxpYtqN9Ol8QoVjiAkBzvZzuRi+QCTXhW14DpYplTP0ToKasZ9dn9007O+vp/toWoIGQlwUtuV91MVIWQHpeBqQSOEyGehJUwOcsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zXmhxWFT; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-441ab63a415so48846055e9.3
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 01:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750061351; x=1750666151; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xkb40S5vLWjTYywYDHqKY1pbcd7/hgHih9SM8FtY0Q0=;
        b=zXmhxWFTtAv+E3q4kxp4BQOi3fqTepixTR2mQu70FpituiUN1HTrmyHzbkYuM3ZtNl
         eOtDrTZkvU19W5AwHDL59AUUB/fhGLxLyfzRcBE5wBrdXoT3MsI2aaRZ2KRLOu2dQonM
         43T827GJRA/qo7VQaQJIMnSzIALd9t4ZBiwjje5irGfgs9o6LDZPXPelapoG9xvTx89m
         cLMDA/fORyvEIhmNFkBhJNq/DmAtQHxjjkgs8YBMwSVoxDII/axLcURfyn5TCemEagno
         EsXv7irVBoBhHzuavL+EUzHbBuiESL0dlx2FsaAW24IVZ0VGT0c9/q2sn8Q/mTV+ivlN
         t0HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750061351; x=1750666151;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xkb40S5vLWjTYywYDHqKY1pbcd7/hgHih9SM8FtY0Q0=;
        b=i/apjR3ptTu35iijVof06nkCJpyoLAJEhdNbJWoCrNUSHbwitrXGs7LAb535Z2WLHD
         ZBD4OPmdm+d5eRmkUZiDhayCLynre/xxnSXVpG8RnMMPwxNGDWhcU7bL61ZPPOfzdIdM
         s+UT511+AqmsPw01/km0jdZ8zfaaaauaSoqnybpPSOGzGYD6FzGDcdJTvVYkE2FXqPhV
         9VDyoEVjNeNiMkhvhuPPlQb/4Jye7gI/2QATRBaxr6V2Cz3HWZ19hmLscQ9e0V/b5Vns
         6t3JyRc9U8WC/vP2E7PMo9lCOoWN3GAGFGoZ3+jKvybf5c9PRPCvH2ewjBmYAq51vI1O
         Iwqw==
X-Forwarded-Encrypted: i=1; AJvYcCVa+GxmxGP5ko3gy1d0m4+oROMeY6ffsJPqeImMqwo/i9SnBENRxRnghuMK/VqMK18uRZAONPlVse01@vger.kernel.org
X-Gm-Message-State: AOJu0YxGZ/t100iDnBPo0UReK5SCAwkIqZd27rUAZFLpKZ5W8KHaWPXu
	bVL4uR+RzjGyYbG5n8rJLILOZH7NUSH2xG6knyPkvmbTIYQQq5eZ1r3OgJsBCxBPXd0=
X-Gm-Gg: ASbGncvpNHy2nwVded3Rb4hPyfjHJtFRk52ggYR/2lMulH63s8cwkXUq2SkHpm2DHb8
	XxnYu040IqBZJ0yfoRNn8qE/fICKUW9xLNbLkOa9AORN63RQwpUdTdJwbth7lC6Mz4DjvqUthwe
	QUug2mrXlcFJ3wGzkwANkaygaPO4Oj59VGTWDqrgZ2jZenmi1AkI1VAweIRj8NDBouzkZ0oJ7T3
	BnIPfvieVzRoaBWZSQO0HvPqJsvr/503MljId/XwHawTBG9ySKrAypfvDPfLXTrAgb0Zt9whlQk
	O+idYdKDJrNwYl+0UV4OaTeYr6NYjNGqTF6iUsUwct/l8momtQCZgrXuTHoDlw14wxTvUMmmDJ+
	q4MYsDCpXGYgOK+zkQMH2NMYGXOk=
X-Google-Smtp-Source: AGHT+IGWcoFnYQiSRgGmqI7cH2i+fqFJCVEDio/UJeVZr62hdUsC4q6QvZkCencW6E8/jOVV2KeCYg==
X-Received: by 2002:a05:600c:8710:b0:43d:300f:fa1d with SMTP id 5b1f17b1804b1-4533cacb574mr90452095e9.31.1750061351057;
        Mon, 16 Jun 2025 01:09:11 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e195768sm137550265e9.0.2025.06.16.01.09.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 01:09:10 -0700 (PDT)
Message-ID: <7c850205-0c42-4e6d-bf5f-f1255367d53a@linaro.org>
Date: Mon, 16 Jun 2025 09:09:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-dell-xps13-9345: Disable
 PM8010
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: bjorn.andersson@oss.qualcomm.com, Konrad Dybcio <konradybcio@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, laurentiu.tudor1@dell.com
References: <20250318-xps13-no-pm8010-v1-1-c46236d96428@oss.qualcomm.com>
 <Z9qXFLmnae86_GT9@linaro.org>
 <a7zyhmv5lqxl2l5rdg2x5g55wokm6ztwvzwrfkyeignwdromjr@afpe7zwsmkt2>
 <d2eabc30-f1d2-47d8-82f9-86f6f7a705bb@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <d2eabc30-f1d2-47d8-82f9-86f6f7a705bb@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/06/2025 19:29, Aleksandrs Vinarskis wrote:
> Hi all,
> 
> 
> Revisiting this change in context of Dell XPS 9345 and now Lenovo 
> ThinkBook 16 [1] (and upcoming Lenovo Ideapad 5) as these do not have 
> pm8010.
> 
> 
> Perhaps safest and easiest is to simply disable pm8010 in `x1e80100- 
> pmics.dtsi` as proposed and _not_ enable it on any devices, since its 
> known to not be used anywhere _yet_? As its a camera PMIC, the only 
> submitted upstream (did not land yet) change that utilizes pm8010 on X1/ 
> X1E is Bryan's CAMSS series that enables camera on CRD [2]. There are a 
> few other laptops that have patches to enable the camera (my Zenbook, 
> Bryan's branch on Gitlab for few more laptops) but those were not 
> submitted yet, so can be easily changed to explicitly enable pm8010 
> before submission. This way we could simplify this change and not have 
> to figure out which of the upstream devices do in fact have pm8010 onboard.

As a general principle, unless its used it should be disabled.

pm8010 is a camera specific PMIC and Dell has its own way of powering 
the camera sensors on XPS, Inspiron and I'd guess other models too, 
presumably as a result of reusing the x86 design with Qcom with minimal 
changes.

Disable by default. +1

---
bod

