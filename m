Return-Path: <devicetree+bounces-18100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA2A7F5171
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 21:21:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2699CB20C31
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 20:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE21C58114;
	Wed, 22 Nov 2023 20:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k+h9GJUD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BE2B1B5
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 12:21:01 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-507a98517f3so167913e87.0
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 12:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700684460; x=1701289260; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ga6DHD8tx1x1pLsmxg1KBcXT7AH9Qf7vXNZRtF9xmNs=;
        b=k+h9GJUDo8wLC+t4ob8PzV8k5NasaEANs6rdKao8S1staFBWuKbjBlNwx5p+Mxqr2e
         +auwayeVXsIVe6Kwmu3jC4J9GC80L8pBUxN5b/XmrWvmjfUsRRVFerm/Y9J1jTaOawl2
         K/zLS2SUbYPc6xSvPPzYQAygCJKkEdf7q58UB3GNhzU/6ata3m8BtugKTn4tgsqilasI
         8NgeETL5LSIbzvKMoHZt9YaOLTTvG44bGZjS1qXwV8aeQ70Xdi4KaapLtPC+x6E5h47W
         53JJcyGMfWjocDieA0u+BG2CTJvnHAD4/6LEAkdPI/gQKo7Tg3CxTO8T8z8eMaXN3LUH
         xn8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700684460; x=1701289260;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ga6DHD8tx1x1pLsmxg1KBcXT7AH9Qf7vXNZRtF9xmNs=;
        b=urK18BG/8gfkWoHMc2Cf6vghyfi0LHELR7pFIplXnaFSMO71GqctIiN+20Lt9kR9Fm
         4ia0WWNHyfw086IpXHx+4MLEHoJE//4Xevay+Jny1QPinhuro69KySoNb0TsrJXFJAXn
         R/t3r8TK4EblzRA4pMcrKVrTUzE3jHmHrHaSZZfBjs74BcGmFal/nP2BjCP3g2BpbCBT
         n9seG79/AqBIxyaoWB0W86M6cJDss/sUEYQyHAUroB89b3nvogf08Gdcrl90nogAn9Vt
         9/oLwx0VrarCLfUR1e+2UqEujLhq2tWold4O6HVl5UVxxY0xjPdA4HlQvY3NmWAObdD5
         0c6Q==
X-Gm-Message-State: AOJu0YxzUlIr6mG9x45RBwYjqDQKY1oJyxj6gedS1ws3C4g9H5yAzRZ3
	bjdnPtAJ76pDu+27HVTQt9YR8FYw4SO1p69GUj06tQ5/
X-Google-Smtp-Source: AGHT+IEc9mJl9mTCVwaSAeiMnvagrqFfsVeSKHne7giqPH5q83K+s9vNjJPuseV4FAYZtneshFP7Mw==
X-Received: by 2002:a05:6512:1256:b0:507:96c7:eb1a with SMTP id fb22-20020a056512125600b0050796c7eb1amr3411303lfb.54.1700684459628;
        Wed, 22 Nov 2023 12:20:59 -0800 (PST)
Received: from [172.30.204.74] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d24-20020a056512369800b005091314185asm1952576lfs.285.2023.11.22.12.20.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 12:20:59 -0800 (PST)
Message-ID: <1f643ec4-2f55-4fe3-8d66-a47241c25619@linaro.org>
Date: Wed, 22 Nov 2023 21:20:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/9] clk: qcom: add NSS clock Controller driver for
 Qualcomm IPQ5332
Content-Language: en-US
To: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20231121-ipq5332-nsscc-v2-0-a7ff61beab72@quicinc.com>
 <20231121-ipq5332-nsscc-v2-7-a7ff61beab72@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231121-ipq5332-nsscc-v2-7-a7ff61beab72@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/21/23 15:30, Kathiravan Thirumoorthy wrote:
> Add Networking Sub System Clock Controller(NSSCC) driver for Qualcomm
> IPQ5332 based devices.
> 
> Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
> ---
LGTM except a single nit

> +MODULE_DESCRIPTION("QTI NSS_CC MIAMI Driver");

Konrad

