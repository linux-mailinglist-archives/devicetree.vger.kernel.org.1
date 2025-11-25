Return-Path: <devicetree+bounces-241815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC8FC830BE
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 02:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 600D13475A1
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 01:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06C8A86348;
	Tue, 25 Nov 2025 01:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="I/2saI4I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793DE49659
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 01:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764035416; cv=none; b=OqALUqsPkoUAFJFZIYakbklY2Il+H7VWGedePZGwGdSwhj23ONRRW39a40U39FXNOHoFXz+JvPvOy7Dj1V79eyXI4Vw+g0dA3d9SIJ/k3kwY4rQKoIYCUlQfu5ovuI6EKnheIW3+yB64EtZt+i8jC0Syz83011V6OoVdbQTVOOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764035416; c=relaxed/simple;
	bh=sa5gZ8o2hZhgM8t0SxAZs8zWrbOBTRpLrJI3JHm7Stc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=RVVdD20wDxEBMwBEN9JHscz/heqQvvVRA0BszOX6nqqV4MIlqsUaX7yAkgt5xMs7HJ6hLYh0UlT8vdbzZY6LQKRS4rUOTFkAWUmO3hetxrKUBMCu82VOca2mgg3v9gz9KOHWsoYHyaDFQ0x0usK3OfSpqLOMrLbRqfORusXP2HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=I/2saI4I; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-343774bd9b4so3744797a91.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 17:50:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1764035413; x=1764640213; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4BWHUL2GN8wanhvZvhL4KmgPjjWd1azXkQipkoFyfG8=;
        b=I/2saI4Ih6eP0HAevw/JuJrImTzmoCs3BWtZuerybxXeyiaf5QHkFUCoBkmEnhR9vt
         0Ezg33Yd3f6fsJVTN4jE9Q8+AOOcxgtFjyx6sQF9MXqeZwCjamCWUDlZ8e/Y0wGKHYN5
         JsqZuErvElvGS22wpt6WKRM5Psl1SFCkYJJPOnmzBi+LKhD3FFc9IlLK0YYtmYL0rEBl
         e4XxAiv7zfyugcGiAVMc6qKOVIGxkubdcHbh4iacxMZSRazuZd0Xt1qRscZ9SbZcm0cR
         RPJy7R17Pu3BDVvqbYisTngE+2eyPEZaIoRs4b55tJOheqtbtClo8WXxiE41vtgxst0D
         ULyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764035413; x=1764640213;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4BWHUL2GN8wanhvZvhL4KmgPjjWd1azXkQipkoFyfG8=;
        b=U1fwAu3v8lPKXzV9cLrR5TCDF44tBmW+zcuEjvOkw4IlYwjN5smAo5dTFvPp9aI7Rm
         dgBYKwSp/Hu9RbRpyRztZ/ltwjm7p7yqzwGp0BDka91FHpYwXne0rKotANBkt+Gr2O2p
         N0SWRwJRjizAODtEipDx9qguDE+3SE0ZGqLgo41FrP0xWRi+AB8LE7r5aDqlHq0AQPvm
         JdMArIVjvfMsa/Pv4FHaQ5ZvsK5u0I76/LYcbI2etMuGuWMKLInSHJzikq2O4pY95VX2
         x8+FTFs8yFXloyzCLs5YAhJtKMEZjeKXiMbvy/S3sCGW0XI+1rWBw2Nfhq9KL3pkpDtE
         8I3g==
X-Forwarded-Encrypted: i=1; AJvYcCWw7k2ah5hiWVOHKSx8OEOuodld2d9zahhAXSUzQpxxXLCK5mzkxMb0yYsa/3/v66wARjNY3VYtp/vn@vger.kernel.org
X-Gm-Message-State: AOJu0YzkrzgrNSXHHHfhCBxWgRlOn+Geut7iMO0ek7SN63f1am+h9WK4
	KeKAcymAQ4b7GsW7r/Ve25XazKv6j7YE9mV9IZzefJEu+1NO24qczAvoCJoicQS6tGY=
X-Gm-Gg: ASbGncvuiWppeza1EmpGl2/4W3ixlAq92LY/c6KY41pK+/ZHOEejhBymPGc4unCuzpb
	3imgth8w7EbhGh2wyPmVtsg2ZApYttjgaqcs+XeoycnNl6U+uMl3JXy0ENSvqqhsV7zfnu+jpjt
	LrfbqUchZZWqVSPY0xR30qetaXf0xcrS99JI8ES7uX+mZ2/SJ6B2JIb1bPhhlIcQHSj4Miwx4Zs
	TKSYJm4Ta03NyZMnxPgCHT+weUhQzfN71kaY68WJUUTshbfTC6Xuc1FUhjZOIRSxW2gQ0Ksrhfr
	AWqP+7tGafGBj/cPR+a1v6arYo7bnPjvRyaBYJck+llw0xCKJ7Gbd25cHy8Gvt2ugbvoXOraqrm
	+JjVkFAsK2vAUGcF27zg3rv0QK9/moNqu//PIwPtBR7X9Yjd3ybDMVMl1eSLuRg4nhkAeNYaNqh
	17Gl8tU0sS
X-Google-Smtp-Source: AGHT+IEHU6A+/8n3mB4jZSrnb+icOKiIn2/QWEg33wEEYpctM5v8n3SmiGWeZYOnJ42kEqB3e5fFuw==
X-Received: by 2002:a17:90b:5628:b0:32d:e07f:3236 with SMTP id 98e67ed59e1d1-34733f30dccmr13629885a91.22.1764035412693;
        Mon, 24 Nov 2025 17:50:12 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34727a36bbfsm14828683a91.0.2025.11.24.17.50.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 17:50:11 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Rob Herring <robh@kernel.org>, Herve Codina <herve.codina@bootlin.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, arm-scmi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC] of: Add of_parse_map_iter() helper for nexus node
 map iteration
In-Reply-To: <CAL_Jsq+2sFzQb8j5bBWbwgyYn5apLTfWOTZW3+9n74uVyph16A@mail.gmail.com>
References: <20251119-topic-lpm-of-map-iterator-v6-18-v1-1-1f0075d771a3@baylibre.com>
 <CAL_Jsq+2sFzQb8j5bBWbwgyYn5apLTfWOTZW3+9n74uVyph16A@mail.gmail.com>
Date: Mon, 24 Nov 2025 17:50:11 -0800
Message-ID: <7hjyzedgoc.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rob Herring <robh@kernel.org> writes:

> +Herve
>
> On Wed, Nov 19, 2025 at 6:41=E2=80=AFPM Kevin Hilman (TI.com)
> <khilman@baylibre.com> wrote:
>>
>> Add a new helper function of_parse_map_iter() to iterate over nexus
>> node maps (c.f. DT spec, section 2.5.1.)
>>
>> This function provides an iterator interface for traversing map
>> entries, handling the complexity of variable-sized entries based on
>> <stem>-cells properties, as well as handling the <stem>-skip and
>> <stem>-pass-thru properties.
>>
>> RFC: There's a lot of overlap between this function and
>> of_parse_phandle_with_args_map().  However the key differences are:
>>
>>   - of_parse_phandle_with_args_map() does matching
>>     it searches for an entry that matches specific child args
>>   - of_parse_map_iter() does iteration
>>     it simply walks through all entries sequentially
>
> There's also this in flight for interrupt-map:
>
> https://lore.kernel.org/all/20251027123601.77216-2-herve.codina@bootlin.c=
om/
>
> There's probably enough quirks with interrupt-map that we can't use
> the same code. Though it may boil down to handling #address-cells and
> how the parent is looked up.

Hmm, I wasn't aware of this, thanks for point it out.  It looks very
similar to what i need, except for it's hard-coding the properties as
"#interrupt-*".

Seems like this should be generalized to handle the generic nexus-node
map. But it also seems to rely on an existing function
of_irq_parse_imap_parent() which is also specific to interrupt maps.

That being said, I'm not sure if interrupt-maps are really special, or
if they are just a specific case of the nexus node map.  This drivers/of
code is breaking my brain, so it's more likely that I simply don't
understand enough of it to know how to do this correctly.

Any more detailed help/guidance for how to go forward here would be
greatly appreciated.

>> There are likely ways to extract some shared code between these two
>> functions into some shared helpers, but I'm hoping someone more
>> familiar with this OF code can help here.
>
> I would expect of_parse_phandle_with_args_map() could be implemented
> in terms of the iterator.

I'm not really sure how because the of_parse_phandle* stuff just has to
handle a single phandle, where what I need (and what the imap stuff is
doing) is iterating over the whole map.

>> However, before refactoring the shared code, it would be good to have
>> some feedback on this approach.
>>
>> Signed-off-by: Kevin Hilman (TI.com) <khilman@baylibre.com>
>> ---
>>  drivers/of/base.c  | 167 ++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>>  include/linux/of.h |  13 ++++
>>  2 files changed, 180 insertions(+)
>>
>> diff --git a/drivers/of/base.c b/drivers/of/base.c
>> index 7043acd971a0..bdb4fde1bfa9 100644
>> --- a/drivers/of/base.c
>> +++ b/drivers/of/base.c
>> @@ -1594,6 +1594,173 @@ int of_parse_phandle_with_args_map(const struct =
device_node *np,
>>  }
>>  EXPORT_SYMBOL(of_parse_phandle_with_args_map);
>>
>> +/**
>> + * of_parse_map_iter() - Iterate through entries in a nexus node map
>> + * @np:                        pointer to a device tree node containing=
 the map
>> + * @stem_name:         stem of property names (e.g., "power-domain" for=
 "power-domain-map")
>> + * @index:             pointer to iteration index (set to 0 for first c=
all)
>> + * @child_args:                pointer to structure to fill with child =
specifier (can be NULL)
>> + * @parent_args:       pointer to structure to fill with parent phandle=
 and specifier
>> + *
>> + * This function iterates through a nexus node map property as defined =
in DT spec 2.5.1.
>> + * Each map entry has the format: <child_specifier phandle parent_speci=
fier>
>> + *
>> + * On each call, it extracts one map entry and fills child_args (if pro=
vided) with the
>> + * child specifier and parent_args with the parent phandle and specifie=
r.
>> + * The index pointer is updated to point to the next entry for the foll=
owing call.
>> + *
>> + * Example usage::
>> + *
>> + *  int index =3D 0;
>> + *  struct of_phandle_args child_args, parent_args;
>> + *
>> + *  while (!of_parse_map_iter(np, "power-domain", &index, &child_args, =
&parent_args)) {
>> + *      // Process child_args and parent_args
>> + *      of_node_put(parent_args.np);
>> + *  }
>> + *
>> + * Caller is responsible for calling of_node_put() on parent_args.np.
>> + *
>> + * Return: 0 on success, -ENOENT when iteration is complete, or negativ=
e error code on failure.
>> + */
>> +int of_parse_map_iter(const struct device_node *np,
>> +                      const char *stem_name,
>> +                      int *index,
>> +                      struct of_phandle_args *child_args,
>> +                      struct of_phandle_args *parent_args)
>> +{
>> +       char *cells_name __free(kfree) =3D kasprintf(GFP_KERNEL, "#%s-ce=
lls", stem_name);
>> +       char *map_name __free(kfree) =3D kasprintf(GFP_KERNEL, "%s-map",=
 stem_name);
>> +       char *mask_name __free(kfree) =3D kasprintf(GFP_KERNEL, "%s-map-=
mask", stem_name);
>> +       char *pass_name __free(kfree) =3D kasprintf(GFP_KERNEL, "%s-map-=
pass-thru", stem_name);
>> +       static const __be32 dummy_mask[] =3D { [0 ... MAX_PHANDLE_ARGS] =
=3D cpu_to_be32(~0) };
>> +       static const __be32 dummy_pass[] =3D { [0 ... MAX_PHANDLE_ARGS] =
=3D cpu_to_be32(0) };
>> +       const __be32 *map, *mask, *pass;
>> +       __be32 child_spec[MAX_PHANDLE_ARGS];
>> +       u32 child_cells, parent_cells;
>> +       int map_len, i, entry_idx;
>> +
>> +       if (!np || !stem_name || !index || !parent_args)
>> +               return -EINVAL;
>> +
>> +       if (!cells_name || !map_name || !mask_name || !pass_name)
>> +               return -ENOMEM;
>> +
>> +       /* Get the map property */
>> +       map =3D of_get_property(np, map_name, &map_len);
>> +       if (!map)
>> +               return -ENOENT;
>> +
>> +       map_len /=3D sizeof(u32);
>> +
>> +       /* Get child #cells */
>> +       if (of_property_read_u32(np, cells_name, &child_cells))
>> +               return -EINVAL;
>> +
>> +       /* Get the mask property (optional) */
>> +       mask =3D of_get_property(np, mask_name, NULL);
>> +       if (!mask)
>> +               mask =3D dummy_mask;
>> +
>> +       /* Get the pass-thru property (optional) */
>> +       pass =3D of_get_property(np, pass_name, NULL);
>> +       if (!pass)
>> +               pass =3D dummy_pass;
>
> Generally the DT iterators need some state maintained, so there's an
> init function to do all/most of the above and stash that into a state
> struct for the iterator.

Are you referring to of_phandle_iterator_init()

>> +
>> +       /* Iterate through map to find the entry at the requested index =
*/
>> +       entry_idx =3D 0;
>> +       while (map_len > child_cells + 1) {
>> +               /* If this is the entry we're looking for, extract it */
>> +               if (entry_idx =3D=3D *index) {
>> +                       /* Save masked child specifier for pass-thru pro=
cessing */
>> +                       for (i =3D 0; i < child_cells && i < MAX_PHANDLE=
_ARGS; i++)
>> +                               child_spec[i] =3D map[i] & mask[i];
>> +
>> +                       /* Extract child specifier if requested */
>> +                       if (child_args) {
>> +                               child_args->np =3D (struct device_node *=
)np;
>> +                               child_args->args_count =3D child_cells;
>> +                               for (i =3D 0; i < child_cells && i < MAX=
_PHANDLE_ARGS; i++)
>> +                                       child_args->args[i] =3D be32_to_=
cpu(map[i]);
>> +                       }
>> +
>> +                       /* Move past child specifier */
>> +                       map +=3D child_cells;
>> +                       map_len -=3D child_cells;
>> +
>> +                       /* Extract parent phandle */
>> +                       parent_args->np =3D of_find_node_by_phandle(be32=
_to_cpup(map));
>
> Before you update the parent node, you need to put the previous parent.

OK.

Kevin


