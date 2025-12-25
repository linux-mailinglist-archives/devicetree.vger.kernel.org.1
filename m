Return-Path: <devicetree+bounces-249667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4070ECDDB6C
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 12:40:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C60863015EF5
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 11:40:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F75831AF25;
	Thu, 25 Dec 2025 11:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QS6Sf9/h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f65.google.com (mail-oa1-f65.google.com [209.85.160.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF84631AAB1
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 11:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766662765; cv=none; b=NkiDrsq2o8THpU54parZ47Kybcwh2gfc33oisnf+q9vLzNI1ESCxym3Z6/soJQSrhSRzY+T1Q/uB6LJ+wjfZoL4o5aC/bN443HJdDyzdifn+uRKkCTGfLThTtCpR7oW8vX6qHXR9o2SS6P0jNpPrV7v1ooAZHMpso7ckkFRueoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766662765; c=relaxed/simple;
	bh=QafvzSA/UzXEqM0xRbqCivlsj2AqdzST5s42dLhD/sw=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=JZR8kkFAyEAvQjvk6yb8Z5zkeXu4OgtyTgSbUjubYSTA94vfjOPCYLsbMk3KwC7aN6Ie3lvy81chyUQbZqSzcE2hVv6nY3Cba875EDsPpV83ADn8i+zJHsSosjbZhmYOm4o980kx7PtALtrrTziOrf1SuuurMcKCnSAmCmWwd4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QS6Sf9/h; arc=none smtp.client-ip=209.85.160.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f65.google.com with SMTP id 586e51a60fabf-3e89d226c3aso4505881fac.2
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 03:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766662761; x=1767267561; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/wwHqUKmio0zDYl0J/tmo44sND18w8vdAisUr2wfwgY=;
        b=QS6Sf9/hhNDH/QKrLlKeZKXFgBVuc+MFwR7zlleg4rehCC/Jc0ukYp3lcJBexN67B8
         BSnTfHbuvO7ns+GOHPZ9qLuhy/eWFKRXGSIN7NgGho9L5Mn/goY7u742YOQGMa6vlJdE
         Rlc4/sZ2pN8EDZKAmr04EsZAxhCYfEwsYqB+nLaX6WLJ3WlWU/cb+dFeP6QCeHq//iJ6
         +Tbe5ZoNlEzu3apjoPCzogbgIvHNtuZtqoohNLR+4cSHCiTWep/+GzKC1MWjArgjp9Vi
         jPz3kkUbVs/nYznbcsYgCtQDqw0cjVcgdUhN95EzsD8ftu+Z2+ti8hmB4gacg7noTMBL
         3KcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766662761; x=1767267561;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/wwHqUKmio0zDYl0J/tmo44sND18w8vdAisUr2wfwgY=;
        b=iAIXgZqoSkdlz8XZG8K8HxE2Q+RUX+x5UXF82tgQ27VqM7gy5HqipVU8SGABgNi5rh
         dAdH23HR4+3MlETgsvGgvHVAufigKy96wPzmLZwyMjNB51HFF6H8FtJhKvZqcJcuiDEr
         RYc0EuQiRZ4UONaPLto9QZJSANSNESxU8Oga4tV9+boCDkRMqsC3U2WQ344Fzq8bQKVx
         jvZ0pWLFwww0OXPamF4DKwb2QF+UE1shXdPxOGWoa0G9JIhoroo80hMowAedFhYrKGIi
         kNURlrSxvkDLy/ZksZlIQ3ccaXkGaa31GhBL/A7eArqbdrUhdU/RQPpN2PaUBk08z1ut
         3WEg==
X-Forwarded-Encrypted: i=1; AJvYcCXMs8bVlu8YzNYkgT8z2DaFY9kxpaTuvwLAkrz5HyANVg7sIyuRSnFKPyW8tlVwwGhOm38lGcna9Rng@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9sn+20s7aVOD24/3p72ASUf4SjU9wsg/Md1w1ZA/2oXgv9HXD
	22z9D8//lU0o1tP4V5Mkwy8EbpmjSKtzA545gHTgxanysLtXtGBIeYvyqkU2UVKw4fhzDFAN
X-Gm-Gg: AY/fxX5z5CT45E1H2E7I4IDYd6ji606gDXcRG9P32MbEi2GduXGhLitIoCQl6fSrhLY
	WjZZllMQlYwFJf4j58ReTLmK6ArnRFPPzL2jF070IbyY44t+O94UWAzOLykIYYvy0+7f+DYD8ts
	64a0O5TIhdRHQtp6pBJ6w989WMxwsYLjn9w6SJRo3dMSjJlvMSX7z0K2jsBWqp/pZPNiLBez4mE
	tClgwcCnQ59NRopi29LHU3ZPyWKOJagwCGOKi6iygtB/XCcqh0DlB6qV8Ckzkl6wGpLNKoS3XOi
	QT0JOHOnG8KneTO0hJkS7CfOVfY27Yrm/BE9bV3xxjiwLlVdebW5jiEHhUSHcIoWoUREzfRQ0oq
	KgShT4PvyRlJUVDZuWl6kA3o9Ir4s+Ag2rvzq1d36f69AYKK3glwEAAAU/K+wyAqMGo3yR6J3BC
	itVbUbEMVH2KfCAb5lAynMkPiHhFUFd+yIWH8QEkZDMc7NV/CbRDkz66eH7WZyIIac2WY6X92Iq
	tf27QpcoIlkUEGgIw==
X-Google-Smtp-Source: AGHT+IHBA5f7xs8SbixSTyrADxFgnATVVrMs7xqxZBXC0Al/ChYPojBml/FfU3rBeeFAo/nT5Xmn7A==
X-Received: by 2002:a17:902:e88e:b0:24c:da3b:7376 with SMTP id d9443c01a7336-2a2f24270d8mr202538085ad.26.1766655917374;
        Thu, 25 Dec 2025 01:45:17 -0800 (PST)
Received: from smtpclient.apple (125x103x213x40.ap125.ftth.ucom.ne.jp. [125.103.213.40])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c83961sm177814725ad.38.2025.12.25.01.45.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Dec 2025 01:45:17 -0800 (PST)
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v4 2/9] dt-bindings: display: add verisilicon,dc
From: "Han Gao (Revy)" <rabenda.cn@gmail.com>
In-Reply-To: <20251224161205.1132149-3-zhengxingda@iscas.ac.cn>
Date: Thu, 25 Dec 2025 17:45:00 +0800
Cc: "Han Gao (Revy)" <rabenda.cn@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Drew Fustini <fustini@kernel.org>,
 Guo Ren <guoren@kernel.org>,
 Fu Wei <wefu@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Heiko Stuebner <heiko@sntech.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Michal Wilczynski <m.wilczynski@samsung.com>,
 Yao Zi <ziyao@disroot.org>,
 dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org,
 Icenowy Zheng <uwu@icenowy.me>
Content-Transfer-Encoding: quoted-printable
Message-Id: <D5A173F1-D439-49FB-A4A0-B632550BF35B@gmail.com>
References: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
 <20251224161205.1132149-3-zhengxingda@iscas.ac.cn>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
X-Mailer: Apple Mail (2.3864.300.41.1.7)



> On Dec 25, 2025, at 00:11, Icenowy Zheng <zhengxingda@iscas.ac.cn> =
wrote:
>=20
> From: Icenowy Zheng <uwu@icenowy.me>
>=20
> Verisilicon has a series of display controllers prefixed with DC and
> with self-identification facility like their GC series GPUs.
>=20
> Add a device tree binding for it.
>=20
> Depends on the specific DC model, it can have either one or two =
display
> outputs, and each display output could be set to DPI signal or "DP"
> signal (which seems to be some plain parallel bus to HDMI =
controllers).
>=20
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> ---
> Changes in v4:
> - Added a comment for "verisilicon,dc" that says the ID/revision is
>  discoverable via registers.
> - Removed clock minItems constraint w/o specific compatible strings.
>=20
> Changes in v3:
> - Added SoC-specific compatible string, and arm the binding with clock =
/
>  port checking for the specific SoC (with a 2-output DC).
>=20
> Changes in v2:
> - Fixed misspelt "versilicon" in title.
> - Moved minItems in clock properties to be earlier than items.
> - Re-aligned multi-line clocks and resets in example.
>=20
> .../bindings/display/verisilicon,dc.yaml      | 144 ++++++++++++++++++
> 1 file changed, 144 insertions(+)
> create mode 100644 =
Documentation/devicetree/bindings/display/verisilicon,dc.yaml
>=20
> diff --git =
a/Documentation/devicetree/bindings/display/verisilicon,dc.yaml =
b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> new file mode 100644
> index 0000000000000..fe64cc1466690
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> @@ -0,0 +1,144 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/verisilicon,dc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Verisilicon DC-series display controllers
> +
> +maintainers:
> +  - Icenowy Zheng <uwu@icenowy.me>
> +
> +properties:
> +  $nodename:
> +    pattern: "^display@[0-9a-f]+$"
> +
> +  compatible:
> +    items:
> +      - enum:
> +          - thead,th1520-dc8200
> +      - const: verisilicon,dc # DC IPs have discoverable ID/revision =
registers
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: DC Core clock
> +      - description: DMA AXI bus clock
> +      - description: Configuration AHB bus clock
> +      - description: Pixel clock of output 0
> +      - description: Pixel clock of output 1
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: axi
> +      - const: ahb
> +      - const: pix0
> +      - const: pix1
> +
> +  resets:
> +    items:
> +      - description: DC Core reset
> +      - description: DMA AXI bus reset
> +      - description: Configuration AHB bus reset
> +
> +  reset-names:
> +    items:
> +      - const: core
> +      - const: axi
> +      - const: ahb
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: The first output channel , endpoint 0 should be
> +          used for DPI format output and endpoint 1 should be used
> +          for DP format output.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: The second output channel if the DC variant
> +          supports. Follow the same endpoint addressing rule with
> +          the first port.
> +
> +    required:
> +      - port@0
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - ports
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: thead,th1520-dc8200
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 5
> +        ports:
> +          required:
> +            - port@0
> +            - port@1
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/clock/thead,th1520-clk-ap.h>
> +    #include <dt-bindings/reset/thead,th1520-reset.h>
> +    soc {
> +      #address-cells =3D <2>;
> +      #size-cells =3D <2>;
> +
> +      display@ffef600000 {
> +        compatible =3D "thead,th1520-dc8200", "verisilicon,dc";
> +        reg =3D <0xff 0xef600000 0x0 0x100000>;
> +        interrupts =3D <93 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks =3D <&clk_vo CLK_DPU_CCLK>,
> +                 <&clk_vo CLK_DPU_ACLK>,
> +                 <&clk_vo CLK_DPU_HCLK>,
> +                 <&clk_vo CLK_DPU_PIXELCLK0>,
> +                 <&clk_vo CLK_DPU_PIXELCLK1>;
> +        clock-names =3D "core", "axi", "ahb", "pix0", "pix1";
> +        resets =3D <&rst TH1520_RESET_ID_DPU_CORE>,
> +                 <&rst TH1520_RESET_ID_DPU_AXI>,
> +                 <&rst TH1520_RESET_ID_DPU_AHB>;
> +        reset-names =3D "core", "axi", "ahb";
> +
> +        ports {
> +          #address-cells =3D <1>;
> +          #size-cells =3D <0>;
> +
> +          port@0 {
> +            reg =3D <0>;
> +          };
> +
> +          port@1 {
> +            reg =3D <1>;
> +            #address-cells =3D <1>;
> +            #size-cells =3D <0>;
> +
> +            dpu_out_dp1: endpoint@1 {
> +              reg =3D <1>;
> +              remote-endpoint =3D <&hdmi_in>;
> +            };
> +          };
> +        };
> +      };
> +    };
> --=20
> 2.52.0
>=20

Tested-by: Han Gao <gaohan@iscas.ac.cn>=

