Return-Path: <devicetree+bounces-249666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 005D4CDDB66
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 12:36:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E0C93011ECD
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 11:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3B2F30AD06;
	Thu, 25 Dec 2025 11:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kck5fxOU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com [209.85.215.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9356330BBB9
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 11:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766662575; cv=none; b=FjKde6ZBfqvEIqDNOcTJKrzK6mJlntMK+yMCIwdu/B+aAcAmoGjhVDGUhrK/t6ftw5qN7q6pjWlbLEGLShC+di63YivyB/UeRmNMVGDezyw8IxpDno+fb3CUysJLJlQ1pavHbwEtag30Wgmzjg0S74r08kfKZJ6U8AOhxGstFUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766662575; c=relaxed/simple;
	bh=xTwz/Q1jEnqK005QeUiOnzmznY+btgm9RCzNo6FyeqM=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=LTP0QNB70rRd6NF53BBJmcs/A+DqT+0Vcj2qYx2Ni0Wov/T/CSuYc0J0EDs+1FBJgZGXpju9bJOU9dG5KpN8bHtLk3bNCiaOVQbEU8e9sxl5jFaIVX1x/iocLSI0xVTTo97vHWsvNPIl6TfSn6BCAvDEFpKn/gHkGVF1o3Ow1to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kck5fxOU; arc=none smtp.client-ip=209.85.215.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f193.google.com with SMTP id 41be03b00d2f7-b6ce6d1d3dcso6309470a12.3
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 03:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766662573; x=1767267373; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NR9ewMLjXFiPPdUADJ8UIVWJfNnUqlBWb4FQrwaT2qY=;
        b=kck5fxOUX+D+PVAHM4+PkHhdAhpxIS70XjEz+i02b9IOjNCnGB9B1o6W5HoEJlh7NY
         LDOJAPqAvXkGTxWv4bnTRtRHDBO57aDeToCMn8xttjisBV/qPDg/KfNoj1w8YxPY42tE
         A158/zgu4nXi0K3V76cDzT+oG+3b+fqaJ9b7B35O6u1t2WCJVAsgzLcG8qnzNwsvFV4x
         cSxJlbE6ByPNj+rDqow2F0k9ayRzxf7NwQlb6Ypi8HgBNIYu9i0TtREM8wQrnrU0dP2M
         BGzonJO/JZHW1Cw7heDzUON6hvEzLrij/+ingyKDkd1bv3kW4RjggrV39ZfeGZFsKx0R
         lvQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766662573; x=1767267373;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NR9ewMLjXFiPPdUADJ8UIVWJfNnUqlBWb4FQrwaT2qY=;
        b=MIW7+L8aw1AlpRw0C5hetgq2tv5/M12t1sGx6pGmp6rJyNj0iVHJewtfe+UOxEBD7l
         QByaWZvtFFSdOiSa0H68W78tEC65FmSaapS+ynwsOsdN/cMmWwu+Q3RfFYAVQoDmH/4/
         sWrcJ9I1YLoS5BTUdvGwxPVK6UTnwi5UWLfJlEYJuQz6DkjjjXhtTNiTShZGIKSv0Wdx
         HZZu1OcsBIQVfyIlouYGFABXrsV3Qd53ctuLW/LfXd8lgDDy7z9H2abKyhu6KLTz5OAP
         fZPUwg1h3gGJduHmJ05euV2RctQZIjTHAZsmlvQQspzULhqf95PFVBdEYGQ9WlV5YIKP
         HjVg==
X-Forwarded-Encrypted: i=1; AJvYcCW7ax09sWUHBH7xillBIBo8rbcfBA19cmMyuvJQxeq3sIn8M/q7mgITDhYdNBX49pEF0ImQlb/V0MFz@vger.kernel.org
X-Gm-Message-State: AOJu0YywQ7pDAbDUmyUsp5y/mqmxv/NKoxBwwRv+MQsz/0VbjT957cBT
	SWy101sOKFCsqpsrxuooWV0sdyWvAYkO8RMbuMiuqXLffS5HvoQTJDlnoq0wEJak68E4vEII
X-Gm-Gg: AY/fxX6Kj6c0Zxciam7pPTQBQx9vePYzjdfEBYuwuOrNUFUBP5bZ2tzX/7mPGIoZl4E
	pPZuoaoC0X1/W5oQQMy8OaOHDscNBnmIaot1rmRyjRAXpqHTCjebGnszsEvDZfK+R2b1cZQX1Tr
	y51N19F72pTxNZD3uNP1QZ8IHYirCWMA4zSnBfO6NZ04Y0hM3uVnW2VJI32hkcNcGd9iMZxN9yM
	Mw/QhSy8yEJ7MeYwGhTmsmFQQ7BMN+B7gjGfN02NollunWAZfVRCnNjBovbInRt7zsEdgXaXHQP
	PcF6sdINscM7YXlvwSbjFXxtuqiuscRsXCoxlldxCjnU1zeN54mmOvGWodCNVOreiFTSbiGRlTO
	IAJOGuj+WhxwNYaUXk2zk/gfmyrrc0e2/P9/jEtyXu7iwgqVyxCwXnDDYAkcGjVfPP6+U15OyxF
	l3rrBaPpzdsM2a0EeS9I3yHRNuHFIfoEYnF9H9YoKRbR6n54ZQlVgY4WZcMW8BWEqAsVv7qBuYb
	1CSerKGb7XCPMKTgg==
X-Google-Smtp-Source: AGHT+IG2M8a8qGctLFSHsXVBGxXFam1e3c0AO/WF6f8CTG9U4DPalhsEV923XI9BxX9JmKKZ65n0vg==
X-Received: by 2002:a05:6a20:12cb:b0:34f:a16f:15ad with SMTP id adf61e73a8af0-376aa7f0de4mr19263347637.53.1766655352891;
        Thu, 25 Dec 2025 01:35:52 -0800 (PST)
Received: from smtpclient.apple (125x103x213x40.ap125.ftth.ucom.ne.jp. [125.103.213.40])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e76de1e41sm10145504a91.2.2025.12.25.01.35.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Dec 2025 01:35:52 -0800 (PST)
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
Date: Thu, 25 Dec 2025 17:35:34 +0800
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
Message-Id: <FBE5FD78-D7E8-4961-BF13-9BDA0F840548@gmail.com>
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
Tested-by: Han Gao <gaohan@iscas.ac.cn <mailto:gaohan@iscas.ac.cn>>


