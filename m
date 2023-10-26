Return-Path: <devicetree+bounces-12261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAC47D8920
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:46:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E1019B20F2D
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 061253C073;
	Thu, 26 Oct 2023 19:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WFz+R3+i"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3BBC3B786
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 19:46:39 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDA0A1B1
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:46:37 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-507a5f2193bso1463539e87.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698349596; x=1698954396; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jowQ11rUSpjVGyVsG2uzn3kgeh+2aiSTzmMO92O6Apw=;
        b=WFz+R3+i2HwpbhhtQ5TGU2kyH2vrdkoAU5KjG6FBfp3eJQ7upmS20eHynyuUa6p4wN
         4RGoqHYHhGZ5IdLEdG++E7uC7GEXnKNbnNkE436Zuq/CZHRqJhXAhfPLpTDPieguiVSW
         BWsUM2XnPMvwzyOFuCOlVLyUIND8TJlgH1mNygl2CtnhMkHpbVH5oNWU1qz9gk1zyPtE
         WwWo9YYQbdiVoSmJtnIdJcN3tfFD5sQpEeZtETPgCPTmJB4sPtBCyAGdyM7tHDhNvL6x
         5fnTWFnXPz2mw7T4TTHAbZ0Y0+PGVT4o3dc4Z65d4ScmiKgN6Jcz8iosxgc0fSP4ngnh
         4bTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698349596; x=1698954396;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jowQ11rUSpjVGyVsG2uzn3kgeh+2aiSTzmMO92O6Apw=;
        b=w9Y6WwX33gPk+47sK/0T5D3NYzKPSTPNACDtIFEvmUsagXA06Zwog5oMbsG+YTY9/H
         68fy5oxW+7vWtYxPaM1LMQqdDcCoFvtEMj5ZQIqapCo1GZ471BUoXN07dErFi9LzLbMO
         ev97re/7LxaWsL+zn5RMLip8CufkvAPUk4JW1jPRFE1ev0gNw41SpIkslkC2+xJsUwFB
         HpkNs1Oi1vXxHZrSFN2ZaP6cGaUy1vgPycY7R4NjsKF+WiEnkmC6o1r5j6pgswUJF3LL
         zWTugSKYZ2OzUGYLyT+AEmrDGPiPhv0Caysgbwdlv8Hx4PhQxAsYefga8mG9I9TjZsb+
         AirA==
X-Gm-Message-State: AOJu0Yxl9Ncv03Vv38awZ1YrmiZ0PLcDE65UzK/43ZysT0btNPkDZSxS
	o7GaoYGRm9NefV9+zE6xomI+YA==
X-Google-Smtp-Source: AGHT+IEAXIVB5mbCR7PclkPeND1uvH3i5XJyIYmeyAfsCHXbf4KIgbyJXZJAdtdgFvw2zUI9zMphKg==
X-Received: by 2002:ac2:5ecd:0:b0:507:96fd:e4a9 with SMTP id d13-20020ac25ecd000000b0050796fde4a9mr220274lfq.29.1698349596178;
        Thu, 26 Oct 2023 12:46:36 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id s16-20020a056512315000b00507b1b8cef8sm3118728lfi.253.2023.10.26.12.46.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 12:46:35 -0700 (PDT)
Message-ID: <aeaabcc9-0a7b-4325-851a-09383160ad0d@linaro.org>
Date: Thu, 26 Oct 2023 21:46:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: Add USB3 and PHY support on
 SDX75
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, dmitry.baryshkov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1696327472-21776-1-git-send-email-quic_rohiagar@quicinc.com>
 <1696327472-21776-3-git-send-email-quic_rohiagar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1696327472-21776-3-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/3/23 12:04, Rohit Agarwal wrote:
> Add devicetree nodes for enabling USB3 controller, Qcom QMP PHY and
> HS PHY on SDX75.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

