Return-Path: <devicetree+bounces-7280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B777BFE0B
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:41:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56BF61C20BB6
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:41:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F7AF1DFE1;
	Tue, 10 Oct 2023 13:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LqV+ZEeP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD641DFDA
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:41:11 +0000 (UTC)
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2B221BF2
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:40:36 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c00df105f8so72193391fa.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696945235; x=1697550035; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XxximMkoWGQA+uzz71VUStaHnVSe2K/WIUNaeHglvcc=;
        b=LqV+ZEePymX0b2CYVfcmrvRnvP85Ofakx8Pjdst4wUPz3S7lkMC6GuMgPueHipAj9a
         Qa9B3UvKidAUN2IURc/nGqPKVs5RbVDHBoSPhBNoLm3KCd7VtE3ULkXt/vRZoawa3hKr
         31OY5msVJ6FfyljsiancWRyaP7M+wddn5OZWmnjx2prezuxh26Tyf8EgyhDe9DvCLEVb
         6B5D70vp9NrGEYHWu1gNmUu+gcIScZqaB3q+2IsnOJ6D6TdB+i2EgvOdwcDcHPDutkxq
         V2RKJlt9s6/lgG98fRRHM9e7uALhf9Pz6x8u0q8bzxmADpnhNuLrgEdPSObPSELn9pZT
         NwGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696945235; x=1697550035;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XxximMkoWGQA+uzz71VUStaHnVSe2K/WIUNaeHglvcc=;
        b=m3tqeHRRjbErWzuXxuEuVeTLlx+eWnHv18Tz6qz3Jt28B4G0SUkY84xajhFgqgFueE
         LJRfb98pHr8SwkfiTBq/7QIdGMfnwRjwVcDNWNvKAbLSBgT6PsPXY0SRgisylpi+nS9W
         mLLp2cL4fdfnejUI2RzgBNI5buOKOQMmo8i2h3PUV+ZerF0JQUJObTAg4UH+Rjp8CkJD
         JoHnALrCp2nPW41pm0SDDRaEXO5BQxjKH0dQpQDYfoQwO+EkqBqL/xN8nUkECb6ZjZgd
         YlYaNNOY/eVuG965SdvAs3wli+lK6B9IQ63d1J/DBBHG7FQG918ymcipDm6zv8Ra3iSO
         xjPA==
X-Gm-Message-State: AOJu0YxvOyzf922id9MKM3F0FX7GCHeTFgGxYey9ID4YlOw8qSCLYu+/
	BXoKEnWqYvuIMDuCI7jrnEjIxA==
X-Google-Smtp-Source: AGHT+IF6lr0SvRheFgchDQzYQqCJnSx8Bi6IESHLFO+fVACAqFpnSaNlGIZF0isBSwL9absMNKdW/Q==
X-Received: by 2002:a2e:9a84:0:b0:2c2:8e57:24a7 with SMTP id p4-20020a2e9a84000000b002c28e5724a7mr16879591lji.21.1696945234817;
        Tue, 10 Oct 2023 06:40:34 -0700 (PDT)
Received: from [172.30.204.192] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id y9-20020a2e3209000000b002b9b9fd0f92sm2348720ljy.105.2023.10.10.06.40.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 06:40:34 -0700 (PDT)
Message-ID: <e255dcbd-6342-49e6-9bfe-17a47b2a3c8a@linaro.org>
Date: Tue, 10 Oct 2023 15:40:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] ARM: dts: qcom: ipq8064: Add CPU OPP table
Content-Language: en-US
To: Robert Marko <robimarko@gmail.com>, ilia.lin@kernel.org,
 vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, agross@kernel.org,
 andersson@kernel.org, rafael@kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Cc: Christian Marangi <ansuelsmth@gmail.com>
References: <20230930102218.229613-1-robimarko@gmail.com>
 <20230930102218.229613-4-robimarko@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230930102218.229613-4-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/30/23 12:21, Robert Marko wrote:
> From: Christian Marangi <ansuelsmth@gmail.com>
> 
> Add CPU OPP table for IPQ8062, IPQ8064 and IPQ8065 SoC.
> Use opp-supported-hw binding to correctly enable and disable the
> frequency as IPQ8062 supports up to 1.0Ghz, IPQ8064 supports up to
> 1.4GHz with 1.2GHz as an additional frequency and IPQ8065 supports
> 1.7GHZ but doesn't have 1.2GHZ frequency and has to be disabled.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
Christian/Robert, can you provide a downstream source for this?

Konrad

