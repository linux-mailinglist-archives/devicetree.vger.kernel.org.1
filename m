Return-Path: <devicetree+bounces-33062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B159831E85
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 18:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E58FF1F2230A
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 17:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66F0D2D04B;
	Thu, 18 Jan 2024 17:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yW+3rUO0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA4D2D048
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 17:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705599440; cv=none; b=DrhVvBnCiDYkZQeq11JvCsEiKR02SQY41XUxqet8S9T1c3h4J8q/fjMtPxn3jNH0nbSWjR4QNsW5bttL+vpXAccO3vO23rEJSRFR71gJn5VwoLLZF2w95O5KUDJzpGjYQ/CLoSbTRIOaxoeqitlT/HZPVfss7hD1hnaqLq3MLnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705599440; c=relaxed/simple;
	bh=2jGDqLdUJOPCkNvqsu267cOv5QZ3G9DG8w19z/0/g3I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:From:Content-Type; b=JAwDpuRhpBtIp7XDQFCnnZD6eyaoUuWtTcEC0z4sqthUpvqnsH71/wC/vRAgLIulg+agSUeFJ1oOCeWiLmlc8gfdfwOVntDWAuQQXSgWYJzMDTkOIon4nrUXpZaOSmMfiQoWlieDKnaN+/LfsZg6QDMX6wYQNnsh7VwxHl3/Ir0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yW+3rUO0; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-50e67e37661so17516045e87.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 09:37:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705599435; x=1706204235; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2jGDqLdUJOPCkNvqsu267cOv5QZ3G9DG8w19z/0/g3I=;
        b=yW+3rUO0b/kWpUW8TmddzBoZD1sTIVyU15k2dRhlEG3741PdcGwmpfQrybYY8MlKcS
         hcMUEb5goyjlbcOBLbjAUJjHwvc46y2NL1iNmVLAIyk1Gq+IH0MQgp5K1BfRWIIlVsgv
         6ueu1fC9/Spwlo+5EOug9i2kNRVYh851Ai63xsgBhXmonhWgKrFRZs4rc80rfWKYhN4I
         qYP+MLwHR4da5pJi/zOQK79vulfklCitXASE3AnTFiebjy06r+aNf+9D0sHqdTYpSHz7
         h1iPRmI/XA2jWrsLXRjzDRV3TNYXvO0hrwHFoOy1rmy1zJR0IDsq3QZObW+y1e8Y0AoQ
         bMfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705599435; x=1706204235;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2jGDqLdUJOPCkNvqsu267cOv5QZ3G9DG8w19z/0/g3I=;
        b=T4BBpORM9pt5S2CRiaz5yjmhT4K8rqfJKxObpx6fWSI58E6ZRgHfTp5JhSVbzn+OxH
         +7fot9qwM8O27qMw+uk7nmH92SZZ5K/Wz+KbzD4qydFMc7ji0dKAj78dfB/Om0+9L8Mz
         HmYlHIdi2p9kP59RNr8lvxDB5xGd3YxxmhmQz2nqxXh5xP+UZhFAJA/KqkLmNjGHcdz2
         WHMAal93YsqTkTfDnFk+ITKJy1OOktfze6/nlPzMAs0eU8WClRiviJoazMAIasUcozgD
         TPBotJUBIyAH3z3TIoyf42eax/ZIpXwb8zm/s/y/YZByCWYVcyzfJY/N8y0+GfcyG2H8
         FFlQ==
X-Gm-Message-State: AOJu0Yx9jFvgLgp/NhCa/VZzbkrqtOM9xYs1JDHdR6WMCC/1ujKbUAi0
	tv7mS0wNNEDV8TiA4mmdbzh/yWHamL2sPC3bJN3OoEVkH05oXpotBrT8T6+kAVA=
X-Google-Smtp-Source: AGHT+IHl+sLsbQYRyuimEpAb8RPwn8Uqmdgm1jCaA7wDjJWzDskiqJTFj2MSm5Bac+koRPGeOlZT8w==
X-Received: by 2002:a05:6512:292:b0:50e:7f0c:7915 with SMTP id j18-20020a056512029200b0050e7f0c7915mr810591lfp.136.1705599435347;
        Thu, 18 Jan 2024 09:37:15 -0800 (PST)
Received: from [172.30.205.26] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z6-20020a19f706000000b0050e8d5504e1sm711831lfe.294.2024.01.18.09.37.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 09:37:14 -0800 (PST)
Message-ID: <9b854728-7080-4794-bcde-131788683992@linaro.org>
Date: Thu, 18 Jan 2024 18:37:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] soc: qcom: socinfo: rename PM2250 to PM4125
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20240114-pm2250-pm4125-rename-v1-0-71a0a103c3d5@linaro.org>
 <20240114-pm2250-pm4125-rename-v1-1-71a0a103c3d5@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240114-pm2250-pm4125-rename-v1-1-71a0a103c3d5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/14/24 18:42, Dmitry Baryshkov wrote:
> According to all the documentation there is no such thing as PM2250, it

According to some documentation, there is such a thing.. But the vast
majority of it does in fact call it PM4125. So I'm willing to bet that
the PM2250 was just a needless rename for RB1..

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

