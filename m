Return-Path: <devicetree+bounces-2576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 856017AB6A0
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 18:59:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E8412282179
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 16:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51C3041E43;
	Fri, 22 Sep 2023 16:59:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3844176D
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 16:59:39 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DE64A1;
	Fri, 22 Sep 2023 09:59:38 -0700 (PDT)
Received: from g550jk.localnet (k10064.upc-k.chello.nl [62.108.10.64])
	by mail.z3ntu.xyz (Postfix) with ESMTPSA id 18589CFADA;
	Fri, 22 Sep 2023 16:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1695401947; bh=YdDNYeicK1mKk1zXR9XTDGgIPaGTsOQEJqBY4ITj1lA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=LBedKGnqOSjfpR9SN7Cxj2UmD11nuc5bPBvw1EWYjnGzHMetMP7n2tlT3qtMCLWRJ
	 hAnlUisNVUdobBhO3BANmrETiyOkG5SqHtTWPhKqG11rCZL1XddGS5rlbQKSlkEuG6
	 EDcDfDwsKN6Y9/pInpZgjfYY9V3QzAHFrJbhETVo=
From: Luca Weiss <luca@z3ntu.xyz>
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Small style fixes in msm8974.dtsi
Date: Fri, 22 Sep 2023 18:59:06 +0200
Message-ID: <2899653.e9J7NaK4W3@z3ntu.xyz>
In-Reply-To: <20230627-msm8974-sort-v1-0-75c5800a2e09@z3ntu.xyz>
References: <20230627-msm8974-sort-v1-0-75c5800a2e09@z3ntu.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Dienstag, 27. Juni 2023 21:45:12 CEST Luca Weiss wrote:
> While making sure the nodes are sorted correctly, I also noticed that
> some lines are wrongly indented. Fix both.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
> Luca Weiss (2):
>       ARM: dts: qcom: msm8974: replace incorrect indentation in interconnect
> ARM: dts: qcom: msm8974: sort nodes by reg
> 
>  arch/arm/boot/dts/qcom/qcom-msm8974.dtsi | 80
> ++++++++++++++++---------------- 1 file changed, 40 insertions(+), 40
> deletions(-)
> ---
> base-commit: 53cdf865f90ba922a854c65ed05b519f9d728424
> change-id: 20230627-msm8974-sort-e34b28f10a34
> 
> Best regards,

Hi Bjorn,

also ping on this one. I didn't check again if it now conflicts with -next (as 
pointed out by Konrad a while ago), if it does let me know and I'll resend.

Regards
Luca



