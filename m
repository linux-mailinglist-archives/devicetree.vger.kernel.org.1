Return-Path: <devicetree+bounces-8054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE057C68C2
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 227331C20CD5
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54E52033F;
	Thu, 12 Oct 2023 09:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hszIlK06"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB962030E
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:01:02 +0000 (UTC)
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C741CC
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 02:01:00 -0700 (PDT)
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-57e40f0189aso397856eaf.1
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 02:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697101259; x=1697706059; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZpgslsrKS9ZbUqs4TvcxfwAWRuu72EmMIKqR05bZxOs=;
        b=hszIlK06ZaZ6Xi1S6Q+fi4qi+KKYNovfreyM3AiwCO6xl6qV2exEqp99FVqdnQGpC3
         UciuNwiZsR5hGDLYvd3nM9yFbLhXD5roh02Qto7rsjCyCz1Wdjg5kmFnF1UZ2iC3VvM4
         vFvIUOnCOh1+tQKqXFT+UDdTIfnIYpQCfpaXTrXGIcT/IVE+Ux+8KOzW/kcf8mve46od
         2g4XHDhzrZJOKAXqF8asnQGBIqvfHMClyc4gwJZsbdMJQtwRUuBm7jRJW3PJrBLfRDru
         D0+8Y1Gn8lHh9+srWtgW4VX9DkobtEd+tcexj8v/UwgtT2o96ASOnrECHmMtdUd42bhb
         psZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697101259; x=1697706059;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZpgslsrKS9ZbUqs4TvcxfwAWRuu72EmMIKqR05bZxOs=;
        b=v3EMBnf4SR/Oclc0XDKWXwvuugsJ4WwblvNPItuYdvGO8BfYjemQHGCq0cJFDoR3Gv
         fAFykewoqIHJv4GXsyzBhN6fBffqqtfnT8xkxhWgry75tTY6DbSd7yCDDp3kqIknRIEW
         NvQysq/ZXqsFrxmlUSZvYg5Kw3+fg9JpdzlJo3oMsb6ctH7tBzLOSP25OlVp6YFh+sAZ
         dadU9Ydr9VscDwJDY8fXLPfCAiSSf3RFsl/G/nlnjzTyk6bxSrbS5+kltPP12NrYyo8p
         kNUUiaZgY11X3Ssrbe4U6GH2jHGp5h/tnfY8LT6sh4ZfTzgiMV5fBeeIFUCTOjB8aYyc
         uUDA==
X-Gm-Message-State: AOJu0YzmiPnQD8TPoCSo2u8/9KrjZ+hykjfSNsJvL7Sdb4tPRbrrX84T
	X6H+9qLGPoBqxsejIk6C9v8APw==
X-Google-Smtp-Source: AGHT+IG3/bVxoxB4PEza7ySX1/3dYeEDND6sHlSTKogBMc0NeiM2bTIv4Mq/rCd28KtBQfiJBPTngw==
X-Received: by 2002:a05:6358:880e:b0:143:8e40:917b with SMTP id hv14-20020a056358880e00b001438e40917bmr25456186rwb.9.1697101258635;
        Thu, 12 Oct 2023 02:00:58 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id z125-20020a633383000000b0058a381de499sm1196291pgz.77.2023.10.12.02.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 02:00:58 -0700 (PDT)
Date: Thu, 12 Oct 2023 14:30:56 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Christian Marangi <ansuelsmth@gmail.com>
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
Message-ID: <20231012090056.gh6r7rt3arqzgnmz@vireshk-i7>
References: <20231002185940.1271800-1-dmitry.baryshkov@linaro.org>
 <20231010063235.rj2ehxugtjr5x2xr@vireshk-i7>
 <20231012034241.jwtsq22w2lwzfbvn@vireshk-i7>
 <6527b108.1c0a0220.bc8fa.7fd2@mx.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6527b108.1c0a0220.bc8fa.7fd2@mx.google.com>
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 12-10-23, 10:40, Christian Marangi wrote:
> On Thu, Oct 12, 2023 at 09:12:41AM +0530, Viresh Kumar wrote:
> > On 10-10-23, 12:02, Viresh Kumar wrote:
> > > On 02-10-23, 21:59, Dmitry Baryshkov wrote:
> > > > This is a split of APQ8064 cpufreq series, as requested by Viresh. This
> > > > series includes only opp and cpufreq parts, with the DT and soc parts
> > > > being split to a separate patchset.
> > > > 
> > > > Each core has independent power and frequency control. Additionally the
> > > > L2 cache is scaled to follow the CPU frequencies (failure to do so
> > > > results in strange semi-random crashes).
> > > > 
> > > > Core voltage is controlled through the SAW2 devices, one for each core.
> > > > The L2 has two regulators, vdd-mem and vdd-dig.
> > > > 
> > > > Changes since v4:
> > > > - Reordered variables in qcom_cpufreq_init() (Konrad)
> > > > - Fixed of_platform_device_create() error check (Konrad)
> > > > - Dropped unused ret variable in qcom_cpufreq_apq8064_name_version() (Konrad)
> > > 
> > > Applied. Thanks.
> > 
> > Since these are causing build issues, and it isn't entirely clear what's the
> > right approach for now, I have dropped the changes from my branch to avoid any
> > further issues. You don't need to resend these, lets finalize a solution and
> > then I can apply them again.
> > 
> 
> Hi we have a qcom-cpufreq series that depends on this (or better say we
> have rebased it on top of these changes to prevent merge conflicts)

That shouldn't be an issue I guess, we are likely not going to change anything
in these patches but something else:

https://lore.kernel.org/all/20231011112726.166052-1-dmitry.baryshkov@linaro.org/

> Can you link where this was applied, also can I help in fixing the
> compile error to speed things up?

I applied them here earlier.

git://git.kernel.org/pub/scm/linux/kernel/git/vireshk/pm.git opp/linux-next

-- 
viresh

