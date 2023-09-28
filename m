Return-Path: <devicetree+bounces-4078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A937B12F8
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 08:31:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 2522EB20AAF
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 06:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC85323743;
	Thu, 28 Sep 2023 06:31:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99EC71170B
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 06:31:45 +0000 (UTC)
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D07061B4
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 23:31:39 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-69335ddbe16so2362353b3a.1
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 23:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695882699; x=1696487499; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CnNgEhksy6JyUenvntvdDf8qNAXSTU1fGqU1YXMs6HY=;
        b=p6JyfmZW/E9b9JbqL4n/LHekaMK96HWSHN03sBbyPbL7Ft9ezDwL9Ug19gOB+TQJRB
         KwJnHvBsAs1JGNQRgAVpvP10diFKM/PiKyg8d1vfUcEC/fwWhqgURFacyVih4GV1FL/7
         0l8dtQ2jZ0W3ZbwMgehh4Syw11Dq33lB3J6k22grU5f0166V7VK0UPBAM0NjKVOEOfrW
         rvFDkYWITkGLeqnYTzgw1SQHNGWm0u5Sy2UOv7MUWwrhVsSRDMFyhBWUUNaNGyMgPg8j
         e1XokMLG4SquJQSGU1NVNW5vLFqkFiRiqlt9S4PfUTGsggarA8kAlfpDpq8wAVRtX0jJ
         MNFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695882699; x=1696487499;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CnNgEhksy6JyUenvntvdDf8qNAXSTU1fGqU1YXMs6HY=;
        b=mtdOORn1VV6gXTGhd5kKEbpDvbMAgv4kQlTH29Cs7UUxxQuyHIy3ieN2+d8Bz+DaE8
         i8Z5qj+wj51PvneMGZsBkx2BIwotwQ6yLw716NAKG7wRtk5rmBMQxU8V8JaWyVe6OCHJ
         CFfbJTm265zdpIlM5h7Dxjbuj15V7DbNjnLkI0LQHJgSg5QN2donfTk5R4HCuB6hPou8
         bO/WdBSF/Xa6UNgK9rGFtRPzpQ/gH/7J9uQYxBTJfX2EeKFMucEEnbp7D32xO8vY5mFT
         cgf4zJy/1e/8EjQYge2P1ol+50rm7paTyn3ZXAQKk/O63gzRmNCVTfss1PT/BcXaX5w4
         RKoQ==
X-Gm-Message-State: AOJu0Yy5FO4PyRyYI8SIeiqRZ7ExSmfslFNrupmBTYAAAG+6dNDGtjOo
	91AXY5rAtQ3ZRtNSyv+ToQDf5ozIEfnEBWxhFdE=
X-Google-Smtp-Source: AGHT+IEJ7meKS5fzKsPZ6iXjhY0FikUwRdddU3+yeil6gcKA0lmFE1CtLXV39iamYXCS0rt+INPbqg==
X-Received: by 2002:a05:6a21:3288:b0:15e:986:d92b with SMTP id yt8-20020a056a21328800b0015e0986d92bmr406063pzb.16.1695882699233;
        Wed, 27 Sep 2023 23:31:39 -0700 (PDT)
Received: from localhost ([122.172.81.92])
        by smtp.gmail.com with ESMTPSA id iz7-20020a170902ef8700b001b9f7bc3e77sm4481817plb.189.2023.09.27.23.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 23:31:38 -0700 (PDT)
Date: Thu, 28 Sep 2023 12:01:36 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
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
Message-ID: <20230928063136.3u47bw2lis6yvksn@vireshk-i7>
References: <1694066433-8677-1-git-send-email-quic_krichai@quicinc.com>
 <1694066433-8677-6-git-send-email-quic_krichai@quicinc.com>
 <20230927065324.w73ae326vs5ftlfo@vireshk-i7>
 <f7a5ac7f-2857-8d30-e29c-f64c2c5f1330@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f7a5ac7f-2857-8d30-e29c-f64c2c5f1330@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Adding everyone back, reply to you only by mistake earlier :(

On 28-09-23, 08:53, Krishna Chaitanya Chundru wrote:
> 
> On 9/27/2023 12:23 PM, Viresh Kumar wrote:
> > On 07-09-23, 11:30, Krishna chaitanya chundru wrote:
> > > While scaling the interconnect clocks based on PCIe link speed, it is also
> > > mandatory to scale the power domain performance state so that the SoC can
> > > run under optimum power conditions.
> > Why aren't you scaling interconnect bw via OPP core too ?
> 
> The power domain performance state varies from PCIe instance to instance and
> from target to target,
> 
> whereas interconnect BW remains same and changes only based upon PCIe GEN
> speed. So in the driver code itself
> 
> based upon GEN speed we are calculating the BW and voting for it.
> 
> That is the reason we are not scaling interconnect BW through OPP as no dt
> entries required for this.

Not sure I understand it fully yet. I tried looking at code and this is what I
see:

At probe initialization, you just configure bw.

Later on, towards end of probe and resume, you set both bw and performance
state.

Also your DT changes add virtual level numbers to PCIe OPP table like this:
+                               opp-1 {
+                                       opp-level = <1>;
+                                       required-opps = <&rpmhpd_opp_low_svs>;
+                               };

Instead what you can do here is, add bw values and remove level completely (as
it is not serving any meaningful purpose) and use the OPP core to set both bw
and performance state (via required OPPs).

What won't work if you do this ?

-- 
viresh

