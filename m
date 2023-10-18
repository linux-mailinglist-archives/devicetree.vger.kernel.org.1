Return-Path: <devicetree+bounces-9830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7C67CEB65
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 00:37:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 063F3281D83
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 22:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A024539844;
	Wed, 18 Oct 2023 22:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uu7qKZO9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA99039854
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 22:37:28 +0000 (UTC)
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA31A118
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 15:37:26 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-d9a398f411fso8372364276.3
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 15:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697668646; x=1698273446; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3sVJFVpPwshmtNesSZYpLdeu3AKCPAN5fOk/AE0DGUc=;
        b=uu7qKZO9fW/V52UMWo3os3UxIMUH9+AcUa+7z202HbsLfolO0r15qt5YAVIgx7pi1d
         M/T5S/U3x+TVKtJiMpa7+PoxbvcXoz8FQMtWZ8OZlFI6lEQ27REdKsUSaCHopLJ3Dpgz
         GZKPFMH6A7CxX3Tc60KDoTHawa/Jepq/tbpMhWD9eugU878M2wvbol5WP8hEdgLuxkns
         bXVUHfj94hL0hQuyeL4iApYDom/WFNUTdF9IeDhVVaofVp8mtu9idhvnySsDKapg6Y6o
         WAMMVzJxvVkkyAnazoaa3bn3rYB8VpOaJMWUXZTcTE/cvIndcNhHL0S0SBYGircUMAiX
         lvgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697668646; x=1698273446;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3sVJFVpPwshmtNesSZYpLdeu3AKCPAN5fOk/AE0DGUc=;
        b=TwRc4gc10B+dbCQD02EDAh1ppHyEOTm2pc2cu9UdZDOEvujfvJ8Wv5HYqG99RKh28B
         nS7c5MnnIxpvaAR4/zSLddD+cizzvbrvMKR5IGoMlRErzVkh3nrtRlI3uDTHNPnZniH/
         ziLxWaCEszuV8q6DmWgdbgJhpn5fevbVM+fOPOHK8hbAMsyPy0NfLkS8LyQzXdnQaMTM
         WyEv1nU219NSWWSMs37QO1oY1WJzIUpLVevdyMSbPdgouQurvep/aJnHGUitVF5qtghC
         KPgUjM+n63Rlt3hlKTl8eAY0v/UgbkDKqPHnGJjzjT9Ay8yPZeVnZ+CPHW4KSrowfE3A
         R7jA==
X-Gm-Message-State: AOJu0YzYzk8jrNwz7KyomS8Pt3xaOe+X3xF7koW1qZzAN59hUxInwNLt
	5h2igxi9YGU9fglCrkH5ChwTBmfaBIkpREq21+RGxQ==
X-Google-Smtp-Source: AGHT+IGQlkbNBVD/SIMZRooMGJ4PHAVW/C3q1NKNDnZ+FMwhI+gT6LA3YI3WJjxYOKCV9tBBzi3ChIxzhBVUQseyZQo=
X-Received: by 2002:a25:c8c6:0:b0:d9a:f897:f9b4 with SMTP id
 y189-20020a25c8c6000000b00d9af897f9b4mr616222ybf.65.1697668646025; Wed, 18
 Oct 2023 15:37:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231014133823.14088-1-otto.pflueger@abscue.de>
In-Reply-To: <20231014133823.14088-1-otto.pflueger@abscue.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Oct 2023 00:36:49 +0200
Message-ID: <CAPDyKFoq-7FL=e_ACDeSamoKSmoewK=eSEzzaL1xRQwX_jf_LA@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] pmdomain: qcom: rpmpd: Add MSM8917 and similar SoCs
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Bjorn Andersson <andersson@kernel.org>
Cc: =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
	linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 14 Oct 2023 at 15:38, Otto Pfl=C3=BCger <otto.pflueger@abscue.de> w=
rote:
>
> Add RPM power domain definitions for the Qualcomm MSM8917, MSM8937 and
> QM215 SoCs. These SoCs all have the same power domains (VDDCX and VDDMX
> in voltage level mode), but different regulators are needed for QM215
> because it is used with a PM8916 PMIC instead of a PM8937 PMIC.
>
> ---
> Changes in v4:
> - Rebase on latest next as of 2023-10-14 with new SM7150 compatible
> - Add missing Reviewed-by (if there were no changes to rebase on, I
>   would have simply resent the patch)
> Changes in v3:
> - Sort compatibles in device tree binding documentation (suggested by
>   Krzysztof)
> - Rebase on latest next with genpd subsystem renamed to pmdomain
> Changes in v2:
> - Fix typo in patch description: VDDMD -> VDDMX
> - Split MSM8917 and QM215 changes (suggested by Konrad)
> - Remove redundant qcom,msm8937-rpmpd entry from rpmpd_match_table
>   and use a fallback compatible instead (suggested by Konrad)
>
> Otto Pfl=C3=BCger (3):
>   dt-bindings: power: rpmpd: Add MSM8917, MSM8937 and QM215
>   pmdomain: qcom: rpmpd: Add MSM8917 power domains
>   pmdomain: qcom: rpmpd: Add QM215 power domains
>
>  .../devicetree/bindings/power/qcom,rpmpd.yaml | 81 +++++++++--------
>  drivers/pmdomain/qcom/rpmpd.c                 | 91 +++++++++++++++++++
>  include/dt-bindings/power/qcom-rpmpd.h        | 21 +++++
>  3 files changed, 156 insertions(+), 37 deletions(-)

Konrad, Bjorn - it's getting late for v6.7, but not too late yet,
hence I am pinging you about this.

Can we get an ack from some of you for this series or there is still
something to improve for Otto?

Kind regards
Uffe

