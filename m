Return-Path: <devicetree+bounces-5788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2737B7E3B
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:32:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 2B83F1C20506
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A4C212B79;
	Wed,  4 Oct 2023 11:32:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4669312B6A
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 11:32:32 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96A3690;
	Wed,  4 Oct 2023 04:32:29 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id D535160004;
	Wed,  4 Oct 2023 11:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696419148;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jiGdNZliZJFxAotjLXsFjydngfAocFp3/JRLhQoNFiw=;
	b=Q2yyudk2DeopG4p/IJKJNvz/uUKI7L36/M+bfZvjO2okJ7jIuoKVMEUwQ6pbqN6uwNgGm3
	ew+0dgaPuzhqPTV/Z6kO1X/4Ll3VjaXd3wP/96HWhhfZYHXlIA8Cv0pm33+uzmJoK3vJ4j
	2/RCWmSDgs4fvpAl5v82tLPeg5ASmofwjH2wKpcoUUwVXaSc5Lu9NyS+mOFqKhSFUoTS7Z
	F1AxubzkvrfW0z+C4uKsZMNtLoDGrmNTO6i2lwKBCru+AyRMk6PtE0xfPTXMubReQ6sbte
	v48enjubU5DdXQYvSgeSb3GTiEV9k0fYmlUCZRskOCdk/n3bQJepsib/6BlcnQ==
Date: Wed, 4 Oct 2023 13:32:25 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Rabara, Niravkumar L" <niravkumar.l.rabara@intel.com>
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra
 <vigneshr@ti.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: mtd: cadence: convert
 cadence-nand-controller.txt to yaml
Message-ID: <20231004133225.4a770789@xps-13>
In-Reply-To: <BL3PR11MB6532AC02EA46C2D861438A29A2CBA@BL3PR11MB6532.namprd11.prod.outlook.com>
References: <20231004061214.17176-1-niravkumar.l.rabara@intel.com>
	<20231004094455.1a6a19e1@xps-13>
	<BL3PR11MB6532AC02EA46C2D861438A29A2CBA@BL3PR11MB6532.namprd11.prod.outlook.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello,

> > > -Child nodes represent the available NAND chips. =20
> >=20
> > This is not fully pictured in the current schema, by referencing nand-
> > controller.yaml I believe you allow all kind of direct partitioning (wh=
ich is legacy,
> > and not supposed to be supported here).
> > Can you try to define a partition directly within the controller node i=
n the example
> > and see whether it still passes the checks?
> >=20
> > Thanks,
> > Miqu=C3=A8l =20
>=20
> Hi Miquel,
>=20
> I tried below in the controller node in example,
>=20
>        ...
>         clocks =3D <&nf_clk>;
>         cdns,board-delay-ps =3D <4830>;
>=20
>         partition@0 {
>           label =3D "boot";
>           reg =3D <0 0x00200000>;
>          };
>=20
>         nand@0 {
>             reg =3D <0>;
>         };
>=20
> It shows  'partition@0' was unexpected.
>=20
> DTC_CHK Documentation/devicetree/bindings/mtd/cadence,nand.example.dtb
> Documentation/devicetree/bindings/mtd/cadence,nand.example.dts:35.23-38.1=
4: Warning (unique_unit_address_if_enabled): /example-0/nand-controller@10b=
80000/partition@0: duplicate unit-address (also used in node /example-0/nan=
d-controller@10b80000/nand@0)
> /mnt/newvolume/users/nrabara/kernel.org/3oct23/Documentation/devicetree/b=
indings/mtd/cadence,nand.example.dtb: nand-controller@10b80000: Unevaluated=
 properties are not allowed ('partition@0' was unexpected)
>         From schema: /mnt/newvolume/users/nrabara/kernel.org/3oct23/Docum=
entation/devicetree/bindings/mtd/cadence,nand.yaml
>=20
> However using partition in nand node is OK.
>         nand@0 {
>             reg =3D <0>;
>            =20
>             #address-cells =3D <1>;
>             #size-cells =3D <1>;
>=20
>             partition@0 {
>               label =3D "boot";
>               reg =3D <0 0x00200000>;
>             };
>=20
>             partition@200000 {
>               label =3D "env";
>               reg =3D <0x00200000 0x00400000>;
>             };
>         };
>=20
> "make dt_binding_check DT_SCHEMA_FILES=3Dmtd/cadence,nand.yaml"  is OK wi=
thout any warnings.=20
>=20
> DTEX    Documentation/devicetree/bindings/mtd/cadence,nand.example.dts
> DTC_CHK Documentation/devicetree/bindings/mtd/cadence,nand.example.dtb
>=20
> Any additional changes required for this patch?

No, should be fine then.

Thanks,
Miqu=C3=A8l

