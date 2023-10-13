Return-Path: <devicetree+bounces-8555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 551967C8AFF
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 18:30:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9E3E2B20AD0
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 16:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5797815AF4;
	Fri, 13 Oct 2023 16:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QEGmFTRz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85712137D
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 16:30:30 +0000 (UTC)
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE568ED
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 09:30:18 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-d9ac43d3b71so2116333276.0
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 09:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697214618; x=1697819418; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=veDHOSSglRPxO++sDqxd9T/imdhN2ow5EstVAAB24X4=;
        b=QEGmFTRzZ3laIo1+ekyJhzvzx0d86X4xE5SuRtC3/1v7k7azCPYMceImseS30h8Cch
         HoB8/3P+9dRSQMs39GYRIvEf9X3K0hYtw+F9fKWuR1tP1wRfNHAhdwua9YY7f70Q2pfA
         L9+r2J4zIRm4RLfseV8jeSfTqfM2ggOeTaNgVBOLTdXjTYkCO+jpmrPjPZUblYduzRKs
         HeRiuSKU6u2He0U7Y/XiHzKYBfmYCxaikzZCwdVsUEnJFs3BIWxD24iYrvNoQS+XCHrX
         dxxeSdDT4jtdJzSz4cVw4nx/yREUvfTaWa8oLlygDryRllzZaPliitHxkR3gyX8Q5PuM
         jK/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697214618; x=1697819418;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=veDHOSSglRPxO++sDqxd9T/imdhN2ow5EstVAAB24X4=;
        b=PbT7wBK60C/K2DQibkYyBBHoO9hemA09NJG1R+VQEBfa/Km0ZQGzJZvVFfB/5Jfnqq
         8UAuoMvkXKUYV166BlbwKaiXed0Y23m9AGIN2P5nvGMVuLKQahcDxBpWzSW9Oj6uLePf
         Haboc+/inikh7immrxpMyNq5jkuJMVaO6612iSH6XeukclrcLFWNu2JIdu1c2e3ax2rH
         oz3zJWVmVp9ma5aBOaQTEbRzlztuqx2TIod9tNHl8EAVw32BaBLRF7qxBL8MjA0/wKB2
         4aXAHNi3Yw7XctbVsWCRUDrmpIbIbfsztr8hSn9p5oCYgDJZNz78CEq2Xe9wDVxQg3TJ
         gn+w==
X-Gm-Message-State: AOJu0YwApK7m/LN9hE54kmogbGgOAkyGADtVFF+ji4Itr0ooMHmIZZ0+
	lAtJhE8oAmjT3tTmaN3C0x08ZKo2wLwMABHnS//ERw==
X-Google-Smtp-Source: AGHT+IGmGROLxFTg/QvBurrmJrb0DRXEr3xD4vja5abWktrT0Y4AE2J8f1r0WagBilg8IjNVZtcXk8Ii3xs4Np+B6ec=
X-Received: by 2002:a5b:f86:0:b0:d7a:d716:233c with SMTP id
 q6-20020a5b0f86000000b00d7ad716233cmr23602244ybh.41.1697214617968; Fri, 13
 Oct 2023 09:30:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230817145940.9887-1-dmitry.baryshkov@linaro.org>
 <20230817145940.9887-5-dmitry.baryshkov@linaro.org> <dff4bd1d-e32a-9541-94d2-c354adf3d23b@arm.com>
In-Reply-To: <dff4bd1d-e32a-9541-94d2-c354adf3d23b@arm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 13 Oct 2023 19:30:06 +0300
Message-ID: <CAA8EJpod3X_HJEUK4i=uO0KmBLUCE0D3pH1xGhezxF0U+cDucQ@mail.gmail.com>
Subject: Re: Warning notice "Memory manager not clean during takedown" on RB5 runs
To: Aishwarya TCV <aishwarya.tcv@arm.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Clark <robdclark@gmail.com>, 
	Sean Paul <sean@poorly.run>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Stephen Boyd <swboyd@chromium.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, broonie@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello Aishwarya,

On Fri, 13 Oct 2023 at 19:05, Aishwarya TCV <aishwarya.tcv@arm.com> wrote:
>
> Hi Dmitry
>
>
> On 17/08/2023 15:59, Dmitry Baryshkov wrote:
> > Add displayport altmode declaration to the Type-C controller node to
> > enable DP altmode negotiation.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
>
> At present RB5 runs against next-master are consistently throwing
> warning messages (attached below with call trace) on "Memory manager not
> clean during takedown". I can send full logs if required. However, the
> runs are booting successfully so the logs are quite big. Tried running
> with older dtb built, where these
> warnings was not observed.

Thank you for the report. These patches should be fixed by the
patchset at https://patchwork.freedesktop.org/series/125010/

-- 
With best wishes
Dmitry

