Return-Path: <devicetree+bounces-86569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2314C934BF1
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 12:52:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7956CB22AEC
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 10:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF6D213212D;
	Thu, 18 Jul 2024 10:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eeCIzMOX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E64485285
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 10:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721299927; cv=none; b=ZpB+AXmlGus7zI+KlL0SB2fcNmimZ+Zd+APM3pn7hUgf04szBFddZIohsubHdkr/4AQ9cJAQJcqltmb4Wy90HXv51UYZdxVKUu4TJF+zjZejl0K+WoPiPZxeFqkGVLFyVCWufVA0b4bU62IialFGUljNk7hDIeGVGdOIraM8XqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721299927; c=relaxed/simple;
	bh=lBIlDUiykBuOgPFc61Vvr3xO8ijOQel4+ZwjDujMWeQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=SnW5w2gIB5E0QhkQViSNZHoH4oAJXrLHsuWpOmSt0KiOnIPuIZ8EiQ1ZUOuWPucLnqZHoxrKVpagc5aUEOXLLIOzbm23Myff8eQiE6kG1CMZDu6C+GYJF1WYeyAOS51L2OW/bGUyoudspeYSAUeDnG9FGKWYJTr+n9rwvZbUpJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eeCIzMOX; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-367990aaef3so375896f8f.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 03:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721299923; x=1721904723; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7vsoSZI8djYrMDueWc0T6pkGrBB7VsF+sJdPwOVu6Tk=;
        b=eeCIzMOXAA8fLxk5HAK30/nFFvQpRHTuCqdqkMITwuY7FGyUKjrTq0v0PWh3JE1hth
         GuNFbNqqiKhX/0aIEiUjLt3dCzrXZDMjTS9cdshKtuPIJhesQxR68ccMkVplEKCb+hAT
         2mRn5vsS05HVh9V81EBjjB+/72UHFTQqPyzVRTLZMc3gICaGx5uED+a8U1I9WDRQFh08
         KbhOXs3NtuKdeAC6xTOSQmVb+bl0VBADE3L9OwMdWmW3gvevMMRtfCgaqDENJIafx13W
         uJAs89PR4yFYD72tH0ZdUcAxoj3hjsFGSmoGIgeMEwbu4SpJB17LAsrEfxUZqTVHzQ9V
         epag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721299923; x=1721904723;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7vsoSZI8djYrMDueWc0T6pkGrBB7VsF+sJdPwOVu6Tk=;
        b=HnudV4HzqpFFNtAWCH3eVHmR97uzcuGJM+0aQ0xC33ZCu+tDcWxUHhhfGoTgMeXZDY
         654JvAD5towJQ9gRXFntbbOeaa6o53BXlrZIDPVEUx2QrjBzZtiF9JsP0ZspLKWeMq4N
         94ldtpAy3rn9kI0hr2K0KfwtduCdBBKuwQFaQcXwE2Hl0pjrlmztyWrEyPS2IM0s9ckV
         GPgFfcyTPJNyHfFRYwJyFe+dyn7sqr2e7/vqRTlQUVckycvDx2OR+Gv9nVkGwh9hEbNg
         IXs3aak/5xZEraV5eZRk3ScElVwCc2DB/P8AzvS9UZXJCWcCnTQwKl399HDSnTOeAb1J
         Z6Mw==
X-Gm-Message-State: AOJu0Ywr5Dk1k36zqMZexiZdJ0x5/TKqfnJ7SX0FtxA/p3/C07Fs+0Gd
	3Qyj5XcUBaW0QT6a5JHI6sZiscpUbmMj4IxU/w7Y4ImJpOSeqJMqXFRxIgSl44s=
X-Google-Smtp-Source: AGHT+IFPFRQYTOuAYTHkPZwO0GLL14vatUuOFjFlXexJO8bh6QrqOEBCOTeZlJqllSIbqcGI4dkdQg==
X-Received: by 2002:adf:f048:0:b0:367:9614:fb9f with SMTP id ffacd0b85a97d-368315f42d1mr3440024f8f.2.1721299923460;
        Thu, 18 Jul 2024 03:52:03 -0700 (PDT)
Received: from localhost ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3684c042985sm1743727f8f.2.2024.07.18.03.52.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jul 2024 03:52:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 18 Jul 2024 11:52:02 +0100
Message-Id: <D2SLWBZCNPRH.CIJ1IYJA6IOS@linaro.org>
Subject: Re: [PATCH] dt-bindings: net: qcom,emac: convert to dtschema
From: "Rayyan Ansari" <rayyan.ansari@linaro.org>
To: "Rob Herring" <robh@kernel.org>
Cc: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>, "David S.
 Miller" <davem@davemloft.net>, "Eric Dumazet" <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, "Paolo Abeni" <pabeni@redhat.com>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Timur Tabi" <timur@kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.17.0-0-g6ea74eb30457
References: <20240717090931.13563-1-rayyan.ansari@linaro.org>
 <20240717163959.GA182655-robh@kernel.org>
In-Reply-To: <20240717163959.GA182655-robh@kernel.org>

On Wed Jul 17, 2024 at 5:39 PM BST, Rob Herring wrote:
> On Wed, Jul 17, 2024 at 10:09:27AM +0100, Rayyan Ansari wrote:
> > Convert the bindings for the Qualcomm EMAC Ethernet Controller from the
> > old text format to yaml.
> >=20
> > Also move the phy node of the controller to be within an mdio block so
> > we can use mdio.yaml.
> >=20
> > Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
> > ---
> >  .../devicetree/bindings/net/qcom,emac.yaml    |  98 ++++++++++++++++
> >  .../devicetree/bindings/net/qcom-emac.txt     | 111 ------------------
> >  2 files changed, 98 insertions(+), 111 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/net/qcom,emac.yam=
l
> >  delete mode 100644 Documentation/devicetree/bindings/net/qcom-emac.txt
> >=20
> > diff --git a/Documentation/devicetree/bindings/net/qcom,emac.yaml b/Doc=
umentation/devicetree/bindings/net/qcom,emac.yaml
> > new file mode 100644
> > index 000000000000..cef65130578f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/qcom,emac.yaml
> > @@ -0,0 +1,98 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +---
> > +$id: http://devicetree.org/schemas/net/qcom,emac.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm EMAC Gigabit Ethernet Controller
> > +
> > +maintainers:
> > +  - Timur Tabi <timur@kernel.org>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - const: qcom,fsm9900-emac
> > +      - enum:
> > +          - qcom,fsm9900-emac-sgmii
> > +          - qcom,qdf2432-emac-sgmii
>
> You just need a single enum for all 3 compatibles.
> =20
> > +  reg:
> > +    minItems: 1
> > +    maxItems: 2
>
> Need to define what each entry is and perhaps constraints on when it 1=20
> vs. 2 entries.
>
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +
> > +if:
> > +  properties:
> > +    compatible:
> > +      const: qcom,fsm9900-emac
> > +then:
> > +  allOf:
> > +    - $ref: ethernet-controller.yaml#
>
> This goes at the top level and the 'if' schema should be under the=20
> 'allOf'.

Wouldn't this make ethernet-controller.yaml also be included for
emac-sgmii as well - which isn't a controller?

> > +  properties:
> > +    clocks:
> > +      minItems: 7
> > +      maxItems: 7
> > +
> > +    clock-names:
> > +      items:
> > +        - const: axi_clk
> > +        - const: cfg_ahb_clk
> > +        - const: high_speed_clk
> > +        - const: mdio_clk
> > +        - const: tx_clk
> > +        - const: rx_clk
> > +        - const: sys_clk
>
> Define these at the top level and then exclude them in the if schema.

Just clocks and clock-names? Why so, if sgmii does not require clocks?

> > +
> > +    internal-phy:
> > +      maxItems: 1
>
> This needs a type ref.
>
> > +
> > +    mdio:
> > +      $ref: mdio.yaml#
> > +      unevaluatedProperties: false
> > +
> > +  required:
> > +    - clocks
> > +    - clock-names
> > +    - internal-phy
> > +    - phy-handle
> > +    - mdio
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    emac0: ethernet@feb20000 {
>
> Drop unused labels.
>
> > +        compatible =3D "qcom,fsm9900-emac";
> > +        reg =3D <0xfeb20000 0x10000>,
> > +              <0xfeb36000 0x1000>;
> > +        interrupts =3D <76>;
> > +
> > +        clocks =3D <&gcc 0>, <&gcc 1>, <&gcc 3>, <&gcc 4>, <&gcc 5>,
> > +                 <&gcc 6>, <&gcc 7>;
> > +        clock-names =3D "axi_clk", "cfg_ahb_clk", "high_speed_clk",
> > +                      "mdio_clk", "tx_clk", "rx_clk", "sys_clk";
> > +
> > +        internal-phy =3D <&emac_sgmii>;
> > +        phy-handle =3D <&phy0>;
> > +
> > +        mdio {
> > +            #address-cells =3D <1>;
> > +            #size-cells =3D <0>;
> > +
> > +            phy0: ethernet-phy@0 {
> > +                reg =3D <0>;
> > +            };
> > +        };
> > +    };
> > +
> > +    emac_sgmii: ethernet@feb38000 {
>
> This should be a separate entry. (You need '- |' above it.)

Should they not be part of one complete example, since the main node
requires a handle to the sgmii node with 'internal-phy'?

> > +        compatible =3D "qcom,fsm9900-emac-sgmii";
> > +        reg =3D <0xfeb38000 0x1000>;
> > +        interrupts =3D <80>;
> > +    };


