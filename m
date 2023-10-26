Return-Path: <devicetree+bounces-12237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E99727D8876
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 20:39:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0DEF11C20EE9
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 18:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BB54381AD;
	Thu, 26 Oct 2023 18:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WIvXU7sq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDE44426
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 18:39:47 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A48AE1A7
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:39:45 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-408382da7f0so9347875e9.0
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698345584; x=1698950384; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8cB3WogQP9E/Yo/vPH/w87eDiej54ju5fgOVr2+Kfho=;
        b=WIvXU7sqhfbH3YDpHN7jSJzOb+bDD4WyXYZ70rOiO151jKA9v69yR8ZfcUqSdjIUJ8
         QpWPg0NWq+xkY/o2hVHvNvusCQAM+kosPNkUxY9mzZMvbHQaWkUnTbOy7DZnrpYm6wy4
         YOTGGrfeQt2wCEhHKisPZRruoCTSpSQ35/PG6qOF3bCDDbW1i8fLA/Qc/ZpixOHRxwTH
         U5qfzv3MKipJEAQxUfjSK0E0ZKwrar3FzpuoFVAONRwRo4ZSVOaHJpb5cWSRCWuvxUsc
         uzQUTTKpNPqiVD/vScQHVR1duVvZ9kPWRP5NrEZrlAO1PuLzOr4Ch7unTg3icTr5B5fX
         KR8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698345584; x=1698950384;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8cB3WogQP9E/Yo/vPH/w87eDiej54ju5fgOVr2+Kfho=;
        b=fFPcuOuMVHZpg4OY3g2qKuNr1vCyoL/OmdSGReqnvlaCTHaRdmZ+fGuDlGEPsBOLFT
         VG2gjSdlCAKI9jC+KF+TV3u10Ck2M/UVZ78eRsRFkJb5yWYMZt4Bp5WGJ+seGym+XTFb
         28SuRxc3wNlTc4/G9ZPqubaK05QehmM1z3AMsKlCdFfepOCBuI4NPXYdTiaqOwNPJo19
         Q4kpxCEuSR4XKmNbLzW0Z7jCFSrmIJ+8SWxt5yZ+vMuyTThThZsPkiecMi8bXV2/g/Cv
         cWjIuwaqC+azhhIjNZxjOGfxC9PpG5MRpp6dEaeGA01Jc3Fqy4kXeAtClVmdMnWqfSNh
         w8Og==
X-Gm-Message-State: AOJu0YyXythMQM9u71a71RWhr3JSThCiBLdyXG9dNQpJ+VLf5bKoysPA
	P3ukuR+MBO1pOezOU+D9pSy85g==
X-Google-Smtp-Source: AGHT+IHp3j6FbSt0YlnznWf5C/IaEfvtRmV8renKJJWRPyNjtbsvjH55uId5HEXYhiTGnM8WeYJBtg==
X-Received: by 2002:adf:f391:0:b0:32d:92fd:9f73 with SMTP id m17-20020adff391000000b0032d92fd9f73mr369098wro.10.1698345584085;
        Thu, 26 Oct 2023 11:39:44 -0700 (PDT)
Received: from [172.30.204.255] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id x11-20020adfffcb000000b003258934a4bcsm34968wrs.42.2023.10.26.11.39.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 11:39:43 -0700 (PDT)
Message-ID: <b0fa21f7-252f-47b7-abe2-23f96767983e@linaro.org>
Date: Thu, 26 Oct 2023 20:39:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v4 3/4] clk: qcom: camcc-sc8280xp: Add sc8280xp
 CAMCC
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, andersson@kernel.org,
 agross@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 dmitry.baryshkov@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jonathan@marek.ca,
 quic_tdas@quicinc.com, vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231026105345.3376-1-bryan.odonoghue@linaro.org>
 <20231026105345.3376-4-bryan.odonoghue@linaro.org>
 <20e2801d-df4f-436e-a677-2c81d43e3273@linaro.org>
 <6d44b972-9337-472a-9010-71ebaa0d45cf@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <6d44b972-9337-472a-9010-71ebaa0d45cf@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 10/26/23 13:34, Bryan O'Donoghue wrote:
> On 26/10/2023 12:21, Konrad Dybcio wrote:
>>> +    .flags = HW_CTRL | RETAIN_FF_ENABLE,
>> This should really be HW_CTRL_TRIGGER from [1]
>>
>> and then downstream uses cam_bps_transfer_gdsc_control and
>> cam_bps_get_gdsc_control to control hw (fast) or sw (normal) mode
>>
>> similarly in drivers/cam_icp/icp_hw/ipe_hw/ipe_soc.c for IPE
> 
> I'm happy to do such a conversion if said patch hits -next, qcom-next or clk-next before this patch, otherwise I'd rather not gate this driver on stuff that's not queued anywhere.
> 
> There's alot of CAMSS stuff driver/compat/dtsi that is gated on having the CAMCC upstream, effectively all of the CAMSS stuff for sc8280xp.
> 
> Fair ?
Fair

Konrad

