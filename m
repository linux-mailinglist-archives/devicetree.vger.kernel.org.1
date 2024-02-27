Return-Path: <devicetree+bounces-46233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D044C868925
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 07:48:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85B602849C1
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 06:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0320A537E1;
	Tue, 27 Feb 2024 06:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fQKh2aru"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DFC537E0
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 06:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709016473; cv=none; b=GhiSOuDYxDmnWNhM77oJK3UIwEi75ic7seq4Utd3HqtO5RgZ0qIi9lau922PHebY9+a8IHJFYIrVMV047Xl4huvo23r4ey+DKRRdQ5Hlv3ZrX5/z5svT5oX8sX1BkuWq/Rsg9OG1bBC5oZZr4Q6MSVcgQODGwjQMHwFqex2Dfu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709016473; c=relaxed/simple;
	bh=zh/ZeKxU1DhZXNKMxFvd/asKKXkkqRvcXqdDyyrUWOU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P+yqCt2onCmNAOtpni23f6CiQHJ0jy0z05CPiwrgB6II6gWlC5qKR6EUgV4LnmhYbpg8eeDVvS/vrd7rNOxnLr9yo8wf2q5zjFg+FdDRqdGAk85954l2ebPLkBelHCR71DIneSn5BgW58gfaf68zEoRbiptPa5hhSHwA010Rl+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fQKh2aru; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a3d5e77cfbeso685978666b.0
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 22:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709016470; x=1709621270; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=7nssIpRRphn17uy+uI6YaEKJyRIuDfWbdZZbwHXZRRs=;
        b=fQKh2arucOfpOmdcM5N9+3Z7jSwTHGIAZtBD+lttFw4CuxwT3h3d+gymPGR2NoIUU0
         WpleXlG5nZttFcxTE1tPkqBnyuAHp3r0ARCo5+MECyTvBlMD6Mn28A36nxcfH4/Aiac7
         Xr43woeRtCM4rRydJf+oa4VfX9LCaI7XQ4fmOV+riw8CqkAwjJshiPNLBEGqYacnT9i+
         H3u4eBraUpnY/GPOhNq2QVCP3vSChW2jTd1L0HtUOCrv34arlQoAl1Eyz85SIBBkH4tV
         SqcA/DM247ccqDluFYCzPQ6IdQoaKJVStzdtUau57IZjxuy5borByyE0cBlcLlKBAW4g
         gtDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709016470; x=1709621270;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7nssIpRRphn17uy+uI6YaEKJyRIuDfWbdZZbwHXZRRs=;
        b=N/XAapLaR0DMC4sbvn5uBPFP5Ki+8rbWzfJ6tLO4y3bj6mEDPioGdgCpb1tRiqUARL
         UCXN2JIRobbwoYWUsgUt1WvA/OVNc6dyJjsyxd9JPih9yGvM/xqN0qeNYVDNy59eQs1y
         WdvvuB4aV7Tbu69c1Ah8yjW618FC52/5T+ekeyuPPWY2RoISKxHsTk3v1wSCOQb1HkZ1
         hTvHLrY0SjroeFTNhTSmKN6lHphVfwe4h4vvcqZOVNIIX7792jEMdV2+n4/7cLCm8ehy
         aUjkSZpSLUAgPflfbyY9mVS5mpNCLwkxWZK1E91cQ5r7jlo8LZChpKQeJiphalOity3Z
         hQBw==
X-Forwarded-Encrypted: i=1; AJvYcCVYQ0BxA+9ZlvdrVHfNcpr+VS8jyhZ92EfdklFxN1nSgDOJghx7APzZa3hl0Fd4Yx+hojALgNF3IdJ1WiFl2HhosGdBw9uDCq0ZTQ==
X-Gm-Message-State: AOJu0YzrE6fjJg7/3jJGC4Q4PHWxaD65S6FfO6x0n/GwWtWcdpdRzL3z
	2Ud9kQKp5+YjNikJxYXW+mh6Tb3YrqDTx0QMu/29aDO0IcpuotZBzRS0uGK+N40=
X-Google-Smtp-Source: AGHT+IHDqK4p4sOE1lo2IxPL8PumUx+HSZhFJcXPVtrDPs2NnIYvrhU9vo/erHaznd89UtmwaQrPwg==
X-Received: by 2002:a17:906:84f:b0:a3f:50f0:7a0a with SMTP id f15-20020a170906084f00b00a3f50f07a0amr7439062ejd.20.1709016469778;
        Mon, 26 Feb 2024 22:47:49 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id q24-20020a1709060e5800b00a4335edcfd1sm447578eji.189.2024.02.26.22.47.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 22:47:49 -0800 (PST)
Message-ID: <bae300c3-1d5c-4bd6-b62e-77b7027dcaed@linaro.org>
Date: Tue, 27 Feb 2024 07:47:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: msm8953-lenovo-kuntao: Add
 initial device tree
To: Raihan Ahamed <raihan1999ahamed@gmail.com>,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Kees Cook <keescook@chromium.org>,
 Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli"
 <gpiccoli@igalia.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20240226055615.79195-1-raihan1999ahamed@gmail.com>
 <20240226195516.174737-1-raihan1999ahamed@gmail.com>
 <20240226195516.174737-2-raihan1999ahamed@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240226195516.174737-2-raihan1999ahamed@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/02/2024 20:54, Raihan Ahamed wrote:
> Lenovo P2 is a handset using the MSM8953 SoC released in 2016
> 
> Add a device tree with initial support for:
> 
> - GPIO keys
> - SDHCI (internal and external storage)
> - USB Device Mode
> - WCNSS (WiFi/BT)
> - Regulators
> 
> Acked-by: Rob Herring <robh+dt@kernel.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

No, these did not happen!

Best regards,
Krzysztof


