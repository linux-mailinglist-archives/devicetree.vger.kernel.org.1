Return-Path: <devicetree+bounces-10563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 846F07D1EAE
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 19:40:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4840B281C14
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 17:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B2FD1A720;
	Sat, 21 Oct 2023 17:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="voYWahPy"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F0EFBFF
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 17:40:52 +0000 (UTC)
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 101AC124
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:40:46 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-32d81864e3fso1251276f8f.2
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697910044; x=1698514844; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YzRhsF4sW4AvdfvU56Au9DAitO9ZxYOt0TU6tMD+FLI=;
        b=voYWahPyLdBiOdLvqaXYKBN3PHSPBaoLMC/8WUzQqJNz5l5VqDlEvVJE1U3W6IjB1+
         gohQyoHgeYOhf+MS6e4c+3ND8N3dQE12ZnfTHWofJIi0epaQvjmrMkdPO8S82M1exwzz
         ghMFtl8hYTHNK6MNOkUbGCw1UpYVtf/4OzW/0JGD2T0mETNqPWmZAhFweYxrHPatUvOn
         8hG8MYn0mEtbEcIYyL+nzLOkyi3eb+CCIhdlkaionz/9q2VBHJqWuQ7iRTixQ6h8OKQi
         wX3G7G6YJ0OZdPo3X2b6qlzy8U5E3x2r0d+VPg7QEVNtyX3Vwkq5NYqjn79t1YRyS3z4
         onSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697910044; x=1698514844;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YzRhsF4sW4AvdfvU56Au9DAitO9ZxYOt0TU6tMD+FLI=;
        b=t0TV5nDIjujxkmtOABiBO+DAS0LCiBRxVs26XOAqmMkEyK96KXPrAIlsMp48tEJvb/
         O0zRLxE1PkIIANJTtY6ODXSusglbw9u7ejLE/fK249kbBS77N99w5IA2Rv2n+I3pqqvN
         sUb8EF11Dex016uUjJlvmm5m98T7r+O7spViKDiWK6pbTb/5MewDtaxE7+ylwfkex3hU
         ZBLCelS/h/23YpCM0lPvTF3gM5n8AJtajYRT0SfpxNtQMWJD9U7CiZKcsljxtyiP/U82
         t61F1Y/pvfJ7lcI1wLhH3zS+EPPfaIeoMs5fsv19TpQ+AF/jaYjYjQ1dCjkFvpELyrbP
         1TPw==
X-Gm-Message-State: AOJu0YxfYEDKtFC9fVz6B6/NuyT9j+Qn6BPwYSi9WpjhSS2V+yl6YolD
	WAmKop4M0zriFUqIoO9M00AC0g==
X-Google-Smtp-Source: AGHT+IGsCYeZnIKvQGD3fY3impqW8jzIRcM8ZcHOmFTUtDFPwTnoIpLIdfYpmP/bSacq+jJkahvJgg==
X-Received: by 2002:a05:6000:704:b0:32d:984e:97b2 with SMTP id bs4-20020a056000070400b0032d984e97b2mr4615806wrb.46.1697910044508;
        Sat, 21 Oct 2023 10:40:44 -0700 (PDT)
Received: from [10.66.66.3] (9.ip-51-91-159.eu. [51.91.159.9])
        by smtp.gmail.com with ESMTPSA id i1-20020a05600011c100b0032dcb08bf94sm4089435wrx.60.2023.10.21.10.40.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Oct 2023 10:40:44 -0700 (PDT)
Message-ID: <20f48d75-da68-4ba5-aaeb-d9ee12df7e15@linaro.org>
Date: Sat, 21 Oct 2023 19:40:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ASoC: qcom: Add support for WSA2 LPASS
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Banajit Goswami <bgoswami@quicinc.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231019153541.49753-1-krzysztof.kozlowski@linaro.org>
 <20231019153541.49753-2-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231019153541.49753-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/19/23 17:35, Krzysztof Kozlowski wrote:
> Add support for Qualcomm WSA2 LPASS (Low Power Audio SubSystem) audio
> ports to several Qualcomm ADSP drivers: Q6APM LPASS DAIs, Q6DSP LPASS
> ports and shared Q6DSP Soundwire code.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Wouldn't

sound/soc/qcom/qdsp6/q6afe.c
sound/soc/qcom/qdsp6/q6routing.c
sound/soc/qcom/qdsp6/q6afe-dai.c

also require updates?

Konrad

