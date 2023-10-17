Return-Path: <devicetree+bounces-9137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 531287CBC51
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 09:34:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E5981C208C8
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 07:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94E0B18C0F;
	Tue, 17 Oct 2023 07:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UP1qyIM/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072C1182DC
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 07:33:58 +0000 (UTC)
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B63AAB
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 00:33:57 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id ca18e2360f4ac-7a2a9e5451bso206064739f.1
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 00:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697528036; x=1698132836; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ApyDiANstYTWyWFRnukDgHnJl3tUXr1U5Y0xyV6mrc=;
        b=UP1qyIM/5i3QaiC2OvN6xita6W2B7BoicollJXeex3cyiJwRu4auCzJNBJTP35HVMq
         810C24YlJqSXU+q3D0xOVlFdNwOmakHDyQzku38N6Jm/wCWWH1yXPHHVuoVl1nG+1pxT
         0Ru4LpPobj/TLicrmYvXKHhPgcU4okw+FFBU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697528036; x=1698132836;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/ApyDiANstYTWyWFRnukDgHnJl3tUXr1U5Y0xyV6mrc=;
        b=oOWlQie30SM/BNZe+U9JtMgp0pJhNIKf2GY/01v5trrqhon4+hCM1tw3aFSZ+Uz9Ai
         kOFXlhJaYbyylJidxxNOykZ8xV4k7Sj4TrZJKbsCofnzT+fd3O05xVZrjIbFBGYs0TIy
         R3/+l28ey1e5rLhh8vGKBRqXhMfEZiwBCWgxK3sZH0xZuvmc9g6vXQC9S5barrXTvwBS
         WR4tfDEc6Hn3GyEQTiljpfEODInd6bTygQSjvaBkpkaf7tbyy4wqi0i9gNYvBnF7QAVv
         589aqznBgVE5wU3+mmj6rW2zqASvkxV5JETwkuU9hDu3r7kqPn28t//7l6efu/V687kw
         chKQ==
X-Gm-Message-State: AOJu0Yx/trYv9y5Q8FrYTefB0KocPvE4JOvTFdMK7Qq3JtqAwlBE/99l
	Sc0OeSUmnl0lt4pA3ddNvEF89TjteGAOMKTs9at75Q==
X-Google-Smtp-Source: AGHT+IEAYKQ8Ud2dDCTFrFxk0sv/MWGDyTH5PUc94osy1+AGiIS89dM943n8PAfXr7KHqvHMo1X6R6r3/dT57OJulPY=
X-Received: by 2002:a05:6602:1689:b0:790:f733:2f9e with SMTP id
 s9-20020a056602168900b00790f7332f9emr1564343iow.13.1697528036747; Tue, 17 Oct
 2023 00:33:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926-topic-a643-v1-0-7af6937ac0a3@linaro.org>
 <20230926-topic-a643-v1-2-7af6937ac0a3@linaro.org> <43q6mui3lofa4rqh667o54b2qcbqn5fg34ss5o7y7k7uxbxsro@dxgovofsrvqx>
In-Reply-To: <43q6mui3lofa4rqh667o54b2qcbqn5fg34ss5o7y7k7uxbxsro@dxgovofsrvqx>
From: Rob Clark <robdclark@chromium.org>
Date: Tue, 17 Oct 2023 00:33:45 -0700
Message-ID: <CAJs_Fx7WkdhY31aP_buZP+b7ihOOmE8zBZFOLZ8z9uqcNmEhVw@mail.gmail.com>
Subject: Re: [PATCH 2/7] drm/msm/adreno: Add ZAP firmware name to A635
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <swboyd@chromium.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 16, 2023 at 1:12=E2=80=AFPM Akhil P Oommen <quic_akhilpo@quicin=
c.com> wrote:
>
> On Tue, Sep 26, 2023 at 08:24:37PM +0200, Konrad Dybcio wrote:
> >
> > Some (many?) devices with A635 expect a ZAP shader to be loaded.
> >
> > Set the file name to allow for that.
> >
> > Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > ---
> >  drivers/gpu/drm/msm/adreno/adreno_device.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/msm/adreno/adreno_device.c b/drivers/gpu/d=
rm/msm/adreno/adreno_device.c
> > index fa527935ffd4..16527fe8584d 100644
> > --- a/drivers/gpu/drm/msm/adreno/adreno_device.c
> > +++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
> > @@ -454,6 +454,7 @@ static const struct adreno_info gpulist[] =3D {
> >               .quirks =3D ADRENO_QUIRK_HAS_CACHED_COHERENT |
> >                       ADRENO_QUIRK_HAS_HW_APRIV,
> >               .init =3D a6xx_gpu_init,
> > +             .zapfw =3D "a660_zap.mbn",
>
> sc7280 doesn't have a TZ and so no zap shader support. Can we handle
> this using "firmware-name" property in your top level platform dt? Zap
> firmwares are signed with different keys for each OEMs. So there is
> cross-compatibility anyway.

I think this ends up working out because the version of sc7280 that
doesn't have TZ also doesn't have the associated mem-region/etc..  but
maybe we should deprecate the zapfw field as in practice it isn't
useful (ie. always overriden by firmware-name).

Fwiw there are windows laptops with sc7180/sc7280 which do use zap fw.

BR,
-R

>
> -Ahil.
>
> >               .hwcg =3D a660_hwcg,
> >               .address_space_size =3D SZ_16G,
> >               .speedbins =3D ADRENO_SPEEDBINS(
> >
> > --
> > 2.42.0
> >

