Return-Path: <devicetree+bounces-5021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8087C7B4C1B
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:02:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 99F9E1C203E0
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 07:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EF1F17C3;
	Mon,  2 Oct 2023 07:02:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35D69CA44
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 07:02:43 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF601F9
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 00:02:40 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-98377c5d53eso2158626266b.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 00:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1696230159; x=1696834959; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PeSmx0D2O0/a7oNGI2vszLu5YKBAPoxdy4aY0mQYyUI=;
        b=gBee/ib04lb8Su5dE1/csNqk7QhGlcoWLm257hjst94+6JplyfreEF1J7Pg0azyqtG
         semeU2l/YR+vdQg3JxOEAYI+fB9O4moXqGQBRChnyAvz2gFnI/J7mcLgB5O1PjWVyldf
         zJIzZ64zzvZCxAN8QY3USX5+Nm3FWWM15VaYzvniOuyrDQZA+EWUcoavvVOa/BR5W2lV
         D0OIVcLiXVAvbWxiYPOU5b8DDLSP4Iq3WG1jLzUtp9q0B0WB0cuQjoFm9qdmjfxg5jfG
         MAaE0o/lWmynDU4sCCkLl5yMG86qwApHeT1k84pHBYV+MiwcJIPUigXNIasznIYsTFHD
         0rpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696230159; x=1696834959;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PeSmx0D2O0/a7oNGI2vszLu5YKBAPoxdy4aY0mQYyUI=;
        b=FGJ5wud0qjSOJHTWknqXWess1XvMslTjattOYoK9SwHgHfwsmodh+PiIsik6WVz1fy
         Ijsv30iNxUEjEqBq/NpmaETJ6dICqYHgNiNJi5bO5YtYmnp0KzpbXHOG/uBajI/8ICTg
         kM5DdzA4eojpUq/ODWRNxTeIrzcfGb/YEnPPHX4r/NDpjdiS0IDujMdmU6AtbeyouenP
         iG/kWhCndEjZJCXX4KyhpNY8S5hz8/Mx4fLhUi5ky24V379O1Ng5Y/6kGJFU7c5FRguJ
         bwbBEV41SvweolAEZP2jJP6qe4jibcrJjyv0BXC1NXLsvGMrB5lI/M+OQThozEgQAgh0
         vOug==
X-Gm-Message-State: AOJu0YziX5HVIdGivc1fiK6SW4ZLlIxqNJlL+F5B8eKYK79qC8YNnWaq
	YkDn9SFe8KSFgaTLLOPptYYMoQ==
X-Google-Smtp-Source: AGHT+IH37QpKi/pRabAVwX8WI7qczpBr3LGNV8QJIAxW4evWS9WWvOYpM3vfLk1f8Jvg8ql7AlYMlA==
X-Received: by 2002:a17:906:76d1:b0:9ae:729c:f651 with SMTP id q17-20020a17090676d100b009ae729cf651mr9070622ejn.17.1696230159028;
        Mon, 02 Oct 2023 00:02:39 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id t15-20020a170906608f00b009a9fbeb15f2sm16459798ejj.62.2023.10.02.00.02.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 00:02:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 02 Oct 2023 09:02:38 +0200
Message-Id: <CVXREP4FCX4E.3M77P8JP1T27M@otso>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable UFS
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Andy Gross"
 <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Nitin Rawat" <quic_nitirawa@quicinc.com>
X-Mailer: aerc 0.15.2
References: <20230929-fp5-ufs-v1-1-122941e28b06@fairphone.com>
 <cac1b912-e08b-4643-b081-834fdee30ea7@linaro.org>
In-Reply-To: <cac1b912-e08b-4643-b081-834fdee30ea7@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri Sep 29, 2023 at 3:12 PM CEST, Konrad Dybcio wrote:
> On 29.09.2023 11:52, Luca Weiss wrote:
> > Enable the UFS phy and controller so that we can access the internal
> > storage of the phone.
> >=20
> > At the same time we need to bump the minimum voltage used for UFS VCC,
> > otherwise it doesn't initialize properly. The new range is taken from
> > the vcc-voltage-level property downstream.
> >=20
> > See also the following link for more information about the VCCQ/VCCQ2:
> > https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-ext=
ra/devicetree/+/1590a3739e7dc29d2597307881553236d492f188/fp5/yupik-idp-pm72=
50b.dtsi#207
> >=20
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> > I'm not 100% convinced about the regulator range change. For sure with
> > the original voltage range the UFS fails to initialize, but looking at
> > downstream kernel during runtime (debugfs) we see the VCC voltage
> > switches between 2.4V (idle?) and 2.952V (active?). But even with this
> > change in mainline the regulator would always stay at 2.504V which is
> > for sure lower than the downstream operating voltage of 2.952V. Behavio=
r
> > wise I don't see a difference between ~2.5V and ~2.9V.
> >=20
> > Should I just constrain the regulator here to min=3Dmax=3D2.952V? Or ju=
st
> > say it's okay as-is?
> >=20
> > Depends on: https://lore.kernel.org/linux-arm-msm/20230927081858.15961-=
1-quic_nitirawa@quicinc.com/
> > ---
> There's a little funny hack inside the driver
>
> #if defined(CONFIG_SCSI_UFSHCD_QTI)
>                         if (vreg->low_voltage_sup && !vreg->low_voltage_a=
ctive && on)
>                                 min_uV =3D vreg->max_uV;
> #endif
>
> so, when the ufs is in use, it's pinned to vmax

Hi Konrad,

Are you implying I *should* or *should not* pin the voltage range to
2.952V-2.952V for mainline?

Regards
Luca

>
> Konrad


