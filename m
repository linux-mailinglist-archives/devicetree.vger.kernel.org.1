Return-Path: <devicetree+bounces-6946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 931F57BDDD4
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 15:13:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C32D91C20919
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 13:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CDC91946D;
	Mon,  9 Oct 2023 13:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bm00HPNO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3FD619464
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 13:13:38 +0000 (UTC)
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECCC5DA
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 06:13:36 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5a22eaafd72so56011357b3.3
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 06:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696857216; x=1697462016; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kKZKnrRJ3sYtky/2h2Hus8kthq+g2qZ6Wg41eu1H8Lg=;
        b=bm00HPNOX1W0TXsn3nZTubMYOd4U2VYtG5z5sgnF3NZ3jNgl7keFI1QaIujZxL+Ul/
         ULXUqfU/kXpd2NTSTjDQ7WNBx9AwRAxNy/OAWm6hqyKweQY8mwNpso13k6ZMtiyjep+E
         y7TTA/n5PoAG4gGyquc4uJqn0Y3xF2wFzB1KiHMlkaO9Z0OoGCg4ccJ2gM67EsqEXW7q
         9ZaEdmO/KI4ElXiMgsOIUSeC0lJRqaN9Hw7Xlg+f+0KvyLOH9Bx9o/LcVXUs2vkvm5X+
         iFy7xmDb8h2x06/yh/zaB+7rdLwYjpkSCZt6oip+uFKX2gBSGV3GeofttNg3b6teJJLZ
         OM4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696857216; x=1697462016;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kKZKnrRJ3sYtky/2h2Hus8kthq+g2qZ6Wg41eu1H8Lg=;
        b=gXPgpRxDz6mRTnZbk9oe+Rej0cUNufgp21KpGNtjZD3/doKM0k+IYvhXDur30RH06x
         aGOZpNKz6vE5KNMQrwmwc/Yr0Do3U9iSgvwPgGcRe+YMCEMRWESvP6y0mHCX0+Mzyg71
         eBb8g2oC0G221NbUPT+eNj2XD184jUo4hqJtdyW6S/m6FdBAWooA7jdyWUJzBIk9VnsH
         uEKh5cBo1052H5S8GRJ60mSautztb604V9mAWn6g2s5sWLae9q3EwDl6rb7a/twv7zY2
         rjqrRenoO93HFCc0yeLUF7Lk6LCsEr1TtuporFJxyzj33PpJ1V4CTLaQCkfpTlF+Xg5E
         WTVw==
X-Gm-Message-State: AOJu0YxHK7JMX9SPVFN2mriDaKtVMBuYu/76W0TYIdwdkpmPzZ4OdQ5W
	j4/0ifhmEFQC/AUTIATR3aWoYGy4+4K2zPCllRM/xQ==
X-Google-Smtp-Source: AGHT+IGt4o+K7vRBblvmGc6ypN/viBqCTAHECrQcma5UGrocmzfjWytyeGJeKtv1Oy5/0dhqamzM1xbB19zZG60qbYE=
X-Received: by 2002:a25:768d:0:b0:d7a:e0f6:54cc with SMTP id
 r135-20020a25768d000000b00d7ae0f654ccmr14186498ybc.26.1696857216181; Mon, 09
 Oct 2023 06:13:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
 <20231005025843.508689-6-takahiro.akashi@linaro.org> <20231006132346.GA3426353-robh@kernel.org>
 <CACRpkdaLsfSBEG-h9ZNT2_Lm8tW8AZO7tedDVNeuZoQAqSkyjw@mail.gmail.com> <ZSPDILYZkxvTnQia@e120937-lin>
In-Reply-To: <ZSPDILYZkxvTnQia@e120937-lin>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 9 Oct 2023 15:13:24 +0200
Message-ID: <CACRpkdY=eza0TuBRDb_cWk9LM2qNQg76rZSgWa-RP4TYLL=Ppw@mail.gmail.com>
Subject: Re: [RFC v2 5/5] dt-bindings: gpio: Add bindings for pinctrl based
 generic gpio driver
To: Cristian Marussi <cristian.marussi@arm.com>
Cc: Rob Herring <robh@kernel.org>, AKASHI Takahiro <takahiro.akashi@linaro.org>, sudeep.holla@arm.com, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 9, 2023 at 11:08=E2=80=AFAM Cristian Marussi
<cristian.marussi@arm.com> wrote:

> > > +    gpio0: gpio@0 {
> > > +        compatible =3D "pin-control-gpio";
> > > +        gpio-controller;
> > > +        #gpio-cells =3D <2>;
> > > +        gpio-ranges =3D <&scmi_pinctrl 0 10 5>,
> > > +                      <&scmi_pinctrl 5 0 0>;
> > > +        gpio-ranges-group-names =3D "",
> > > +                                  "pinmux_gpio";
> > > +    };
> >
>
> Assuming the above &scmi_pinctrl refers to the protocol node as we
> usually do,

No it does not, it is a three-layer cake.

scmi <-> scmi_pinctrl <-> scmi_gpio

it refers to the scmi_pinctrl node.

There is no SCMI GPIO protocol, instead SCMI is using the
operations already available in the pin controller to exercise
GPIO. Generic pin control has operations to drive lines for
example, and Takahiro is adding the ability for a generic pin
controller to also read a line.

Yours,
Linus Walleij

