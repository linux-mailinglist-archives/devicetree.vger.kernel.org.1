Return-Path: <devicetree+bounces-3804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEA37B02CA
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 13:25:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2B85A282810
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:25:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B6CA1CAA2;
	Wed, 27 Sep 2023 11:25:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBC5C8E2
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 11:25:37 +0000 (UTC)
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDF9D13A
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 04:25:35 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-d8198ca891fso12156623276.1
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 04:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695813935; x=1696418735; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3rhUxDhJJabCNT5gEkEeaWHHhWLJbXNmm+8HO9FQ4ko=;
        b=X6Ud8EgdVTAdF1HL9SLk5O/x+IwiM7iIYWRK72d1GA7Adr4UuTxxBI/MPpVZAZ6MK+
         dIDubhb+VpYKYZbMg2NthTVEoo81w7+yoz/tMzT8YSe9y+bZDKFpeaXAjlP71UVilLOc
         IttMKybidSbUYAiOixUUmXa3u9+FiuzvgozHdsiZsgEBitDcYfyRQmwdno/BzC9oGYX1
         BES0ApENr4v3dnDnoUjT0fGNQM9HQwEkuS3xEs6GpcplCXYooFwPrX6qqCt1m8a+AMlE
         vBR20HqtfHONTqaoPD90DnQcsjodP2Fg3iiv046t/nLfVBECfd6e8JYWLfS/T0l09GLY
         3syA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695813935; x=1696418735;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3rhUxDhJJabCNT5gEkEeaWHHhWLJbXNmm+8HO9FQ4ko=;
        b=QY7RsdVA3dWmo6ClEj4YPGuBZGIvtBqZ8Vpgm9pZ1WHu07JCaRCrWC/rHe/QyOh66/
         QcejUDqmSrzfYdZi+eBmI69mT0QCnz43yDOfCMwACbDlbUn7ugD/U4ezDH2ioa8ZsxdK
         jLiADn2LrbZd7aEwnNGM8qCB+Mzrxm4uYgmxTrha3/tHL8O2ZOQT/NHLliAJoKOVrGwh
         jF8ZnjWWIyzzUPjlIwpIowuaOjvkgykr0UqEuobtyGTPPcokvS3OEPmjdGki132tisFO
         r1norCya3OCVP9vlaLXZ9zYYRv4zK7agM2b6McSkevlFGnSmFF/h3bzKrwA7xLgwPp8N
         y5hQ==
X-Gm-Message-State: AOJu0Yw37fgSCkS00DF8lNKQYyUxZF/dfIGLDcNppm7tlSz16z0FlEdB
	4gIHZbcY6tAWBryj6424Gzvkur+KgMuceOp4chgcTQ==
X-Google-Smtp-Source: AGHT+IEfgCCehiTmQ4WyCrzk+BL3JJu9a61KOY5KmvRc6K1x2XARsd+PgCX0jR5XTG9og2VdbvlhCVCECen6zvUCL9A=
X-Received: by 2002:a25:c754:0:b0:d0a:a1fa:b8e4 with SMTP id
 w81-20020a25c754000000b00d0aa1fab8e4mr1855377ybe.38.1695813935109; Wed, 27
 Sep 2023 04:25:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230916175952.178611-1-danila@jiaxyga.com>
In-Reply-To: <20230916175952.178611-1-danila@jiaxyga.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 27 Sep 2023 13:24:59 +0200
Message-ID: <CAPDyKFoogvK5STo51VVyQhrZZ=3V8piMtHm=E+YeLm_pidt+vA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pmdomain: qcom: rpmhpd: Add support for SM7150
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, 16 Sept 2023 at 19:59, Danila Tikhonov <danila@jiaxyga.com> wrote:
>
> This series adds RPMH support for Qualcomm SM7150 SoC.
>
> Changes in v2:
> - Use generic RPMh PD indexes.
> - Link to v1:
> https://lore.kernel.org/all/20230915182054.113839-1-danila@jiaxyga.com/
>
> Danila Tikhonov (2):
>   dt-bindings: power: qcom,rpmpd: Add SM7150
>   pmdomain: qcom: rpmhpd: Add support for SM7150 rpmh clocks
>
>  .../devicetree/bindings/power/qcom,rpmpd.yaml  |  1 +
>  drivers/pmdomain/qcom/rpmhpd.c                 | 18 ++++++++++++++++++
>  2 files changed, 19 insertions(+)
>

Applied for next, thanks!

Kind regards
Uffe

