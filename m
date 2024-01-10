Return-Path: <devicetree+bounces-31100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 711C8829F67
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 18:40:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C04A1F211B1
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 17:40:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E6284CB4E;
	Wed, 10 Jan 2024 17:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nqkkL4Rc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65636391
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 17:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2cce70ad1a3so51916261fa.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 09:40:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704908444; x=1705513244; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hh6Goy7NRtSRzQyxaJrI0RtgCTicSCtruZk0IoQJBRY=;
        b=nqkkL4RcRCH5ufNXbHWGnxSoi46EXvz3Jq65MvlJ1rvX3fliG5y/SWj7ez4mPYLGfH
         DDzG8KohbBUkqdX2KH+KSVYUSWV8rPUbS6gISFAuul7d7fuzHWiQUwkMSJ/OrUUCJVc2
         yivCWneWJQM1jWYM+34g+ijczbZcn9u8S5mXShHS6pmuaVqXB3xFyWU/Lmva11LuhIn5
         Q8c2jbT60eSc31nQa1pwqzgERbFr7e+Q8MN35+3iL5jBdKmVln5dNuSQE35KXRN/u7p9
         u8Yfzr4moganbFSKFIIGwHzpJkzdzeNnoVGjL+1Pk4aLT2oLGpqKkS8E2aDsEN4sctzL
         V+rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704908444; x=1705513244;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hh6Goy7NRtSRzQyxaJrI0RtgCTicSCtruZk0IoQJBRY=;
        b=fq4Mrqj7r16qbcYOGlp0i5gkDPoPp3k6ckLSNS0VYWDwPc2w9rBYviSh2tfV3NMfxz
         mwedxM9DFeW46gE1sHXxIg4hePioFYCvsz7d/8Rs25f+t9jaYsjH4DadZ+UeImu5IZ7I
         p3snIplYRRxzMlDnuh5GrU4yjGbXwApGvL3h0aDhNWcLCdJNmSEOKJI2y6xEiQB/iyzW
         Pq4GIL/83wb2uy0J9V/RzX+5o0J1f7J7r28SXYPZJP+Z1uJVOICu/XBDg9BDkvSJh6p9
         2KF7RtrdKU2Is4w/jldX0Mh6QPGsgIBQf2NcuHbjbkovg4QgXl5CxolxUiORNd/FVFvW
         kwZg==
X-Gm-Message-State: AOJu0YyAEIAYapVXJNx0+HYxXHLj74CCxS/RiHNC5udr6ly7WnNLpZ6b
	CJOp9j0+OdQ4X06XKhrd5kOUT7BKR8+jEQ==
X-Google-Smtp-Source: AGHT+IEYAF/qKxWaXqzKRy2E22Nw/2yDlQi3jF92SjU+pffbCOmE6KDgmi6npRBp4cYRZGyr+gEJkQ==
X-Received: by 2002:a05:6512:124b:b0:50e:7410:d5b0 with SMTP id fb11-20020a056512124b00b0050e7410d5b0mr731181lfb.28.1704908444428;
        Wed, 10 Jan 2024 09:40:44 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a27-20020a195f5b000000b0050e8cd014d7sm741726lfj.16.2024.01.10.09.40.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jan 2024 09:40:44 -0800 (PST)
Message-ID: <dd06a04a-ba02-40a8-b5f5-0457085c202b@linaro.org>
Date: Wed, 10 Jan 2024 18:40:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm7225-fairphone-fp4: Switch firmware
 ext to .mbn
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240110-fp4-mbn-v1-1-45e7e33b1834@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240110-fp4-mbn-v1-1-45e7e33b1834@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/10/24 16:21, Luca Weiss wrote:
> Specify the file name for the squashed/non-split firmware with the .mbn
> extension instead of the split .mdt. The kernel can load both but the
> squashed version is preferred in dts nowadays.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Thanks!

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

