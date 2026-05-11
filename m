Return-Path: <devicetree+bounces-295857-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDSAM2xaAmosrgEAu9opvQ
	(envelope-from <devicetree+bounces-295857-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 00:38:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3437A517034
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 00:38:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A0E5301ECF8
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 22:36:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9698935674C;
	Mon, 11 May 2026 22:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yzxuez6V"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73879356745
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 22:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778538965; cv=none; b=F0k+nkGiTyMkdp0x9r5IR8FmcZ55LS2yLfx9KJtgGNxX69hyf0kRSD+V/bv8ahZKsJNDOnivjCWqcfyjZQ3eYX0Th51npwKBrHjUwJWaSRbttXXejpwVQX+D3esxv5xEq6h2TDoqW6bu6bL+Ygw1+fySHrEqjWuk6METzR9rNak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778538965; c=relaxed/simple;
	bh=gexWv0KJ5pxMDDdSaorBG/70P9UHG+zY8UdK2eGrUUU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ns/jFcuJqeUzGfFMiRHcAllEFp7YUXIbazqooiQmJS+7UHYPofpC6ezw06CpeVhxd9yVeaNPoT0gPlHzXovQM98gDNWoka3i7UPthKBHB9SPdlZwqPqlbEVTYRGiWx8l8SxI2giPprq2ZwbsnNKxa23RTRL8p4pv5UusiUKmqS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yzxuez6V; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6BB8C2BCB0;
	Mon, 11 May 2026 22:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778538965;
	bh=gexWv0KJ5pxMDDdSaorBG/70P9UHG+zY8UdK2eGrUUU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Yzxuez6V5f7xkDkQwsWd2vErA1tn4+c+ceKU4lh4s+bk2acInLGyGrj0hRihRML1/
	 r/PV5zitZcMUEmIJkv050GCDHU6owR6nON+cdblTZF/ZliqAPpxXYwQLLZo/RSs7bo
	 6RCoNdRmOyc+IoYGOHZMrcHg/UGOl4DfUPsw7PwgHXmSKR2kpxu9scM+N0CTXWkVSS
	 50UBnN21dEs9f/IFUAYhLPv9jGtEkTeyBUofGxnJhBCCneNRrsKQ19JLsbQjr33GfG
	 uW8L3uoX3P8ubZTe6F2RDxJiJ681T9Wt0eRuwWTOHf4uY61kdpiY/inSGPgWXpe83m
	 g90WHzPo92cwg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: add DTS style checker
Reply-To: sashiko@lists.linux.dev
To: "Daniel Golle" <daniel@makrotopia.org>
Cc: krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <dba9d5612e7435da84a95fd85ec404f803bbbdfd.1778454442.git.daniel@makrotopia.org>
References: <dba9d5612e7435da84a95fd85ec404f803bbbdfd.1778454442.git.daniel@makrotopia.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 22:36:04 +0000
Message-Id: <20260511223604.C6BB8C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 3437A517034
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295857-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] The line classifier fails to handle trailing inline comments and w=
hitespace, corrupting block depth and AST parsing.
- [High] The `mixed-indent-chars` rule directly conflicts with `continuatio=
n-alignment`, causing it to flag properly aligned continuation lines.
- [High] `check_continuation_alignment` incorrectly compares raw string len=
gth instead of visual display columns.
- [Medium] Regex patterns wrongly reject valid Devicetree identifiers start=
ing with digits.
- [Medium] `check_value_whitespace` fails to validate cell array contents t=
hat span multiple lines.
--

commit fa5d5813b5bacc079c40709e0ab8be2c7e12de57
Author: Daniel Golle <daniel@makrotopia.org>

dt-bindings: add DTS style checker

This commit adds a Python tool that checks DTS coding style on examples in =
YAML
binding files and on .dts/.dtsi/.dtso source files. Rules are kept in a sma=
ll
declarative registry and can be run in relaxed or strict modes.

> diff --git a/scripts/dtc/dt-check-style b/scripts/dtc/dt-check-style
> new file mode 100755
> index 0000000000000..e1dd548fe9486
> --- /dev/null
> +++ b/scripts/dtc/dt-check-style
> @@ -0,0 +1,1063 @@

[ ... ]

> +re_node_header =3D re.compile(
> +    r'^(?:([a-zA-Z_][a-zA-Z0-9_]*):\s*)?'
> +    r'([a-zA-Z][a-zA-Z0-9,._+-]*|/)'
> +    r'(?:@([0-9a-fA-F,]+))?'
> +    r'\s*\{$')

The Devicetree specification allows node names to begin with numeric digits.
Does this regex reject valid hardware nodes like 1wire@... or 3d-engine@...=
 by
mandating that node names start with a letter?

[ ... ]

> +def parse_property_name(dl):
> +    m =3D re.match(r'^([a-zA-Z#][a-zA-Z0-9,._+#-]*)\s*[=3D;]', dl.stripp=
ed)
> +    if m:
> +        dl.prop_name =3D m.group(1)

Similarly, does this regex incorrectly reject property names that begin with
numeric digits by requiring them to start with a letter or #?

[ ... ]

> +def classify_lines(text):
> +    """Return a list of DtsLine. Tracks { } depth and groups
> +    continuation lines onto their leading PROPERTY line."""
> +    out =3D []
> +    in_block_comment =3D False
> +    prev_complete =3D True
> +    depth =3D 0
> +
> +    # Split preserving the indent string verbatim
> +    re_lead =3D re.compile(r'^([ \t]*)(.*)$')
> +
> +    for i, raw in enumerate(text.split('\n'), start=3D1):
> +        m =3D re_lead.match(raw)
> +        indent_str =3D m.group(1)
> +        stripped =3D m.group(2)

It appears the stripped variable retains trailing inline comments and
whitespace. Will lines formatted with trailing comments such as
node { /* comment */ or prop =3D <1>; // comment fail the subsequent suffix
checks like stripped.endswith('{') and stripped.endswith(';')?

If so, it seems node openings would be misclassified as properties, and
properties would erroneously set prev_complete =3D False, turning subsequent
lines into continuation lines.

[ ... ]

> +def check_mixed_indent_chars(ctx):
> +    """Indent must be all-spaces or all-tabs, never mixed on one line."""
> +    for dl in ctx.lines:
> +        if not dl.indent_str:
> +            continue
> +        if dl.linetype =3D=3D LineType.PREPROCESSOR:
> +            continue
> +        if ' ' in dl.indent_str and '\t' in dl.indent_str:
> +            yield (dl.lineno, 'mixed tabs and spaces in indent')

Will this rule flag properly aligned continuation lines?

The standard practice for aligning multi-line properties in DTS is to use
tabs for base indentation and spaces for fine-grained alignment (e.g., to a=
lign
precisely under a < character). Unlike check_indent_consistent(), this rule
doesn't seem to exclude continuation lines.

[ ... ]

> +def check_value_whitespace(ctx):
> +    """Inside a <...> cell list use single spaces between values; no
> +    leading or trailing whitespace inside the brackets. Outside
> +    strings and comments only."""
> +    for dl in ctx.lines:
> +        if dl.linetype not in (LineType.PROPERTY, LineType.CONTINUATION):
> +            continue
> +        text =3D _strip_strings_and_comments(dl.raw)
> +        for m in re.finditer(r'<([^<>]*)>', text):

If a cell array declaration is split across multiple lines, will it bypass =
this
whitespace validation entirely?

Since this rule operates strictly on a line-by-line basis, neither line wou=
ld
contain both < and > characters, which would cause the regex match to fail.

[ ... ]

> +def check_continuation_alignment(ctx):
> +    """A multi-line property's continuation lines must align their
> +    first non-whitespace character to the column of the first '<' or
> +    '"' after the '=3D' in the leading line."""
> +    for dl in ctx.lines:
> +        if dl.linetype !=3D LineType.PROPERTY:
> +            continue
> +        if not dl.continuations:
> +            continue
> +        eq =3D dl.raw.find('=3D')
> +        if eq < 0:
> +            continue
> +        # First '<' or '"' after '=3D'
> +        rest =3D dl.raw[eq + 1:]
> +        m =3D re.search(r'[<"]', rest)
> +        if not m:
> +            continue
> +        target_col =3D eq + 1 + m.start()
> +        for cont in dl.continuations:
> +            if len(cont.indent_str) !=3D target_col:
> +                yield (cont.lineno,
> +                       'continuation should align to column %d '
> +                       '(under "<" or \\")' % (target_col + 1))

Does this logic accurately calculate display columns for lines using tab
indentation?

A properly aligned continuation line in a DTS file utilizing tabs will
naturally have a string length significantly shorter than target_col. This
checks len(cont.indent_str), which counts tab characters as length 1,
instead of calculating visual display width, which might result in false
positives for correctly aligned lines.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1778454442.gi=
t.daniel@makrotopia.org?part=3D1

