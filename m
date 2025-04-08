Return-Path: <devicetree+bounces-164492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 749D0A8128F
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 18:39:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37E831892FB5
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 16:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED3E122E40E;
	Tue,  8 Apr 2025 16:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="w3+Q8MAD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FDE1CB501
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 16:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744130181; cv=none; b=N/Ik2GQ+TjZQbNrfBrzUkBeNMP3gzsmOS0nLwjTDMFC6MkY3FbjBSzMHX2kwVKy+CjTd0hVRQ9UJiibCajSsa1i/X1sT/2fipCcHzlSQIs/jFMSKQnmunxGDW7w7XOgBIhqcwJlOOQvuN2bfawuTAbvlof+7OyG1VqDr0TFUQa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744130181; c=relaxed/simple;
	bh=zNql4wjyEPOLy1mY6jhCj+sK140gdpVkS0KbDrHloKs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f3MCNY8ldtwtUUWMlbxUHRFQ9aYvR0UQNSBTThcf7F+AIcxMQucl0kXj+W+NMcq3GauIlhh52Ex9pl14LE11lhXBuhV/jinB/cm+sbZTPrrLx4OrRI9ZeUXVPU3OJ1aUI+LY1lfWw/5edUb7poDqs3wrsoNg1HZTCLwoxl7KufU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=w3+Q8MAD; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac41514a734so1004746566b.2
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 09:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1744130177; x=1744734977; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i3wrvWVbOnRUQVWpOBEubP7kMDCUCq12GpzisA/3qfg=;
        b=w3+Q8MADhnBdGtHmrmwMEr3qqPodDdBil5lUmmiSj30j0y8uiLKXK7MTYanU0do1jV
         y6tE7UZMl1U+0Sr+jg/I+CEdtMMpYqz3w2wcoM+VExLGP5mboTP7Ezw4KV9zarlsPQoD
         KVhghmJvOK/MqOEOm9/C6Xwxj5T9unJpAckgUWbQZh7CgA4+14DHu1QKnHRQMdGRY7Qu
         +gAN2MfRasrQ3Se9ai3ZmZRBF/Ok7/rpejhmYjPIzxn/YVm2GY3H8rLyodfFUD5am1if
         N79Qq/GD/ZcohtokcRzkOGxIs4+DAX2aJt/sT4mT8nsZEpxhqmbkHQ+ciZ0wlV9iiwh1
         bPpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744130177; x=1744734977;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i3wrvWVbOnRUQVWpOBEubP7kMDCUCq12GpzisA/3qfg=;
        b=oSOAvOMZNerwXjqCFe/EN1yhgXtCpMnUeRRTWWEIAMgCycig+lMTrp9LsJAdvjfnEw
         Ry305qbLfHUjWJCwhow9EKIiWQB5gLFRtPN0FS7nU+jLq/SP+iOkwpsgwtsx9ukYnwpd
         vZJpvUmFyY1SZOywCGob3jxi104J9FDqjLHrzCXOcUBIa9PJLmL32wHXxgLTj9SFUW+F
         e09PzDKsSxCEKWcWSGm1dLdiIJuz3Lan8levQa/7pBzYDpuH0JMw8e4FvtXUAVB0lLKu
         VG9mh9AJV2qNIdRUgqdsfTwjLEq9Fy3oqnHZ2LrHMrmSXxyDPfoeMia9bfcycnUaXSI6
         eMxQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7ZOsGDkKxp8p87DzuvzB33Sps8evUW1fbEsyHpDPbE+Xk+zM+zE4h6jb0bASZi2XdjUR61wnrFDlk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/pigrW6qVV1Qn6vR0sXm/2pCdKnsP8GARbzchHwrHHVSFHZ09
	Fwn6VhVq+fglULsa4SnIppwHIjdhzsqKrZcNPAD2+rrIXQUJuK6/tIVtuh8L5b7Phrz++eL2pmh
	JJihNCBnoSKma0i208guydZHmNV3TBOFoowi7og==
X-Gm-Gg: ASbGncv+J4QChnRKOpeQaRtArCvoaMaphDnOT317q17x/Lfg9lVWAwDj2KK7IxzatYO
	AuBUq56JXEo6cstGH4d5/hQ0kIKkHsI1LNI6OyfN9fSPsryVjbwQLe7AFCAuJxI22nqjv1N/XQC
	6mPvoO8xYC5UQH+SqLlyU57pL0q4ne
X-Google-Smtp-Source: AGHT+IEKFLhzxNA8nE4j3QQLXx2xIaLoG80ZEqlxvEiciuURe4ovIM9jxkUyiDuLYEFOGCRYHlOLSuzofncZr+mD4JY=
X-Received: by 2002:a17:907:7da3:b0:ac2:55f2:f939 with SMTP id
 a640c23a62f3a-ac7e7170328mr1083292466b.6.1744130176982; Tue, 08 Apr 2025
 09:36:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
 <20250326-onboard_usb_dev-v1-2-a4b0a5d1b32c@thaumatec.com> <20250326-fanatic-onion-5f6bf8ec97e3@spud>
In-Reply-To: <20250326-fanatic-onion-5f6bf8ec97e3@spud>
From: =?UTF-8?Q?=C5=81ukasz_Czechowski?= <lukasz.czechowski@thaumatec.com>
Date: Tue, 8 Apr 2025 18:36:04 +0200
X-Gm-Features: ATxdqUGKDxJYzUIvQOK05tjpTcLCd2GeOTcg3K4KoR3MFRQVI_hcKPX99fihLeY
Message-ID: <CABd623tEGh=qtpF0h7PkRBBrR7V9EaxUv9HregqbPcLU_2Exbg@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: usb: cypress,hx3: Add support for all variants
To: Conor Dooley <conor@kernel.org>
Cc: Matthias Kaehlcke <mka@chromium.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Klaus Goger <klaus.goger@theobroma-systems.com>, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, quentin.schulz@cherry.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

=C5=9Br., 26 mar 2025 o 18:58 Conor Dooley <conor@kernel.org> napisa=C5=82(=
a):
>
> On Wed, Mar 26, 2025 at 05:22:57PM +0100, Lukasz Czechowski wrote:
> > The Cypress HX3 hubs use different default PID value depending
> > on the variant. Update compatibles list.
> >
> > Fixes: 1eca51f58a10 ("dt-bindings: usb: Add binding for Cypress HX3 USB=
 3.0 family")
> > Cc: stable@vger.kernel.org # 6.6
> > Cc: stable@vger.kernel.org # Backport of the patch in this series fixin=
g product ID in onboard_dev_id_table and onboard_dev_match in drivers/usb/m=
isc/onboard_usb_dev.{c,h} driver
> > Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
> > ---
> >  Documentation/devicetree/bindings/usb/cypress,hx3.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml b/D=
ocumentation/devicetree/bindings/usb/cypress,hx3.yaml
> > index 1033b7a4b8f9..f0b93002bd02 100644
> > --- a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
> > +++ b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
> > @@ -15,8 +15,14 @@ allOf:
> >  properties:
> >    compatible:
> >      enum:
> > +      - usb4b4,6500
> > +      - usb4b4,6502
> > +      - usb4b4,6503
> >        - usb4b4,6504
> >        - usb4b4,6506
> > +      - usb4b4,6507
> > +      - usb4b4,6508
> > +      - usb4b4,650a
>
> All these devices seem to have the same match data, why is a fallback
> not suitable?
>

Thank you for the suggestion. Indeed the fallback compatible appears
to work fine in this case,
and I am able to avoid additional entries in onboard_dev_match table
as added in the first patch in this series.

However, after I've updated the cypress,hx3.yaml schema file and
rk3399-puma.dtsi file,
I get the following warnings, when running "make dtbs_check":

linux/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dtb: hub@1:
compatible: ['usb4b4,6502', 'usb4b4,6506'] is too long
=E2=80=83=E2=80=83from schema $id: http://devicetree.org/schemas/usb/cypres=
s,hx3.yaml#
linux/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dtb: hub@2:
compatible: ['usb4b4,6500', 'usb4b4,6504'] is too long
=E2=80=83=E2=80=83from schema $id: http://devicetree.org/schemas/usb/cypres=
s,hx3.yaml#

Below is the diff of my changes:

diff --git a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
index f0b93002bd02..d6eac1213228 100644
--- a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
+++ b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
@@ -14,15 +14,22 @@ allOf:

 properties:
   compatible:
-    enum:
-      - usb4b4,6500
-      - usb4b4,6502
-      - usb4b4,6503
-      - usb4b4,6504
-      - usb4b4,6506
-      - usb4b4,6507
-      - usb4b4,6508
-      - usb4b4,650a
+    oneOf:
+      - enum:
+          - usb4b4,6504
+          - usb4b4,6506
+      - items:
+          - enum:
+              - usb4b4,6500
+              - usb4b4,6508
+          - const: usb4b4,6504
+      - items:
+          - enum:
+              - usb4b4,6502
+              - usb4b4,6503
+              - usb4b4,6507
+              - usb4b4,650a
+          - const: usb4b4,6506

   reg: true

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index d0d867374b3f..7fac61f95fc6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -594,14 +594,14 @@ &usbdrd_dwc3_1 {
        #size-cells =3D <0>;

        hub_2_0: hub@1 {
-               compatible =3D "usb4b4,6502";
+               compatible =3D "usb4b4,6502", "usb4b4,6506";
                reg =3D <1>;
                peer-hub =3D <&hub_3_0>;
                reset-gpios =3D <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
        };

        hub_3_0: hub@2 {
-               compatible =3D "usb4b4,6500";
+               compatible =3D "usb4b4,6500", "usb4b4,6504";
                reg =3D <2>;
                peer-hub =3D <&hub_2_0>;
                reset-gpios =3D <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;


Do you have any suggestions on how I can properly update the schema
files to avoid the above warnings?

> >
> >    reg: true
> >
> >
> > --
> > 2.43.0
> >

Best regards,
Lukasz

