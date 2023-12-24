Return-Path: <devicetree+bounces-28289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B65581D813
	for <lists+devicetree@lfdr.de>; Sun, 24 Dec 2023 07:23:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75E51B218D8
	for <lists+devicetree@lfdr.de>; Sun, 24 Dec 2023 06:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 047ACED2;
	Sun, 24 Dec 2023 06:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pkGaoGBe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4B910F3
	for <devicetree@vger.kernel.org>; Sun, 24 Dec 2023 06:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-5d05ff42db0so26364647b3.2
        for <devicetree@vger.kernel.org>; Sat, 23 Dec 2023 22:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703398984; x=1704003784; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uzEslKtk67JLuRJ0T5eEkiarqj7aZaFBzQA/v07nMCM=;
        b=pkGaoGBe44Q5wj1y7zcpbleIRvmozER953HTTCzH7Y4rwmrC0S5yL/ZG23f3ZsFDV3
         BeJJKviJM3fj9kQQ2aWcDHYjwiHsJWKb7y612X48Ja9K0r7sBL/4GO1eAlO3PJBhERQh
         3ZbJkRzEcGY26Sfgcvzl59Uyz1QA+WypHi+cIlkiVlG1XwFjRW9RnK3vVf7MtjhGlAsB
         yeNLx2brMsQDrVI/tTtIJ6Tzz6fE4RpEfLiQ7C4jd+MHPtVEJsOx/ESc+MC4vrPa/vy+
         UDejwWaNqAks7rI1Q2evv03Kwcpp6XPSM5zB+LBujyJkM1Qfy1S11vhy5v+w2HmvSAtp
         Nl4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703398984; x=1704003784;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uzEslKtk67JLuRJ0T5eEkiarqj7aZaFBzQA/v07nMCM=;
        b=EgXZv7TNoThHAUWWrsdz3TxmvWOVbwUXdWyGIpoyt51tx2dM1i4xj23jrJckxelEOb
         UXu4AOB2GqeAanhDhqqPLV7k7rXPa4kyOMjqEn+rzNnyNNzhx2FtRmx0q8iPNe1j5GsF
         +NTM7+yFHekXikHKBpb67nXAY+ZU8XpaKQyMNTAsjsMSHJFntTl3ymyK8BXAcZowpnaw
         dbAqPBBbMpMhdEFk6ApElIqUFRwD7+GsHXmm0gC9CuUs858uA1nN8CIc46emwmUSJ64g
         eonhNtM7+INpdjueBjBWvPkTfPcGvkRAnoZZENOAewM3/afPrL06exC+vlEdg6oQWYX6
         l3nQ==
X-Gm-Message-State: AOJu0YzsdlJCV0zRYVTawKwGzf3zEf5xk311hQz4QwnFnVm3Z2li5kRt
	Klux6RchlbO1m9Dey1e3vl+se7C3E+coOUi7eAPt0drG3HlYsw==
X-Google-Smtp-Source: AGHT+IF0zC4Gb4jWv5/ciMlayuYg3GXPYLIF2K58bCCtZziIJhml00lCFYMRxCeEtzCaiTnFzUK8fcVQ2q+0FM+NAKA=
X-Received: by 2002:a81:a152:0:b0:5e6:8fd8:2742 with SMTP id
 y79-20020a81a152000000b005e68fd82742mr2130461ywg.82.1703398984475; Sat, 23
 Dec 2023 22:23:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org>
 <20231223-x1e80100-phy-pcie-v2-2-223c0556908a@linaro.org> <CAA8EJpo774xzmpb2+72sJ80kmcCqJK-gDfkaLERGgmPeSZV3PQ@mail.gmail.com>
In-Reply-To: <CAA8EJpo774xzmpb2+72sJ80kmcCqJK-gDfkaLERGgmPeSZV3PQ@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 24 Dec 2023 08:22:52 +0200
Message-ID: <CAA8EJprYvF08D_82QZ+nEhBVq74B2uS0UKic0Qj3kwHdHqm0XA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-pcie: Add QMP v6 registers layout
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 24 Dec 2023 at 08:16, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Sat, 23 Dec 2023 at 13:55, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > For consistency, add the QMP v6 registers layout even though
> > they are the same as v5. Also switch all QMP v6 PHYs to use this
> > new layout.
> >
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 ++++++++++---
> >  1 file changed, 10 insertions(+), 3 deletions(-)
>
> On Thu, 21 Dec 2023 at 05:51, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
> >
> > The SA8295P and SA8540P uses an external regulator (max20411), and
> > gfx.lvl is not provided by rpmh. Drop the power-domains property of the
> > gpucc node to reflect this.
> >
> > Fixes: eec51ab2fd6f ("arm64: dts: qcom: sc8280xp: Add GPU related nodes")
> > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sa8540p.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)

To resolve possible questions, the lines above got c&p-ed from another
email. The R-B tag is applicable to the patch in question (v6 regs
layout).

>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> --
> With best wishes
> Dmitry



-- 
With best wishes
Dmitry

On Sun, 24 Dec 2023 at 08:16, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Sat, 23 Dec 2023 at 13:55, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > For consistency, add the QMP v6 registers layout even though
> > they are the same as v5. Also switch all QMP v6 PHYs to use this
> > new layout.
> >
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 ++++++++++---
> >  1 file changed, 10 insertions(+), 3 deletions(-)
>
> On Thu, 21 Dec 2023 at 05:51, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
> >
> > The SA8295P and SA8540P uses an external regulator (max20411), and
> > gfx.lvl is not provided by rpmh. Drop the power-domains property of the
> > gpucc node to reflect this.
> >
> > Fixes: eec51ab2fd6f ("arm64: dts: qcom: sc8280xp: Add GPU related nodes")
> > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sa8540p.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> --
> With best wishes
> Dmitry



-- 
With best wishes
Dmitry

