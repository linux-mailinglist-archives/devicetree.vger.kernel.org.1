Return-Path: <devicetree+bounces-9923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0037CEFF6
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:16:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37DE8281E32
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 06:16:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD7AB20FD;
	Thu, 19 Oct 2023 06:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XhQ9rch0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626A446694
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:16:16 +0000 (UTC)
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C616FE
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 23:16:12 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-6b36e1fcea0so4602470b3a.1
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 23:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697696171; x=1698300971; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yH/UjLgq32jH++PpMoUqJLeIFE0ZYZEDnxQSEj9bfyQ=;
        b=XhQ9rch0+74TVCHpR01n3JHumgle+KuMfQscJmbaLNgjAh2Jqde2xQDbA+N3Crk8fi
         a2WLAWqMwipqF4DdSDHumJCyN0L6bWFQHLcb0DSkiqrOZQsaZVDkuVVYrdBGAIGqhCxK
         QPaze6Bn84FFwXoDAKtSUzhWGnzxYS1FWprqj50rGJiyaCtbHTxHzdIQlf2jSfA/Dyh3
         igPWdmrg3yYoUtBVGldc6ENP7hzbihwScFYDNLDW0UiKAqQz2V7EX4N29/lx7CVN8fWB
         7n4+r2S4GCQMCjJQUNWKJzZ4fecndvvLrJERZsd9xw+6eeu0NI3k+qUlTfdM3gYhGc8l
         h1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697696171; x=1698300971;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yH/UjLgq32jH++PpMoUqJLeIFE0ZYZEDnxQSEj9bfyQ=;
        b=hlMAj9H6HVDK38favXOGF3WNYm6xAPi5PmxmDWL6J5xmH33Wy9zfR8cCrBXgs7urbF
         8zw08a8jfu629Mfx5LBBQL1HA/6VvkF+NxGhh0BBTYg3JeSWBSHQNQqrpEqY7vYwMkz4
         FyyjgiyaToR8CLDHA5h1EyJKMd5JdH8Rvq6ib1yqaRx7CALsTDNfHNv+qUtnfPwctUmE
         WprK41pRBdjecShw8A8HOkV1/kq/S1BeshRh17HjLOJLOe2cqe0mnsxmR5YsB7nagfeD
         9d7RrDm/O7lZ1pF2Cj1aOh8pYpTnOu+7MEahHKuZrSJmSobwTLqXcQcvOi4LfXKxYNpF
         VPtA==
X-Gm-Message-State: AOJu0Yw3crhcDaCv64Ei6v+VKkx2jiMY4V5DSPZzpLR0CpIxD9cOPCHe
	a0Vxz0301OEMcws8cU11+L5sUw==
X-Google-Smtp-Source: AGHT+IFaTXuhZLlg7nK3UyK8fM+1t0TG+C2O2i5DXfpYAeJ5f2mO+dwIkmiwoqHBiZRsQHyYhwplMQ==
X-Received: by 2002:a05:6a00:1a8f:b0:6be:3c44:c18b with SMTP id e15-20020a056a001a8f00b006be3c44c18bmr1167269pfv.25.1697696171321;
        Wed, 18 Oct 2023 23:16:11 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id x13-20020aa79a4d000000b006be0bd6a4d8sm4325600pfj.36.2023.10.18.23.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 23:16:10 -0700 (PDT)
Date: Thu, 19 Oct 2023 11:46:08 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Ilia Lin <ilia.lin@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
	Stephan Gerhold <stephan@gerhold.net>, stable@vger.kernel.org
Subject: Re: [PATCH v2 0/3] cpufreq: Add basic cpufreq scaling for Qualcomm
 MSM8909
Message-ID: <20231019061608.wjlf4orkdlpnv3a5@vireshk-i7>
References: <20231018-msm8909-cpufreq-v2-0-0962df95f654@kernkonzept.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231018-msm8909-cpufreq-v2-0-0962df95f654@kernkonzept.com>

On 18-10-23, 10:06, Stephan Gerhold wrote:
> Add the necessary definitions to the qcom-cpufreq-nvmem driver to
> support basic cpufreq scaling on the Qualcomm MSM8909 SoC. In practice
> the necessary power domains vary depending on the actual PMIC the SoC
> was combined with. With PM8909 the VDD_APC power domain is shared with
> VDD_CX so the RPM firmware handles all voltage adjustments, while with
> PM8916 and PM660 Linux is responsible to do adaptive voltage scaling
> of a dedicated CPU regulator using CPR.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>

Applied patch 1 and 3. Thanks.

-- 
viresh

