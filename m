Return-Path: <devicetree+bounces-8104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECF97C6B05
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:25:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F5CA1C20A31
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D05C22F05;
	Thu, 12 Oct 2023 10:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZf0271o"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B46A21373;
	Thu, 12 Oct 2023 10:25:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23DCAC433C8;
	Thu, 12 Oct 2023 10:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697106350;
	bh=wzBgNttTkwq+ey3nh0EClZ1bDYJi51qfQW72cGgJJR8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dZf0271oiB81Qb9DHNDeeIaaCtG5Bs/F5DwukXxhL2PBdOlmTBlKedMCJtrkMu5WG
	 /MpuSpxGv5cBUVI9yjaCQR8MJvpvcQ1XagFHTi8smebHKMSMKTky0HjHKh9/Wq31J+
	 d2oQMniPYfOxxjlAWAFh1RboinpW7Fq7xcoghwfXYF1QI20PhpChhq9d3tbI6r8z91
	 Q/9hROpL7jKiO0MvqRA/t2c4CGrm3lFjpYh9Y6SU/GatLa4TJxvLouY7WuQIlGjCHS
	 QB/qk3l9pX33FdunNm2oFIzKzzgppj4l99CLUUptW/7pL/dQ4LyrYGCSK+Cb1VAvSO
	 Niynl0PqXZNKg==
Date: Thu, 12 Oct 2023 11:25:44 +0100
From: Lee Jones <lee@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, thierry.reding@gmail.com,
	ndesaulniers@google.com, trix@redhat.com, baruch@tkos.co.il,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev,
	Devi Priya <quic_devipriy@quicinc.com>
Cc: linux-pwm@vger.kernel.org, u.kleine-koenig@pengutronix.de,
	nathan@kernel.org
Subject: Re: [PATCH V15 0/4] Add PWM support for IPQ chipsets
Message-ID: <20231012102544.GH8314@google.com>
References: <20231005160550.2423075-1-quic_devipriy@quicinc.com>
 <169710516837.1166696.14907666532929973777.b4-ty@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169710516837.1166696.14907666532929973777.b4-ty@kernel.org>

On Thu, 12 Oct 2023, Lee Jones wrote:

> On Thu, 05 Oct 2023 21:35:46 +0530, Devi Priya wrote:
> > Add PWM driver and binding support for IPQ chipsets.
> > Also, add support for pwm node in ipq6018.
> > 
> > V15:
> > Detailed Change logs are added to the respective patches.
> > 
> > V14 can be found at:
> > https://lore.kernel.org/linux-arm-msm/20231005043127.2690639-1-quic_devipriy@quicinc.com/
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/4] pwm: driver for qualcomm ipq6018 pwm block
>       (no commit info)
> [2/4] dt-bindings: pwm: add IPQ6018 binding
>       (no commit info)
> [3/4] dt-bindings: mfd: qcom,tcsr: Add simple-mfd support for IPQ6018
>       commit: b4a32d218d424b81a58fbd419e1114b1c1f76168
> [4/4] arm64: dts: qcom: ipq6018: add pwm node
>       (no commit info)

Disregard - tooling error!

-- 
Lee Jones [李琼斯]

