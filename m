Return-Path: <devicetree+bounces-12903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AB37DBD21
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 16:58:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 96BF2B20D16
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 15:58:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B98E018C0E;
	Mon, 30 Oct 2023 15:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T04fjFiV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA3418C09
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 15:58:41 +0000 (UTC)
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18A82E6
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 08:58:40 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-d9a6399cf78so4048107276.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 08:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698681519; x=1699286319; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i9wQF6czaHL5990fx9mFAIq4LF/PsQmXaPG+go3vW9k=;
        b=T04fjFiV0aRmIJ7IxlmotBXXLIfeiAACa87jMcCHr1866IS7WyWs8ffoA1WqMJAVZw
         l/e+9B/+PwBSdotC1F7iV60NsIReBmmbOW0oqryQy8YGZT6h+bIxHhFoAISvxvnkbeK9
         ECmw3GfzVttCs0B8yQi9N7qkhFX2Y1/PAjO5CfSt2yIhvQVOF3iO6HkV6oCV+LGgGhHW
         UgD3y3tpUJWyHnVblIhbyaHYo+Fk75HUOVHGEciithYd1jykXwASILpIazpbpL9AQ+NK
         71YqKLbmTWiNJIgn6QEJPWK50Zg+jmgQoCONWCtIfHDQ6RBvkAlEdXnKAOOn61CM9+xG
         x2Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698681519; x=1699286319;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i9wQF6czaHL5990fx9mFAIq4LF/PsQmXaPG+go3vW9k=;
        b=E8MfSavO/4jexedcjga7hVXhcVmVgQBQH8M2RkfSUCjkIk7Xzb6FYCIX5MyzAIJ84p
         BFpdfMg/pPipCekjbMuX+ZWm0SG8jnMTB2KATF/reGcvvyCEGwhonv87VLwPBthyIu5W
         f5c1bsvdJSKEi1RVWDB6zmgA0qQBa1DZPo5RBPQIIkXU3t1coRTUPavJumDcuAH+CM5+
         QAzx3NHaLs1acAmwrw1sLvfmY7hDqIJz/ZC6ROpYbVMhtjhl2NVQ/LryIYyE67XmKMzy
         0/Ix+I57aNgDjmxVngcziXVFU7LqL6X3FeD/1WZLuuPCTeZcjTpr04X0Pz+09G096k7K
         kLlA==
X-Gm-Message-State: AOJu0YyfodMTkoc4Q2u9hql3PtZU4WdT7R8TzuqlsKNU2NgjgH0RhTds
	9QsqaxJOylclR0JCT5VWc85R4IybbFNnkyevMku0kg==
X-Google-Smtp-Source: AGHT+IElJAfTeqDMc/0zerFNtxAKyhKnfXm62rOTFu0ZaS/53X96RXXiYik5nuEP8mHooIpebl+3qu7X6PWZlNbl6IA=
X-Received: by 2002:a25:e0c9:0:b0:da0:6876:c20f with SMTP id
 x192-20020a25e0c9000000b00da06876c20fmr21153ybg.20.1698681519216; Mon, 30 Oct
 2023 08:58:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025-b4-rb1-usb-host-v1-1-522616c575ef@linaro.org>
In-Reply-To: <20231025-b4-rb1-usb-host-v1-1-522616c575ef@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 30 Oct 2023 17:58:27 +0200
Message-ID: <CAA8EJpqnKrzZh-mWFkO6cxGfE6TTGVSRjZN9Bov4LZeTCtQ2ag@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qrb2210-rb1: use USB host mode
To: Caleb Connolly <caleb.connolly@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 14:58, Caleb Connolly <caleb.connolly@linaro.org> wrote:
>
> The default for the QCM2290 platform that this board is based on is OTG
> mode, however the role detection logic is not hooked up for this board
> and the dwc3 driver is configured to not allow role switching from
> userspace.
>
> Force this board to host mode as this is the preferred usecase until we
> get role switching hooked up.
>
> Fixes: e18771961336 ("arm64: dts: qcom: Add initial QTI RB1 device tree")
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>

As a side note, I think we should drop maximum-speed and dr_mode from
qcm2290's usb_dwc3 device node.

> ---
> base-commit: 05d3ef8bba77c1b5f98d941d8b2d4aeab8118ef1
>
> // Caleb (they/them)
> ---
>  arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 4 ++++
>  1 file changed, 4 insertions(+)

-- 
With best wishes
Dmitry

