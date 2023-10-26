Return-Path: <devicetree+bounces-12144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BCA7D818A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:07:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3B56281FBF
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 11:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85A281D68C;
	Thu, 26 Oct 2023 11:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dZnjCiGd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3776F13FEB
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:07:42 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D0131AE
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:07:40 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-507975d34e8so1086124e87.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698318458; x=1698923258; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nz+wA04FPf6lhenNUiyQXPpaKAqsi4awJDETCh+1Qs0=;
        b=dZnjCiGdQqNkBuAn1Q0191p1Eo7f+mrEUHVNbMnHCt82xp4rbpKVNDBcEm9JG+b3Om
         fP0CnWcWzN3wBcSp7hBYTcKY6OCHbgiUqatyoRFG0MH/GrSDP1CzwOceiRgIiWbB9kYg
         mcnz3llS/AJ0/uz77m2OCD98QZDPidv++MARMbhb2m8qR1ijuswrmVRzBXmAgPy1f26h
         +KUmCt791qmD1R3f7S4g2tPnz8dkrCiquNgqGsoJpyG89eifD2nYDY/asxrZK+C3Q/Th
         n2ji46w3dpF+oBc465QgdCDKxzQsEhtUMRmvhQCxIf/WOr8tIfQcXsn/x99Y+BjfwFU7
         ++Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698318458; x=1698923258;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nz+wA04FPf6lhenNUiyQXPpaKAqsi4awJDETCh+1Qs0=;
        b=N74Q5b8Z7N5Tfvk6SR6mMEx/IsiHLATcjUnoWkB8O2k3W3P+nS3AdLT5xw/2jjz892
         qrEJ2auIUc1pe+rU10SPQ5mq4rm0DVygdU5cnvDCKmxV29JNXXG9RZ9Ci/QKG8ZDjnhh
         38MTKEnVGEngVEdUAXsKLCf4gNR2vaEvfBIzPbllloqvOTiO4JeXnGq5FzGyOLxvoZTk
         mMLqLPLZvmTSIdv31H7PG8T+YD2TDih5HNDCwRk4powcVwwjPr+UuKmnfaB8hWqzjUz6
         u0FjKcT1849Ht6EhPSSRwBaU+UpXpSLgD6o0sp7kp0zgJa3NRxdSqRV1lkqMRhEJUGkB
         zcLQ==
X-Gm-Message-State: AOJu0YxvySSZMfd4ivZxCN4HoGwZArWtwHThOMQp/GeMrx1Zqi2oUigU
	9xefnauA0M+vhLmC9IF9OF53ww==
X-Google-Smtp-Source: AGHT+IG4jLAcGNTYqekXkUs1H6Lj4A7OmRy+1PEC3vBfbnyzxVeHpULor2PTFDDoJRlwQ98aINnPiA==
X-Received: by 2002:a19:760d:0:b0:507:99fe:28f3 with SMTP id c13-20020a19760d000000b0050799fe28f3mr12617130lff.34.1698318458678;
        Thu, 26 Oct 2023 04:07:38 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id q9-20020a056512210900b005079691360csm2978277lfr.49.2023.10.26.04.07.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 04:07:38 -0700 (PDT)
Message-ID: <17a61f24-3af2-4749-881e-2fbe5275b6c8@linaro.org>
Date: Thu, 26 Oct 2023 13:07:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] clk: qcom: rpmh: Add support for SC8380XP rpmh clocks
Content-Language: en-US
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org
Cc: agross@kernel.org, conor+dt@kernel.org, quic_tdas@quicinc.com,
 quic_rjendra@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, neil.armstrong@linaro.org,
 abel.vesa@linaro.org, quic_tsoni@quicinc.com
References: <20231025133320.4720-1-quic_sibis@quicinc.com>
 <20231025133320.4720-5-quic_sibis@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025133320.4720-5-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 15:33, Sibi Sankar wrote:
> From: Rajendra Nayak <quic_rjendra@quicinc.com>
> 
> Adds the RPMH clocks present in SC8380XP SoC
> 
> Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

