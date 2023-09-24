Return-Path: <devicetree+bounces-2875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 442057ACCC8
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:52:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 5F7191C203DB
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 22:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6CB5101C2;
	Sun, 24 Sep 2023 22:52:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36B0A57
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 22:52:28 +0000 (UTC)
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E518FF
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:52:26 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-59c0b9ad491so61792627b3.1
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695595945; x=1696200745; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wqePdKs4FSnXt7oeFVHQEm26iZNJhC0uyofhDbrUr/o=;
        b=Du2COnuMlmkuok1bgVTzEciYoZXTM2lO1i+lpr26zcLpfI/7FIzHSgBFH0rINZsipJ
         a9aRbh0WSK1pW0j+5v5eWheny093ItAtLJZrRAz0fNkDTg8XStvbQwm+33IfOgF7FEB4
         BAodzr1Yv4UyU1yxVle9ZNl2FBl14trs17wicIbIgZfFt+MNfjFwJXnkZzoSukU0PExH
         Ab7k2vz6u/HonZMzVcXf2OzJ81SMBz3AyVgCpQb/DXQudeVMVtGfAylWauMU6JZpGIPd
         q8HDanKNu7jtLCoBPpGrv4o63EFxD7GB3cwCewSC/mE/86aKIn49bcxEzahrREakm3SQ
         maAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695595945; x=1696200745;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wqePdKs4FSnXt7oeFVHQEm26iZNJhC0uyofhDbrUr/o=;
        b=H38rNkDR5bXAU/8w9cRAkQlHJqYV23GOgTjBG9ok0JVH1bWukoAyufgNVwCgoq6Bgt
         hqxBAGE8X1UZEgqy08sYas65VVo3ABnQk8C0KWqZI+4ecM/vV7ahHQJz+uxbeCLQtQxG
         Wz/bIQaVe/AmRidRsDSX9xvL/u/sEXzYGJR5HlXje2IgXJmUvH+k8oAmwe0U532Oh1cn
         Y2WFU23IJUtTsxZwypjrwDFLJs/VUowWNGHswBvOjqejFeDu0ZVVcs7opdE2d5b/Z9/i
         hTeHKzETr5xK+GwYJTCiKVXAXclL4lH5APtWh8dSTWWRt/O5181DbC0bcQvmowzZdp3t
         Xehw==
X-Gm-Message-State: AOJu0YzlRsNf+GxGozQJUI3wyp49REH8M6fPbkojO7ULhu9nIlggk+V9
	1ef3jGsWin0CRWf5zY05b6z7Aklif4jHi2xhcjc4xQ==
X-Google-Smtp-Source: AGHT+IHmkOeW1EDSC36M8rpNz9cZRruORxhAmZUq0TCAXthzcxqv9L1+CneWfLH9vYiKedpBtnBvpPDfGCqf9V6ljDg=
X-Received: by 2002:a81:4f92:0:b0:59b:ec11:7734 with SMTP id
 d140-20020a814f92000000b0059bec117734mr5038823ywb.39.1695595945493; Sun, 24
 Sep 2023 15:52:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230924183335.49961-1-krzysztof.kozlowski@linaro.org> <20230924183335.49961-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230924183335.49961-2-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 25 Sep 2023 01:52:14 +0300
Message-ID: <CAA8EJprSKGLgPgGcNxPud3gp=zhSCOaB+8mp0s1Jc7XqpDZ6kQ@mail.gmail.com>
Subject: Re: [RESEND PATCH 2/2] ARM: dts: qcom: sdx65: fix SDHCI clocks order
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, 24 Sept 2023 at 21:33, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Bindings expect clocks to be in different order:
>
>   qcom-sdx65-mtp.dtb: mmc@8804000: clock-names:0: 'iface' was expected
>   qcom-sdx65-mtp.dtb: mmc@8804000: clock-names:1: 'core' was expected
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom/qcom-sdx65.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

