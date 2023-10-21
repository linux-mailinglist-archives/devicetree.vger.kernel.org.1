Return-Path: <devicetree+bounces-10568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C19317D1F1E
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 21:34:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B96881C20924
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 19:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1AD02030C;
	Sat, 21 Oct 2023 19:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=z3ntu.xyz header.i=@z3ntu.xyz header.b="EZiTc8+E"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6F51DDCD
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 19:34:48 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27627197;
	Sat, 21 Oct 2023 12:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1697916852; bh=z/PQtjKHGnFlr9gaVSJrAXB/j6VUiwPJtpZZinALBa0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=EZiTc8+EP4ALVVxqbCe/MQaaQ5wV6r5LnwqVpuKb66Y8qK3pzQPHI0ItxbVvvnzpl
	 v6Q0v1KYrUuSLthCBZ7PXs3mzLvWFclDa8uP8sXWkAUt142YU80NtbN98Nm1B3gFp5
	 jcP1xikBDIj+u1AuW6tIuevrRyZMr7OTHPyeitjQ=
From: Luca Weiss <luca@z3ntu.xyz>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 ~postmarketos/upstreaming@lists.sr.ht
Cc: Nia Espera <nespera@igalia.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <keescook@chromium.org>,
 Tony Luck <tony.luck@intel.com>,
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, Rob <Me@orbit.sh>,
 Clayton Craft <clayton@igalia.com>,
 Caleb Connolly <caleb.connolly@linaro.org>,
 Luca Weiss <luca.weiss@fairphone.com>, ~postmarketos/upstreaming@lists.sr.ht,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Subject:
 Re: [PATCH v2 4/6] arm64: dts: qcom: sm8350: Fix remoteproc interrupt type
Date: Sat, 21 Oct 2023 21:34:10 +0200
Message-ID: <6985565.DvuYhMxLoT@z3ntu.xyz>
In-Reply-To: <ca42af11-7b92-4d07-9b93-367f92c886fe@linaro.org>
References:
 <20231018-nia-sm8350-for-upstream-v2-0-7b243126cb77@igalia.com>
 <20231019040623.GA5142@thinkpad>
 <ca42af11-7b92-4d07-9b93-367f92c886fe@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Samstag, 21. Oktober 2023 19:44:20 CEST Konrad Dybcio wrote:
> On 10/19/23 06:06, Manivannan Sadhasivam wrote:
> > On Wed, Oct 18, 2023 at 10:17:15PM +0200, Konrad Dybcio wrote:
> >> On 10/18/23 16:25, Nia Espera wrote:
> >>> In a similar vein to
> >>> https://lore.kernel.org/lkml/20220530080842.37024-3-manivannan.sadhasiva
> >>> m@linaro.org/, the remote processors on sm8350 fail to initialize with
> >>> the 'correct' (i.e., specified in downstream) IRQ type. Change this to
> >>> EDGE_RISING.
> >>> 
> >>> Signed-off-by: Nia Espera <nespera@igalia.com>
> >>> ---
> >> 
> >> Hm, apparently 8250 and 7180 have the same thing.
> >> 
> >> Mani, could you elaborate on this?
> > 
> > So the remoteproc driver expects the wdog interrupts to be edge triggered
> > as the rest of the interrupts, but DT specifies them as level triggered.
> > This won't cause any issue during the first instance of the probe as the
> > driver requested trigger will be given precedence. But if the probe
> > defers for some reason and during the next try, request_irq() will fail
> > with error similar to below:
> > 
> > irq: type mismatch, failed to map hwirq-x for interrupt-controller@xxxxxx!
> > 
> > This error is often confusing and I tried to fix it. But Maz didn't agree
> > with me, so I just ended up fixing the DTs for some platform I have
> > access to.
> > 
> > So ideally, DTs of all platforms should be fixed to pass correct trigger
> > type.
> So, this should be edge for all platforms, correct?

I'd believe so, iirc when I looked at the driver it always requests that
interrupt type.

For reference, these are my patches:

sm6350:
https://github.com/z3ntu/linux/commit/0522b7a1b981d80884a785c7e654bb5094ea1bc2

sc7280:
https://github.com/z3ntu/linux/commit/ead1d7b8f5648535b857cfa9250aac2480f00ed3

> 
> Konrad





