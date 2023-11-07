Return-Path: <devicetree+bounces-14449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AAA7E4B0D
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 22:43:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E31BA28148E
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 21:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E9FA2F846;
	Tue,  7 Nov 2023 21:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tC06FUe8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278432F842
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 21:43:12 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64FB510E2
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 13:43:11 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c51682fddeso1453031fa.1
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 13:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699393389; x=1699998189; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/AXlSZgo6Ub17duhdLAffFaCrkSr2KsSchaKezTprak=;
        b=tC06FUe8Ib+cX2F52toMEsqZ373ILnVeNLBTwu2PD63fnwJzM357XmnG1zODq0skTU
         lO/wzSOqREUJp3fq/4x6/pQ8F50biKKAy86LUhcBUJ8LhKmRALlZlSD2j5bVFHFOvrRr
         0ql/cRUPpwF6ExGg9f8d8ZrMIYDg2lvEsq+dq3SaakzCNkxWABHOet4sIVyF0NluP19I
         lCSxIaYpgzmZUUpzrgBpVPC1ekyKxsgKDp3U49JwN2OkGrnaCjuE9Hc5pQbIYdrajMDD
         d3XbHprzZW2EW35gxQWCiKlJ3K5gzIIItGpFt5VImf3bihRV2f+yxOvDXyoU2HGvHmlH
         seAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699393389; x=1699998189;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/AXlSZgo6Ub17duhdLAffFaCrkSr2KsSchaKezTprak=;
        b=HQqpwq9UOJh0oLRKdisL/HwppQ2cJvDbcq38sX3qPrisxttpg7UmrM3AhnlnG4mhQS
         +SmqZrxJT5CvJ3irvfzrx3XV7txRWoKt2bUXYyQpjA1ybMULuyNrXxeZB8fHCJE2tBwm
         yaUC9IitMz0ei8GTklzHvH7mfpooUvzuNsW6+kVrGmgQFWsFcvDmF+pHjPmespfrCLco
         uvDd+cRobWBGsH3lnwCmmmkavbcySVxPgaWri2j+FKGwvqfNToiaEOMbnKJom4iXRDhD
         5ej1eRUMW6C3WYObUna+McplyYB9AtS48nyK+soswly+sIhMWSsX/cArEygxxoem+EpH
         BOZA==
X-Gm-Message-State: AOJu0YyZrYHShjDKJy1FIXHcV1+TKD7H3fK1uwjgxTljsY2kSyf8c5Mn
	CE81LDV0jSo2qgtRffdPZqSjOA==
X-Google-Smtp-Source: AGHT+IHbFHwp/wiPt3tnJrzJHbNIh/1ZtBr0DHDmTnDnIKj7SfbwVlpDFFm25GM2jJqAisEvWw6Lcw==
X-Received: by 2002:a05:6512:952:b0:507:973f:a7dd with SMTP id u18-20020a056512095200b00507973fa7ddmr1203123lft.26.1699393389665;
        Tue, 07 Nov 2023 13:43:09 -0800 (PST)
Received: from [172.30.205.109] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k11-20020ac2456b000000b00509366f4f7esm460879lfm.121.2023.11.07.13.43.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 13:43:09 -0800 (PST)
Message-ID: <ff8532ca-fe74-4f52-bab9-b14f6a4599b1@linaro.org>
Date: Tue, 7 Nov 2023 22:43:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] media: qcom: camss: csiphy-3ph: Add Gen2 v1.1
 two-phase MIPI CSI-2 DPHY init
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
References: <20231105-b4-camss-sc8280xp-v3-0-4b3c372ff0f4@linaro.org>
 <20231105-b4-camss-sc8280xp-v3-3-4b3c372ff0f4@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231105-b4-camss-sc8280xp-v3-3-4b3c372ff0f4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/5/23 18:45, Bryan O'Donoghue wrote:
> Add a PHY configuration sequence for the sc8280xp which uses a Qualcomm
> Gen 2 version 1.1 CSI-2 PHY.
> 
> The PHY can be configured as two phase or three phase in C-PHY or D-PHY
> mode. This configuration supports two-phase D-PHY mode.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
Makes it sound like the current 2ph/3ph split is rather nonsensical?

Perhaps we should restructure it to match hw revision? Especially since
one can get it from the hardware itself..

Konrad

