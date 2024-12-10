Return-Path: <devicetree+bounces-129423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4859EB89C
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:48:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 246A51888BEE
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EE2586343;
	Tue, 10 Dec 2024 17:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZUgP8lLT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFE723ED5F
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733852930; cv=none; b=HR7367rfIlWTW6Fknsu3YlC2TzoPYR9qE7kJn7VLGL/8iegMdwlPZqudW+8jsw1t20JLeA4bfT31hYyRXUDWfjIxqX2EJrdNSKkkZikvETseoktjYuJwMVxd6Osamq6YDcPihjGhHCtod7jbz4YpzOPEMHLsHM7Qw/3Vvl1hxPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733852930; c=relaxed/simple;
	bh=zyY+LvfKIlfyAiCLJWS7+1JGxiO0FEIr6sylV/Xgzzg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Iv040XCXaRyJZ27zhmrXIYfQoBdqZ5Vt6HS1kvHhhuBOze0pDugB+TPVX2caQ22G+F05iwnRIP3keMHaZ/PoMgnQVsDQ7sdkidGzuYhl7ct+EWN8L/aRiPhqu0p16BrSgrhMe4LTOgaeQiO6hekSBt/wBGGGh3rOWSNgZ9sErR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZUgP8lLT; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a9a0ec0a94fso872368266b.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:48:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733852926; x=1734457726; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AjuuFtemyP+DI+76rQdawmoZ3eTqeNEd2wfGxX97PdQ=;
        b=ZUgP8lLTjqQF4c7R9UbXNhv+gGxw+XmhY1OVgImxaImNQFdjzfsRHtn2GFbO3USUsQ
         xt91ukH7clj5Pm589LiT/Zdk/jtxar9N6ziu9B+VKCp8hdchZShn6/qV1mbV5vY+JWF/
         r374D9dUaU4AxVuKzmetg18fkg9ShCnLVtV8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733852926; x=1734457726;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AjuuFtemyP+DI+76rQdawmoZ3eTqeNEd2wfGxX97PdQ=;
        b=FmknErinYE5ZOyiRmsDNbAW2Tol1FpVEdYS4ycCYrss1jFyVmyJv12lA/hlhCyU8O1
         ijLkvaqyJnALDnKyxv9iACQ629EcQUqqdhV49m19oJCpwoYCTiBXJgT9pliICdpNfGDt
         2y+Nk7ZZA+CTHcDa1xjj+bm+l40bzRMv6JZPJ1lq90cxGSCcv5O3UyqHj6H9fY0US7yA
         iaZNkwh62x4YIWcktjc57ygfnUaufdIZXKEy1p4/3b0fB36FwT6WNHyXhkWS+flc5qJc
         9xkkJUFlY+b4fBdu1x0fPyF5oslinOHpUnEgwazlkItlGWmUr7rVyciGmufECiEIIe/i
         PwNw==
X-Forwarded-Encrypted: i=1; AJvYcCXxBrophPNHC3dKxAfa7MTqAdLDe2wGBeE7Eo0WY8qbbOE6DFPTckAGYiBT4HBKGD4tY65549p+hzdl@vger.kernel.org
X-Gm-Message-State: AOJu0YwVR9Q8cWrUHN0erDZLrG1ivJzzaJHqS/gALPgRLA24c6clqZ8V
	o3HbRnfgsS40aPocSfgcfMcPuS8GPqMRJfEDis3H40TyG9/okZounlwrKvK0kk2kgKLdpIl73VQ
	zunXb
X-Gm-Gg: ASbGncuCMLYIMke+4G2GZa5yQSNihJ1Hr+ZO5c323YuaUUAPt7dpDzmx/ZGPjP3C/70
	1gnssDQ4GLMtOKn3EKy92KJHDzSwAl5QS97CGb+n2c40O+BbbnqyNVI7k3v32jWkQ7rcT5HTgQ4
	9+7iPWnAMbAGcPk3scR4/dOANL52adege3xZWWSWkzSGa8SKJpl4/al8O5PaPHBt6nkPCZaIxnH
	6wa3BBwu15pVxmfIhmFD3MQ38K8U3eXqdpc88AAAnQ0ED2IpctST6P3NabgJnLtOo1dwbxc+oxi
	830UElHE7PBKlMnmxg==
X-Google-Smtp-Source: AGHT+IHfXbu05/g6kBwjR2q7X5WaahppJ3U6oUGZVt0AbfkGWtSr2UuAahdQAP7x5M6McqFylJy6wQ==
X-Received: by 2002:a17:906:cc45:b0:aa6:7f3d:4f9c with SMTP id a640c23a62f3a-aa67f3d6224mr1052084266b.38.1733852926074;
        Tue, 10 Dec 2024 09:48:46 -0800 (PST)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6808c03a5sm398944866b.137.2024.12.10.09.48.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 09:48:45 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-385de9f789cso4334786f8f.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:48:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX6OgU6P4Aj1BxDDGj2M+NNYc4JNDoZvNe1NJaZlhczZSJxbY0JNH5n0R/vMq9v8YD2vDpkCwiIS6sh@vger.kernel.org
X-Received: by 2002:a2e:800a:0:b0:302:1c90:58d9 with SMTP id
 38308e7fff4ca-30240ced962mr314001fa.16.1733852563643; Tue, 10 Dec 2024
 09:42:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241204150326.1470749-1-quic_vdadhani@quicinc.com>
 <20241204150326.1470749-2-quic_vdadhani@quicinc.com> <CAD=FV=XF+9wxZ5xNtO3Uy8QW9UY4tb+KR46jkondvBeQuVLsrA@mail.gmail.com>
 <6736db20-127b-45c3-ac90-3e3e359c343b@quicinc.com>
In-Reply-To: <6736db20-127b-45c3-ac90-3e3e359c343b@quicinc.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 10 Dec 2024 09:42:31 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VReNQ3nw+wfZizL7JjxEX9z=GwDEJAFzheNkW7rSrB5Q@mail.gmail.com>
X-Gm-Features: AZHOrDkKw2FmHmZQUJPUfL4ELobjfrjI9icl10Uq0FkzH_2PdMnaEbBKyuOx5E0
Message-ID: <CAD=FV=VReNQ3nw+wfZizL7JjxEX9z=GwDEJAFzheNkW7rSrB5Q@mail.gmail.com>
Subject: Re: [PATCH v1 1/7] dt-bindings: i2c: qcom,i2c-geni: Document DT
 properties for QUP firmware loading
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>
Cc: andi.shyti@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	broonie@kernel.or, andersson@kernel.org, konradybcio@kernel.org, 
	johan+linaro@kernel.org, agross@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
	linux-spi@vger.kernel.org, quic_anupkulk@quicinc.com, 
	Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Dec 9, 2024 at 9:28=E2=80=AFPM Viken Dadhaniya
<quic_vdadhani@quicinc.com> wrote:
>
> On 12/4/2024 10:55 PM, Doug Anderson wrote:
> > Hi,
> >
> > On Wed, Dec 4, 2024 at 7:03=E2=80=AFAM Viken Dadhaniya
> > <quic_vdadhani@quicinc.com> wrote:
> >>
> >> Document the 'qcom,load-firmware' and 'qcom,xfer-mode' properties to
> >> support SE(Serial Engine) firmware loading from the protocol driver an=
d to
> >> select the data transfer mode, either GPI DMA (Generic Packet Interfac=
e)
> >> or non-GPI mode (PIO/CPU DMA).
> >>
> >> I2C controller can operate in one of two modes based on the
> >> 'qcom,xfer-mode' property, and the firmware is loaded accordingly.
> >>
> >> Co-developed-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> >> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> >> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> >> ---
> >>   .../devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml   | 11 +++++++++=
++
> >>   1 file changed, 11 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.=
yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
> >> index 9f66a3bb1f80..a26f34fce1bb 100644
> >> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
> >> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
> >> @@ -66,6 +66,15 @@ properties:
> >>     required-opps:
> >>       maxItems: 1
> >>
> >> +  qcom,load-firmware:
> >> +    type: boolean
> >> +    description: Optional property to load SE (serial engine) Firmwar=
e from protocol driver.
> >> +
> >> +  qcom,xfer-mode:
> >> +    description: Value 1,2 and 3 represents FIFO, CPU DMA and GSI DMA=
 mode respectively.
> >> +    $ref: /schemas/types.yaml#/definitions/uint32
> >> +    enum: [1, 2, 3]
> >
> > I'm a little confused about this. I'll admit I haven't fully analyzed
> > your patch with actual code in it, but in the past "CPU DMA" mode and
> > "FIFO" mode were compatible with each other and then it was up to the
> > driver to decide which of the two modes made sense in any given
> > situation. For instance, last I looked at the i2c driver it tried to
> > use DMA for large transfers and FIFO for small transfers. The SPI
> > driver also has some cases where it will use DMA mode and then
> > fallback to FIFO mode.
> >
> > ...so what exactly is the point of differentiating between "FIFO" and
> > "CPU DMA" mode here?
>
> Yes, correct, Will update in V2.
> I plan to add 2 modes, GSI and non-GSI(PIO or DMA based on length).
>
> >
> > Then when it comes to "GSI DMA" mode, my understanding is that the
> > firmware for "GSI DMA" mode is always loaded by Trustzone because the
> > whole point is that the GSI mode arbitrates between multiple clients.
> > Presumably if the firmware already loaded the GSI firmware then the
> > code would just detect that case. ...so there shouldn't need to be any
> > reason to specify GSI mode here either, right?
> >
> > -Doug
>
> GSI firmware is loaded from TZ per QUP, but to use GSI mode,
> we need to configure the SE to use GSI mode by writing into SE register
> QUPV3_SE_GENI_DMA_MODE_EN and SE_GSI_EVENT_EN. This register is
> used to configure data transfer mode for Serial Engine.

Can't you detect it's in GSI mode without any device tree property
like the code does today?

-Doug

