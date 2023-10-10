Return-Path: <devicetree+bounces-7110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F8E7BF31E
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 08:32:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64E941C20A9F
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 06:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 529E065C;
	Tue, 10 Oct 2023 06:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bM+ofCFz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC691391
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:32:42 +0000 (UTC)
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 643F49F
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 23:32:39 -0700 (PDT)
Received: by mail-il1-x12e.google.com with SMTP id e9e14a558f8ab-352a1d77fa4so22443015ab.3
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 23:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696919558; x=1697524358; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TMjAqcpLnIT/rrI7hIEQLgNPdRLO8Rld137dNw3SF7I=;
        b=bM+ofCFzXrA3egty6+/3GvTHuBkVqj/MCmLy7HGgJOk+LL/cSx07eDbbgiNHmeGXl1
         VAgsZBLxU8EbCzIp76o8tF0wTf1tKuEalxu2TMtFHQ/nfJexXwCVdA7Ksl21LR90uSFn
         McszypxGPMO1Wm08ZviAD6OZU3dn5tPrAcT6RLuIs6iN4QMIz+kZqpNaj+u4Zr8mIAnB
         6nx+j/pRs8QyGRd80JiySREpUmrteu/S4HSSt0lo2h29eiyC9zJRkPQB4q6OT6KmlkLs
         EUuFO/bSb1Au9bvSYH/eVvEt9EofGGyw1hd7horn6jCQTbZIOdoMk/fEI6/LCpxm7IWZ
         IP8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696919559; x=1697524359;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TMjAqcpLnIT/rrI7hIEQLgNPdRLO8Rld137dNw3SF7I=;
        b=eXW4ca6JMhCn9/xOlT1SEt2GVZW31hj4wS+YyKULwALy8ESiFdhIToDApljus8o9fS
         9wuHe5I/lfB1h0VDkcijJPWVjZBAQvnEZx8PWn0WLbHDGZeqtHSkC38ENgFq3vGZOI09
         qplWvY78iaYiQ6Xd6jwyCTqfKRR8v/GMWY1WlP33KjUa8M0YvecBBscKcUqFOYomLOAh
         MHB7Dk+1h/uWtOeoLCbZC3gtU9Ssk9ty7WJBlEZaruJ7y63B2cqTJ9oHqzhzFa14hR5J
         9Bt2pupfzy2C/nGnC1YCGbzaGqVVs2T2ABLLAJF+8iTnnPZ0UrW613fqLTWZxRFBUTgn
         18/w==
X-Gm-Message-State: AOJu0YyRK8ziQ3gVVEtHR70BStBmeu9tHySVm/rVF0YG1J2phMQsGt28
	ohpUm+Fma5fNWLlh2XkN0DzuTA==
X-Google-Smtp-Source: AGHT+IFudao3PbpP569Ne+5jwXH4fImT8uscTRIidiWKdGzpzFr6qyIB+LvshslYWivEZAwnbXVarQ==
X-Received: by 2002:a05:6e02:180a:b0:357:3d82:2d48 with SMTP id a10-20020a056e02180a00b003573d822d48mr381725ilv.8.1696919558757;
        Mon, 09 Oct 2023 23:32:38 -0700 (PDT)
Received: from localhost ([122.172.81.92])
        by smtp.gmail.com with ESMTPSA id u7-20020a637907000000b005776446f7cbsm9400467pgc.66.2023.10.09.23.32.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 23:32:38 -0700 (PDT)
Date: Tue, 10 Oct 2023 12:02:35 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Ilia Lin <ilia.lin@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
	Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Georgi Djakov <djakov@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-clk@vger.kernel.org, Christian Marangi <ansuelsmth@gmail.com>,
	Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH v5 0/6] cpufreq: qcom-nvmem: support apq8064 cpufreq
 scaling
Message-ID: <20231010063235.rj2ehxugtjr5x2xr@vireshk-i7>
References: <20231002185940.1271800-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231002185940.1271800-1-dmitry.baryshkov@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 02-10-23, 21:59, Dmitry Baryshkov wrote:
> This is a split of APQ8064 cpufreq series, as requested by Viresh. This
> series includes only opp and cpufreq parts, with the DT and soc parts
> being split to a separate patchset.
> 
> Each core has independent power and frequency control. Additionally the
> L2 cache is scaled to follow the CPU frequencies (failure to do so
> results in strange semi-random crashes).
> 
> Core voltage is controlled through the SAW2 devices, one for each core.
> The L2 has two regulators, vdd-mem and vdd-dig.
> 
> Changes since v4:
> - Reordered variables in qcom_cpufreq_init() (Konrad)
> - Fixed of_platform_device_create() error check (Konrad)
> - Dropped unused ret variable in qcom_cpufreq_apq8064_name_version() (Konrad)

Applied. Thanks.

-- 
viresh

