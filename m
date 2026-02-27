Return-Path: <devicetree+bounces-269425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MDuoMj0Uomk0zAQAu9opvQ
	(envelope-from <devicetree+bounces-269425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:01:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FD71BE58B
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:01:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ABFA03038AC0
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 22:01:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 441DA362128;
	Fri, 27 Feb 2026 22:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nRDG3LMW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9D739A7E8
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 22:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772229687; cv=none; b=HKNrJQmUIARu+6sG/pQq5OfzSc75emVsQbZZZeyTXFgxQhXkjs1fNUIDwWxk2JPdgpQWPSh40AJuQ4rKg3toncyAxH2VRBTZGjClTjqPsrUUi+FgUVBiDYfYPvSANciDt+sCIuNYExo0yZ12pstC4lq2Pw3GO73TpdqVQ23w03E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772229687; c=relaxed/simple;
	bh=jmExwc15D5b4BNa+k3a0VSwX4sQ5sxkPDJ42RHhtZcc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=KLsKMdMYJ/r8QWYf/RGbuZAYE7ixTSQh8TbK1frLhnHzqKHIn9uLHUMScMF4e9hHlmpS4pay2kbC61/KuHnKE1RwxtcPaz0w2DZNqhTYXdIWuTcHgBJIbPwaLzcQvjl+maHGuFW61GEAeB57ZZHTzgnoM8eq5yl536RG0DZMo6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nRDG3LMW; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-436317c80f7so2337966f8f.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:01:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772229684; x=1772834484; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rnQ3NdOA+dlTREX+Y+toI7JdmWzwKm56hHJi65q2jXk=;
        b=nRDG3LMWkDEV9ot46IIbst/aSaButPVaC+/w+BqIvfGQe1Ri+W81ny5hzowI4gz2RM
         foS5ROJSqK/s8OSiZ3ZtNEsUCO46R8IWpRODK3Pa5B73fyHw63d7amhxcy7C4e9uRh3l
         Fk6mUkUHoBxT/zmchnzWIBZDdspKeq3z/w8AO/I1bKHz6gkVDmMMIGG/Zyu/OrMRJsjB
         SMV7QpBSVBUMhrdBX41/m2NzNJ4k/wScWF/jdFD2Ws39jyZ1tnKVVcCEXslzC5F0qz0A
         zi/vRcd9vOWRtKloSzthPBh2hXx6wmM2Bp6OSPUUdOXmkFzEX7Rb74M+PyuEfhqTDpoS
         ujNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772229684; x=1772834484;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rnQ3NdOA+dlTREX+Y+toI7JdmWzwKm56hHJi65q2jXk=;
        b=ORrRTJpDWkC902bPbrnzT89OeyfeDEY4QRdQqoSWaRw2HWxpujU7Gy/NwBhwRwMNh4
         Hxyefda8BJnHPMz2xMrLZjB3zoj6hIJD1VVaOUTNr2tezXa22eSVOODeWBtx6y71YIAw
         LcJZkUqD7kK6YXnyEcycQpUdTa8Dhl69AocziS43zVTt2HAUqG3+2JRSxzBuUrK+ZzW0
         KINvKXmciW1L8DRdJIUNAsV8lxG2s99tUSm4iWRGWgVI6JhcbtVrLtp5ACLlnblqZZ2K
         ro+BJbdEbjv4WcRc1ay8G6XX6fU2wT/r4WqcCHSrjlPO5HXrjTRyx/apIO6qdx2i2vwC
         hjkg==
X-Forwarded-Encrypted: i=1; AJvYcCW25deM8310JRiUu2dErokIQUtelD6UPdgk8609iHxFQGFXCK0yX5dF9q2qmS/nkZKnRreBUi8/VBF4@vger.kernel.org
X-Gm-Message-State: AOJu0Yyhs0VJbIJXH3ZB4YY1qbfBbzjCllJEudI7BfGUx8/EHRAah7xC
	Xy2d0hHdAeVutFAJruU1JrR7NryB6L44fw4QC78Jb4G5q3mqwxywHrO+NIzfFigENpw=
X-Gm-Gg: ATEYQzy1IKondOTmyD2aSP+FkvF26LUxb0gci2iAiGHR0NiUcLlj4Gfs4piRTm6L7m/
	HVta8ZnfJSJXfADCRUdoPaYntmebRnzvfeKP8n0kk3bMC5NAtsTG++V190C4f2vKn25YK5+BfW+
	JpXXTY7GRW7I4wCkcyqoFbiR3J6P45atPdsVxRc3zInoYahaS7JX10fvH2fKfvJ81/PjxuLMYqj
	7qoObUw268c8yQBz47xigb+Blyagb/+0x5m1EhPP6pWmNtcq1h2xqWKGmRtYqKRfO/VHFQDbbZg
	qyuTnD8JgPgXhpjJbKwYMQDA31350/rO78g5DFAKHwiWXWLR4L7DiO/6lbhK/lWYsoy6DSmdli0
	kbq6w9tMG6f5eDjCB/5ms2yNzD8hfcrVQwAOLyzKD18SVHQt6bVys1m2awlTaPSp350AxShkB2z
	E3+BJiitpj1G4iF9hjJ60PJdv0eB+zD5EeUKKvd1v+20nJMzh30yEe3yXHXoMzpunfDbr1wDfMx
	mDI9B997AL0uJhD1qtoB0Aa
X-Received: by 2002:a05:6000:40e0:b0:435:bdc2:461 with SMTP id ffacd0b85a97d-439971fc90bmr15019130f8f.21.1772229682968;
        Fri, 27 Feb 2026 14:01:22 -0800 (PST)
Received: from [192.168.16.154] (host86-188-11-239.range86-188.btcentralplus.com. [86.188.11.239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c763e78sm10123237f8f.26.2026.02.27.14.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:01:22 -0800 (PST)
Message-ID: <e6a277cfecc1fb94e1819944ce72e0a03ae0a9fe.camel@linaro.org>
Subject: Re: [PATCH v8 02/18] dt-bindings: media: qcom,x1e80100-camss:
 Convert from inline PHY definitions to PHY handles
From: Christopher Obbard <christopher.obbard@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Bjorn Andersson	
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Robert
 Foss	 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, Mauro Carvalho
 Chehab	 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Bryan O'Donoghue
 <bod@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 27 Feb 2026 22:01:22 +0000
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-2-95517393bcb2@linaro.org>
References: 
	<20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
	 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-2-95517393bcb2@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269425-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christopher.obbard@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 44FD71BE58B
X-Rspamd-Action: no action

Hi Bryan,

On Wed, 2026-02-25 at 15:11 +0000, Bryan O'Donoghue wrote:
> We currently do not have an upstream user of the x1e CAMSS schema which
> allows us to make this the first platform to treat the CSI PHYs as separa=
te
> devices in much the same way as we treat the CCI block as separate device=
s.
>=20
> Convert the embedded CSIPHY node data to simple phys =3D <> removing all =
of
> the PHY specific stuff previously embedded.
>=20
> I gave some serious thought to making the Test Pattern Generators TPGs in=
to
> PHY nodes also but, unlike the CSIPHYs the TPGs have no dedicated externa=
l
> pins nor regulators.
>=20
> The CSIPHYs OTOH have dedicated in-fact generally unmuxed pins on Qualcom=
m
> SoCs and each CSIPHY has its own set of input power rails usually 0p8 and
> 1p2.
>=20
> Instead of defining the CSIPHYs as children of the CAMSS block, we take t=
he
> same approach as the CCI/I2C bus dedicated to CAMSS and define the CSIPHY=
s
> as their own nodes.
>=20
> Remove the embedded CSIPHY specific data and give CAMSS regular,
> bog-standard phys =3D <>;
>=20
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>

> ---
>  .../bindings/media/qcom,x1e80100-camss.yaml        | 84 ++++++----------=
------
>  1 file changed, 20 insertions(+), 64 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.=
yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> index 9aaed897f7e0e..ff14a8248321e 100644
> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> @@ -17,7 +17,7 @@ properties:
>      const: qcom,x1e80100-camss
> =20
>    reg:
> -    maxItems: 17
> +    maxItems: 13
> =20
>    reg-names:
>      items:
> @@ -27,10 +27,6 @@ properties:
>        - const: csid2
>        - const: csid_lite0
>        - const: csid_lite1
> -      - const: csiphy0
> -      - const: csiphy1
> -      - const: csiphy2
> -      - const: csiphy4
>        - const: csitpg0
>        - const: csitpg1
>        - const: csitpg2
> @@ -40,7 +36,7 @@ properties:
>        - const: vfe_lite1
> =20
>    clocks:
> -    maxItems: 29
> +    maxItems: 21
> =20
>    clock-names:
>      items:
> @@ -55,14 +51,6 @@ properties:
>        - const: cphy_rx_clk_src
>        - const: csid
>        - const: csid_csiphy_rx
> -      - const: csiphy0
> -      - const: csiphy0_timer
> -      - const: csiphy1
> -      - const: csiphy1_timer
> -      - const: csiphy2
> -      - const: csiphy2_timer
> -      - const: csiphy4
> -      - const: csiphy4_timer
>        - const: gcc_axi_hf
>        - const: gcc_axi_sf
>        - const: vfe0
> @@ -75,7 +63,7 @@ properties:
>        - const: vfe_lite_csid
> =20
>    interrupts:
> -    maxItems: 13
> +    maxItems: 9
> =20
>    interrupt-names:
>      items:
> @@ -84,15 +72,21 @@ properties:
>        - const: csid2
>        - const: csid_lite0
>        - const: csid_lite1
> -      - const: csiphy0
> -      - const: csiphy1
> -      - const: csiphy2
> -      - const: csiphy4
>        - const: vfe0
>        - const: vfe1
>        - const: vfe_lite0
>        - const: vfe_lite1
> =20
> +  phys:
> +    maxItems: 4
> +
> +  phy-names:
> +    items:
> +      - const: csiphy0
> +      - const: csiphy1
> +      - const: csiphy2
> +      - const: csiphy4
> +
>    interconnects:
>      maxItems: 4
> =20
> @@ -118,14 +112,6 @@ properties:
>        - const: ife1
>        - const: top
> =20
> -  vdd-csiphy-0p8-supply:
> -    description:
> -      0.8V supply to a PHY.
> -
> -  vdd-csiphy-1p2-supply:
> -    description:
> -      1.2V supply to a PHY.
> -
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
> =20
> @@ -166,13 +152,13 @@ required:
>    - clock-names
>    - interrupts
>    - interrupt-names
> +  - phys
> +  - phy-names
>    - interconnects
>    - interconnect-names
>    - iommus
>    - power-domains
>    - power-domain-names
> -  - vdd-csiphy-0p8-supply
> -  - vdd-csiphy-1p2-supply
>    - ports
> =20
>  additionalProperties: false
> @@ -199,10 +185,6 @@ examples:
>                    <0 0x0acbb000 0 0x2000>,
>                    <0 0x0acc6000 0 0x1000>,
>                    <0 0x0acca000 0 0x1000>,
> -                  <0 0x0ace4000 0 0x1000>,
> -                  <0 0x0ace6000 0 0x1000>,
> -                  <0 0x0ace8000 0 0x1000>,
> -                  <0 0x0acec000 0 0x4000>,
>                    <0 0x0acf6000 0 0x1000>,
>                    <0 0x0acf7000 0 0x1000>,
>                    <0 0x0acf8000 0 0x1000>,
> @@ -217,10 +199,6 @@ examples:
>                          "csid2",
>                          "csid_lite0",
>                          "csid_lite1",
> -                        "csiphy0",
> -                        "csiphy1",
> -                        "csiphy2",
> -                        "csiphy4",
>                          "csitpg0",
>                          "csitpg1",
>                          "csitpg2",
> @@ -240,14 +218,6 @@ examples:
>                       <&camcc CAM_CC_CPHY_RX_CLK_SRC>,
>                       <&camcc CAM_CC_CSID_CLK>,
>                       <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
> -                     <&camcc CAM_CC_CSIPHY0_CLK>,
> -                     <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
> -                     <&camcc CAM_CC_CSIPHY1_CLK>,
> -                     <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
> -                     <&camcc CAM_CC_CSIPHY2_CLK>,
> -                     <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
> -                     <&camcc CAM_CC_CSIPHY4_CLK>,
> -                     <&camcc CAM_CC_CSI4PHYTIMER_CLK>,
>                       <&gcc GCC_CAMERA_HF_AXI_CLK>,
>                       <&gcc GCC_CAMERA_SF_AXI_CLK>,
>                       <&camcc CAM_CC_IFE_0_CLK>,
> @@ -270,14 +240,6 @@ examples:
>                            "cphy_rx_clk_src",
>                            "csid",
>                            "csid_csiphy_rx",
> -                          "csiphy0",
> -                          "csiphy0_timer",
> -                          "csiphy1",
> -                          "csiphy1_timer",
> -                          "csiphy2",
> -                          "csiphy2_timer",
> -                          "csiphy4",
> -                          "csiphy4_timer",
>                            "gcc_axi_hf",
>                            "gcc_axi_sf",
>                            "vfe0",
> @@ -294,10 +256,6 @@ examples:
>                          <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
>                          <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
>                          <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>,
> -                        <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
> -                        <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
> -                        <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
> -                        <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>,
>                          <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
>                          <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
>                          <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
> @@ -308,15 +266,16 @@ examples:
>                                "csid2",
>                                "csid_lite0",
>                                "csid_lite1",
> -                              "csiphy0",
> -                              "csiphy1",
> -                              "csiphy2",
> -                              "csiphy4",
>                                "vfe0",
>                                "vfe1",
>                                "vfe_lite0",
>                                "vfe_lite1";
> =20
> +            phys =3D <&csiphy0>, <&csiphy1>,
> +                   <&csiphy2>, <&csiphy4>;
> +            phy-names =3D "csiphy0", "csiphy1",
> +                        "csiphy2", "csiphy4";
> +
>              interconnects =3D <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_A=
CTIVE_ONLY
>                               &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_A=
CTIVE_ONLY>,
>                              <&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALW=
AYS
> @@ -348,9 +307,6 @@ examples:
>                                   "ife1",
>                                   "top";
> =20
> -            vdd-csiphy-0p8-supply =3D <&csiphy_0p8_supply>;
> -            vdd-csiphy-1p2-supply =3D <&csiphy_1p2_supply>;
> -
>              ports {
>                  #address-cells =3D <1>;
>                  #size-cells =3D <0>;

