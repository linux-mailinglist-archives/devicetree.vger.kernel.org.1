Return-Path: <devicetree+bounces-10867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E127D2EEB
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 11:53:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7AF442813B5
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 09:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0D9F13AE8;
	Mon, 23 Oct 2023 09:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfTrbY6N"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47D5134C4
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 09:53:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9ACC0C433C7;
	Mon, 23 Oct 2023 09:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698054803;
	bh=tKr3T+PU2YjF6+60KuiAqKReKHKVvj5uPgMKPlxY5Xo=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=KfTrbY6NO+vnYuJvOuy47Ffj/pTnIYj33xtycavho9Oafi7zlSX1LEEs59ABhK2YU
	 7XK+C5Mw2IC2rDDBQD4iijYTMlNUwT3rKcIAYNisyXG1ueeI6ylXG5rtKJEz94sg1/
	 0EMyr0IejrJpS7QF0fGxXSx6qW9zswE4oCst2JodqRY4JJvq17fTZLHke5Nmv/Sqpq
	 SmUJ8dF1JCy9ips7AqFNP4A5TnQpGPHde//AzxhMjm/0DmlLsCbh+xOiPx8+VKLGek
	 Jhslm2Z6tLxcJdZBxDdtT+HInsvM/yfhnXCxTa2ZV8UUaevZfyA//RtzCFkhlNhxIl
	 0zZL9zTtX4VtQ==
Date: Mon, 23 Oct 2023 10:53:17 +0100
From: Lee Jones <lee@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, thierry.reding@gmail.com, baruch@tkos.co.il,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de,
	linux-pwm@vger.kernel.org, Devi Priya <quic_devipriy@quicinc.com>
Subject: Re: (subset) [PATCH 2/4] dt-bindings: mfd: qcom,tcsr: Extend
 simple-mfd & pwm support for IPQ targets
Message-ID: <20231023095317.GG8909@google.com>
References: <20231006045317.1056625-1-quic_devipriy@quicinc.com>
 <20231006045317.1056625-3-quic_devipriy@quicinc.com>
 <169710526675.1167576.9872640040047520620.b4-ty@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169710526675.1167576.9872640040047520620.b4-ty@kernel.org>

On Thu, 12 Oct 2023, Lee Jones wrote:

> On Fri, 06 Oct 2023 10:23:15 +0530, Devi Priya wrote:
> > Extend simple-mfd and pwm support for IPQ5332 & IPQ9574 SoCs.
> > 
> > 
> 
> Applied, thanks!
> 
> [2/4] dt-bindings: mfd: qcom,tcsr: Extend simple-mfd & pwm support for IPQ targets
>       commit: abbb729360a50ce949de94a983cb56b15b82018e

Also unapplied, since it seems to depend on:

  dt-bindings: mfd: qcom,tcsr: Add simple-mfd support for IPQ6018

-- 
Lee Jones [李琼斯]

