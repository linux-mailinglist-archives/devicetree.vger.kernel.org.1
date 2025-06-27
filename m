Return-Path: <devicetree+bounces-190339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E36AEB788
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:19:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F46E3ABB54
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 12:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03075260574;
	Fri, 27 Jun 2025 12:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GIOPxOgC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A09A202990
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751026765; cv=none; b=odItj1aNj5DNrMOl9+jxD25gzVWiOQZsVPUcnad98Am962h/mfVIshUDnsVnrExj/xNkcg2rk5YNMC+cKPszLMpUBvedxNq4ihQRDkpOeGW848oopUFq9RwH3CXcf4fsrb3IcPkXJ2cQAbFIo7mjnJwD8AsZe6LGjfyv8KrG3yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751026765; c=relaxed/simple;
	bh=wJc4Yq/2qIbN+YrM8hSbDxvEt1nc0UwcLw7/Vd6Yz4E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q4OcREmJBIAFQDdN4l3JUpwQf23st7c3TCjV10JxX+9P3mueqMwo9iZVerTMO1fJYf+uwUgBIaz7CJZoN6i7aDq0V0oXz8oSu8RVBlhLzaeZmoQB+Pc9Wigrpw5gil+enEpcqYLMHlV6nlzthWaXyAtwRMcss/UL1l/HKCjFGbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=GIOPxOgC; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-40ab5bd9088so1379056b6e.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1751026763; x=1751631563; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L/kboISUHVl7C5fi/y0/ImSh6YAy6f5eQsfdMQeLy6w=;
        b=GIOPxOgCWynaA7MOA/+M7PVLNByOw05QuCtkQgC2X6XBEDThRnJL9UTnNkTeEPoU3M
         wRiOqIMYqFTkLYhozGDZ19MzeKFd4g4G87G0rVE2rFjN9/A3jPopO0BwHIcOQFL0Oe+0
         sg2OCcjI25lZ8hB9i/vlFQYVCZ4NgYAiVpScU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751026763; x=1751631563;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L/kboISUHVl7C5fi/y0/ImSh6YAy6f5eQsfdMQeLy6w=;
        b=aLGNvfOUl3RYcL4QMkqHmfFAYFIDIzOQUWuFFGt8uLaaK2d98X8y7jG29e7jpMknYR
         jqumh8PtIj46pEA5CkvKNgfE1NW2ke5cHIJbhxi4SKHzv9QFXOIybSMH/TzTXJP1/ixX
         svU1PZtMaWxnXJdZSyi4dXMpIMVApLHkX4zrsd/8JJ1qM4e0lszIuCd3jxC7pcifiIA4
         Somj/Sin7XIJh0ltK/dP2+Rb30sVI0IkBVuSE6EA61olQdDlb1nfVR5jmQIoekPH7P9g
         fjQef41JRQiAx0I6iqRh6JtX890qy9xVKvKFftIsXhCpjvWmlEtEwL+vqKfFZ7oNxHLI
         W1ZA==
X-Forwarded-Encrypted: i=1; AJvYcCXN5RXi9jgLjkLkTOMgQJJM0lF6agP7pV6inRLdBZ3yOnizwb9IJ/YF255/N4C6bl1Vz0LoIhScXF44@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm+7WN8Rk5FhDgNB8GptPKcbkEL8Dj2wN9z4VzWsLTvEl+T4iz
	yoY+hC0B9dDzFD4hfqAROZaHkjbGUb8Wi5G2bTKG6GrbGYNTtcPOw4OqqkkW3XGOGch6RaKSCdD
	pLCQ=
X-Gm-Gg: ASbGnctC0VdORVFaQfrzDlsYUWUy+G5VpT7C2zhd2mv6HuK52T9GLt2T7xbdwZe5y9A
	pAPa8ldmgC13lMh6OVb8hNMBZ7/UIlXUMSKZvndBzSYuDoePrFHFt6Xyj0N0jadUDxZuCQB59PZ
	gv2oXBNNz0TPIpesotPsiferj27+4KZzAm5zMgnfoY+yaheha3o9RSYsgYvY2I8vBVM6RMiItUD
	mkcc94GjncUCBUxT5nKZpJxU6ZKWWTcrWeUwMsls5IA7pgC1/lC1sRS74fJB1K2oRbOtXoWvJ+/
	A5phOEg+wxJo8ovp9dBb1archCcsl4+iEsvy5V7Ywk1cSmKMCOjlc4PSd33nhRnrobvrJ93xwG/
	YhucwF99eXIiwzvqDiGk2WLRd6BSFV9SP
X-Google-Smtp-Source: AGHT+IE6hSrpNeok8TlEVVBCKzaH76LMhP47bVnMgA991kOGIn6ofwqYPMrdsbTaOFf125QJtNQExA==
X-Received: by 2002:a05:6808:4f48:b0:406:45ae:b0 with SMTP id 5614622812f47-40b33e8bfb9mr2257358b6e.35.1751026763004;
        Fri, 27 Jun 2025 05:19:23 -0700 (PDT)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com. [209.85.210.49])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-611b8474b76sm219676eaf.8.2025.06.27.05.19.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 05:19:22 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-73a5c41a71aso1060992a34.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:19:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVr7y1mGqiuqcIwKRDpMX7P0CRkksohA1/mOo69ATZhu0a7P7axzVc/NgZKeF93RRud4japU5UcMkTv@vger.kernel.org
X-Received: by 2002:a05:6102:b10:b0:4e5:59ce:471b with SMTP id
 ada2fe7eead31-4ee4f8fa5cbmr2358879137.23.1751026395186; Fri, 27 Jun 2025
 05:13:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250623120154.109429-1-angelogioacchino.delregno@collabora.com> <20250623120154.109429-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250623120154.109429-3-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 27 Jun 2025 20:12:39 +0800
X-Gmail-Original-Message-ID: <CAC=S1njT6ygGuZDPU5KDW94Nu-TbM21DM-6HdR7Pio=WTD_eQA@mail.gmail.com>
X-Gm-Features: Ac12FXwNi69jmRwGOUm8UJ7WfMt6niSy4CkLT9-9z1YDS1Mi3aHTobxjbgMPxFw
Message-ID: <CAC=S1njT6ygGuZDPU5KDW94Nu-TbM21DM-6HdR7Pio=WTD_eQA@mail.gmail.com>
Subject: Re: [PATCH v1 02/13] pmdomain: mediatek: Refactor bus protection
 regmaps retrieval
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, ulf.hansson@linaro.org, 
	y.oudjana@protonmail.com, wenst@chromium.org, lihongbo22@huawei.com, 
	mandyjh.liu@mediatek.com, mbrugger@suse.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 23, 2025 at 8:02=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> In preparation to add support for new generation SoCs like MT8196,
> MT6991 and other variants, which require to set bus protection on
> different busses than the ones found on legacy chips, and to also
> simplify and reduce memory footprint of this driver, refactor the
> mechanism to retrieve and use the bus protection regmaps.
>
> This is done by removing the three pointers to struct regmap from
> struct scpsys_domain (allocated for each power domain) and moving
> them to the main struct scpsys (allocated per driver instance) as
> an array of pointers to regmap named **bus_prot.
>
> That deprecates the old devicetree properties to grab phandles to
> the three predefined busses (infracfg, infracfg-nao and smi) and
> replaces it with a new property "mediatek,bus-protection" that is
> meant to be an array of phandles holding the same busses where
> required (for now - for legacy SoCs).
>
> The new bus protection phandles are indexed by the bus_prot_index
> member of struct scpsys, used to map "bus type" (ex.: infra, smi,
> etc) to the specific *bus_prot[x] element.
>
> While the old per-power-domain regmap pointers were removed, the
> support for old devicetree was retained by still checking if the
> new property (in DT) and new-style declaration (in SoC specific
> platform data) are both present at probe time.
>
> If those are not present, a lookup for the old properties will be
> done in all of the children of the power controller, and pointers
> to regmaps will be retrieved with the old properties, but then
> will be internally remapped to follow the new style regmap anyway
> as to let this driver benefit of the memory footprint reduction.
>
> Finally, it was necessary to change macros in mtk-pm-domains.h and
> in mt8365-pm-domains.h to make use of the new style bus protection
> declaration, as the actual HW block is now recognized not by flags
> but by its own scpsys_bus_prot_block enumeration.
>
> The BUS_PROT_(STA)_COMPONENT_{INFRA,INFRA_NAO,SMI} flags were also
> removed since they are now unused, and because that enumeration was
> initially meant to vary the logic of bus protection and not the bus
> where work is performed, anyway!
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---

<snip>

>
> +static int scpsys_get_bus_protection_legacy(struct device *dev, struct s=
cpsys *scpsys)
> +{
> +       const u8 bp_blocks[3] =3D {
> +               BUS_PROT_BLOCK_INFRA, BUS_PROT_BLOCK_SMI, BUS_PROT_BLOCK_=
INFRA_NAO
> +       };
> +       struct device_node *np =3D dev->of_node;
> +       struct device_node *node, *smi_np;
> +       int num_regmaps =3D 0, i, j;
> +       struct regmap *regmap[3];
> +
> +       /*
> +        * Legacy code retrieves a maximum of three bus protection handle=
s:
> +        * some may be optional, or may not be, so the array of bp blocks
> +        * that is normally passed in as platform data must be dynamicall=
y
> +        * built in this case.
> +        *
> +        * Here, try to retrieve all of the regmaps that the legacy code
> +        * supported and then count the number of the ones that are prese=
nt,
> +        * this makes it then possible to allocate the array of bus_prot
> +        * regmaps and convert all to the new style handling.
> +        */
> +       node =3D of_find_node_with_property(np, "mediatek,infracfg");
> +       if (node) {
> +               regmap[0] =3D syscon_regmap_lookup_by_phandle(node, "medi=
atek,infracfg");
> +               of_node_put(node);
> +               num_regmaps++;
> +               if (IS_ERR(regmap[0]))
> +                       return dev_err_probe(dev, PTR_ERR(regmap[0]),
> +                                            "%pOF: failed to get infracf=
g regmap\n",
> +                                            node);
> +       } else {
> +               regmap[0] =3D NULL;
> +       }
> +
> +       node =3D of_find_node_with_property(np, "mediatek,smi");
> +       if (node) {
> +               smi_np =3D of_parse_phandle(node, "mediatek,smi", 0);
> +               of_node_put(node);
> +               if (!smi_np)
> +                       return -ENODEV;
> +
> +               regmap[1] =3D device_node_to_regmap(smi_np);
> +               num_regmaps++;
> +               of_node_put(smi_np);
> +               if (IS_ERR(regmap[1]))
> +                       return dev_err_probe(dev, PTR_ERR(regmap[1]),
> +                                            "%pOF: failed to get SMI reg=
map\n",
> +                                            node);
> +       } else {
> +               regmap[1] =3D NULL;
> +       }
> +
> +       node =3D of_find_node_with_property(np, "mediatek,infracfg-nao");
> +       if (node) {
> +               regmap[2] =3D syscon_regmap_lookup_by_phandle(node, "medi=
atek,infracfg-nao");
> +               num_regmaps++;
> +               of_node_put(node);
> +               if (IS_ERR(regmap[2]))
> +                       return dev_err_probe(dev, PTR_ERR(regmap[2]),
> +                                            "%pOF: failed to get infracf=
g regmap\n",
> +                                            node);
> +       } else {
> +               regmap[2] =3D NULL;
> +       }
> +
> +       scpsys->bus_prot =3D devm_kmalloc_array(dev, num_regmaps,
> +                                             sizeof(*scpsys->bus_prot), =
GFP_KERNEL);
> +       if (!scpsys->bus_prot)
> +               return -ENOMEM;
> +
> +       for (i =3D 0, j =3D 0; i < num_regmaps; i++) {

Did you mean BUS_PROT_BLOCK_COUNT?
Consider a case where only regmap[2] is configured.

Regards,
Fei

> +               enum scpsys_bus_prot_block bp_type;
> +
> +               if (!regmap[i])
> +                       continue;
> +
> +               bp_type =3D bp_blocks[i];
> +               scpsys->bus_prot_index[bp_type] =3D j;
> +               scpsys->bus_prot[j] =3D regmap[i];
> +
> +               j++;
> +       }
> +
> +       return 0;
> +}
> +

<snip>

