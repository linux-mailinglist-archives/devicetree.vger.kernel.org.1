Return-Path: <devicetree+bounces-1594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE25A7A7157
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:56:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68C74281B01
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9ECC3FDD;
	Wed, 20 Sep 2023 03:55:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC3053D67
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54165C43391;
	Wed, 20 Sep 2023 03:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182106;
	bh=lS5QsmDIxhnq9nnMl0m5YDi8EJfraAZLdVal/TChSgk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=u1N+lYm2wHIv1+kaGxqIxTjWvBrSQCbc7lvBtAU8v19pGhlQKARoXyPKwwgtKNd9c
	 CtXrVQmDqCEcmnHxA2H7qqHjYC57KzO8nUI7/XeonRZDs+1qF+WzTRH/4rLqKTrzG4
	 vP3VskkLscHSpqg1T1KHT57OOSjS5II8SL7woyd1ii4B8l6JsbjL7XGTMKMYv/lEl3
	 M67R/Bt3f7Zsic7xWBxyaBMZ/fKVyqWWR2UJ8Zc0MnhGqhoa2tj7GkHKjgP5CMwKNi
	 cbEnPcAJ8Z0V87AdIaPJbO+QNoXpu3egquiLkr+zRpasLLnL+SfT/o32Ols1ICJMau
	 qLkPtFNH67lCg==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	ohad@wizery.com,
	baolin.wang@linux.alibaba.com,
	linux-remoteproc@vger.kernel.org,
	Vignesh Viswanathan <quic_viswanat@quicinc.com>
Cc: quic_kathirav@quicinc.com,
	quic_anusha@quicinc.com,
	quic_sjaganat@quicinc.com,
	quic_srichara@quicinc.com,
	quic_varada@quicinc.com
Subject: Re: (subset) [PATCH v2 0/2] Fix tcsr_mutex register for IPQ6018
Date: Tue, 19 Sep 2023 20:58:57 -0700
Message-ID: <169518233725.1055386.8371009743953920681.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230905095535.1263113-1-quic_viswanat@quicinc.com>
References: <20230905095535.1263113-1-quic_viswanat@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 05 Sep 2023 15:25:33 +0530, Vignesh Viswanathan wrote:
> IPQ6018 has 32 tcsr_mutex hwlock registers of 0x1000 size each.
> The compatible string qcom,ipq6018-tcsr-mutex is mapped to
> of_msm8226_tcsr_mutex which has 32 locks configured with stride of 0x80
> and doesn't match the HW present in IPQ6018.
> 
> This series fixes the following:
>  1. Fix the tcsr_mutex register size to 0x20000 in IPQ6018 DTSI.
>  2. Remove IPQ6018 specific compatible in hwspinlock driver so that it
>     falls back to pick of_tcsr_mutex data.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: qcom: ipq6018: Fix tcsr_mutex register size
      commit: 72fc3d58b87b0d622039c6299b89024fbb7b420f

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

