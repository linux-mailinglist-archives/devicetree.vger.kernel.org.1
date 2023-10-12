Return-Path: <devicetree+bounces-8055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 226BD7C6900
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:08:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1AEF28281D
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15CB620B0C;
	Thu, 12 Oct 2023 09:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MEKmZ4eg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83711F19A
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:07:58 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DE6490;
	Thu, 12 Oct 2023 02:07:56 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-32d849cc152so721570f8f.1;
        Thu, 12 Oct 2023 02:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697101675; x=1697706475; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=jT5Hh7fFnxqcTzXQ1mQkyBqzOODvrUrHwXJWmeZm7A0=;
        b=MEKmZ4egPj58OU2o5AE05MWHajZMM91yOxXGrzr8z5tkIXquQZ29fjPlCn4ZgqFlnV
         qd6FURBy6/oO5408LWilM+kOiG8oSVU4AhZAJiUsykFcKOS9yOFbk+EoluCB9I2495j1
         2DkUnOa0Tv4+sHlto+YpRHFbzAT5xruj6yS3oM+yi0wgQLnx0oLl21lWD/KG7+euZRvA
         1P1PF/ax9/G1X8RZDMTyve2WC1pGMCi3l0u6MQth/jUlOiyrTFYaVOT7fWogL+NjpAq4
         JRHpdjZwz9ZJg7VX/PJWmEUmbw47N1vRVeSDxsIPI32g6yVNGhywrjvHjfy+wY2LYl/L
         PDZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697101675; x=1697706475;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jT5Hh7fFnxqcTzXQ1mQkyBqzOODvrUrHwXJWmeZm7A0=;
        b=j921WDbR9WNRuWLJi3ozucuDeiQlwyAuLAj/PNe1caGNOpz7zOLm5jRlGpDctz6E+p
         Lkexo2kNy5pOuShs/9WQqr3vOLnOUUlqS05jZM7/WlyTDQy2hI0dSxBPA/ro+ZyToHcX
         zB9jEuuZ3C/Q8etomalEveLu5v3X0xuaOF3Fn46BQ5Pvpb2OVAceUlyNUjq/Qc+30sZ5
         ZhbQzpR3SC4vSo8lBxolLdTXCmSAaEzDnoZi/v2wRm4Y52iDfAchQE5mljdxjeZlkE7w
         BNehku5yHqry46sYXajORCB4OZ+81epvQqCz88nykUrpsNVUdO+3vfvq4MyG5j7WRLYJ
         FRKg==
X-Gm-Message-State: AOJu0Yw9D/S8VJwMJ0NONzgt/AH+t0vkkz9hHFVxrRr4OlrDmQoU/wTe
	ZppzW3HQFBF6Yn2c0K5bkoBNKcqnWdc=
X-Google-Smtp-Source: AGHT+IG0izKAsFZkERsC3OXFEi4EZp9CUquwPvzddWHP34meOlv0zVrfDpoz4u2+nhqd0/cwWTE5BA==
X-Received: by 2002:a05:6000:1746:b0:32d:852f:aa04 with SMTP id m6-20020a056000174600b0032d852faa04mr3909878wrf.13.1697101674823;
        Thu, 12 Oct 2023 02:07:54 -0700 (PDT)
Received: from Ansuel-xps. (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.gmail.com with ESMTPSA id n4-20020a5d4004000000b003197c7d08ddsm17895402wrp.71.2023.10.12.02.07.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 02:07:54 -0700 (PDT)
Message-ID: <6527b76a.5d0a0220.c875.57f9@mx.google.com>
X-Google-Original-Message-ID: <ZSe3aNNExKgMvg0M@Ansuel-xps.>
Date: Thu, 12 Oct 2023 11:07:52 +0200
From: Christian Marangi <ansuelsmth@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
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
	linux-clk@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH v5 0/6] cpufreq: qcom-nvmem: support apq8064 cpufreq
 scaling
References: <20231002185940.1271800-1-dmitry.baryshkov@linaro.org>
 <20231010063235.rj2ehxugtjr5x2xr@vireshk-i7>
 <20231012034241.jwtsq22w2lwzfbvn@vireshk-i7>
 <6527b108.1c0a0220.bc8fa.7fd2@mx.google.com>
 <20231012090056.gh6r7rt3arqzgnmz@vireshk-i7>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231012090056.gh6r7rt3arqzgnmz@vireshk-i7>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 12, 2023 at 02:30:56PM +0530, Viresh Kumar wrote:
> On 12-10-23, 10:40, Christian Marangi wrote:
> > On Thu, Oct 12, 2023 at 09:12:41AM +0530, Viresh Kumar wrote:
> > > On 10-10-23, 12:02, Viresh Kumar wrote:
> > > > On 02-10-23, 21:59, Dmitry Baryshkov wrote:
> > > > > This is a split of APQ8064 cpufreq series, as requested by Viresh. This
> > > > > series includes only opp and cpufreq parts, with the DT and soc parts
> > > > > being split to a separate patchset.
> > > > > 
> > > > > Each core has independent power and frequency control. Additionally the
> > > > > L2 cache is scaled to follow the CPU frequencies (failure to do so
> > > > > results in strange semi-random crashes).
> > > > > 
> > > > > Core voltage is controlled through the SAW2 devices, one for each core.
> > > > > The L2 has two regulators, vdd-mem and vdd-dig.
> > > > > 
> > > > > Changes since v4:
> > > > > - Reordered variables in qcom_cpufreq_init() (Konrad)
> > > > > - Fixed of_platform_device_create() error check (Konrad)
> > > > > - Dropped unused ret variable in qcom_cpufreq_apq8064_name_version() (Konrad)
> > > > 
> > > > Applied. Thanks.
> > > 
> > > Since these are causing build issues, and it isn't entirely clear what's the
> > > right approach for now, I have dropped the changes from my branch to avoid any
> > > further issues. You don't need to resend these, lets finalize a solution and
> > > then I can apply them again.
> > > 
> > 
> > Hi we have a qcom-cpufreq series that depends on this (or better say we
> > have rebased it on top of these changes to prevent merge conflicts)
> 
> That shouldn't be an issue I guess, we are likely not going to change anything
> in these patches but something else:
> 
> https://lore.kernel.org/all/20231011112726.166052-1-dmitry.baryshkov@linaro.org/
> 
> > Can you link where this was applied, also can I help in fixing the
> > compile error to speed things up?
> 
> I applied them here earlier.
> 
> git://git.kernel.org/pub/scm/linux/kernel/git/vireshk/pm.git opp/linux-next
>

Thanks a lot for the quick answer.

-- 
	Ansuel

