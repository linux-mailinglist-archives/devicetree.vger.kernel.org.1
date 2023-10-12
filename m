Return-Path: <devicetree+bounces-7943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2A77C635E
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 05:42:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 940F72824B7
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 03:42:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E81DF815;
	Thu, 12 Oct 2023 03:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qe8o0U3g"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2C8812
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 03:42:49 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D350B6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 20:42:45 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1c87a85332bso4793965ad.2
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 20:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697082165; x=1697686965; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7nADTi8p/TYCcFoqwy7wIdRGyUAvcVuWu1MGhn66nEA=;
        b=Qe8o0U3g4ZajNWQpqJrfqnjeVRhtgFz6SqZYXAmyUP4UibufYVfyoIK9ilgZwlhD9C
         /ivgEKBq/VazLMpAhhHa+Ev5i0JNpM1/nJzerAN/59/lOxEju7bP8k3J69RvO5g2yOfO
         ads1hoMxg2yMiL8+qUCalIizd3iH5LhTrGdU4il+F9UcCcC0eRXgkbXGiBX6eaVOY27A
         AI8iB2Bxb7XyTIjDgAvUaxVLw8eoFsmGD0YkT4cU7AZGQ4JMdL6ictFitGZIvpZbYzEE
         6eClqQ7XggtjlsHVwGNIqLYLhBq95Dbh6Z2dff6XX4FmsEBu/rNEOdz5LNI7uTZT/4CU
         4Asw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697082165; x=1697686965;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7nADTi8p/TYCcFoqwy7wIdRGyUAvcVuWu1MGhn66nEA=;
        b=p8gA8Q0rmaG0Pt3QAvOuDyE7S+6Y1CVQCGpI/896+RYfGYGxvvNi/4dZAm3EcavidM
         GrSlgZNWm4rC/7MU0aKhGdg6wLEzZwmBtBfIQwx81kCHhWoR10GUYbNneLJgoYqZK8AH
         DgYw5VGrRsNNx0dwcQm6iQbfQam/k4fgsbX81WKNfRDVNqyLN63jbYzhq2oiOh7VV58q
         l6D8SwVJA0AczFJSi5MmIRJZL98rNfsTuG3FzzNVhJyXVQYkzs7i5usMDPvsPkZXOQcK
         fZzyEiTMjBr/lO3xCwliCfdBAFR4Kg4BtoyBO5qKwc1/S/nt9H0xSa4JjG0vYcJ5lLXo
         DKKw==
X-Gm-Message-State: AOJu0YzT9s0uK8jw4J56ubGoADRPBzV97vr5ZPE5yxPixXblKaLlFw8J
	8if+oCAQPl8pOIquBXRb7FEFwg==
X-Google-Smtp-Source: AGHT+IH5vhqHicRELepcn9OOPQFFmVMWymakQt2rn9zy2Upu2MiP4JWmXB4wVeUfWQoNqfdb5giMlw==
X-Received: by 2002:a17:903:810:b0:1c9:e257:f88 with SMTP id kr16-20020a170903081000b001c9e2570f88mr108445plb.10.1697082164766;
        Wed, 11 Oct 2023 20:42:44 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id p6-20020a170902e74600b001c9c5a1b477sm685950plf.169.2023.10.11.20.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 20:42:44 -0700 (PDT)
Date: Thu, 12 Oct 2023 09:12:41 +0530
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
Message-ID: <20231012034241.jwtsq22w2lwzfbvn@vireshk-i7>
References: <20231002185940.1271800-1-dmitry.baryshkov@linaro.org>
 <20231010063235.rj2ehxugtjr5x2xr@vireshk-i7>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010063235.rj2ehxugtjr5x2xr@vireshk-i7>
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10-10-23, 12:02, Viresh Kumar wrote:
> On 02-10-23, 21:59, Dmitry Baryshkov wrote:
> > This is a split of APQ8064 cpufreq series, as requested by Viresh. This
> > series includes only opp and cpufreq parts, with the DT and soc parts
> > being split to a separate patchset.
> > 
> > Each core has independent power and frequency control. Additionally the
> > L2 cache is scaled to follow the CPU frequencies (failure to do so
> > results in strange semi-random crashes).
> > 
> > Core voltage is controlled through the SAW2 devices, one for each core.
> > The L2 has two regulators, vdd-mem and vdd-dig.
> > 
> > Changes since v4:
> > - Reordered variables in qcom_cpufreq_init() (Konrad)
> > - Fixed of_platform_device_create() error check (Konrad)
> > - Dropped unused ret variable in qcom_cpufreq_apq8064_name_version() (Konrad)
> 
> Applied. Thanks.

Since these are causing build issues, and it isn't entirely clear what's the
right approach for now, I have dropped the changes from my branch to avoid any
further issues. You don't need to resend these, lets finalize a solution and
then I can apply them again.

-- 
viresh

