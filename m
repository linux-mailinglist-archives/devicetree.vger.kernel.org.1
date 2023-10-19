Return-Path: <devicetree+bounces-10131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 689A77CFC18
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:08:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21B8A281F11
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FCFC29D00;
	Thu, 19 Oct 2023 14:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iQCuOnLd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCD027477
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:08:23 +0000 (UTC)
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F244E182
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 07:08:20 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-d9c1989509bso715141276.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 07:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697724500; x=1698329300; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tn/F8o/e5g+CaRAdyAq1gtw+JfJqdGScBADInd6iQVI=;
        b=iQCuOnLdHUvX/uGzWoRrrpS5R+3szQJRR7Og9ReypjB5+d3Fxhi8JAR/kuptzT9gvR
         bSmO5SKB8VP1lYEAEYj19/JqwZKvEy9imYVOok1z181c+hu6cgd6gKCb7iw3GweKmiqA
         HercoOvM+HqBHxJ8PxAcCqUxV7qcSu9LsDX8aYTzImF+V6jp2j/ygySDHQ1aaIRLtxIF
         FjE9FBg+7xzjIFGFqw3Yd/6XHXxsRhWUttD73HTfurz0WzMYrH0kS3BxhafoV0EyBiv2
         uMLDvI+A1ORyoJZjehtc0zldF/oVQRGr8HUv1iP6veUa9TtUeQRJGXGgiUoJ8BeRMd2c
         NTng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697724500; x=1698329300;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tn/F8o/e5g+CaRAdyAq1gtw+JfJqdGScBADInd6iQVI=;
        b=tXYsVgXWybAgwvGzmRZsoHa2zIo1ClZ5rhs/cl2A4zTMqAPhc7YGjj9K01tNVv7vd2
         fK2u43fq2wT0eq5JdEYKEIzAA9lJOGEIJBn54uJKVxsvA5OEY+BekjKD58x1QM/KzT9Y
         3UCMjIq7ZsUvAN60+CVNhxacKLfgdtUaOllbevMsj+H+QNAgWXKV+3bPG5DZMIap9+Db
         vZds4TsJdzyRJ72BEC0/HSuiyf+9t/mNuv46uac5sU61N3NlAK4uMXE5AoBeXUCjjycT
         zM/SaX8Z1H976P/1vIzjAW44YOE0ulL0uWkVsC82alfPT+N3aH5Ia2wm6ma+m2gFScpZ
         gW6w==
X-Gm-Message-State: AOJu0YxkgsXtekd0E7Hur5Izu0Kiy9wsPE3P0xQcMon2UdzG5XEMQwbd
	a/2NMzWn5rhhEaMWvyEtZrZZcrFagI1dVm2fcIUYug==
X-Google-Smtp-Source: AGHT+IG/mrmUX35BBmoQAp5bc48eTYOn5e1DBnNGvJopYm45PRsEmhY1lpboqPwPq9YQ44ZSsybWD7ZZPsAeM+tOXY0=
X-Received: by 2002:a5b:b0e:0:b0:d9a:d9dd:bef with SMTP id z14-20020a5b0b0e000000b00d9ad9dd0befmr1581625ybp.3.1697724500149;
 Thu, 19 Oct 2023 07:08:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1697694811.git.quic_varada@quicinc.com> <c7bfa2233ce4bbdc326e8aa1967cc5efd1f89932.1697694811.git.quic_varada@quicinc.com>
In-Reply-To: <c7bfa2233ce4bbdc326e8aa1967cc5efd1f89932.1697694811.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 19 Oct 2023 17:08:08 +0300
Message-ID: <CAA8EJpqfOjGp+FYCxfkFukvZ+bRFytvSFO+nvmMBn6heNpRraA@mail.gmail.com>
Subject: Re: [PATCH v4 6/9] cpufreq: qti: Enable cpufreq for ipq53xx
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, rafael@kernel.org, 
	viresh.kumar@linaro.org, ilia.lin@kernel.org, sivaprak@codeaurora.org, 
	quic_kathirav@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 19 Oct 2023 at 11:43, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> IPQ53xx have different OPPs available for the CPU based on
> SoC variant. This can be determined through use of an eFuse
> register present in the silicon.
>
> Added support for ipq53xx on nvmem driver which helps to
> determine OPPs at runtime based on the eFuse register which
> has the CPU frequency limits. opp-supported-hw dt binding
> can be used to indicate the available OPPs for each limit.
>
> nvmem driver also creates the "cpufreq-dt" platform_device after
> passing the version matching data to the OPP framework so that the
> cpufreq-dt handles the actual cpufreq implementation.
>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

