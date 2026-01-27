Return-Path: <devicetree+bounces-259862-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6La/MrWpeGl9rwEAu9opvQ
	(envelope-from <devicetree+bounces-259862-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:04:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D02993FB0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:04:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1A6B43017519
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE3AF3101D3;
	Tue, 27 Jan 2026 12:04:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E33630FF2A
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769515441; cv=none; b=a1XKmx/V+IsKo/BQIV8c48neO8cnfX4ZXiCO5+EpPNQAlXYe3/BChPjgNKVFe7Nh/AH0ZpPfsyeoI4gL3b9LcCc9nR7eDKE1m9FbVbOlFsZ+MmsSULfRXiHnvXUphJQHKMy8Q++TYUOLvP7BOAK3fO/fA17YFb1N3AxRfeBlx1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769515441; c=relaxed/simple;
	bh=VR7NKRn1EzgAvvzhExxtxmFQMZZBrouxWpYgT74wAco=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UKTRyllqqa6u9nDw+hscJmmbPwK/C6TpaOv2l5o3kZX0Hz3/7D/C/fPsLp9wa2nQwMyCew1ZBXPjs0PwQhAEs8Xfyp7j3K336KBkC1L6wSfsNqcGtPkOtogwtCadAMQwqMqA7u8wwnRUSp3bRVr65ENysnTq8VqxaPfIJloPO0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f196.google.com with SMTP id af79cd13be357-8c6b16bd040so624623085a.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:03:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769515439; x=1770120239;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h95kKSGuxlIi6DsiBy3i3OTVnWNnI1FQj5Fv8XU8C14=;
        b=G1txbBGbnulp/X5nn+UtPtLkNiq9+YsO52GuyCmxVC+r8b5RSPtbKYhhwbjjotBTZV
         rNy5IUzv0op5LSWfGKucj1Vu/+V7WnKsFR1kMIJkwvSA+Rnjh1RXM+p0k0UjvfYQs5VI
         dIf4H6PDw4Wl6SoFeGOxzx8qKzXSJoPGiwtr8aGOY2yuXh8nMdhjrHWA4G3jZJrB6iKV
         lovjFhvwb+g1TeHfXDXrMNRHtGag1ZkMNZooh5s1rGMHtqj8Y6vPMOupGnTE8+pE6r2H
         tkZB67QJbvYtW/H2bKr+a0UjdZwZNJFUAA8rhiHn9DXBYunfSDwxiDlp/5qrNTFByH4Z
         Hl8w==
X-Forwarded-Encrypted: i=1; AJvYcCXGMqhQwKmu8eSk6Ic2INN41qdK9ebCecys45Ed4L18TiSW5q65cr71VASQLgpAa4t54WzOpkEaBkim@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8YZKse88KqTkf/et5xNNO2yXQj+yv0WQ+ufYkoGsQyrbJ67LA
	30m2bY4PIdXkgvJMD3YQGU9DpACiVvrAL3BKCBWlrYd3sluBxXryF07XadK7tWwCUd4=
X-Gm-Gg: AZuq6aJ4riZ6BYBg5ps99JvebuPXeoNpljmNIZ8ziX0BtldF0l4Yv0/+WcVlYIYFMRd
	nIVs/W1QmZaA1bq0lp5Qhxfht4KtRPe1KFG/YOP0jDmn3em0hV6hEWk7sbvHJegm6XMS0hitK3/
	u+6COs2MlN0fE3KKJuy4H+ANOY6Cz64h27m9Nm7UHu25BtQMwZZT94syrVVGNIy8yVqbwKcmOEa
	WVV01fiLY4tryW9ssoYyfyosD0R8k5hPrRMU5UGpyMt17MeT8wdLM666aj9kzEfVsiPbTvNOzcQ
	j2KWN50B5Xsr0lrHYE2hO4l+RjZlnWoV4IwgGGR9wubOOAa9da/SwK07IxBx/ZLldRB5vXiuB4R
	v1Ei7FkQECGsB4U2Jm2qr9X1qa5k0PsuH3Ps8KG16Ws3rMINME0n1JaPUd2UbhdZX0iUA3aj9W0
	44P9u7gGp4mPBoO983awtUcBcxS7lphFXJhNN1glgu2XCy9xAUl3Kn
X-Received: by 2002:a05:620a:f0f:b0:8c6:ed3d:be60 with SMTP id af79cd13be357-8c70b91e966mr132945485a.71.1769509624276;
        Tue, 27 Jan 2026 02:27:04 -0800 (PST)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com. [209.85.222.180])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c70f6861f3sm9518085a.53.2026.01.27.02.27.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 02:27:04 -0800 (PST)
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8c6d8751c88so588589385a.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:27:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVyf/khZo4thAowczNfdm9hRW1UzdrwoHLEl+b+eOKsmibORfWHMKaLtsr9eKW4pq9VtzKWj8Zo4mVu@vger.kernel.org
X-Received: by 2002:a05:6102:32c4:b0:5db:ca9e:b57d with SMTP id
 ada2fe7eead31-5f72368a7cbmr661077137.19.1769509270640; Tue, 27 Jan 2026
 02:21:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-0-c55ec1b5d8bf@linaro.org>
 <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-1-c55ec1b5d8bf@linaro.org>
In-Reply-To: <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-1-c55ec1b5d8bf@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Jan 2026 11:20:59 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU9HcK3xX=itqe2di1HS1SJvV6=ySqKyrtj7Yr1yXyuqQ@mail.gmail.com>
X-Gm-Features: AZwV_QgWv7FB_90Ca_fAZmW1VQjnUFaVdHL_S5QmJWKKvUrnnNh7whB0F4bfOtQ
Message-ID: <CAMuHMdU9HcK3xX=itqe2di1HS1SJvV6=ySqKyrtj7Yr1yXyuqQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: usb: document the Renesas
 UPD720201/UPD720202 USB 3.0 xHCI Host Controller
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Bartosz Golaszewski <brgl@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-usb@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linuxfoundation.org,glider.be,google.com,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-259862-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,linaro.org:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linux-m68k.org:email]
X-Rspamd-Queue-Id: 3D02993FB0
X-Rspamd-Action: no action

Hi Neil,

On Tue, 27 Jan 2026 at 10:57, Neil Armstrong <neil.armstrong@linaro.org> wrote:
> Document the Renesas UPD720201/UPD720202 USB 3.0 xHCI Host Controller,
> which connects over PCIe and requires specific power supplies to

Here: "requires"...

> start up.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/usb/renesas,upd720201-pci.yaml        | 55 ++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/usb/renesas,upd720201-pci.yaml b/Documentation/devicetree/bindings/usb/renesas,upd720201-pci.yaml
> new file mode 100644
> index 000000000000..df3cdcf44747
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/renesas,upd720201-pci.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/renesas,upd720201-pci.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: UPD720201/UPD720202 USB 3.0 xHCI Host Controller (PCIe)
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +
> +description:
> +  UPD720201 USB 3.0 xHCI Host Controller via PCIe x1 Gen2 interface.
> +  The UPD720202 up to two downstream ports, while UPD720201 supports up to
> +  four downstream USB 3.0 rev1.0 ports.
> +
> +properties:
> +  compatible:
> +    const: pci1912,0014

Just wondering: how does having a new driver
drivers/pci/pwrctrl/pci-pwrctrl-upd720201.c matching against this
compatible play well with normal PCI discovery and probing of
drivers/usb/host/xhci-pci-renesas.c?

> +
> +  reg:
> +    maxItems: 1
> +
> +  avdd33-supply:
> +    description: +3.3 V power supply for analog circuit
> +
> +  vdd10-supply:
> +    description: +1.05 V power supply
> +
> +  vdd33-supply:
> +    description: +3.3 V power supply
> +
> +required:
> +  - compatible
> +  - reg

... but no power supplies are listed here? ...

> +
> +allOf:
> +  - $ref: usb-xhci.yaml
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pcie@0 {
> +        reg = <0x0 0x1000>;
> +        ranges = <0x02000000 0x0 0x100000 0x10000000 0x0 0x0>;
> +        #address-cells = <3>;
> +        #size-cells = <2>;
> +        device_type = "pci";
> +
> +        usb@0 {

The actual DTS uses "usb-controller".

> +            compatible = "pci1912,0014";
> +            reg = <0x0 0x0 0x0 0x0 0x0>;

... also not in the example?

> +        };
> +    };
>
> --
> 2.34.1

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

