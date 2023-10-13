Return-Path: <devicetree+bounces-8603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FB87C912F
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 01:08:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01A5E1C2091A
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 23:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 786062C856;
	Fri, 13 Oct 2023 23:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XgUYQp9V"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76A02B5F2
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 23:08:03 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D20BECC
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 16:07:59 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5a7af20c488so31443337b3.1
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 16:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697238479; x=1697843279; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GTZAp68ttuyTxKkLmjiKDcnt+ot03nWQqCAoiuWLPj4=;
        b=XgUYQp9VvazENLlju8K1vLaG5E6Pd4U/7P1yfNrguASJ4IjSLNW+Hvyj/EQeuzTQBM
         9NqGuyf45rliaT/JBLcg0mPLyWaIgTS9uP661Zpsr/3vCJTo9x1uyYb6zP4vUR0IlmZN
         ITAxnHSYq0say4s8Zmgq4PIMtF6w0gac3OiJCf/Pg0fgf3v6DACvPZF46l+B4WBZAq0P
         g9QmcmYIRS274JsmVP3iRM0L3mcOGLD5p62algh+RIgnlFAcKrB8vsa9AnLNQfrFGRX5
         ZihNikwH2Eh2mPi2J+nh/Jiit5c1kmXBuZOBVwD6PES2G8VPMLja1tg4W7fccJoUHSUS
         Ym/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697238479; x=1697843279;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GTZAp68ttuyTxKkLmjiKDcnt+ot03nWQqCAoiuWLPj4=;
        b=hzIKDghuik/4F0MUO42Q6WtJCalV9Mclfkds/sX+y5SNjozFh8GvCTjIGuxOVXhGll
         Kq7cxAzYUsUIDcqnBbP6D2zul2MzmcvJXqMH8UoDV4fiWUnPopmANjIPh+ZouoKu2njF
         I9kyITEVQlX+nfwGbMY2MmicXitpFSkjSZpWvwjvbtAvk9sRa79Wtzm+sHJO0HlLVB7o
         vqP6yqMxmVgf3wAUl6ej9/HluDMEbP/KhV6wzCw4l6Hld/1NlmnazQuvyuA3zf9kLMwL
         EJHb+94x2FMEMUHavZBnSPYl3U8a5cpABtKcfKbgKW1A6H1j0vbKe1WwTXb75XxgtXrZ
         5VYw==
X-Gm-Message-State: AOJu0YzbDmMbYMJRBg/c4eDgVrnREyGW1PxkihwEp15ybMCcfS47NA1G
	XGAe8kfVmgXIE86F99RoqBCTJ7ZexYATV2KJLr9z/g==
X-Google-Smtp-Source: AGHT+IEV/6cjtm5aswWQE7+Xj1dG/j34dWuGSndGd1o4xDdSx/J/e4MW+VMXlArDM1lZpgch8aAfkjCvTI8QUarCcvU=
X-Received: by 2002:a0d:d796:0:b0:5a8:2b82:a031 with SMTP id
 z144-20020a0dd796000000b005a82b82a031mr2481006ywd.26.1697238478953; Fri, 13
 Oct 2023 16:07:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231013164025.3541606-1-robimarko@gmail.com> <20231013164025.3541606-2-robimarko@gmail.com>
In-Reply-To: <20231013164025.3541606-2-robimarko@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 14 Oct 2023 02:07:47 +0300
Message-ID: <CAA8EJpqG0fL2j-+4qN9kw8fDdGmE7LpRYdJtqEPsGFScwRz4AQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: ipq8074: pass QMP PCI PHY PIPE
 clocks to GCC
To: Robert Marko <robimarko@gmail.com>
Cc: andersson@kernel.org, agross@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 13 Oct 2023 at 19:41, Robert Marko <robimarko@gmail.com> wrote:
>
> Pass QMP PCI PHY PIPE clocks to the GCC controller so it does not have to
> find them by matching globaly by name.
>
> If not passed directly, driver maintains backwards compatibility by then
> falling back to global lookup.
>
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
> Changes in v2:
> * Make clocks and clock-names one-per-line
>
>  arch/arm64/boot/dts/qcom/ipq8074.dtsi | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

