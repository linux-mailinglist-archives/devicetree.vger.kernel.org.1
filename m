Return-Path: <devicetree+bounces-15372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B977E9D3D
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:33:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C15E1B2089C
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:32:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FA4F208A1;
	Mon, 13 Nov 2023 13:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rsoCBDo/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC70A1D555
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 13:32:51 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 372DF1AA
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 05:32:50 -0800 (PST)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5a7dd65052aso51854267b3.0
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 05:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699882369; x=1700487169; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=51Od5EM9M9kxK8o/tsuK7C1l6kkfgPjMKUkgQFFnMJY=;
        b=rsoCBDo//KyKu1BMMZtHOEo6+MvfduoiXZCjmIzZDRS39h0RuTw68sRYSa5bTN5N9K
         pV56mc1PbaukXOCYkcVRoVBCueaYa6na5gKHTIJvP6eVzbRMtgK6aCYpCqkceuQP6kLJ
         ZRFnLBUqwbFvdECcArd5xJGVkEGy9CClqxiP+8UqqIp7f/ePBOS1+QrEG0UiBuRjhql9
         DAniUvnXyH2uMWNdJYeGTALiE6HNmpXt7CFm7kXI73zUL9g2jKwqJPEGWYqQEAX8jpgP
         fJenzlbcmmxdsg1pkgblrOG4NzgAnVdHhb5/FUxhvOsF9hlknafw5uySbFIYqc1+fnsd
         ilfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699882369; x=1700487169;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=51Od5EM9M9kxK8o/tsuK7C1l6kkfgPjMKUkgQFFnMJY=;
        b=ZhnXsZQIWHaJUCFXNVCZGFRRTGHBFrJpolO3ISfuWcyKZjtLCpuvP788RUSGgD5y8v
         zTyIUTNVq3/+3opJyoB6wxZ480JERni0u4jjoGHywdD4Q2T8/fCRFnqoXpqmqL2xmnrW
         RtWxS+ueoKjNWIm1rnShn5KUWq9Gr45EVz7N154RnIxRxIWikvMThEREPRl22V+jahrd
         og/PRi9H1Da0DBJidl/+rc3ehzjXRwA96x4giFgrVLpRvqFKYee4zEBPK601ktaFdMcZ
         ZLzMlzEok7LyJdQLz1Bo+FMA7CTFWMFBZ+uFZc2faNQ6egIUQY2TNIwziYI0U2FEHcqX
         Z6+w==
X-Gm-Message-State: AOJu0YznaGdOLOb1VnHeNLW1xBf6i+1Xu2qPC1btyVbslCnZX1fProD8
	8ayeRFBIxrpjk4/cUz/5bM99nDE+wcn8xlyjisRTFA==
X-Google-Smtp-Source: AGHT+IEcrZQBeFOb4euJmRzuZwg9WYuU+oxlHvKGRjeWu8+ZL96qLOxwzMOxWh30qliOeOQQpep9pM3wzfFrkZxC12g=
X-Received: by 2002:a81:4a46:0:b0:5a8:286d:339e with SMTP id
 x67-20020a814a46000000b005a8286d339emr6148836ywa.4.1699882369436; Mon, 13 Nov
 2023 05:32:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1698353854.git.oleksii_moisieiev@epam.com>
 <e9285b4377242e4d888391be987cbb99caf8c573.1698353854.git.oleksii_moisieiev@epam.com>
 <CACRpkdYW-xmejyOo9H9XSkcabvYgBqPvpjppvNe_RF6RLxyxKA@mail.gmail.com>
 <ZU2AP7leDcIZIN+b@octopus> <ZU5LFC23JaEidEGZ@pluto> <2535571d-6fea-4064-8325-0f47d031c85f@arm.com>
In-Reply-To: <2535571d-6fea-4064-8325-0f47d031c85f@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Nov 2023 14:32:35 +0100
Message-ID: <CACRpkdaRY+rU+md-r5gVyFH5ATt3Pqp9=M4=+WArYkfVLAFdpw@mail.gmail.com>
Subject: Re: [RFC v5 5/5] dt-bindings: firmware: arm,scmi: Add support for
 pinctrl protocol
To: Souvik Chakravarty <souvik.chakravarty@arm.com>
Cc: Cristian Marussi <cristian.marussi@arm.com>, Takahiro Akashi <takahiro.akashi@linaro.org>, 
	Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Souvik,

thanks for looking into this!

On Mon, Nov 13, 2023 at 1:56=E2=80=AFPM Souvik Chakravarty
<souvik.chakravarty@arm.com> wrote:

> The initial assumption always was that GPIOs can be considered as a
> specific function. Note that the spec does not define the types of
> function and leaves it to the DT binding (or driver) to figure out the
> function descriptions/names.

Does this mean that each system using pinctrl-SCMI will need
to specify the available pins, groups and functions in a device tree
binding? For e.g. DT validation using schema?

This creates the problem of where to put it since
Documentation/devicetree/bindings/firmware/arm,scmi.yaml
is all we have, and for schemas to be applicable the implicit
assumption is that this is done per-compatible.

If we want to use device tree validation of the strings put into
the pinctrl node we need to allow for a per-soc compatible
under the pinctrl node like:

protocol@19 {
    compatible =3D "vendor,soc-scmi-pinctrl";
(...)

Then a DT schema can be made to match that and check it.

I'm uncertain about that because the SCMI binding has nothing
like this at the moment, all the protocol nodes are pretty
self-describing and don't seem to need any further configuration
to be used, but pin control may be the first instance where we
have to add some per-soc configuration into the protocol nodes :/

It's easy to do:

+  protocol@19:
+    type: object
+    allOf:
+      - $ref: "#/$defs/protocol-node"
+      - $ref: "../pinctrl/pinctrl.yaml"
+    unevaluatedProperties: false
+
+    properties:

        compatible:
            items:
              - enum:
                   - vendor1,soc1-scmi-pinctrl
                   - vendor2,soc2-scmi-pinctrl
                   - vendor3,soc3-scmi-pinctrl

This should be enough for just establishing the different
pin control configurations we can have in the device tree.

We are then able to put a more detailed schema for the
specific SoC pin control, such as a list of valid groups and
functions etc under the ordinary pinctrl bindings such as
Documentation/devicetree/bindings/pinctrl/vendor1,soc1-scmi-pinctrl.yaml
etc.

We should preferably put some pattern like this in place from
day 1 so developers know what is expected here. A mock
SoC is fine for the time being (we can delete it later when there
are some serious ones).

I'm uncertain because it feels like a first thing, but I can't really
think how it would work otherwise, part of me don't want to
pollute the SCMI binding with any per-soc compatibles, but
yet since these group and function strings will be per-soc I don't
see any other way, if they are supposed to be validated
with schema.

Yours,
Linus Walleij

