Return-Path: <devicetree+bounces-259140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gI2DI7UOdGmS1wAAu9opvQ
	(envelope-from <devicetree+bounces-259140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 01:13:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E6B7B9D4
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 01:13:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01E26301809E
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 00:13:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A41E2AE8D;
	Sat, 24 Jan 2026 00:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYmKdSXR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160771F5EA
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 00:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769213605; cv=none; b=jfr1arv5YbbxRmiu50PBCKaJZFWG1iM97ZbwvI4cjpxob4Hcelf17oV15Omm0FqHU8Dbp9oGq6+OQ/fGqLXjUz6ww4drh17tJUuun8HLCeFr/dkaAGN+IyuAUg/002f2tZJlkDhtQCDMDP7hhA+32X8U8g077DilbJcFXPB+G48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769213605; c=relaxed/simple;
	bh=e67QfSnPJxuyvNAoMWfCXwuEw3Jft44F8kZCtdnCJbs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j+LqAJTc8Vfw8G0LNPhmhsBytWg0FrnExPLVgZbSCi5SsoGbXNzXYPAwjdECgzS6v0aME2Ltae6OxXlaAJ0VmwvfsnTCXgB7dDtAMz5M6JPQ4JKSoqYgrDxERUjh36HsjjktRoyq44abXqyraxxu0Qure5fdegKHQS2ZpoVrJwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYmKdSXR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE554C19424
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 00:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769213604;
	bh=e67QfSnPJxuyvNAoMWfCXwuEw3Jft44F8kZCtdnCJbs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=iYmKdSXRic7jBvv55zlC3DkYX7z9q2WyBvMwHLFnphh6CVkK6thHLAkBCiyIx6RFP
	 HQMHC0AYBRXRF7Nw8LL7879dTZLF7NxTfz4gZBfhf59l5DwyfFfr/RkpgoIknMjiwe
	 8Yeq6LXHUHNpPS66AqYEgGPfA0qnrMN6OcJxtsqNrRZLU1tsMEs+uv3Hu2iVD9aZM8
	 Q6Cud+FKlIyxZedxdKwmUfOCcpcNlBwCgUM9Khg868jS3TjHRlZdWEc0DWE++QCvu4
	 VIgFbovScFn0E7rmWJjyFqVBKS8pLgnP/Ea1i8Se9lgTPLwDyMCeEnpbXqYhMxJ3jo
	 dPcyc/l6ne8Qg==
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-65807a2012fso4643629a12.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 16:13:24 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV280rCKMUdmjfbxUMsE55vjMKVXTJ50s+bIrPlCMwtUf3EYH3qn7saa7L/tBjj+WxBYRu//mQ+KU74@vger.kernel.org
X-Gm-Message-State: AOJu0YxqivAHEqDNA6LBXdKrAlxxadQ+f2Y57WhWNmVrisyc7+eKvrTU
	3AJbxpz5JbibpLK810yatlBtDYofPVkIDNfkvQ1Ksb3yq6EpZt94WkX4a2IGpOMxvkRknfnsksZ
	9E1sMmOYyqABna20k8O/QPCyVyqX5Fw==
X-Received: by 2002:a05:6402:2745:b0:658:3c7b:5c3f with SMTP id
 4fb4d7f45d1cf-6584876232bmr3082719a12.11.1769213603370; Fri, 23 Jan 2026
 16:13:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260121-topic-lpm-of-map-iterator-v6-18-v2-1-a40bf8e91045@baylibre.com>
In-Reply-To: <20260121-topic-lpm-of-map-iterator-v6-18-v2-1-a40bf8e91045@baylibre.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 23 Jan 2026 18:13:12 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLq1V_is4wHedFoiGHcYt293vDJ4SsHaZKxYARupbUXEw@mail.gmail.com>
X-Gm-Features: AZwV_QjdDdxzMlnOEgkqZLmGXg8HvvZj9xdNCT8MixABbzKkUrbjr2dO678aMFo
Message-ID: <CAL_JsqLq1V_is4wHedFoiGHcYt293vDJ4SsHaZKxYARupbUXEw@mail.gmail.com>
Subject: Re: [PATCH RFC v2] of: Add of_parse_map_iter() helper for nexus node
 map iteration
To: "Kevin Hilman (TI)" <khilman@baylibre.com>, Herve Codina <herve.codina@bootlin.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
	Ulf Hansson <ulf.hansson@linaro.org>, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259140-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: E3E6B7B9D4
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 5:55=E2=80=AFPM Kevin Hilman (TI) <khilman@baylibre=
.com> wrote:
>
> Add a new helper function of_parse_map_iter() to simplify parsing of
> nexus node maps as defined in the DT spec, section 2.5.1.
>
> This function provides an iterator interface for traversing map entries,
> handling the complexity of variable-sized entries based on #<stem>-cells
> properties. Each map entry follows the format:
>   <child_specifier phandle parent_specifier>
>
> The iterator extracts both the child specifier and parent phandle+args
> for each entry, managing all the details of:
> - Reading #<stem>-cells from both child and parent nodes
> - Calculating variable entry sizes
> - Resolving phandles
> - Proper node reference management
>
> This eliminates the need for subsystems to manually parse map properties,
> reducing code duplication and potential bugs.
>
> This code was developed in collaboration with Claude Code (model:
> Sonnet 4.5), which needed some guidance to use existing OF helpers,
> iterators etc.
>
> Signed-off-by: Kevin Hilman (TI) <khilman@baylibre.com>
> ---
> Changes in v2:
> - Use helpers of_phandle_iterator_init() and of_phandle_iterator_next()
> - add missing of_node_put() pointed out in v1
> - Link to v1: https://patch.msgid.link/20251119-topic-lpm-of-map-iterator=
-v6-18-v1-1-1f0075d771a3@baylibre.com
> ---
>  drivers/of/base.c  | 163 +++++++++++++++++++++++++++++++++++++++++++++++=
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
+++++++++++++++++++++++++++++++++++++++++
>  include/linux/of.h |  13 +++++++++++++
>  2 files changed, 176 insertions(+)
>
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 0b65039ece53..8392fe54cf60 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1641,6 +1641,169 @@ int of_parse_phandle_with_args_map(const struct d=
evice_node *np,
>  }
>  EXPORT_SYMBOL(of_parse_phandle_with_args_map);
>
> +/**
> + * of_parse_map_iter() - Iterate through entries in a nexus node map
> + * @np:                        pointer to a device tree node containing =
the map
> + * @stem_name:         stem of property names (e.g., "power-domain" for =
"power-domain-map")
> + * @index:             pointer to iteration index (set to 0 for first ca=
ll)
> + * @child_args:                pointer to structure to fill with child s=
pecifier (can be NULL)
> + * @parent_args:       pointer to structure to fill with parent phandle =
and specifier
> + *
> + * This function iterates through a nexus node map property as defined i=
n DT spec 2.5.1.
> + * Each map entry has the format: <child_specifier phandle parent_specif=
ier>
> + *
> + * On each call, it extracts one map entry and fills child_args (if prov=
ided) with the
> + * child specifier and parent_args with the parent phandle and specifier=
.
> + * The index pointer is updated to point to the next entry for the follo=
wing call.
> + *
> + * Example usage::
> + *
> + *  int index =3D 0;
> + *  struct of_phandle_args child_args, parent_args;
> + *
> + *  while (!of_parse_map_iter(np, "power-domain", &index, &child_args, &=
parent_args)) {
> + *      // Process child_args and parent_args
> + *      of_node_put(parent_args.np);
> + *  }
> + *
> + * Caller is responsible for calling of_node_put() on parent_args.np.
> + *
> + * Return: 0 on success, -ENOENT when iteration is complete, or negative=
 error code on failure.
> + */
> +int of_parse_map_iter(const struct device_node *np,
> +                      const char *stem_name,
> +                      int *index,
> +                      struct of_phandle_args *child_args,
> +                      struct of_phandle_args *parent_args)
> +{
> +       char *cells_name __free(kfree) =3D kasprintf(GFP_KERNEL, "#%s-cel=
ls", stem_name);
> +       char *map_name __free(kfree) =3D kasprintf(GFP_KERNEL, "%s-map", =
stem_name);
> +       char *mask_name __free(kfree) =3D kasprintf(GFP_KERNEL, "%s-map-m=
ask", stem_name);
> +       char *pass_name __free(kfree) =3D kasprintf(GFP_KERNEL, "%s-map-p=
ass-thru", stem_name);

It's not great that we're doing allocs and frees on each iteration.

Can't we follow the same design Herve did for interrupt-map? You have
an init function you call once up front and then an iterator define
(e.g. for_each_of_imap_item()). The complication in this case would be
if we do the allocs in the init function, then we need a way to free
them. If they are part of the for loop init, then we could use the
scoped cleanup.

On thing I noticed is I think of_phandle_iterator and of_imap_parser
should probably be merged to one struct. They basically hold the same
information (pointers to property data).

Let me see if I can come up with something next week.

Rob

