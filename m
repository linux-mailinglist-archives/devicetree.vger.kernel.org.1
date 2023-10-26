Return-Path: <devicetree+bounces-12191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E387D84AC
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:27:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 55A80B20BAD
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FE7A2EAE4;
	Thu, 26 Oct 2023 14:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S8A3L/KF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0342E3EE
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:27:39 +0000 (UTC)
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AE2F1AE
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:27:37 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6ce291b5df9so500543a34.2
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698330457; x=1698935257; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GhsfFnZU92WVFFrLtVVI1l5X1Oa/Mn3OJb2wIrC8HxY=;
        b=S8A3L/KFwrMW1qgZRTEsPZ+r1M+Gs9TSGv+0/fHkUsYmXv+SFlJVlixeTztoACBq5h
         0niVURbFcYmck7HJoM8FOnPsYMg74H1bEoif/2fyVyavTQtEwda/xQOaBInE+k+QDAwH
         nf7zj3atpindmcvfQAhnmhTgqQzXGgblTD/ZbFPcZiYkHIDQfHJdic8mgEY+QikyBT7i
         d93ZmwcDJkuh79+DjPEF0dp4Ero3xMUgeTsIGobEqQqfsKhB5X6o1qOWT/HZS0t3CZhX
         Hoj2/CmsfYjeJi9cJpqTgDTlfT4hMf2GeWV06emR+bsCqLFXisMNonUGBckeC2EUywaJ
         5sVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698330457; x=1698935257;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GhsfFnZU92WVFFrLtVVI1l5X1Oa/Mn3OJb2wIrC8HxY=;
        b=ucJbsrfUc3Ltm3wzL5FIM7jzq/6/2Yt/ZlZCS6w41pD5VrOmfD9VbY97oZC6CLs97s
         TbT/n2pNLsOy+03+wZNItIw98Q6YHhdLcsys7iNkFgGk8Ib7YXB3+lf6lCUJrFoG0/d/
         h39BnFSexfbQ8/8q9Rvk93TvVOiEa485WLg9R2pjYTaCK2NPYW7dnVMnh3nTscGdE2hx
         3IHx32d3gB5agyR5mmV+TqP2ceiB9leOZllp016n8MEEIX1abnq5T3gvM+uMlvQXgzuc
         XUe1EVhBGSV4zOgTyKa2SsQHQNyP4z87emdUkP6Cn6wEUtQV82PWFG//7jTrx5uvwGCh
         5uOQ==
X-Gm-Message-State: AOJu0YyMpNdxJHv3P2EwjVIK6Yj21FfgW8KTUoN/nK4B6WFYsUzi5z2y
	lgNX3L29DURx/jffw+pir1JSh+2rYn6+alRsh3oyTw==
X-Google-Smtp-Source: AGHT+IGxE2Xrpad4dfWbz2DEnioRFB5E9UqGa5TGGzFeHITk4UUxpgjyIjrhQGMQUGjqU0chVHmctgxOD1J/cdNLLec=
X-Received: by 2002:a05:6830:910:b0:6b9:c4b1:7a86 with SMTP id
 v16-20020a056830091000b006b9c4b17a86mr23867125ott.3.1698330456853; Thu, 26
 Oct 2023 07:27:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-rpmpd-v1-0-f25d313104c6@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-rpmpd-v1-0-f25d313104c6@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 26 Oct 2023 16:27:01 +0200
Message-ID: <CAPDyKFpXURm-kE-mhgyU7bO4EeApKA6PSrmcNp4a_39Eba-Lcg@mail.gmail.com>
Subject: Re: [PATCH 0/2] pmdomain: qcom: rpmhpd: Introduce Power Domains
 support for SM8650
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 09:32, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add Power Domains and Bindings for SM8650 platform, it uses
> a new NSP2 power domain.
>
> Dependencies: None
>
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> Neil Armstrong (2):
>       dt-bindings: power: qcom,rpmpd: document the SM8650 RPMh Power Domains
>       pmdomain: qcom: rpmhpd: Add SM8650 RPMh Power Domains
>
>  .../devicetree/bindings/power/qcom,rpmpd.yaml      |  1 +
>  drivers/pmdomain/qcom/rpmhpd.c                     | 30 ++++++++++++++++++++++
>  include/dt-bindings/power/qcom,rpmhpd.h            |  1 +
>  3 files changed, 32 insertions(+)

Applied for next, thanks!

Kind regards
Uffe

