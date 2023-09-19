Return-Path: <devicetree+bounces-1469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C64A7A67B5
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 17:12:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47E8D281472
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 15:12:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68D3E3B7A5;
	Tue, 19 Sep 2023 15:12:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B33B3B782
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 15:12:44 +0000 (UTC)
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2C6CF1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 08:12:42 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-d81b42a3108so4734929276.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 08:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695136362; x=1695741162; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RwBFLBCefbsy21c4npTbAU6eApQw+jfQJ+Mmxu8RhRA=;
        b=bPEnTuJcF4lDHZmR3vRaBKtKbtTG2Yfj3cVbo0Wq7d5IaoDzIAKJDzUM5Xki5vzkY0
         FdOjCa89MFz6pfx6oixsBsXeIfVGtS1V1jAKEAW9ODR/MgoEHkL3WNrTPN3kiY0BSxZl
         amMu/mC1tglsxOKbPhFBNBaNBZcU52g/il/v3OHlt5EGp+pCrfdT0oKsggJIz3YIL19C
         npLepS0/V9w54eOQKknN4ZNhANpVCJaWwSF2a4E6go7ygBnx4kUGhSDJ5rBJKHitZvUM
         rpVAqmAT9m7gV1lIwwmxURZc85ZVpusyIAJ0G/NLdu+xvrzXNQZR3PFlHbUXeVILetfa
         mRaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695136362; x=1695741162;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RwBFLBCefbsy21c4npTbAU6eApQw+jfQJ+Mmxu8RhRA=;
        b=ZmO2gYL4mJdIv8ARaQ2xBvt06jam77GAIBDCSDYJ/TsQ3xwYuxol9svNh3Eoc/ql2V
         1EJT+Uuh76gCrac/YaRko3hRWECMqX4oNsGaa2688QbRuQrdVoOLSjoGXmfKt8lSDSc3
         UE9VopowPe9yVIn+FQNusLcVqBdoe5OvwiRTtuzox0lL+ctazhr6KxjLCe3cTDfAGgoT
         w5ebSuvnCC50CSixO3ld4xB3O3/r6fulPefBcJIbSEOUNyM5ROiY6dQaG9hdQ3z5yp4P
         /Vl7kZP+EVCpULU/fkbIi3dN4Q+6bkyc/h7jr9hN2yeeBlHTlpm3b0zDOcerlMbiODpl
         sZqw==
X-Gm-Message-State: AOJu0YzoH1X2tZ486XvvDxZhWd3LHab1xpQ4nsWS2pbqQxavd1g/GpCy
	USZiyFxXC5NYVuM2GP7HrYqX/PQf1KJ8W32a0lVPmg==
X-Google-Smtp-Source: AGHT+IGSY0KfKzL/8laxx9lvgeIq6kZxzBsZt5dq8iJrSTHyFpS5ghMNwzig2inkSJFiqO0qXFR1oOfDMzboG7t3tJc=
X-Received: by 2002:a5b:c48:0:b0:d81:cb92:337c with SMTP id
 d8-20020a5b0c48000000b00d81cb92337cmr10601197ybr.54.1695136361868; Tue, 19
 Sep 2023 08:12:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230918205037.25658-1-quic_nitirawa@quicinc.com> <20230918205037.25658-3-quic_nitirawa@quicinc.com>
In-Reply-To: <20230918205037.25658-3-quic_nitirawa@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Sep 2023 18:12:30 +0300
Message-ID: <CAA8EJprAxUhipHS1+BRRVo8o6gubNRJk12msMgOraDjFBo8rVQ@mail.gmail.com>
Subject: Re: [PATCH V4 2/2] phy: qcom-qmp-ufs: Add Phy Configuration support
 for SC7280
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Manish Pandey <quic_mapa@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 18 Sept 2023 at 23:51, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>
> Add SC7280 specific register layout and table configs.
>
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

