Return-Path: <devicetree+bounces-215502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1756CB51A98
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 16:59:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A78158250E
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 14:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4727332ED32;
	Wed, 10 Sep 2025 14:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="W9I9dslU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500B530C373
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 14:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757515386; cv=none; b=dbeinfHoIZvDUzt6sns2wX3R9M0pjEEkyRlRMz2qdKtcAsPuCGquikqP3S1BAdMVo81IENBwzp7LwRfSlfdhS0X7O85RQ29i2R9tOV+fL6QN9pU7NB/FoboOgIjOLIUxvVAnk/m9Rgu+/hK2S8wjY6Tz0ezOiEMFI3XuVCjZHcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757515386; c=relaxed/simple;
	bh=N/wKflTYmUXg8HGSLU8QR0Phvp1v3e5wOBQSK2/SdsU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JFihasjJueWv+OcR9AvJ1GY6NNn/cKPq9sHDDc1sUx724naKnPkZ9KIjn5GsvOB9FgbaUnhfhyTpXP9qwRF9tbx0/CSuI5A/5LIRswha865nOiS42g83zkRufggCAYeruePQmcsW+ygGYlwwb+QvrCyDN4w9RQUL4bnimoSjrtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=W9I9dslU; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-56afe77bc1eso1179685e87.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 07:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1757515382; x=1758120182; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UkhFCZ5ofWJHJ2EhMv0fguBBuTeG4Pes0q1AF4EcfFA=;
        b=W9I9dslUEhE3BND5cfXcf2bNcL4/rCz7WLDlhW+n9sFA6JGBh87OqomtvMoUqGtFTg
         ubzNGCcC2aymD7bAYd0SWlbahLdtbCyCVZox8r16Fr72k6xtRyLwBi7GEpFjZ1ZOeLrU
         iSacvW2KM9340LWGAOGYB/zl+mDq2tBTwUQ+y6PnVrvUoDuUVud/+JxQGirrpV113Nfd
         C9z0o06DC7YeQ5CfnuUjo+V/l2SeLKEnqJnN+RI7Bh4Yxl/8ADILf5bFeJ4+4C+t37u2
         sisVmjs5eilsldP3ExVtTkBAUtVFdsswM78rsxPCpS8KAiV+f+wXBmoFLDVEcBJiP07q
         sgZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757515382; x=1758120182;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UkhFCZ5ofWJHJ2EhMv0fguBBuTeG4Pes0q1AF4EcfFA=;
        b=gKPIA6i+keiBeawOcc/wNMNBJ4TCkY+DxEBreXRi7LuH3Lm+priw83E35a32a9vDIg
         l/ovpbWbKJ+oq9dFGF22xB/FR7iuBGAu3oiAPxjJQ+qW8y2B7THyMiWsDdxT0lK9SRJu
         yr1h6+zPlbPBUSp/zAKupIqlVdr//M+pDrqRpywS9dnqZGkTO2eWwCuS9NEP93i3BGXQ
         Pr99E0LyVJrFzTela+XpOYC0CV/NCkjlBxj7Qj/BfRIPDLQN9PLDz3LOwLtI1kYBKRDa
         z+FCeEyzQ8r6tM9IxBS2bf8UWOoNv+mNuaIDpB+QpChBmq7zo0CxFYx8N+HozVyyl5X7
         /sTA==
X-Forwarded-Encrypted: i=1; AJvYcCXZmTxuAsaapp7pz4wJYeL7E04OOvoCKi+X2udQdwipJgHg2j4Li7CkI+B1m32kLghBbhaIsmnXwwMI@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmch0WNC0Ab8EK3S+pkcPV+Z/Dh2Gnm6Wowk/1eelpG0b0ZQ/O
	+meuKNm1FXOhJJAouBPFmM9uJt0ZP9nxbBdXJIKXa7YCT9AtJXEl9ESq8gtZvgA6r9ZqZHJxvdH
	lUMaY74pLxxp42IlMY9ef8OXsvr+fb0XIotaaQlgtAQ==
X-Gm-Gg: ASbGncsPHWlh2EhxdQi3NzadBi8cWee6szZgp/iswHyYHhVv2SeRQVV+0acbDPtpzUi
	3xGgT+7+IT/335pFCfC9alS+niClI/4hDwTwPEpGNeq6WbtKfrC9zlAUrM1nCexRH+fPIzJfY3i
	6wVZRCW6svKg1Q2MlzU+wRwk0vA+P+8jpwfpcRwdJ1x3vM+KgIjDIPnpML1ugSF2ZexaEyq03m7
	t9oil6B0FI4ALr7LpfFzR09PWz6jDjHE/tPNu8=
X-Google-Smtp-Source: AGHT+IFwwWMP72rjU0xLemNq3S4L4evCHuBoOQsJ51CqzV+zQGmHuO0tvNuPBH/4DumR325PTGGiK6U/D6n2L75MFaY=
X-Received: by 2002:a05:6512:e82:b0:55f:4429:15a6 with SMTP id
 2adb3069b0e04-5626310e5efmr4881766e87.48.1757515382294; Wed, 10 Sep 2025
 07:43:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250910-qcom-sa8255p-emac-v1-0-32a79cf1e668@linaro.org>
 <20250910-qcom-sa8255p-emac-v1-2-32a79cf1e668@linaro.org> <175751081352.3667912.274641295097354228.robh@kernel.org>
 <CAMRc=Mfom=QpqTrTSc_NEbKScOi1bLdVDO7kJ0+UQW9ydvdKjQ@mail.gmail.com> <20250910143618.GA4072335-robh@kernel.org>
In-Reply-To: <20250910143618.GA4072335-robh@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 10 Sep 2025 16:42:50 +0200
X-Gm-Features: Ac12FXw3DEUYlNQHBVzd7vCIYANNaG3yJ5y0y_Zklwl-sYjU6Q6eUcIMkXz0GhY
Message-ID: <CAMRc=McKF1O4KmB=LVX=gTvAmKjBC3oAM3BhTkk77U_MXuMJAA@mail.gmail.com>
Subject: Re: [PATCH 2/9] dt-bindings: net: qcom: document the ethqos device
 for SCMI-based systems
To: Rob Herring <robh@kernel.org>
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, Eric Dumazet <edumazet@google.com>, 
	linux-kernel@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>, 
	Vinod Koul <vkoul@kernel.org>, Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org, 
	Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org, 
	"David S. Miller" <davem@davemloft.net>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Richard Cochran <richardcochran@gmail.com>, 
	Jakub Kicinski <kuba@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 10, 2025 at 4:36=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Wed, Sep 10, 2025 at 03:43:38PM +0200, Bartosz Golaszewski wrote:
> > On Wed, Sep 10, 2025 at 3:38=E2=80=AFPM Rob Herring (Arm) <robh@kernel.=
org> wrote:
> > >
> > >
> > > On Wed, 10 Sep 2025 10:07:39 +0200, Bartosz Golaszewski wrote:
> > > > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > > >
> > > > Describe the firmware-managed variant of the QCom DesignWare MAC. A=
s the
> > > > properties here differ a lot from the HLOS-managed variant, lets pu=
t it
> > > > in a separate file.
> > > >
> > > > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > > > ---
> > > >  .../devicetree/bindings/net/qcom,ethqos-scmi.yaml  | 101 +++++++++=
++++++++++++
> > > >  .../devicetree/bindings/net/snps,dwmac.yaml        |   4 +-
> > > >  MAINTAINERS                                        |   1 +
> > > >  3 files changed, 105 insertions(+), 1 deletion(-)
> > > >
> > >
> > > My bot found errors running 'make dt_binding_check' on your patch:
> > >
> > > yamllint warnings/errors:
> > >
> > > dtschema/dtc warnings/errors:
> > > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindin=
gs/net/renesas,rzn1-gmac.example.dtb: ethernet@44000000 (renesas,r9a06g032-=
gmac): power-domains: [[4294967295]] is too short
> > >         from schema $id: http://devicetree.org/schemas/net/renesas,rz=
n1-gmac.yaml#
> > > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindin=
gs/net/renesas,rzn1-gmac.example.dtb: ethernet@44000000 (renesas,r9a06g032-=
gmac): Unevaluated properties are not allowed ('clock-names', 'clocks', 'in=
terrupt-names', 'interrupts', 'phy-mode', 'power-domains', 'reg', 'rx-fifo-=
depth', 'snps,multicast-filter-bins', 'snps,perfect-filter-entries', 'tx-fi=
fo-depth' were unexpected)
> > >         from schema $id: http://devicetree.org/schemas/net/renesas,rz=
n1-gmac.yaml#
> > > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindin=
gs/net/renesas,rzn1-gmac.example.dtb: ethernet@44000000 (renesas,r9a06g032-=
gmac): power-domains: [[4294967295]] is too short
> > >         from schema $id: http://devicetree.org/schemas/net/snps,dwmac=
.yaml#
> > > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindin=
gs/net/mediatek-dwmac.example.dtb: ethernet@1101c000 (mediatek,mt2712-gmac)=
: power-domains: [[4294967295, 4]] is too short
> > >         from schema $id: http://devicetree.org/schemas/net/mediatek-d=
wmac.yaml#
> > > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindin=
gs/net/mediatek-dwmac.example.dtb: ethernet@1101c000 (mediatek,mt2712-gmac)=
: Unevaluated properties are not allowed ('mac-address', 'phy-mode', 'reg',=
 'snps,reset-delays-us', 'snps,reset-gpio', 'snps,rxpbl', 'snps,txpbl' were=
 unexpected)
> > >         from schema $id: http://devicetree.org/schemas/net/mediatek-d=
wmac.yaml#
> > > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindin=
gs/net/mediatek-dwmac.example.dtb: ethernet@1101c000 (mediatek,mt2712-gmac)=
: power-domains: [[4294967295, 4]] is too short
> > >         from schema $id: http://devicetree.org/schemas/net/snps,dwmac=
.yaml#
> > >
> >
> > These seem to be a false-positives triggered by modifying the
> > high-level snps.dwmac.yaml file?
>
> No. You just made 3 power-domains required for everyone.
>

With a maxItems: 3?

What is the correct approach then?

Bartosz

> You have to test without DT_SCHEMA_FILES set so that every example is
> tested with every possible schema.
>
> Rob

