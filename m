Return-Path: <devicetree+bounces-64068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F9B8B7C52
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 17:56:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C575F1C2253D
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 15:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E318517BB06;
	Tue, 30 Apr 2024 15:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="sqCP3/Zj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4075176FA3
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 15:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714492420; cv=none; b=p/ig2oHgIyMG5Dbbqe6cg1E5176LCsbE6IIkE+ege39Gkwj/kR+dOC9fxiGCLCcXUZ661U/SSnRWAQH6D6na864Lsf6zRlSFMstSf8T+el2X1OJAMBvc3ZgTr9dPKV9TZucqHiLLhuF2MGD+LVPVn9B6wFiHPAhULg7B5tGA4qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714492420; c=relaxed/simple;
	bh=g3bfRA7U/QqEPrJEloB7xAetG39gwY6KVV6eep+Zvp8=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=RHfy8cWt6Z2glvRi7c5dK4p+dA5z7WHAAodjK7kk7tEfRu+UTFjqxvaJSf5Eqeg+5NtwVnrrdSbAoPrNmtvAFAiuXDhZ4SawNdKTjvO2mbiybDtASNhmakU83Gp3FNg2MS7wcPbpBccn/08VWEIqkBXo6q+FzJ9B/+wTpdimo1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=sqCP3/Zj; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2db101c11beso68223401fa.0
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 08:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1714492416; x=1715097216; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qmiHE+A1rYMl/poK6E7NfydT5sKsdtRu2djmiPuGhh0=;
        b=sqCP3/Zj69GY2AJTJaHJFDyiCwD0vnPPOPi2iqoAJQay/vT8uDV8l+FsaF8OOZUVEb
         MgAqupOWP5EnQ298puUAEEFyuLNyhY1A5vj8NdF0v0xg6GGivJ7W6zZ/sUDaNbQkxp6/
         P1zJzKGleSj2377/+Dl7Z440x2QgBbuseoWJvJIc1JmeAeTkgNzn7djUMBoaTcIzu0y+
         Wpm1+SfWG5cSpcqBbUUCxdvQ6PzaNsnXWXdAPuBlzQmZp6ufqEE/T934ryoByx7JJAC6
         UGL5yHe/roH+gqtxTXDchVeqy2rRqCBCCrC0xLlL7WqBdtsWDMNqXFpXC7JiShzgb+Hg
         QwUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714492416; x=1715097216;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qmiHE+A1rYMl/poK6E7NfydT5sKsdtRu2djmiPuGhh0=;
        b=pCya0K9ty+2TjN3xVkUjtS85IVTun8CkBZf2QGRuvXJEciN/uHUZYKFZaZmfBNUVHf
         hGIgOKlpzraMpt8vZqEpluOpfJlaiMockFUin+bPM11CBpDWhIZFbBRfRP0PiH+33FYu
         OgH2+LY+kBjj5sVUdjMxP6y/t/4qE0OXKK/JcihLAEpkYHu5cR3kOfOTg9xbnxQoBUg3
         V9Rz41hRayLg4Yr77tSzCq3LpTBVAhCB7ll/avGSZHNxf4TFmGulgZuGCmXbii8cZdGv
         1l85xjJTYsVvVmf7APpcMbhUyBcNmDjQ+XyTU2wxhnM5M79p52v+xyevxKaP+54lk0ga
         qWEA==
X-Forwarded-Encrypted: i=1; AJvYcCWz3IaelPJdrevM1JaqZPnOa4cM53kPrz6r9PJiZtPhvxKv5trWeI1aGxcwG7+LhakCYlVtuVeDDIoVnTk+LlQh8IEcfyWrJtv06A==
X-Gm-Message-State: AOJu0Yy5zUQQO3vJjgNVjGMEDmylT15mCfF9GLF2d8SWL4gW7ouCahmh
	nkFU6pePXTHA4tuBhas2PDp9Z3AXycoES3+WIoG0MWypIy+rSZOdHVwQ2ut2JrI=
X-Google-Smtp-Source: AGHT+IH2DSKry0r2bE7SYkhlatHEsONxFyFzydt6Lgqb9SqPkBKBoVe4wlWqu6s+QWboiocgXA3/YQ==
X-Received: by 2002:a2e:7c03:0:b0:2d8:3fbb:df69 with SMTP id x3-20020a2e7c03000000b002d83fbbdf69mr74105ljc.11.1714492415792;
        Tue, 30 Apr 2024 08:53:35 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id fl23-20020a05600c0b9700b0041bc41287cesm14150365wmb.16.2024.04.30.08.53.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Apr 2024 08:53:35 -0700 (PDT)
Message-ID: <b26195eb-a040-4b8d-a968-4d01b20bd14f@freebox.fr>
Date: Tue, 30 Apr 2024 17:53:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/3] Add support for qcom msm8998-venus (HW vdec /
 venc)
From: Marc Gonzalez <mgonzalez@freebox.fr>
To: Bjorn Andersson <andersson@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <2b21b160-a530-486a-9404-c5bf8863ffed@freebox.fr>
Content-Language: en-US
In-Reply-To: <2b21b160-a530-486a-9404-c5bf8863ffed@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Superseded by
Message-ID: <ff646f97-68e3-4fef-9b56-2bd98f0cbe7d@freebox.fr>
Subject: [PATCH v2 0/3] Add support for qcom msm8998-venus (HW vdec / venc)
Date: Tue, 30 Apr 2024 17:28:46 +0200


On 29/04/2024 18:14, Marc Gonzalez wrote:

> Nothing to declare.
> 
> Marc Gonzalez (3):
>   dt-bindings: media: add qcom,msm8998-venus
>   arm64: dts: qcom: msm8998: add venus node
>   media: venus: add MSM8998 support
> 
>  Documentation/devicetree/bindings/media/qcom,msm8998-venus.yaml | 155 ++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/msm8998.dtsi                           |  48 +++++++++
>  drivers/media/platform/qcom/venus/core.c                        |  42 ++++++++
>  3 files changed, 245 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/qcom,msm8998-venus.yaml


