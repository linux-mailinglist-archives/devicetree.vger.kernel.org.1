Return-Path: <devicetree+bounces-34973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2891883BE21
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 10:59:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D06FB282E81
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DB6E1C290;
	Thu, 25 Jan 2024 09:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ayPiKa1V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D61D1C69A
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 09:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706176743; cv=none; b=FaaLIfoaHg4sJnE6sONR2xsaY4uvlmHT5ysgyCLA4Tov0GvHcFewf1o+SLWpIl7GONmSKpbqZbH2VNZDGh7YN08IVVoE8YDCA4pM8TPxYTMU4PGuExWFbNVyzSPZHol+QFm0r1lmUQsew1hBLOz11roQkUgUtXxax3gpoWFbbxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706176743; c=relaxed/simple;
	bh=WKpvg0X+iL12WtuMds4/SdTYP/Rq0wCzwew5aiXY4jM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X8UdVPHdESkgHQL8aDhZInivaz3BFrUBfXM8gLSlNYab4ZWDHU2Gnr+5+Xs1T5WOOJ0SVvkIu4AB/f/vixYy+RqFyDhv3LBgoG6QlNeIJh1dTc5lFr8boKCIF9trEPfCAhxm0SgQjBLx5k3Ln2/B34sdgASX3iTA3wZINoVF1Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ayPiKa1V; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-68198aa2c7fso31448306d6.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 01:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706176740; x=1706781540; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=79PYbjK8bosV8v03uRxryBv/M1N0jqOVv+qRTvu/Lno=;
        b=ayPiKa1V9dKP6lRTLAZxRV4ljG22qpiUX3TjTSajZFcvf/0skpB5IAxbxFvBt0oWoA
         gW7bEcl682Xm4FXztOLFtpJGo1HfbBx52YT0cvYFJPyzZaZfZaIjkaJ/DGudMPeuF0ee
         BNrqR+xng1TlqL+cfAS81OvSs1KsaMJtvFKXYJUHRHoh5fkn7epeL1G/PH3sFtqfcC+s
         7Q9w9H89EMxLGlbml27qX21Dfc00yHu+j5/JLQthrui8itozHSCxpmJQaRj+4wLgtIWH
         hmVQL+1GAr/E+zq/RLIje03Qnw+VvivPB5T3KAMDtjqTEOOFNeyO15QZy/EAjAgX4tbL
         UsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706176740; x=1706781540;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=79PYbjK8bosV8v03uRxryBv/M1N0jqOVv+qRTvu/Lno=;
        b=siGzGfBMrXPuF2jzuEAWQp7GJJhaZKNtbnxk/Evc32INuAjcm5KIxddczjitw1tBaw
         BlhYfogkZS3EFvZj1XiYZiUpzzvNmccNlqej8j9WX1AwZkatmktKVFUp6ICJ6wq39Fu8
         VD1fVYHcPIWOn6J2yWIdRViFzHGihygygCkp00dNvvT4Pfv+t3dnju6ZGarOKrVooD2E
         BLA1gx8vwGPhmiRDyc2+wTuRuq4rctqWqt6ACiZr86XpPzUPpaDIf1kM060yGTSbeYO4
         wCJweHorpVLcAGZ7EJqMwMofSJCXQwxw1RczGDz+UdCQ6VqKyDsuOzJS/X5gjomeZ14v
         +1Yw==
X-Gm-Message-State: AOJu0YwZu9u5IPWZ6DaK1y0BWIr5OhzjzghemC3ebSUQVFqQ/bt5QNgm
	tIiScHjxQ0uTsHcGihtdvN5ZTCu/ETUgdexeyvzXiQEn8LqFX25p1oud+89F2/I=
X-Google-Smtp-Source: AGHT+IFX+WJUjKVyMoF7VIqz7lwHkgo+xeYgCH/keHCQa06QjpPB++UCo/heJp7KdhTg47KNUQpu+A==
X-Received: by 2002:a05:6214:d65:b0:683:6621:c006 with SMTP id 5-20020a0562140d6500b006836621c006mr828558qvs.81.1706176740540;
        Thu, 25 Jan 2024 01:59:00 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id qm17-20020a056214569100b006879b82e6f0sm375625qvb.38.2024.01.25.01.58.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 01:59:00 -0800 (PST)
Message-ID: <91c047da-aff7-4e31-9fd8-ef4c3ffef27f@linaro.org>
Date: Thu, 25 Jan 2024 10:58:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sm8550-qrd: correct WCD9385 TX port
 mapping
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: stable@vger.kernel.org
References: <20240124164505.293202-1-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240124164505.293202-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/24/24 17:45, Krzysztof Kozlowski wrote:
> WCD9385 audio codec TX port mapping was copied form HDK8450, but in fact
> it is offset by one.  Correct it to fix recording via analogue
> microphones.
> 
> Cc: <stable@vger.kernel.org>
> Fixes: 83fae950c992 ("arm64: dts: qcom: sm8550-qrd: add WCD9385 audio-codec")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

That matches what I believe to be the corresponding part in the DT!

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

