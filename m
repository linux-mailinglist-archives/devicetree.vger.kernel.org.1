Return-Path: <devicetree+bounces-73647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FBB900262
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 13:39:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88E371C21A40
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 11:38:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E29B18FDD7;
	Fri,  7 Jun 2024 11:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="q9IuoY5v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E7B18733D
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 11:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717760328; cv=none; b=rWenvMJbj7nglsQFsddlzw5T/mMVWYw6yHXShNyMr4mOExN1W0LN3+qO54BtIxh85eanLcYyiaaXgPQZAoK7q+p7BlkZOm6xjuAvC6mfuHqdRgofm36/y1p4ZQl0uqWx0+VfG/jSNUS4nnXuKqLup3QSu78KyQ6ENHJkf4wh1Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717760328; c=relaxed/simple;
	bh=g5NIzpldAX/x2PqDjE5gpEKwkCFUjBNp6qqB3ZdMf10=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LwcqlXGjWYORF2WCjQxoV5u2tFcPAazSemd7rl8chOGim37VU3L/2hToNO0/EuE1VCkkuqs+yYJ7MV3X20QU9lGyvByvaNgfl0XMJUAbXz3U0GHDKchsmzk9pZVoFu3h9e/1Pr5hGL2LYSkbs88QxFFXzt6gQ6LScInOZC2hlkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=q9IuoY5v; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-57a4d7ba501so2435837a12.2
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 04:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1717760325; x=1718365125; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o8M78VWmRUtxavNJng3PwXKm0bXhbM1TSJ/3rMl6z+Q=;
        b=q9IuoY5vY8gNZYN/FQrnRdTtxQvoLxDnKqOcqYeNCwfSnBTabpZLPBqHwiTstTGWZZ
         JlvRaU09E2opPkkr+H2bruKIX+c26pXTSa8vhVx513AIFVL7IeRFeHm94uv0ke+cje5l
         0IQ2lSoMXgAXFwpNh2OF2X8SBZjLFqr8115RZZFuwdguAU+AkanIoSuEZkCBvAtU/Jpo
         JiJ5/L8papYH93tw6FvZ4VmmTbbOhVmV76RCfnNHX9wuzvGOi73sC+HGIm55ifDpGLZI
         4FEsxhsdjUl5JzR8t3xnmFvTa5TuxZzeNIDIShj4Ai8+9WQzm7AZUIdI9iNUb2wLQ56d
         HkuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717760325; x=1718365125;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o8M78VWmRUtxavNJng3PwXKm0bXhbM1TSJ/3rMl6z+Q=;
        b=RFCmSV5l+n01VyKsV1hFG/L0WyVmqlx9qodxLp0eKAk6ctzFB4i2tR24h04bpbwAZJ
         jUXcs1TSSjYmcaR7crkT0jSyu0usPILhFL9TYoRMneb9VNJoT+sW+4210AQ5HnAQOG+P
         +oFCEEUUmxqul036tkf9LhZ2HCsG8V7sfY315JPZt9B/4facP6mop3qEHCbF9sc5c/Qu
         Hbm8b8AmZr8okhcINpfp4Bs66GKBVtcrysAQGF4wnp+SZvzevbLR/GNxwkDInmvKmvAr
         HRVeOSILekHpcrNJh5jsjsUvM1bqqYuz6J7BacwxYycVWDcRCpP9GnezU1ajyksMEDMz
         f/7A==
X-Forwarded-Encrypted: i=1; AJvYcCWuYesyQPiEq3urWkfLa6i839RYghebhSgf5v8yjb5l891kA2z8R7EnOmTGc3UF9NvQJApt2CIM2h5fabfkwjkIYg6WTw7lWSB4HA==
X-Gm-Message-State: AOJu0YzQ0weFjdS9fFJPZAcj1NLGbvvSs8PbyCp9NTRlkXarE3HSW8NL
	J4YAPegas+aEpBray/L90DkqxJ5f12rF3PUIsF7pnLB34tTP/uX29u4sarKmICnY0mC8NTQYn0H
	jhiKQzDbpq/37v4gGb1Zp5tkrutDCO6zn4bTlA3I2NYb1cVDhFDzKmw==
X-Google-Smtp-Source: AGHT+IHSz32XzeyC24xOqlXfd0HDZNyhYS94xu0F5/pKnlVGfUOTS+SKqxPkF7GX/GJxRk+DUQoCkwugHUJ9MNuXE8c=
X-Received: by 2002:a50:8a92:0:b0:57a:1d0f:47f7 with SMTP id
 4fb4d7f45d1cf-57c5091b0d8mr1210103a12.17.1717760324720; Fri, 07 Jun 2024
 04:38:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240601084528.22502-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240601084528.22502-2-lvzhaoxiong@huaqin.corp-partner.google.com> <oo6gggt2kpufvbwg6emoblg4opj2izdfjad4hzojbe7ddp57rp@a5vf23zrk22o>
In-Reply-To: <oo6gggt2kpufvbwg6emoblg4opj2izdfjad4hzojbe7ddp57rp@a5vf23zrk22o>
From: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Date: Fri, 7 Jun 2024 19:38:33 +0800
Message-ID: <CA+6=WdTPJxtGUt6pSanmwdYKz2wqCFv73K=BPb+9oDHrQcW=Sw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: display: panel: Add KD101NE3-40TI support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, dianders@google.com, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi Dmitry Baryshkov

Because this is a separate mipi dsi driver, I did not put it in
panel-sample-dsi.yaml.


On Sun, Jun 2, 2024 at 12:28=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Sat, Jun 01, 2024 at 04:45:25PM +0800, Zhaoxiong Lv wrote:
> > Create a new dt-scheam for the kd101ne3-40ti.
> > The bias IC of this kindisplay-kd101ne3 panel is placed
> > on the panel side, so when the panel is powered on,
> > there is no need to control AVDD and AVEE in the driver.
> >
> > Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com=
>
> > ---
> >
> > Chage since V2:
> >
> > -  Drop some properties that have already been defined in panel-common.
> > -  The header file 'dt-bindings/gpio/gpio.h' is not used, delete it
> >
> > V1: https://lore.kernel.org/all/20240418081548.12160-2-lvzhaoxiong@huaq=
in.corp-partner.google.com/
> >
> > ---
> >  .../panel/kingdisplay,kd101ne3-40ti.yaml      | 59 +++++++++++++++++++
> >  1 file changed, 59 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/kin=
gdisplay,kd101ne3-40ti.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/kingdispla=
y,kd101ne3-40ti.yaml b/Documentation/devicetree/bindings/display/panel/king=
display,kd101ne3-40ti.yaml
> > new file mode 100644
> > index 000000000000..b0cf12bb727d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101=
ne3-40ti.yaml
> > @@ -0,0 +1,59 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/kingdisplay,kd101ne3-=
40ti.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Kingdisplay KD101NE3-40TI based MIPI-DSI panels
> > +
> > +maintainers:
> > +  - Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
>
> Any reason for using a separate bindings instead of extending
> panel-simple-dsi.yaml ?
>
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - kingdisplay,kd101ne3-40ti
> > +
> > +  reg:
> > +    description: the virtual channel number of a DSI peripheral
> > +
> > +  pp3300-supply:
> > +    description: core voltage supply
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - pp3300-supply
> > +  - enable-gpios
> > +  - backlight
> > +  - port
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    dsi {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +        panel: panel@0 {
> > +            compatible =3D "kingdisplay,kd101ne3-40ti";
> > +            reg =3D <0>;
> > +            enable-gpios =3D <&pio 98 0>;
> > +            pinctrl-names =3D "default";
> > +            pinctrl-0 =3D <&panel_pins_default>;
> > +            pp3300-supply =3D <&en_pp6000_mipi_disp>;
> > +            backlight =3D <&backlight_lcd0>;
> > +            rotation =3D <90>;
> > +            port {
> > +                panel_in: endpoint {
> > +                    remote-endpoint =3D <&dsi_out>;
> > +                };
> > +            };
> > +        };
> > +    };
> > +
> > +...
> > --
> > 2.17.1
> >
>
> --
> With best wishes
> Dmitry

