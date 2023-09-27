Return-Path: <devicetree+bounces-3802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 101E47B02B8
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 13:24:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AC8B2282818
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DFEC262AF;
	Wed, 27 Sep 2023 11:24:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B067F6D19
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 11:24:11 +0000 (UTC)
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC481193
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 04:24:09 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1c09673b006so78702245ad.1
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 04:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695813849; x=1696418649; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gP1E3ybnFCNnfUSyv6qObP/eYdp0ZyA/1w1KLw4Ai0s=;
        b=g994XAxScpCtXbkNPu7tVi1r4u2zDiMmriuk5wp3c41cSFbOh5/hCcPXhR+A6K1SWo
         ac7lJxC40C60Xc17LQrPR1fc+p5eqyDdSdnp3+NsBAkgDajQGKbwNfYaXPpUfhVL16rJ
         RXM5w16shZUea0b9iAxTKqfRgXaeRbOmrVVM1yXuILMv8CUGAoWyvSc6M1ZCb5ie06/P
         bLUVpUEai/Qa2mC2AxldFnTfAcaBbJJSDQKfLXT0VUVyxhoyh3q8/iG/OI6RSVcpLVUS
         qRkPHRPYOazH1luM7MLO6v1sTcOqNGqBIICyI2ip8EClMzSwRFG/K8hGM6Y301VT66nn
         ap0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695813849; x=1696418649;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gP1E3ybnFCNnfUSyv6qObP/eYdp0ZyA/1w1KLw4Ai0s=;
        b=et5MkXWlJZUQZEeISMD3eiBcrzprOxvAPp19NTHw722+/J2rG1+vF1XKrD3XZxP8cQ
         5V8vOH5YpQNS4YQQIO633id7svmccAQ8+Nzc2Ou9f5CwWeN9wD9h/ZyxIniQrmzGUHua
         AbJ6BODq6LS/4g0QsgPZjFZX9WTHG9ZsrvhRjciTHUQoIka7LgRsvuVFo5Gw0DNLYW+Y
         KFSjvw78FR9Q8ZT0s6TEaXK88ywcrLZCsHVQlHqG3+5LwXt4hJwDbU/qjC4sJFc/NifD
         T0gJQuyW1oGkN0owK73idKc20VumLF0bgLeYsziombPzmPONYQ1ExHjfrJQLHYv8Jn9n
         yj8w==
X-Gm-Message-State: AOJu0Yzh/MLkmLRF8lF7iKdzAzrB4vCoSECGhh5sZuMZNhN2IntxkQvD
	ahy30oXgiIJoeytdmUzXhipAbg==
X-Google-Smtp-Source: AGHT+IGev39zzv4dY6dg+otC4jHEFuclV1L0cE+VDxgx48elDLd1l4JA7PhiLb/3lGC7jEbvJTvjMg==
X-Received: by 2002:a17:902:e844:b0:1c4:2b87:76f0 with SMTP id t4-20020a170902e84400b001c42b8776f0mr1585486plg.47.1695813849268;
        Wed, 27 Sep 2023 04:24:09 -0700 (PDT)
Received: from localhost ([122.172.81.92])
        by smtp.gmail.com with ESMTPSA id y16-20020a170902b49000b001bd62419744sm12816123plr.147.2023.09.27.04.24.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 04:24:08 -0700 (PDT)
Date: Wed, 27 Sep 2023 16:54:06 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, ilia.lin@kernel.org,
	agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	rafael@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	mturquette@baylibre.com, sboyd@kernel.org,
	quic_kathirav@quicinc.com, linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v1 08/10] dt-bindings: cpufreq: qcom-cpufreq-nvmem:
 document IPQ9574
Message-ID: <20230927112406.teqtqq2phg2nrypk@vireshk-i7>
References: <cover.1693996662.git.quic_varada@quicinc.com>
 <e0f54a4b249f24b10d3dc21a0224718e46ebd158.1693996662.git.quic_varada@quicinc.com>
 <2de8953c-f1c5-3c17-5c95-973ef550bc32@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2de8953c-f1c5-3c17-5c95-973ef550bc32@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 07-09-23, 08:04, Krzysztof Kozlowski wrote:
> On 07/09/2023 07:21, Varadarajan Narayanan wrote:
> > Document IPQ9574 compatible for Qcom NVMEM CPUFreq driver.
> > 
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> >  Documentation/devicetree/bindings/cpufreq/qcom-cpufreq-nvmem.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> 
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied. Thanks.

-- 
viresh

