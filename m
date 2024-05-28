Return-Path: <devicetree+bounces-69840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D528D1B57
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:32:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BB847B21568
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 12:32:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBA3816D311;
	Tue, 28 May 2024 12:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b5AxwQd2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A34713AD30
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 12:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716899524; cv=none; b=dEW7GL6FfvVCzFRyhuzD+tcPtDNgN8YGcPEIanU7ipRF/PRb5KY2E/PWjO25J33vD88iACCG0M0PTfhk75PX7rKL64MjfTY0xbU0BrjLfG6oqFuPFjS/A/564gQxkSkiihKQPPTjXAb+X9Ldi/NURBQPRcamqm8sl1PAU6wTNQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716899524; c=relaxed/simple;
	bh=KiqVR5A7afC0yC25lzwE3V12yYzsy9gKTVKR1n3uWcc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eD6P8ibFXz86ICukc9EYAxWhhgjRcxC3AuvdbDrRUchWQy4bHexjPZxUG+cSV1BWA6mjA4p8zYuukqYISnm6xiSAOxeEZJJeEzL+p/mW44ld8SNNcWicdjKCBdTAFNk0bJDYc/fg9feLOmJl0toV5buxs4+sLMsonFV8N3lDYpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b5AxwQd2; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e96f298fbdso7545021fa.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 05:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716899521; x=1717504321; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RJz0ZlzWAoX1DsekGPlBTARTw94E21rzFJ4WFq7Pqbc=;
        b=b5AxwQd2DpVcmJPZLobr4cFu2W7XjvYeDu4mNSQ+zfY9F5NmfTLXgv6pfye2QIizA6
         RUMiBQ+N6aDJKlCLT+ycWRbWKeNRBRcWf66ALyTwbkGlm9wDqQIoa0wifoU7+XOdcMGr
         KR/U+ODpgno+tTwial0n4nJUZua6ER9XvxGzKnUMkI/iip18cwyu5Hvzk+zNhKnRrvXh
         RaItNtJltvz9olQarDGMP5laCSH/+dPKSH7xscKhHoy1RubA9ycWcMUJLyMWUsTUgh8Y
         gxkCjPlPWErB6QwiQ0+/IWaa236L/Kb7zF4nLeEAAOxQ9GuC6eKS8AHSjCXLbJnd37JY
         HloA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716899521; x=1717504321;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RJz0ZlzWAoX1DsekGPlBTARTw94E21rzFJ4WFq7Pqbc=;
        b=dRlJkjS6qtshzPw3CGZSKqO9QU++Ls8ooUlg29f7UxB5S5g6PCZN8wZpmKaHiksxs/
         X5YQMchqGki5vB9sR3zb3vdp6OcjlNbsZ7xIwvasNR7U+PLwJAGFaE1TM7u84D2SflrX
         NlhsqZ4NjtLzRnXZCZTK/28Fah8CiQm0u/UZhNh0jKVNaORnGsys88W6tGZG1pSuzOO+
         ijKaVd0NSfhS0SmITz7SxoFQeGr1JSyaJjQPTO3a1AD8kQxhCBHon1gAxgpMRyM73Hqv
         fqHtH9SlfI7XtdHcHTOGCW0a8uG6W6aL/5mCSMUk57NvszREDxqkWMqAfbtgzYvUjMjP
         oR0w==
X-Forwarded-Encrypted: i=1; AJvYcCULEibOwhexnG3gFV31Qy3arUcSCD9X3U8fXaATnRGAhpRhRaN3p+MOtjnkZ0wLpKU8g7XcYt7Th22+n4B5jkWZMPyFb44JF2cldw==
X-Gm-Message-State: AOJu0Yysszk2AV8kzRMUZBu9W3raq3Mwu2fE6NS7ntrotQIYIBzg8kzH
	pr19KKKqlH5in/m4XWOCvQmbKdhiTiEXeX8PVHScvy3+IvF2xElW1wAVflaMqpo=
X-Google-Smtp-Source: AGHT+IGCVSDUDni7R8/hFHGkj4WdV8NjIh01e0oRCX7em4jaFWxs4+Z1xS7i0vRkAhtdpH+EgweCAA==
X-Received: by 2002:a2e:83d6:0:b0:2e7:1b8:7b77 with SMTP id 38308e7fff4ca-2e95b0c163cmr77435761fa.22.1716899521303;
        Tue, 28 May 2024 05:32:01 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c97:23a9:35bc:df2e:d894:2c76? ([2a00:f41:c97:23a9:35bc:df2e:d894:2c76])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bd0dc78sm22371461fa.71.2024.05.28.05.31.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 05:32:00 -0700 (PDT)
Message-ID: <36f22383-79a3-427e-bf17-35ce2e1dd620@linaro.org>
Date: Tue, 28 May 2024 14:31:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: msm8998: add HDMI GPIOs
To: Marc Gonzalez <mgonzalez@freebox.fr>,
 Bjorn Andersson <andersson@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: MSM <linux-arm-msm@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>
References: <8cc61db5-2920-4dd1-8132-5af434fb05b1@freebox.fr>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <8cc61db5-2920-4dd1-8132-5af434fb05b1@freebox.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

[...]

> +			hdmi_cec_default: hdmi-cec-default-state {
> +				pins = "gpio31";
> +				function = "hdmi_cec";
> +				drive-strength = <2>;
> +				bias-pull-up;
> +			};
> +
> +			hdmi_cec_sleep: hdmi-cec-sleep-state {
> +				pins = "gpio31";
> +				function = "hdmi_cec";
> +				drive-strength = <2>;
> +				bias-pull-up;
> +			};

It's super strange that both states are identical. Usually, the pull-up
is disabled and the GPIO is unmuxed (i.e. function = "gpio"). If that's
not the case for whatever reason, you can drop the sleep variants and
simply reference the leftover one from both pinctrl-0 and pinctrl-1.

Konrad

