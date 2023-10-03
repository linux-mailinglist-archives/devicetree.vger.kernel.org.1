Return-Path: <devicetree+bounces-5410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0C07B641D
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:30:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 96F01B20816
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 08:30:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADE4B46A8;
	Tue,  3 Oct 2023 08:30:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BC1DDA6
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 08:30:36 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16C40E1
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 01:30:32 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50306b2920dso741460e87.0
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 01:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696321830; x=1696926630; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0Upai5QPyYhZqvlPnDXtxS/IJLPhOhdON/NIKGQEvYU=;
        b=iiDuskM0u7fMq+7zUoHpz4SndOdtQoQK3zWpH1W3BqfBQA/rVVwORu4MkGWyNpna28
         0mqeJYAl5iyDwyMpP5ku0TZ1gyOlnS5ab3BS9DYogsLkePdUR5ocY3g1pIJaNN84JTQY
         XfNHDXKcWYtsgeq1dkipJRciwgtJctedqYVh8dQ0t0bww/AEFoSS9R5lHNsJ9sxk1ACc
         G6GtMTdjgWIDEolA6UmpKfGuVpVPqJQ/QrUiEeAxnGKZo5psRK3rrucX1KRyQu1PPsUy
         jQtJaijXgnYGMxKsTne5xMs3GPN3Io97XcKMFRFiw0ZAmnCIZtYT9r6uQmex/2Sm4mrT
         UgmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696321830; x=1696926630;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0Upai5QPyYhZqvlPnDXtxS/IJLPhOhdON/NIKGQEvYU=;
        b=R04OnPy+HMscjyvQ7mFbkkq/lQMMgThc3JmALRgK1eL33AY0gX10i6jQk1WV1/XNyr
         zhwAOCRNrqQcwJkoxyeeYIMuuB0ncMUdPRtNezL9j8bU7ckSEiNSA45rD4SRqzhArYFT
         wSVlFn3+wLgk5wBAjCdVd3c0FM/sqyxbEhaAvDDPA+pGOy5fx4itnHPQwIuHFA/5/b6M
         6XlGM3mwiCBfUmVPs5TLXAMQmoVANba4BJMh90hP2uV4xy+7YJ0aLOyQ7Ak+aVdT8/QG
         4rmYcdGDEQWT6YcBFRixG9K8+53RXvhXZGo5pCRTeCsmm+acK6IZNMieSzvUN3X0f58x
         zk6g==
X-Gm-Message-State: AOJu0YyGvXzp5PTa2EKKzekfBUasCsRUBiDJX1yL6p+lpqVxabwJEAeO
	YGdpHQfYliN4gD90XvbxCiNhqQ==
X-Google-Smtp-Source: AGHT+IGxRj7o/xKxQnfARL8kw7LPsBap9THlWkCKqS+Sj7FzwYabnhEfXed4ig9109nAC5QpgutbFQ==
X-Received: by 2002:a05:6512:10d4:b0:504:86ae:5851 with SMTP id k20-20020a05651210d400b0050486ae5851mr1655723lfg.23.1696321829840;
        Tue, 03 Oct 2023 01:30:29 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id g8-20020a19ac08000000b004fe48a27fa1sm108239lfc.114.2023.10.03.01.30.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 01:30:29 -0700 (PDT)
Message-ID: <7312633f-3b53-43a1-b6e3-010513c2a1e2@linaro.org>
Date: Tue, 3 Oct 2023 11:30:28 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/23] interconnect: icc-clk: add support for scaling
 using OPP
Content-Language: en-GB
To: Stephen Boyd <sboyd@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Georgi Djakov <djakov@kernel.org>, Ilia Lin <ilia.lin@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Nishanth Menon <nm@ti.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Viresh Kumar <vireshk@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
 Christian Marangi <ansuelsmth@gmail.com>,
 Stephan Gerhold <stephan@gerhold.net>
References: <20230827115033.935089-1-dmitry.baryshkov@linaro.org>
 <20230827115033.935089-6-dmitry.baryshkov@linaro.org>
 <493aff10d698c9ca5bdbeae45250f5fe.sboyd@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <493aff10d698c9ca5bdbeae45250f5fe.sboyd@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 28/08/2023 21:09, Stephen Boyd wrote:
> Quoting Dmitry Baryshkov (2023-08-27 04:50:15)
>> diff --git a/drivers/interconnect/icc-clk.c b/drivers/interconnect/icc-clk.c
>> index d787f2ea36d9..45ffb068979d 100644
>> --- a/drivers/interconnect/icc-clk.c
>> +++ b/drivers/interconnect/icc-clk.c
>> @@ -25,12 +28,16 @@ struct icc_clk_provider {
>>   static int icc_clk_set(struct icc_node *src, struct icc_node *dst)
>>   {
>>          struct icc_clk_node *qn = src->data;
>> +       unsigned long rate = icc_units_to_bps(src->peak_bw);
>>          int ret;
>>   
>>          if (!qn || !qn->clk)
>>                  return 0;
>>   
>> -       if (!src->peak_bw) {
>> +       if (qn->opp)
>> +               return dev_pm_opp_set_rate(qn->dev, rate);
> 
> Just curious how does lockdep do with this? Doesn't OPP call into
> interconnect code, so lockdep will complain about ABBA?

Unfortunately it does. It seems, the icc-clk is not a proper way to go 
here. I will take a look at reusing set_required_opps for this case.

-- 
With best wishes
Dmitry


