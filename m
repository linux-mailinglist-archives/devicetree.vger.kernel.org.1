Return-Path: <devicetree+bounces-25354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69870813015
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:29:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EFA828314F
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551744B5A9;
	Thu, 14 Dec 2023 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ar4Wl2xb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A07D11A
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 04:28:49 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50c0f6b1015so9413039e87.3
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 04:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702556927; x=1703161727; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QNg5RdjgOpSpN2R15aV/ZbxDJpdIfp+yvD7sH7DN48I=;
        b=Ar4Wl2xbXkqQDenvF2eVSfekB2ktDiLU8CtDphCW/xIQPdxr9Bko6nQvFQuRdJlAtv
         pty/vCZ8Q2xYLpv4h59M0TRrB+qP0oMXcgeB6g2EcNY5FtgOetphN1Bb7kFLv/mRkaTQ
         lZdKo9t4khBXhqj+OgQxWLLAUvOrytCnm8k9jthpmD5//hhGN2949pg9nFdaVSOknPMc
         8Z9V0xCltfJPKgrWkGM5EDp3F8EMG63Gh+Di43TalVdWB9gonc3moPw3qSRqKfBLaKS0
         iZ1/W6PVSbLPA8L7GnokKp7qQwmKK3d7b1fGl3buFDu5bQnbCt9hlR0Ff1l2EC6qjwr9
         fI/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702556927; x=1703161727;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QNg5RdjgOpSpN2R15aV/ZbxDJpdIfp+yvD7sH7DN48I=;
        b=XUWEZQ9UIsRu8VCO5nhZIVjmb1rSWXJf4neN+Z5vX0kE1bidNF7y5r3JxDmOHQuEGt
         jybCmSEml+IgRRx0H3R7LmRIroGX33Obtc2QOtCyW9OR0cnwBspw2zw2dj2tOLzaN5CX
         jJpt+YMiVUoxqiIiUJ2zjKmf2vqS9kXcV9MCQarc1B/5Nk8x25DbjP+Po65Iw7Ru9dP4
         AU45n4Lv5DUH0IIWu6cm8klq8dIXA83w5aYIfxhHkm4QybZjlwvCq2BIt2mhrNveu+I8
         61TpqBZ/VyPfHLkvf98nu9myiiTLwzdfn4KXdxTfImm5YG/rpLT5mPyAlv7GthCJ1FQy
         i7UQ==
X-Gm-Message-State: AOJu0Yw34C/0NgkNvIy8LTl6OCzV8NHCdNLOj7HmTUUw4Mx0CIIGSzbq
	sw/XZRR8XTgGkPoUt3atERbggA==
X-Google-Smtp-Source: AGHT+IFBnIR+pUPYw6vCh+gevem5c9Q7apgAnqQZxO5JCfBwT9d/oQMgHgB0r0TYcBmu2AoPWRZFhA==
X-Received: by 2002:ac2:4909:0:b0:50b:e693:ee20 with SMTP id n9-20020ac24909000000b0050be693ee20mr3900428lfi.31.1702556927501;
        Thu, 14 Dec 2023 04:28:47 -0800 (PST)
Received: from [172.30.204.158] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k4-20020a05651210c400b0050bef21a012sm1871880lfg.191.2023.12.14.04.28.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 04:28:47 -0800 (PST)
Message-ID: <f0edad1d-0807-4588-8dd8-c16709913a7a@linaro.org>
Date: Thu, 14 Dec 2023 13:28:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc8180x: fix USB SS wakeup
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>
References: <20231214074319.11023-1-johan+linaro@kernel.org>
 <20231214074319.11023-4-johan+linaro@kernel.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231214074319.11023-4-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 12/14/23 08:43, Johan Hovold wrote:
> The USB SS PHY interrupt needs to be provided by the PDC interrupt
> controller in order to be able to wake the system up from low-power
> states.
> 
> Fixes: b080f53a8f44 ("arm64: dts: qcom: sc8180x: Add remoteprocs, wifi and usb nodes")
> Cc: stable@vger.kernel.org      # 6.5
> Cc: Vinod Koul <vkoul@kernel.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

