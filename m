Return-Path: <devicetree+bounces-10241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD927D06CC
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 05:21:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1728928228A
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 03:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 646321371;
	Fri, 20 Oct 2023 03:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="na1D9wzg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D14A5D
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 03:21:43 +0000 (UTC)
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8B84D51
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 20:21:40 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-6b7f0170d7bso366583b3a.2
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 20:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697772100; x=1698376900; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Pvi7YH2NIy5UBrE4ZQ4YiiWnJtMoiG/cFOIeIIJPu00=;
        b=na1D9wzgMcm6Fby90h062b/8l3VlKsbKHdjwkIxabUb105KZuJzNNajxZ/qPO5WqPz
         BXABj95mD2PqNLVKR8hOZ534Hm3dL1qb2dQRiysoUX4PsSOPqkck3jBTvA+2c2XTkYhI
         cfI3eSNXquHE5q2H5kGp/zsoNers2Wysj8FMNFwiqCwKic2+K1UymoJ7jA7bbYtcsv4G
         6G0xM7cFIlYCRi7ZPPlhYNxLBrjw8kkljoAGZTHpbzlDzsNb7mCRkSmPWs4HSsO4IzxF
         rF3GmB9dcd4UTPz5nQbbk5pPOUeEXf22U52LL75dwjZCnbcxFGaXa6bEsPS/tgrx1xey
         UyLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697772100; x=1698376900;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pvi7YH2NIy5UBrE4ZQ4YiiWnJtMoiG/cFOIeIIJPu00=;
        b=AoFALrJ0uHTjUXXkeRGh+yw/IMgNxVpy5eIfgkFtvXbZWnHMiPDoyGPCPDXyXaCZd1
         F8uSMTGYeNlbF2HswQbIUFA1Q9jnL6rXKmsgTT4Yrt2GUNg1lGYjOrl8KqWdjJLa8QYs
         3UaXDXv4cjS79tWalGleLmRqaPzKs88iaUvEgQDcjzmopqyo4MOalxm/132+1q2duAAl
         0kIC7XFxBopTMoUjJjRaLnPCQaF0pDbi/Dcat5RS6SnWU1kfdG5j/8qLY3to2liQBK+M
         fRZuo5VEhru2qYGleJAg+AOJhb/ymn9rWX4hjW/8PKzIVK2sW/DR6+DhsTRri0+kg2n5
         6Y5w==
X-Gm-Message-State: AOJu0YyW1y+ZekAjaR2rbOa9YQAdhyAR3WceIs0jZ61fHcxrAbHroUZT
	28kThZhCH29vzpFPosK6hCixHQ==
X-Google-Smtp-Source: AGHT+IFxtbM4N3xpLxO8aSljL+cc8jSINKc4eo543h/Ls8Hwbn52zsKXOHN9qlGhKeHHEyHAhUgAOQ==
X-Received: by 2002:aa7:9e09:0:b0:6b2:6835:2a7f with SMTP id y9-20020aa79e09000000b006b268352a7fmr528118pfq.22.1697772099913;
        Thu, 19 Oct 2023 20:21:39 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id w65-20020a626244000000b006b73af176c7sm515575pfb.157.2023.10.19.20.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 20:21:39 -0700 (PDT)
Date: Fri, 20 Oct 2023 08:51:37 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Stephan Gerhold <stephan.gerhold@kernkonzept.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Ilia Lin <ilia.lin@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
	stable@vger.kernel.org
Subject: Re: [PATCH v2 0/3] cpufreq: Add basic cpufreq scaling for Qualcomm
 MSM8909
Message-ID: <20231020032137.xykrp42cpmcvdys3@vireshk-i7>
References: <20231018-msm8909-cpufreq-v2-0-0962df95f654@kernkonzept.com>
 <20231019061608.wjlf4orkdlpnv3a5@vireshk-i7>
 <20231019102342.5f4oyxd6hmjcju6g@vireshk-i7>
 <ZTEzuz7VrDGIoR7H@gerhold.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZTEzuz7VrDGIoR7H@gerhold.net>

On 19-10-23, 15:48, Stephan Gerhold wrote:
> Sure, I will try to test it until end of next week, with both single and
> multiple power domains assigned to the CPU. Is there something
> particular you would like me to look for? Or just that the scaling still
> works correctly as before?

Yeah, simple test to ensure scaling works fine is all I need.
Shouldn't take a lot of time. Thanks.

-- 
viresh

