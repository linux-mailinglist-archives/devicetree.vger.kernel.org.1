Return-Path: <devicetree+bounces-11815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DA27D6AEB
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:13:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90150281AAF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:13:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9132773D;
	Wed, 25 Oct 2023 12:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emXY/bJn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E13520B21
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:13:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98D37C433C8;
	Wed, 25 Oct 2023 12:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698235982;
	bh=4+xwe367k3YeGIMrExzUgwgVoVE6QX1MvS5Q6KetWyQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=emXY/bJnZ6TI8CxNbrMekyo38I5pF6dXpoLNZxXDhO21G9HLiHXpB8Kql49N6+aDZ
	 nHsPyJkrXdoZNYfiOoMkPipCiO++hdtS5yfcbQKrcFdlEiNDMZHtNzs/UyS7n/yWHQ
	 Pxy/OVIGSSPfFxZO0vGjr/3MV/Z9jKYo6fHFG4Oag1nqS4xW4ylaMr6nfbD1lZCi5q
	 SJqS6zGjboPBgEFuIzBzTokukJn8HePbfKgBVFm8LkbFloKzNWZhmd6C0uuAK0X607
	 9uaKapWvKiAyNk6/my4ZtbAmoDj9yuAumCAks15RpaYiiL2DR0b7Ul6WhttlnqYtTc
	 D/WDMWLfVgUnA==
Date: Wed, 25 Oct 2023 13:12:55 +0100
From: Lee Jones <lee@kernel.org>
To: Anjelique Melendez <quic_amelende@quicinc.com>
Cc: pavel@ucw.cz, thierry.reding@gmail.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	agross@kernel.org, andersson@kernel.org, luca.weiss@fairphone.com,
	konrad.dybcio@linaro.org, u.kleine-koenig@pengutronix.de,
	quic_subbaram@quicinc.com, quic_gurus@quicinc.com,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-pwm@vger.kernel.org
Subject: Re: [PATCH v6 3/7] soc: qcom: add QCOM PBS driver
Message-ID: <20231025121255.GM8909@google.com>
References: <20231020182218.22217-1-quic_amelende@quicinc.com>
 <20231020182218.22217-4-quic_amelende@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231020182218.22217-4-quic_amelende@quicinc.com>

On Fri, 20 Oct 2023, Anjelique Melendez wrote:

> Add the Qualcomm PBS (Programmable Boot Sequencer) driver. The QCOM PBS
> driver supports configuring software PBS trigger events through PBS RAM
> on Qualcomm Technologies, Inc (QTI) PMICs.
> 
> Signed-off-by: Anjelique Melendez <quic_amelende@quicinc.com>
> ---
>  drivers/soc/qcom/Kconfig          |   9 ++
>  drivers/soc/qcom/Makefile         |   1 +
>  drivers/soc/qcom/qcom-pbs.c       | 243 ++++++++++++++++++++++++++++++
>  include/linux/soc/qcom/qcom-pbs.h |  30 ++++
>  4 files changed, 283 insertions(+)
>  create mode 100644 drivers/soc/qcom/qcom-pbs.c
>  create mode 100644 include/linux/soc/qcom/qcom-pbs.h

The LED patches look good to go.

What's the plan for the SoC driver?

  * Who will review it?
  * Shall I take it via LED with an Ack?

-- 
Lee Jones [李琼斯]

