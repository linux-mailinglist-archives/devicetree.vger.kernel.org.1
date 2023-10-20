Return-Path: <devicetree+bounces-10274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A0C7D093A
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 09:10:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63569B21396
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 07:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF2FCD260;
	Fri, 20 Oct 2023 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MVcyaPq5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A06CA6C
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 07:09:52 +0000 (UTC)
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E11B71BF
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 00:09:50 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-27d17f5457fso1270540a91.0
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 00:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697785790; x=1698390590; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CcNPWYHZsV1jl4Y6m712SS9BEogduv8nGwwMCSKf3jc=;
        b=MVcyaPq5vwEGkbz0OxE4C2wShgo50AIMusLupnmjKwa0fJkJApLkKodQc8QHnYqp3/
         XFtEB/OV61TH0+3t0O+JOTpGLJbOn8zSXbJs3vHPpRiPt8hbeJLZs1xX4ew8v94ZKagl
         9yPwibQFin8xZHp+FkXeB/BmqFWaRIAFJ9BErkab6xxIQMWb6kCj4IDJZEPzEAbVwKdc
         OARsNzbYtvyCr1uLOguJM63TaU00HowTIBzVQmh1n5fpYcSd2EmURshAzyFLUpc6GoSi
         FrDi4q74p9qFup3PLmxSr7FqCOpstSxANN/et4csZUTq42zPb4/yDJBOQMESzxi0pcv1
         eIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697785790; x=1698390590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CcNPWYHZsV1jl4Y6m712SS9BEogduv8nGwwMCSKf3jc=;
        b=e+ZNMeBkkW6YuyunsdJjb9JMyAvL/bojRvmvdlyeRWoC8vxImELG7p0UH4+zuZZVsK
         g0P3e0dnLiljztWcYC4i412lnlVIRYjewW5rCf2lq8fvfiQAtpdOCvkdFP5tcJEbYEkz
         /MvDkZXV/lJOplaZxBbkiV68AzCR5eTWcYbyO+8smzzAs/lKBXyvOUSwPNdopDNYJsHj
         qmRrZLeKDEAd7xfIEPIW+k1KPY8Kz7yrep7L6ImHnfUfWznFV5NtDC3e2kg/dsaKgH1t
         lav8uflHPF357bo+LCkvHbzoKk261+EqTUgItub/HMia9FyH6H2VBP/Boc03LbRtQzpm
         +SVg==
X-Gm-Message-State: AOJu0YxWQy3cRfXkcFRbCE054I6nV0BXZe4fY3VfyxNmr+YJMP5mo5Ys
	RRwM/74KSC2kMrLOt/szMx8AIQ==
X-Google-Smtp-Source: AGHT+IEGbSTpFO9vjBNdmRVUt1VTUISUjGcuoWitbvQsLR23qQQ7aO6ak2oavK26Yyl9K+kiLs8tsw==
X-Received: by 2002:a17:90a:52:b0:27d:237b:5592 with SMTP id 18-20020a17090a005200b0027d237b5592mr1623090pjb.13.1697785790342;
        Fri, 20 Oct 2023 00:09:50 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id bf15-20020a17090b0b0f00b0027463889e72sm813515pjb.55.2023.10.20.00.09.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 00:09:49 -0700 (PDT)
Date: Fri, 20 Oct 2023 12:39:47 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	rafael@kernel.org, ilia.lin@kernel.org, sivaprak@codeaurora.org,
	quic_kathirav@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v5 0/9] Enable cpufreq for IPQ5332 & IPQ9574
Message-ID: <20231020070947.cwigtaa2haij56hz@vireshk-i7>
References: <cover.1697781921.git.quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1697781921.git.quic_varada@quicinc.com>

On 20-10-23, 11:49, Varadarajan Narayanan wrote:
> Varadarajan Narayanan (9):
>   cpufreq: qti: Enable cpufreq for ipq53xx
>   cpufreq: qti: Introduce cpufreq for ipq95xx

Can I pick just these two ?

-- 
viresh

