Return-Path: <devicetree+bounces-9806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D47E7CE8AF
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 22:22:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CEA3AB20D26
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B0B81EB54;
	Wed, 18 Oct 2023 20:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=z3ntu.xyz header.i=@z3ntu.xyz header.b="MEesbCZv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DA01EB46
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 20:22:00 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D98379F;
	Wed, 18 Oct 2023 13:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1697660517; bh=QqLLrKadzWHdHgLEE5BLiKAzwuDFNkmPcq7fjUL3hpI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=MEesbCZvB7S/xc7ff5xM4yGXFf7vDrSBJYGspIELXaPBTUOYhy5uLWC5RaJMaQJ9D
	 7yZSi+EMBiimIJe+nJeSV/KRKIkMPdFwHuYn6l7YvzUkVjFr0HeSwmXCJ+7E+IsmYV
	 nG00Ud31hKqSNe+0V4FKin1rEc05MevDpkR4PGwM=
From: Luca Weiss <luca@z3ntu.xyz>
To: Nia Espera <nespera@igalia.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <keescook@chromium.org>,
 Tony Luck <tony.luck@intel.com>,
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 ~postmarketos/upstreaming@lists.sr.ht
Cc: linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, Rob <Me@orbit.sh>,
 Clayton Craft <clayton@igalia.com>,
 Caleb Connolly <caleb.connolly@linaro.org>,
 Luca Weiss <luca.weiss@fairphone.com>, ~postmarketos/upstreaming@lists.sr.ht,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Subject:
 Re: [PATCH v2 4/6] arm64: dts: qcom: sm8350: Fix remoteproc interrupt type
Date: Wed, 18 Oct 2023 22:21:55 +0200
Message-ID: <3714987.mvXUDI8C0e@z3ntu.xyz>
In-Reply-To: <6ac842b8-5fcb-4094-8488-4d6e250bf102@linaro.org>
References:
 <20231018-nia-sm8350-for-upstream-v2-0-7b243126cb77@igalia.com>
 <20231018-nia-sm8350-for-upstream-v2-4-7b243126cb77@igalia.com>
 <6ac842b8-5fcb-4094-8488-4d6e250bf102@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mittwoch, 18. Oktober 2023 22:17:15 CEST Konrad Dybcio wrote:
> On 10/18/23 16:25, Nia Espera wrote:
> > In a similar vein to
> > https://lore.kernel.org/lkml/20220530080842.37024-3-manivannan.sadhasivam@
> > linaro.org/, the remote processors on sm8350 fail to initialize with the
> > 'correct' (i.e., specified in downstream) IRQ type. Change this to
> > EDGE_RISING.
> > 
> > Signed-off-by: Nia Espera <nespera@igalia.com>
> > ---
> 
> Hm, apparently 8250 and 7180 have the same thing.
> 
> Mani, could you elaborate on this?
> 
> Konrad

I'm also carrying something like this for my sm6350 and sc7280 trees.

I tried getting some clarification in the lkml thread linked above about what 
should be done but never got a response.

Regards
Luca



