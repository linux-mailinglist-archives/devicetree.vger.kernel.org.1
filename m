Return-Path: <devicetree+bounces-1340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C627A5F80
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:27:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60A00281971
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:27:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 713E8110B;
	Tue, 19 Sep 2023 10:27:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AB333989
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:27:13 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80830123
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:27:11 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-502fd1e1dd8so5205366e87.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695119230; x=1695724030; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jCeLC1/fL5uYZGBDL0V8OauxmTwPHI6gQ14lLZIwYdk=;
        b=jO8Vvz3AeYbBTHf4QSk37K+NP/WgmNXGWqtiaFz7BvJoJL1xFEH5PesjVBtReBbDuB
         vqy+RxZwdn1PLX1nfwszGLNeiZ5fHTkMiDazhi7Loz6iQxHKpFXus2T/93HUpdtZbc+c
         9K3CFuHmvjVLzip9FNmBtfbu3fhyuhsEOidC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695119230; x=1695724030;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jCeLC1/fL5uYZGBDL0V8OauxmTwPHI6gQ14lLZIwYdk=;
        b=hPa5MAOxW4kcYSBbdvkHimoKWTK+1exftmhHz/N0BMknUl5bwAJ9Rp8HJNQ73jQJhA
         uTzWhW1cCgrIjBOrTnhiap+BH+7SGGc5BrSgTr845DzwVggeIbpbnpuTnbk1UHDYcII/
         yMWmlfObnDVgmUUskba8681N+cOz2Mj12Yz9in8uD//7hVglkgHVy18KcPAeiZb/iBE+
         s69NVTZ03ZSBlZQ9SYHlNF033/CmCy2GFi0oA1kuu/eFd8JhseOIB6SMdjVy8cR6oET+
         +rtDRF7BqGO7NlAAjwM9Pz1OaEoOadaYabXuTzxCIUFexMfZBJlOhSXV/k4envqC+kmR
         7qrw==
X-Gm-Message-State: AOJu0YyJqTUtUxAf9xt6rs57x8Chpz4b85nU2IyAKXMJU4GO65Wip5qA
	i89Vuqb3LQfXF9bWhUbKc6AGNfxmbXClV9lj9udVaw==
X-Google-Smtp-Source: AGHT+IHPErruttZ3FyC8GqRiqlrVpQemy7Vw6ESh5Jd2eDFXppLQB4lEWWx/VD4iAcucs811it+71i2s3y0iMA6LtpQ=
X-Received: by 2002:a05:6512:1c5:b0:503:17fd:76bb with SMTP id
 f5-20020a05651201c500b0050317fd76bbmr4104900lfp.39.1695119229636; Tue, 19 Sep
 2023 03:27:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919095938.70679-1-angelogioacchino.delregno@collabora.com>
 <20230919095938.70679-3-angelogioacchino.delregno@collabora.com>
 <CAGb2v66rEqWBjdMNO3VMZhYj36hhKTxPk+9pborPjnqW0B-=ZA@mail.gmail.com> <f1e28c8d-c30f-d80b-3d6f-fbfd3e55a64a@collabora.com>
In-Reply-To: <f1e28c8d-c30f-d80b-3d6f-fbfd3e55a64a@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 19 Sep 2023 18:26:58 +0800
Message-ID: <CAGXv+5EQYTetP8OaZMRZKjmFtQ_mEgFKCBBPyW-SVCCNczzisw@mail.gmail.com>
Subject: Re: [PATCH 2/2] media: platform: mtk-mdp3: Use devicetree phandle to
 retrieve SCP
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: wens@kernel.org, mchehab@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, moudy.ho@mediatek.com, hverkuil-cisco@xs4all.nl, 
	sakari.ailus@linux.intel.com, u.kleine-koenig@pengutronix.de, 
	linqiheng@huawei.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 6:24=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 19/09/23 12:21, Chen-Yu Tsai ha scritto:
> > On Tue, Sep 19, 2023 at 6:00=E2=80=AFPM AngeloGioacchino Del Regno
> > <angelogioacchino.delregno@collabora.com> wrote:
> >>
> >> Instead of walking the entire parent node for something that has the
> >> right compatible, use the scp_get() function provided by the MediaTek
> >> SCP remoteproc driver to retrieve a handle to mtk_scp through the
> >> devicetree "mediatek,scp" (phandle) property.
> >>
> >> In case of multi-core SCP, this also allows to select a specific core.
> >>
> >> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@c=
ollabora.com>
> >> ---
> >>   .../media/platform/mediatek/mdp3/mtk-mdp3-core.c | 16 ++++++++++----=
--
> >>   1 file changed, 10 insertions(+), 6 deletions(-)
> >>
> >> diff --git a/drivers/media/platform/mediatek/mdp3/mtk-mdp3-core.c b/dr=
ivers/media/platform/mediatek/mdp3/mtk-mdp3-core.c
> >> index 8677e7fd5083..d93d3833633e 100644
> >> --- a/drivers/media/platform/mediatek/mdp3/mtk-mdp3-core.c
> >> +++ b/drivers/media/platform/mediatek/mdp3/mtk-mdp3-core.c
> >> @@ -254,13 +254,17 @@ static int mdp_probe(struct platform_device *pde=
v)
> >>                  goto err_destroy_job_wq;
> >>          }
> >>
> >> -       mm_pdev =3D __get_pdev_by_id(pdev, NULL, MDP_INFRA_SCP);
> >> -       if (WARN_ON(!mm_pdev)) {
> >> -               dev_err(&pdev->dev, "Could not get scp device\n");
> >> -               ret =3D -ENODEV;
> >> -               goto err_destroy_clock_wq;
> >> +       mdp->scp =3D scp_get(pdev);
> >> +       if (!mdp->scp) {
> >> +               mm_pdev =3D __get_pdev_by_id(pdev, NULL, MDP_INFRA_SCP=
);
> >> +               if (WARN_ON(!mm_pdev)) {
> >> +                       dev_err(&pdev->dev, "Could not get scp device\=
n");
> >> +                       ret =3D -ENODEV;
> >> +                       goto err_destroy_clock_wq;
> >> +               }
> >> +               mdp->scp =3D platform_get_drvdata(mm_pdev);
> >
> > You need to keep the original code as a fallback for old device trees.
> >
>
> I haven't removed the original code, it *is* there as a fallback :-)
>
> mdp->scp =3D scp_get() <--- new
> if (!mdp->scp) { fallback }

I see it now. I guess it's time to call it a day... I even replied with
the wrong email ...

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> > ChenYu
> >
> >>          }
> >> -       mdp->scp =3D platform_get_drvdata(mm_pdev);
> >> +
> >>          mdp->rproc_handle =3D scp_get_rproc(mdp->scp);
> >>          dev_dbg(&pdev->dev, "MDP rproc_handle: %pK", mdp->rproc_handl=
e);
> >>
> >> --
> >> 2.42.0
> >>
> > _______________________________________________
> > Kernel mailing list -- kernel@mailman.collabora.com
> > To unsubscribe send an email to kernel-leave@mailman.collabora.com
>
>

