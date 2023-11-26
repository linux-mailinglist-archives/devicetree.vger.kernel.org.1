Return-Path: <devicetree+bounces-18994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C37D87F95D2
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 23:36:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D2D5280D7D
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 22:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CFACFBEE;
	Sun, 26 Nov 2023 22:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24BF9E3;
	Sun, 26 Nov 2023 14:35:59 -0800 (PST)
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1r7NjA-0002M0-22;
	Sun, 26 Nov 2023 22:35:49 +0000
Date: Sun, 26 Nov 2023 22:35:45 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc: Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Landen Chao <Landen.Chao@mediatek.com>,
	DENG Qingfang <dqfext@gmail.com>,
	Sean Wang <sean.wang@mediatek.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH RESEND net-next 2/2] dt-bindings: net: dsa:
 mediatek,mt7530: document MDIO-bus
Message-ID: <ZWPIQW1JA3rsvAzm@makrotopia.org>
References: <6eb1b7b8dbc3a4b14becad15f0707d4f624ee18b.1691246461.git.daniel@makrotopia.org>
 <9aec0fe0cb676b76132c388bb3ead46f596a6e6e.1691246461.git.daniel@makrotopia.org>
 <dcb981b9-b435-c0e5-8e47-d66add207fdc@arinc9.com>
 <20230808121707.chona7hakapp6whe@skbuf>
 <44fde617-1159-4961-84c4-372fe265fbd8@arinc9.com>
 <20230809220102.t3dqw7iojez5xsq3@skbuf>
 <3f262579-eec1-4b21-9b18-1d1d612e715b@arinc9.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3f262579-eec1-4b21-9b18-1d1d612e715b@arinc9.com>

On Sat, Aug 12, 2023 at 01:45:29AM +0300, Arınç ÜNAL wrote:
> On 10.08.2023 01:01, Vladimir Oltean wrote:
> > [...]
> > Since commit fe7324b93222 ("net: dsa: OF-ware slave_mii_bus"), DSA as a
> > framework also supports auto-creating an internal MDIO bus based on the
> > presence of the "mdio" node name, so I guess it makes sense for the
> > "mdio" to appear in the generic dsa.yaml if there's nothing else that's
> > special about it.
> 
> I agree with this. I've done this which works. It's even found a port
> node with the ethernet property missing, as it should've.

Are you planning to complete/submit your work below?
I'm asking because being able to reference the PHYs on the internal
MDIO bus is mandatory on MT7988 which requires calibration data from
NVMEM for each PHY, so supporting MT7988 depends on the associated
driver change[1].

[1]: https://patchwork.kernel.org/project/netdevbpf/patch/6eb1b7b8dbc3a4b14becad15f0707d4f624ee18b.1691246461.git.daniel@makrotopia.org/


> 
> diff --git a/Documentation/devicetree/bindings/net/dsa/dsa.yaml b/Documentation/devicetree/bindings/net/dsa/dsa.yaml
> index ec74a660beda..03ccedbc49dc 100644
> --- a/Documentation/devicetree/bindings/net/dsa/dsa.yaml
> +++ b/Documentation/devicetree/bindings/net/dsa/dsa.yaml
> @@ -31,6 +31,24 @@ properties:
>        (single device hanging off a CPU port) must not specify this property
>      $ref: /schemas/types.yaml#/definitions/uint32-array
> +  mdio:
> +    description: The internal MDIO bus of the switch
> +    $ref: /schemas/net/mdio.yaml#
> +
> +if:
> +  required: [ mdio ]
> +then:
> +  patternProperties:
> +    "^(ethernet-)?ports$":
> +      patternProperties:
> +        "^(ethernet-)?port@[0-9]+$":
> +          if:
> +            not:
> +              required: [ ethernet ]
> +          then:
> +            required:
> +              - phy-handle
> +
>  additionalProperties: true
>  $defs:
> diff --git a/Documentation/devicetree/bindings/net/dsa/microchip,lan937x.yaml b/Documentation/devicetree/bindings/net/dsa/microchip,lan937x.yaml
> index 8d7e878b84dc..fe1e2008995d 100644
> --- a/Documentation/devicetree/bindings/net/dsa/microchip,lan937x.yaml
> +++ b/Documentation/devicetree/bindings/net/dsa/microchip,lan937x.yaml
> @@ -78,6 +78,16 @@ examples:
>              };
>      };
> +    macb1 {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            fixed-link {
> +                    speed = <1000>;
> +                    full-duplex;
> +            };
> +    };
> +
>      spi {
>              #address-cells = <1>;
>              #size-cells = <0>;
> @@ -138,6 +148,7 @@ examples:
>                                      phy-mode = "rgmii";
>                                      tx-internal-delay-ps = <2000>;
>                                      rx-internal-delay-ps = <2000>;
> +                                    ethernet = <&macb0>;
>                                      fixed-link {
>                                              speed = <1000>;
> diff --git a/Documentation/devicetree/bindings/net/dsa/realtek.yaml b/Documentation/devicetree/bindings/net/dsa/realtek.yaml
> index cfd69c2604ea..f600e65fc990 100644
> --- a/Documentation/devicetree/bindings/net/dsa/realtek.yaml
> +++ b/Documentation/devicetree/bindings/net/dsa/realtek.yaml
> @@ -6,9 +6,6 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: Realtek switches for unmanaged switches
> -allOf:
> -  - $ref: dsa.yaml#/$defs/ethernet-ports
> -
>  maintainers:
>    - Linus Walleij <linus.walleij@linaro.org>
> @@ -95,37 +92,41 @@ properties:
>        - '#address-cells'
>        - '#interrupt-cells'
> -  mdio:
> -    $ref: /schemas/net/mdio.yaml#
> -    unevaluatedProperties: false
> -
> -    properties:
> -      compatible:
> -        const: realtek,smi-mdio
> -
> -if:
> -  required:
> -    - reg
> -
> -then:
> -  $ref: /schemas/spi/spi-peripheral-props.yaml#
> -  not:
> -    required:
> -      - mdc-gpios
> -      - mdio-gpios
> -      - mdio
> -
> -  properties:
> -    mdc-gpios: false
> -    mdio-gpios: false
> -    mdio: false
> -
> -else:
> -  required:
> -    - mdc-gpios
> -    - mdio-gpios
> -    - mdio
> -    - reset-gpios
> +allOf:
> +  - $ref: dsa.yaml#/$defs/ethernet-ports
> +  - if:
> +      required: [ mdio ]
> +    then:
> +      properties:
> +        mdio:
> +          properties:
> +            compatible:
> +              const: realtek,smi-mdio
> +
> +          required:
> +            - compatible
> +
> +  - if:
> +      required:
> +        - reg
> +    then:
> +      $ref: /schemas/spi/spi-peripheral-props.yaml#
> +      not:
> +        required:
> +          - mdc-gpios
> +          - mdio-gpios
> +          - mdio
> +
> +      properties:
> +        mdc-gpios: false
> +        mdio-gpios: false
> +        mdio: false
> +    else:
> +      required:
> +        - mdc-gpios
> +        - mdio-gpios
> +        - mdio
> +        - reset-gpios
>  required:
>    - compatible
> 

