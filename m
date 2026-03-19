Return-Path: <devicetree+bounces-278036-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFCsD+xqvGlQyQIAu9opvQ
	(envelope-from <devicetree+bounces-278036-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 22:30:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6232D2AF0
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 22:30:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1032A3047AC0
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 21:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FCB2402B94;
	Thu, 19 Mar 2026 21:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbeK5MOg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC59402459
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 21:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773955605; cv=none; b=gn+fGfAmC4lvF/JxpI6eQPFJ67jLdPuFWrDfmN16GCbKhcsBwSyomgTHB1E73YK7o+nNtBT+tRZNj44lUzU1NxEDncNcwLuhbjfxkek/D3dzq73ARYTg0dZ6Khy7Wd7fQuDwFakikaRoGO+JIxfKTAelijOMJ47N/P0B6DxMMyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773955605; c=relaxed/simple;
	bh=tYI4JuCClflQeNy41iDQ7edGHrk/SVWynp0v5EfnkCk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TzgIprDtfNQV1mwoYRxQO2EfE/yMzRHg5LidWtGbYo9YF67tndh/7DAgGZxyiIASNNWO3oXkfCZU1IcCy82mrq7dTinlZEQTkNU9SOkPf/vSgvNR6JBvIWVgrWSpyE6f3yEKfr5UdYFj2ZUz/znCszSw7os+riDQ6eULCPKZFbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbeK5MOg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE5EEC2BC9E
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 21:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773955604;
	bh=tYI4JuCClflQeNy41iDQ7edGHrk/SVWynp0v5EfnkCk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=hbeK5MOgQC2KsNJEt0FLtnzuxHQ7Gp/Fnr3DHHv3l7l4Oy4Q3/hjF3ab1nHoKK2RT
	 Mt/X+xOQ2elSksZDmCaSRHx0mCz3NmDzd60WX+taAX9MJL2Yz0alpse+itEafUnoDE
	 ss4N+3tL0BdQw3NUdXgnqSk3/D4X7TlRNiuybOknNTL2L8hATWrYbJG4E/OxiXxK6v
	 xvh/zTpJGymBQ1zlkieq2bzg2l2k9X/m6Gd8jJH4p6eBSIjMG0to4scsvEpAQXGjnv
	 el9VpIrCQBOaTjJCYfOVVwUf50QIvxjximwwNB1ZAyfbfl+HGBD5loO5d4no+xslhZ
	 Zt5SsipWmUBoA==
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6644a3029b3so1876845a12.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:26:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUGo8ukAUjhIuHWMPZ22abhjIFONcZ6Isbet0tqcfQxNgn4aCUhmzHO31k12I0PmfQFFjT8htWgNcPk@vger.kernel.org
X-Gm-Message-State: AOJu0YyBKiRNBsP579NUYBU6ELy+KN9wc9pntgjkIwr/lTXydeDbnWkT
	hadJ7ksJSAPBbGD9WEbLJQEPoxHmZJ0CeFEGBQ1/mTGBrsmDxJER+WoS3jWiRpFguzEl3qUzE6+
	dGEWTkGaXyhZmC1SsX2Ppxu8xM0BeDA==
X-Received: by 2002:a05:6402:1451:b0:665:e9f:901d with SMTP id
 4fb4d7f45d1cf-668c8f0491emr724945a12.1.1773955603221; Thu, 19 Mar 2026
 14:26:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260319160110.2131954-1-thierry.reding@kernel.org> <20260319160110.2131954-4-thierry.reding@kernel.org>
In-Reply-To: <20260319160110.2131954-4-thierry.reding@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Thu, 19 Mar 2026 16:26:31 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+smyMYE_oexRc9wEJgMxdUxSwg7p8Bex8q6J6PrwZZ+Q@mail.gmail.com>
X-Gm-Features: AaiRm53lN6yYR9QpqF6KxOg0pgZSKjOGMdgukT38RLesnKDXU4n4eCCG7IjHUV8
Message-ID: <CAL_Jsq+smyMYE_oexRc9wEJgMxdUxSwg7p8Bex8q6J6PrwZZ+Q@mail.gmail.com>
Subject: Re: [PATCH 3/5] dt-bindings: pci: Document the NVIDIA Tegra264 PCIe controller
To: Thierry Reding <thierry.reding@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jon Hunter <jonathanh@nvidia.com>, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278036-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.948];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nvidia.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8A6232D2AF0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 11:01=E2=80=AFAM Thierry Reding
<thierry.reding@kernel.org> wrote:
>
> From: Thierry Reding <treding@nvidia.com>
>
> The six PCIe controllers found on Tegra264 are of two types: one is used
> for the internal GPU and therefore is not connected to a UPHY and the
> remaining five controllers are typically routed to a PCI slot and have
> additional controls for the physical link.
>
> While these controllers can be switched into endpoint mode, this binding
> describes the root complex mode only.
>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  .../bindings/pci/nvidia,tegra264-pcie.yaml    | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra264=
-pcie.yaml
>
> diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra264-pcie.y=
aml b/Documentation/devicetree/bindings/pci/nvidia,tegra264-pcie.yaml
> new file mode 100644
> index 000000000000..56d69de2788b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra264-pcie.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/nvidia,tegra264-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NVIDIA Tegra264 PCIe controller
> +
> +maintainers:
> +  - Thierry Reding <thierry.reding@gmail.com>
> +  - Jon Hunter <jonathanh@nvidia.com>
> +
> +properties:
> +  compatible:
> +    const: nvidia,tegra264-pcie
> +
> +  reg:
> +    minItems: 4
> +    maxItems: 5
> +
> +  reg-names:
> +    minItems: 4
> +    maxItems: 5
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 4
> +
> +  dma-coherent: true
> +
> +  nvidia,bpmp:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description: |
> +      Must contain a pair of phandle (to the BPMP controller node) and
> +      controller ID. The following are the controller IDs for each contr=
oller:
> +
> +      0: C0
> +      1: C1
> +      2: C2
> +      3: C3
> +      4: C4
> +      5: C5
> +    items:
> +      - items:
> +          - description: phandle to the BPMP controller node
> +          - description: PCIe controller ID
> +            maximum: 5
> +
> +unevaluatedProperties: false
> +
> +required:
> +  - interrupt-map
> +  - interrupt-map-mask
> +  - iommu-map
> +  - msi-map
> +  - nvidia,bpmp
> +
> +allOf:
> +  - $ref: /schemas/pci/pci-host-bridge.yaml#
> +  - oneOf:
> +    - description: C0 controller (no UPHY)
> +      properties:
> +        reg:
> +          items:
> +            - description: application layer registers
> +            - description: transaction layer registers
> +            - description: privileged transaction layer registers
> +            - description: ECAM-compatible configuration space
> +
> +        reg-names:
> +          items:
> +            - const: xal
> +            - const: xtl
> +            - const: xtl-pri
> +            - const: ecam
> +
> +    - description: C1-C5 controllers (with UPHY)
> +      properties:
> +        reg:
> +          items:
> +            - description: application layer registers
> +            - description: transaction layer registers
> +            - description: privileged transaction layer registers
> +            - description: data link/physical layer registers
> +            - description: ECAM-compatible configuration space
> +
> +      items:
> +        - const: xal
> +        - const: xtl
> +        - const: xtl-pri
> +        - const: xpl

Put this entry last since it is the optional one. Then you can move
all of this to the top-level and get rid of the duplication.

> +        - const: ecam
> --
> 2.52.0
>

