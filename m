Return-Path: <devicetree+bounces-16294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 572BA7EE367
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 15:56:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3FC01F24001
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:56:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0B3530F92;
	Thu, 16 Nov 2023 14:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TahFNGsg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77271182
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 06:56:05 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-507bd19eac8so1171919e87.0
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 06:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700146563; x=1700751363; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BOjtDTqTnf7Djty8sAXJwD9eQx6I0vPmvqRRWr4Mj8Q=;
        b=TahFNGsgu7GDPRFlLGHT8S1BKnpSxBlpbyKZeN6indXTpuZxp2RTYFgfogtjYgchfE
         ZhmpRFbQmHKG165hEYxvuHILMIOoCjfYTEyMigRY3/Dq2PJJ3EAJJZyd+CbOXYteTvFG
         Z+nSzn7L2yDysCPRUk1mnHTilNkpcm1qCidQHxpMfv8bFA3XhHKEPH0OlSnaUsYvGvvT
         mOZcc++ND5tFdTcQw3zOXlmhHVnYDkpEJqG1QLpa3ivhN4Ym+ZLF7s+0bpn/UlBX0JYo
         6Sd9KIcSY3u6W/K73bVapZKJa25AetzuuXi+HtTi4bXX722wqnBHRyuVoujcaibX0q2t
         8EVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700146563; x=1700751363;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BOjtDTqTnf7Djty8sAXJwD9eQx6I0vPmvqRRWr4Mj8Q=;
        b=xRL/jCYkP/nDEmaL+qPqbeehg+fl0S898SMFAjUsYaN6rTvsF1pdl40AOdURcSBrkV
         4FYxL0PqOm+91Xp6ADIFRgkcmz6rO29/dhnfpSzD0YPjg58C3Sk+OAIBoejXo+7/jbsO
         6702wiurTjn1jNZp7c+UvFdaQUxPmS79QlD909wuajXgY4wMaEs4ApKbEmOdePRdBINk
         tEHLQHDST/t7IC1Tqk6sLT+UIqtIXDbkbkhQprakH/6Cl+yFz2wazjr1kSvXJQR3CPbY
         gEy7+wC8i9Be/S01BkqVAQRDrjOrOdXw1r9luuHrpt2cI2mO2IlXbwIC6/USkfLPKM7b
         2IdQ==
X-Gm-Message-State: AOJu0YxxyMTkRv6/DViGl7ghlqF+5gLXW4Ps0Jj4QmnMqRUv6tnWpo5h
	gGu0rVcfcVuvbvINU+TO9Wq7/w==
X-Google-Smtp-Source: AGHT+IFDMYXqlEg+F4sWMGncBm04jorAZmXLffuWB4mSZRl9WUMnZsfBmoQ3Py0+VAOCD0Sg3r5ZvA==
X-Received: by 2002:ac2:54b9:0:b0:500:d4d9:25b5 with SMTP id w25-20020ac254b9000000b00500d4d925b5mr10759938lfk.56.1700146563658;
        Thu, 16 Nov 2023 06:56:03 -0800 (PST)
Received: from [172.30.204.128] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id y2-20020a199142000000b00509463003e7sm17278lfj.186.2023.11.16.06.56.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 06:56:02 -0800 (PST)
Message-ID: <15792113-c54d-404c-b686-cc7c75ff542e@linaro.org>
Date: Thu, 16 Nov 2023 15:56:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/11] remoteproc: qcom_q6v5_pas: Add SC7280 ADSP, CDSP
 & WPSS
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>, =?UTF-8?Q?Matti_Lehtim=C3=A4ki?=
 <matti.lehtimaki@gmail.com>, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231113-sc7280-remoteprocs-v2-0-e5c5fd5268a7@fairphone.com>
 <20231113-sc7280-remoteprocs-v2-6-e5c5fd5268a7@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231113-sc7280-remoteprocs-v2-6-e5c5fd5268a7@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/13/23 09:56, Luca Weiss wrote:
> Add support for the ADSP, CDSP and WPSS remoteprocs found on the SC7280
> SoC using the q6v5-pas driver.
> 
> This driver can be used on regular LA ("Linux Android") based releases,
> however the SC7280 ChromeOS devices need different driver support due to
> firmware differences.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

