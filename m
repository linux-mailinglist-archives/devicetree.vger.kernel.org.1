Return-Path: <devicetree+bounces-54823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD914892B6E
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 14:39:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B92B283229
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 13:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D88FF2BB0D;
	Sat, 30 Mar 2024 13:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bzi2tAuT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AAC22F2F
	for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 13:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711805963; cv=none; b=B3pHNypanTwtu8TYGeZI5CbcMLzyVcK972CtBttyJuGTe3RQVY81r3H3GCb9wRBY+WFB3z8TUs5ce0fNBswi0W1DaHr0VYEiqqdhB6Uv3KC1vWkudYGKVCj9FkifdHERPjF9vSDjPRLORoOgHrAsilJ4J5pugFPbf77d6+2rexM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711805963; c=relaxed/simple;
	bh=xnc2DMxKZjv9rXvPh1SmsY2JW7l8+Agut1TKYkzA/CE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RFOn4efTA6YwJfpc7Vaun/pLzmOM3T+bC/6vQdS1FtvVuzJjc9u3I2b6DgcI00KkdU1T613qxnUlPTNiNvXRsOaGy31mrNogkl/VELrHOC6Q6O4RqDC9zXVQEYnOlsNKtJJqgk6OhTmltIha3eNrLHGjYUzgO51F3Q6r6FnszbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bzi2tAuT; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dcc80d6004bso2612413276.0
        for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 06:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711805960; x=1712410760; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=G1eYTzSDwNGOt2CpoFbnU3JixxEFJqYUgc9AODKFrFA=;
        b=Bzi2tAuTalPk00O876OBb7VRCQj3ZSqJfDjEmilUDZD3OcAk3NTlgnPHLHM05I+dyf
         arbKMrf+jEpGq1YaxtS3mPGvPdfH8vcSBsjHkWYC+mfCGluo/BixhpDI+2Veha2nLsOQ
         uPYZDS7NnanNrQsn1zhMlSbWz9GzWMLXE2hEYM3xZmKoraFVzlFLY2ErrNqAuYtKkiGm
         BK9ekM1o/fL9QuKUfjeosslIuUpBYRWNLbDTd1lREDOq+hG8EunKJ+qkdDtIF74gMDOb
         ThNgVeMJynCZyosQPjjroFqc11bBYYSwQSdQfTconbC+kQRhRhYHumkWG5881Cf/ZGe0
         GiWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711805960; x=1712410760;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G1eYTzSDwNGOt2CpoFbnU3JixxEFJqYUgc9AODKFrFA=;
        b=bydybieM4x+MDEJ/wIU53NFGJKRchcq61JG58PQx6VWJzeqOhtWNkJpxNl7w9CRJdM
         3yVOcZQjcqgVlPoVhCKJLBIp5Fvnejnq/Uayp4LEE6bi30giUgGElSJ6Na6jWWKIrwTU
         8jylGIK6vLCxec6nQS28dhOrz8kWiHngsFSTYxPTDcrXS0qhzrUNBepKEkG0fEp1VbHt
         QTLoUzJrbfRn/H2ZEn0ZLuD4wCSv/4Ae2vO4Od63keKoDwl7hc6q20m/CsgTv2ML1lZY
         3HuxfkVO4U3RD1zslLAVnlBnlhi0CrxOOehpi/qHy6OkS4prsbi9D1AsKH3sMZF7Y/+s
         HnUw==
X-Forwarded-Encrypted: i=1; AJvYcCV2E9Gas5Y726zIfchvORAcr6b/gtiUyPGwv+9EmB+o5Yc/cQtwhfzgKSonQ8yRVa8DLKeXrImdkl47exihPcoZS28xF270dTwJFg==
X-Gm-Message-State: AOJu0YxNcUGCKoA+oiGEESsgfqgwxffBn+ny82OK7OS14x1p6Wg1QJ5v
	euMqB0uGvgxzGVi+l5Qk+oCFD4ZBX299uK5jnMp2FjsvpbFpxQ4VAtCC/rAwCDtintCOeyTj65s
	TGRRe2M+43Usxsr96Ktj/5yUZLx9/Ad/wc11slA==
X-Google-Smtp-Source: AGHT+IF6ThxitzS4Qqvqh1XJrgmv5PX715nooF+qv5g6MJ7bKFjS6CcMSXAR1eSDDfmsKQ9hqTYmjkYYyHmZ10tfRK4=
X-Received: by 2002:a25:baca:0:b0:dd1:2f58:6a2e with SMTP id
 a10-20020a25baca000000b00dd12f586a2emr3920278ybk.9.1711805960439; Sat, 30 Mar
 2024 06:39:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240329071948.3101882-1-quic_kriskura@quicinc.com>
 <CAA8EJpqx+VFW8z6oG=+pnhPN97Q3R6z+ygf85Uspve-9syQsUw@mail.gmail.com> <6f2df222-36d4-468e-99a7-9c48fae85aa9@quicinc.com>
In-Reply-To: <6f2df222-36d4-468e-99a7-9c48fae85aa9@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Mar 2024 15:39:08 +0200
Message-ID: <CAA8EJppa4hVBSenLgxc5MYxTfzPPf4exHvh8RWTP=p8mgB_RCw@mail.gmail.com>
Subject: Re: [RFC PATCH 0/2] Add gpio-usb-c-connector compatible
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Conor Dooley <conor+dt@kernel.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Guenter Roeck <linux@roeck-us.net>, 
	Bjorn Helgaas <bhelgaas@google.com>, Kyle Tso <kyletso@google.com>, 
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, u.kleine-koenig@pengutronix.de, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Sat, 30 Mar 2024 at 11:13, Krishna Kurapati PSSNV
<quic_kriskura@quicinc.com> wrote:
> On 3/29/2024 6:23 PM, Dmitry Baryshkov wrote:
> > On Fri, 29 Mar 2024 at 09:20, Krishna Kurapati
> > <quic_kriskura@quicinc.com> wrote:
> >>
> >> QDU1000 IDP [1] has a Type-c connector and supports USB 3.0.
> >> However it relies on usb-conn-gpio driver to read the vbus and id
> >> gpio's and provide role switch. However the driver currently has
> >> only gpio-b-connector compatible present in ID table. Adding that
> >> in DT would mean that the device supports Type-B connector and not
> >> Type-c connector. Thanks to Dmitry Baryshkov for pointing it out [2].
> >
> > USB-B connector is pretty simple, it really has just an ID pin and
> > VBUS input, which translates to two GPIOs being routed from the
> > _connector_ itself.
> >
> > USB-C is much more complicated, it has two CC pins and a VBus power
> > pin. It is not enough just to measure CC pin levels. Moreover,
> > properly handling USB 3.0 inside a USB-C connector requires a separate
> > 'orientation' signal to tell the host which two lanes must be used for
> > the USB SS signals. Thus it is no longer possible to route just two
> > pins from the connector to the SoC.
> >
> > Having all that in mind, I suspect that you are not describing your
> > hardware properly. I suppose that you have a Type-C port controller /
> > redriver / switch, which handles CC lines communication and then
> > provides ID / VBUS signals to the host. In such a case, please
> > describe this TCPC in the DT file and use its compatible string
> > instead of "gpio-c-connector".
> >
>
> Hi Dmitry,
>
>   My bad. I must have provided more details of the HW.
>
>   I presume you are referring to addition of a connector node, type-c
> switch, pmic-glink and other remote endpoints like in other SoC's like
> SM8450/ SM8550/ SM8650.
>
>   This HW is slightly different. It has a Uni Phy for Super speed and
> hence no DP.

This is fine and it's irrelevant for the USB-C.

>   For orientation switching, on mobile SoC's, there is a provision for
> orientation gpio given in pmic-glink node and is handled in ucsi_glink
> driver. But on this version of HW, there is a USB-C Switch with its own
> firmware taking care of orientation switching. It takes 8 SS Lines and 2
> CC lines coming from connector as input and gives out 4 SS Lines (SS
> TX1/TX2 RX1/RX2) as output which go to the SoC. So orientation switch is
> done by the USB-C-switch in between and it automatically routes
> appropriate active SS Lane from connector to the SoC.

This is also fine. As I wrote, you _have_ the Type-C port controller.
So your DT file should be describing your hardware.

>   As usual like in other targets, the DP and DM lines from type-c
> connector go to the SoC directly.
>
>   To handle role switch, the VBUS and ID Pin connections are given to
> SoC as well. There is a vbus controller regulator present to provide
> vbus to connected peripherals in host mode.
>
>   There is no PPM entity (ADSP in mobile SoC's) and no UCSI involved
> here. Hence we rely on usb-conn-gpio to read the vbus/id and switch
> roles accordingly.

This is also fine.

You confirmed my suspicions. You have an external Type-C switch which
handles orientation (and most likely PD or non-PD power negotiation)
for you. It has GPIO outputs, etc.

But it is not a part of the connector. Instead of adding the
"gpio-usb-c-connector", add proper compatible string (see, how this is
handled e.g. by the spidev - it is a generic driver, but it requires
hardware-specific compatibles).
Your hardware description should look like:

typec {
    compatible = "your,switch";
    id-gpios = <&gpio 1>;
    vbus-gpios = <&gpio 2>;
    vbus-supplies = <&reg-vbus>;

    ports {
       #address-cells = <1>;
       #size-cells = <1>;
       port@0 {
          endpoint {
              remote-endpoint = <&usb_dwc3_hs_out>;
          };
       };
       port@1 {
          endpoint {
              remote-endpoint = <&usb_uni_phy_out>;
          };
      };
      /* No SBU port */
   };
};

Note, I haven't said anything regarding the driver. You can continue
using the usb-conn-gpio driver. Just add a compatible string for you
switch.

>
>   Hope this answers the query as to why we wanted to use usb-conn-gpio
> and why we were trying to add a new compatible.
>
> Regards,
> Krishna,
>
> >>
> >> This series intends to add that compatible in driver and bindings
> >> so that it can be used in QDU1000 IDP DT.
> >>
> >> [1]: https://lore.kernel.org/all/20240319091020.15137-3-quic_kbajaj@quicinc.com/
> >> [2]: https://lore.kernel.org/all/CAA8EJprXPvji8TgZu1idH7y4GtHtD4VmQABFBcRt-9BQaCberg@mail.gmail.com/
> >>
> >> Krishna Kurapati (2):
> >>    dt-bindings: connector: Add gpio-usb-c-connector compatible
> >>    usb: common: usb-conn-gpio: Update ID table to add usb-c connector
> >>
> >>   Documentation/devicetree/bindings/connector/usb-connector.yaml | 3 +++
> >>   drivers/usb/common/usb-conn-gpio.c                             | 1 +
> >>   2 files changed, 4 insertions(+)
> >>
> >> --
> >> 2.34.1
> >>
> >
> >
> > --
> > With best wishes
> > Dmitry



-- 
With best wishes
Dmitry

