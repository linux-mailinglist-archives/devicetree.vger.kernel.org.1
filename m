Return-Path: <devicetree+bounces-34352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AEF839789
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:21:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9117E1F239DD
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 18:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0693160EE4;
	Tue, 23 Jan 2024 18:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bLW1xaQo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D34361674
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 18:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706034103; cv=none; b=db4yiheiKofj9k2AHQ0zmjbKb0s/nQ0Cdn27fPsD/F3cSbbdog5kPD4uiY1UaIVcr645VVEZvidrC0MPJdW2L8P4Heu4reCZbLXNLM4P0s2JzErbtYOs1Ru/n8rIEGdOn575LXDJdcfCiIAQxn+XJX+bGCWIMqtCCZTnFa9uhPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706034103; c=relaxed/simple;
	bh=+jJX13JiWn0WzFDzsVHtUDjDS9VTJkHARiguvgQ8QDo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CnrxQCmTYy/xOyGyLExLkBGeaoZCUuSVEu8OwtCb/FHzbzouvefjEDsZb7WfUX1QsfcW5u2Y7x6PlYLM7aLS1aGs5pXHprhKMZ4IWQDNDjtWMF4FN0FSj1bPVr2gU4YP7a4vNdFktdwAw3AzCmEx5Xwdowo5TWZNQlU1N1D3qxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bLW1xaQo; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-467e862de61so1095198137.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 10:21:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706034101; x=1706638901; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DEJHyFuaYKCgsakM/zGUCeuxpM0wfrr43AifuOuveRQ=;
        b=bLW1xaQoVWTub4lXwMi/1iVHHZG6Kp9OUBQHBlfjIYC7CNdx+s96dSLk+KSIPTb9x4
         l9zKLeBd9L5EE7eS5lXf5pj2OXRRecSX3wnCbymt4zAfL58bvIb4FW16AsjMb0xJY8FZ
         /rBGKW4qQZKPm89QzGqFywcglhuV6Hwj9t3lSAvcMRYFw4wmhLvQS0dl8kyAjkgHG/Wm
         /wBxRaPsSJhn3OvAdwD/Owo4jPnxL5RuyBOgZ8f/RsIeH9PSgQmFdoMBHafydiYucBU0
         SSktjzXlIGyp/tg0v0wMhnHcqpNzfb+i4IpYksHZd+Mt62Ber851s0lXex057C5Hpi8l
         cYNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706034101; x=1706638901;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DEJHyFuaYKCgsakM/zGUCeuxpM0wfrr43AifuOuveRQ=;
        b=Dh99o7dUoU/yiRed+/CZo538rCmb7sQ9K0z2hQlL1xRsn4nHTGqq0zFP4nNiE/dq4R
         L9+6PDAueV4Zi14zhH2FcCbedKRrd2PZpF9r7SWo1LZWFEAPLsjkU7wwB/6iGhG45Yqi
         DQ50CrmyjTSfKUmx3vA83cXBNBPk+GOIY28+Vopr42HZU52oMth3Oxq2WqUp58xt029b
         F4gfvAXXrHFiyMIet93XZ//qd6WyLNB/P2itbl5QempAlp5+vynYAODOfr94bbIJcRLt
         IISxUtaILRFWiFiyGrc6s6MeH+0J/5ESp5OS39jNz2c7w7IN+kANMUWlbVvF5EIlh+WK
         RtVw==
X-Gm-Message-State: AOJu0YyzZhq8c5pDx12YC5jSNk7j9oULvxO5BOS56+1UfbOvTHhxQlD+
	X4/yH8NGYz7Aj2D0vvfk27/IY4QtnQqd8tJI4D1V3H37c8nwrF1lBivZEQbU2FU=
X-Google-Smtp-Source: AGHT+IHgo1cxS5gMB1wzoJDxpaZ8UCxenKbd5dQSnfzyIDTR8Gr5PWMjLlrYVwXnkusIDprEHbbT2Q==
X-Received: by 2002:a67:e953:0:b0:46a:fdd8:2502 with SMTP id p19-20020a67e953000000b0046afdd82502mr625006vso.17.1706034101446;
        Tue, 23 Jan 2024 10:21:41 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id 36-20020a9f22a7000000b007ce1febd008sm1658773uan.34.2024.01.23.10.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 10:21:41 -0800 (PST)
Message-ID: <77da8aef-f480-4b6f-8482-fc5d2a6f2738@linaro.org>
Date: Tue, 23 Jan 2024 19:21:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/11] arm64: dts: qcom: x1e80100-qcp: Fix supplies for
 LDOs 3E and 2J
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
 <20240123-x1e80100-dts-missing-nodes-v4-11-072dc2f5c153@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240123-x1e80100-dts-missing-nodes-v4-11-072dc2f5c153@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/23/24 12:01, Abel Vesa wrote:
> The LDOs 3E and 2J are actually supplied by SMPS 5J. Fix accordingly.
> 
> Fixes: af16b00578a7 ("arm64: dts: qcom: Add base X1E80100 dtsi and the QCP dts")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

