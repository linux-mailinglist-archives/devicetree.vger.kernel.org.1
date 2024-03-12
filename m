Return-Path: <devicetree+bounces-50142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0875E879D08
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 21:39:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39ED31C218A7
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 20:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F96514291D;
	Tue, 12 Mar 2024 20:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lHeFOoCj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F7113B2BF
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 20:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710275964; cv=none; b=eZs48DxgQ115ftBiYhd8Ts25TfXj86w1VCILUNfpbuBR2sJ6eR7dJl0tuM2MuH6gQ6sUIQmdo+BhqVrKGyqHe2+g2dcIFmEJ7ueApLU5mAC08AE7ZolygzQuXRs2ssdinRTzVRicH1gZi8xGUgAmzz9YpnOYt1lWBTnF5tPrfjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710275964; c=relaxed/simple;
	bh=5dIIDioEedQVKeslk6sHdJ38vdna0ZniV+9gULNiGkw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BHGeuSX7sMYnTTLYgnVkjmsK7n5FgOj4kllhgm1tXWgV/QmTlWGuDOdTnrYESZ7ZOzK/5+Bt2ovxFe14TMPhJauIJJz80o1gT2NybOEa37FiCqntszCE5b5fKBpM7Ewuq/rOQKUIPVzHzgBHXyG9CqbgRnoxftV5sM2vfY5ados=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lHeFOoCj; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5135486cfccso5848993e87.0
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 13:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710275960; x=1710880760; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CMa9uy1xjyCYcVnS1D56e26rdhN3qgYq/HM1aZSyxxQ=;
        b=lHeFOoCjGC8/Tfqsq2br2WENzwrLFoVpP22rcFn6rXTxsmK40LPsDjvkbLsqTNLam+
         TA6lBccJGJ3g/sduCla++lLl/WOvYYGNLVU9JECtFFLWai6oo+xRiy5hpweAmz6F/+O7
         EjOgcz5y7Cma8sI8n2quE1MpTlLpH6SLeniwPPgRKi0ij53OYHZgkBo21MKsHSj4NPD9
         o0rBdH9Og0OVu/Ine7ydiTncXpgcZwhfy2/gnZDdFE1DaogQ4S3IHI5oLN549MnXet0T
         rVlAyqU3kzgKSiBwuRMiLMc/OO3un8kFIT9n9wbdvRxu+9KJlxl67IHE+627lYW50G7p
         KFOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710275961; x=1710880761;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CMa9uy1xjyCYcVnS1D56e26rdhN3qgYq/HM1aZSyxxQ=;
        b=iaA3OmQ9hv0PRslCMwRWcr0V6KfdFW1RDVxVDXLClW51kDDP3IFSJALs3ZWZy7Gn5P
         tUx5Mk88sZ8pSRVaD5eB9umWG8svM244CbjpxMYwilJkQ1GacBEtzdW9cQJKk6DQe5eO
         u0j1k+BK1U33kG/4Yefc5aKGtPuKvpCYmWjtWPJmLz2NL3CTd+3CD1pd3BrVO1XKQrXj
         Lfngp81Hkp8krEoRyGYb11dhy7sE89Ic1cVG3XP8LSknhEo5V6ov+UPHvb2PUr5XWOGh
         06QZnEU6hkGVv9tAYl57vlCk2VvbFLgo2JSmaqxVAahqV+/sMoB49/WyLorySFdIq8Hj
         Ek4g==
X-Forwarded-Encrypted: i=1; AJvYcCVcHl4QtOgjx5Tj1hRAN8bnUSWOMtKSPFENTfAfi6O7PxB0q0jGiKj2HgyhlG25+zd92SQeH2PEDPWWnxeufoLKl/P/v2wlUL4sXQ==
X-Gm-Message-State: AOJu0YxGyx4pyOyjfNzHccssi6TaP1TAZ6zdRQ+8nTawo7NvdlQm5u08
	fdWMFWXqAQASFs5jTGqe3JsvoYi8ry/50bEXx4Q5BOdBvfni1jHqY6/BDj5lf08=
X-Google-Smtp-Source: AGHT+IEFqnfYYAqbOkd1uofvkZfrQN9GSRLx/1bjUeXeGqTXRPEUXnzY5ruOC253oQHGieN3PO9JlA==
X-Received: by 2002:a05:6512:2f4:b0:513:2e60:a75b with SMTP id m20-20020a05651202f400b005132e60a75bmr7246874lfq.34.1710275960546;
        Tue, 12 Mar 2024 13:39:20 -0700 (PDT)
Received: from [172.30.204.193] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u14-20020a05651220ce00b00513a238039csm1426317lfr.287.2024.03.12.13.39.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 13:39:20 -0700 (PDT)
Message-ID: <a269a263-70fa-46a3-a7d1-31f369db4f05@linaro.org>
Date: Tue, 12 Mar 2024 21:39:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/6] media: qcom: camss: Add sc8280xp resources
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, hverkuil-cisco@xs4all.nl,
 laurent.pinchart@ideasonboard.com, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org,
 matti.lehtimaki@gmail.com, quic_grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240222-b4-camss-sc8280xp-v6-0-0e0e6a2f8962@linaro.org>
 <20240222-b4-camss-sc8280xp-v6-4-0e0e6a2f8962@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240222-b4-camss-sc8280xp-v6-4-0e0e6a2f8962@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/22/24 18:17, Bryan O'Donoghue wrote:
> This commit describes the hardware layout for the sc8280xp for the
> following hardware blocks:
> 
> - 4 x VFE, 4 RDI per VFE
> - 4 x VFE Lite, 4 RDI per VFE
> - 4 x CSID
> - 4 x CSID Lite
> - 4 x CSI PHY
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

