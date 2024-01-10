Return-Path: <devicetree+bounces-30848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2913382946B
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 08:38:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3AAE21C25B88
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 07:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 033FF39FEF;
	Wed, 10 Jan 2024 07:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HVu9vGoo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BC9F3C47A
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 07:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-5cec32dedf3so1598145a12.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 23:38:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704872290; x=1705477090; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=i425ufsZh8gIC4EBfEiOE+XzwKt6U3xEd+yozxFH/RE=;
        b=HVu9vGoosoF9bE53T4yps36VAZK7f/+VRm3UKFtgke1cMXhiPSthcPnpYfVTs7IrpM
         HxrHZoF55fWViBKTGr80uwiFvOJdHqxmGDqRow97U0vtZNxDNzlLXCftVuiGtEwIa/zB
         oi5WS7KkHnis+cr8bXb9/DVVPDIG8odtsyC8yCrb1Ga7dZ7A+igeUK5RJwNCvyTOUlx/
         c56ioCKr1feyrLdgL6Ppokq+UUC9hDmbjTXZLMb4+W+WcRYfOrps8j4A0q3u36lHU1jT
         8FJFO39SGNGAl+Lu7htW3m6kcjQQTTSha/+BVuMxufli0x+QFezKRl5WnrYFNNeAgdC3
         e2vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704872290; x=1705477090;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i425ufsZh8gIC4EBfEiOE+XzwKt6U3xEd+yozxFH/RE=;
        b=k8m+Wav0M8U1NO1ITas1Z2qLKmeCfOYP1eE/07vlLJVOhsP2H0xEXi5EdU2yxMWJab
         2lCaaQ54F0lVqaipgCYoXhefNsyDjGds9H3Kb50He2fQx69+8uQL066BfZJ7BYGjA1TH
         D1RuHnTdLVN4iX4tdW2ZlowUi1J3aDIkNNNC12xMDK9sbgqkRbhvcv/zkTBXoqMY9TGf
         xgOiK/hngwumSbukFMXxIxrPDO2XN626on7FKSBv0JBIhiUP9t9lcpMjfCzh9Qpqxcp0
         y+Qe9xF0E8wDadaNcmnUvXM5kaojHq5V2PvCdejAxv4v7NFu4YHU7ahn0xOX+Pg4KWb8
         yx6A==
X-Gm-Message-State: AOJu0YxNsm5wZXlsDQ3ElBvcuVjFbXcKieNf/lZ9MAJE6EM/+KS0cF4D
	kGHwGzTn6WCXrDTQuEiK9NyHAZX63XSOKw==
X-Google-Smtp-Source: AGHT+IGfhQOZcG6qDB0jtaoLNaZ0xjm2ldvzf/3kNf8p1FfAMSmZmP4rLbwFsZr3Q9tyCoxfpeJwiA==
X-Received: by 2002:a05:6a20:6697:b0:199:7fab:f7f6 with SMTP id o23-20020a056a20669700b001997fabf7f6mr359628pzh.41.1704872289901;
        Tue, 09 Jan 2024 23:38:09 -0800 (PST)
Received: from localhost ([122.172.81.83])
        by smtp.gmail.com with ESMTPSA id ga18-20020a17090b039200b0028d2521dc53sm786438pjb.46.2024.01.09.23.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 23:38:09 -0800 (PST)
Date: Wed, 10 Jan 2024 13:08:07 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, mani@kernel.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, rafael@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
	quic_ramkri@quicinc.com, quic_parass@quicinc.com
Subject: Re: [PATCH v5 5/5] PCI: qcom: Add OPP support to scale performance
 state of power domain
Message-ID: <20240110073807.sqwmsyr6nmigg6zc@vireshk-i7>
References: <20231102053013.7yt7pxin5awlu7w7@vireshk-i7>
 <20231102120950.GA115288@bhelgaas>
 <20231103051247.u4cnckzstcvs4lf5@vireshk-i7>
 <15a98ec0-214b-218b-1e3c-c09f770fce2e@quicinc.com>
 <0ba9f2af-169e-a9a2-9ae4-4c6a70b0a94e@quicinc.com>
 <20240110065757.xde2nvpr3z7c4isu@vireshk-i7>
 <376b3716-46ff-2324-73fc-f3afa3f7af1c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <376b3716-46ff-2324-73fc-f3afa3f7af1c@quicinc.com>

On 10-01-24, 12:42, Krishna Chaitanya Chundru wrote:
> At present we are not changing the link width after link is initialized, but
> we have plans to
> 
> add support change link width dynamically at runtime.

Hmm okay.

> So, I think it is better to have ICC BW voting in the driver itself.

I guess it is better to have more entries in the OPP table then.. 15-20 OPPs
isn't too many to be honest.

Replicating code is the last thing I would like to do.

Maybe you can show the different layouts of the OPP table if you are concerned.
We can then see if it is getting too much or not.

-- 
viresh

