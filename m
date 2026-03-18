Return-Path: <devicetree+bounces-277454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPkBFVgBu2mreAIAu9opvQ
	(envelope-from <devicetree+bounces-277454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:47:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CB42C22A7
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:47:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D8D87300D74A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:47:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A39E13F54B7;
	Wed, 18 Mar 2026 19:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jwIFsXDZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1885D3F074F
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 19:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773863227; cv=pass; b=Od0PmD4WN37hT69IrOpN3P+GSw7bNfq1e5JTRTAEls4pS7P2D4ANZbesbxHSyKI+sHCbj7+cQXfI+pHB3c+zYWDxM8EhF3GYZeirSoa8Nyz3TywzwoI3dTUBU7tDOGfDSWbhalGwHY+g0T5BDpbnszajhejYTIuAWH6FWCTtMG8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773863227; c=relaxed/simple;
	bh=wdw7cbek1kXD1UoVWXdD4fCHrDKGOkOz00GR1xyGDLA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lYmgn7/8FT7u4R0mJvrxLP6GW8rFLJiMAtlsqyEENpdFKqPPuca6QvUJXOOhbHvoD7agtiHV0wAZvi+aeJT8wTLdU7lQhSNB3JPAvECIq/foeX4B2mjd4FC6W73QTXuhSN69PTXiZxhwOLADmcH1El43g7fovA5YXn0S2PzI4KM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jwIFsXDZ; arc=pass smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-439b94a19fdso135446f8f.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:47:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773863223; cv=none;
        d=google.com; s=arc-20240605;
        b=H+N1Yqiunjoi66EUUJOvpG8/cJA7GNFpXVTdZyMAM+ru/CHBHF2oXXdAuXu8CsCg24
         6wh8pVYmjjL0RjkcTuiQX1+LnlkzLumLd6lxlJ1NhjQ6Cq3j05dKFYsoVlPyI/8pZImO
         8vvE+MHf7LFi5zRjRqP1Tqg9IFQPhKvk3720DHFMACfzAYFqkEzNrlq00PgBF/yTGt6z
         qWknWIWChkxH8Yx7UZDDCUWF7O9SIiUiB1zGzgggvPzsVY31PLI5lWwjqyCdh9sUKd+0
         vI5tAndNgObVi1RES/7F082ehSCSfu2n02rdir4ZwlmPRitj6l7yMR8WGpxQBThL7Re2
         8BZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zZ+yvFyJb7pO8tRyYufwJywFQ3yWc3oSOzzyu5XObJ4=;
        fh=CTz0IYCjKKr18QR7Q0+O18Vrvl9Me1rZyk5FTlQYaYg=;
        b=EbcOKFbZM/3ycE1QioVsj7Bs1Qz+77bWs6T5dZTSsd44QCGnjUoy2czzOKa7gdNyQ1
         U3KisTg0uQjsLmHNFaoK8h3qH7aFIUeDRexwss4aVRWq9FPmXfl9Z/izR49iTyarCMey
         3ZFCf03sTB4vVAbx07jbAfwcph1TTLF9RhZ/2YuwN1E3ILJE1SadVTV3nEEYo4a//UvJ
         ZknEivwHb6DVkVf/VX3tJpJqDeB80HbzQTBNLnhF338Bl5oMnR79PG0Kezo3DeCgvcIr
         AEoIp0YLXeOcAh1YFmkz4HYMEidP7G1dBktPgVvwc140tCfmRixjP67+czydBqJG/5yV
         jLww==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773863223; x=1774468023; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zZ+yvFyJb7pO8tRyYufwJywFQ3yWc3oSOzzyu5XObJ4=;
        b=jwIFsXDZd1icPQSx9k+rMnIhbs8Fp+hOelEKXuTbd67mwsRptHVAdPebIVmZ/uHwYz
         FsTj/IrQXeZ359BBmie+HkXpVa1KqzqD7n0JJT8sIz1iBAGFGSKLB8dIk5W9njBrxvPX
         WlGcttiCWKD+9SDMzv+0C9+58Z15z9ujpUZPYtdQMP/k91hBfDURu9wIjXVtcsdo+weD
         Eq9MpFk9Ro2c2/rGHerpj+QyOVHPqX84UCVtVPna6K7MelEbfqWf/3e8UVzRNG+97W8+
         yND1GqI5580aAASkNeo0l3PNkSWjneJAjdTCBMfTDWQ8hrXafNxRCyagnlSqCAJS2+1p
         /Vpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773863223; x=1774468023;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zZ+yvFyJb7pO8tRyYufwJywFQ3yWc3oSOzzyu5XObJ4=;
        b=VxxWsUbavL6fL1uMQLLZkzlduDvY7yxapQ1sX5q+GRFBD/5P4OWIHgEjtwIHc13O0n
         1cbObcWNFhZtwMsXv2zwEqaVH+TadXAUghXIONR2UogDrr1Dp2GsW4mDi33l4YMdtbPA
         hAYU3dg2LMnuM4R9zu9yVDXbUOXvSCg1fA9vDiOyIe4uIGHTSzpQoB8v9wfx+T4cvfRF
         dmG1VP0S0H8epz35fm+SmQGHBtif7TrDfd1hyxJmBZzLEbzCIkJe/PjAsaMlyxjy3gyy
         ltSj5QACurFj2FeyN3mzRr2pnBb7XAaC2ooAvzFWrzBdVkwOJbMZk+UYj0rXd2FkTnRh
         tAyA==
X-Forwarded-Encrypted: i=1; AJvYcCWmZ5DHq68/b2ZmufcYJz/Bd2gFDjSvqfooR4p7BbGlYZGEE50cuU1JyeSfDiB0mwTE9+XpMzs2lLiK@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/WcMqmYRmX3c/jvGd+jBi6Tj3bhhDj2f4d8w5OIrHIJYY76wu
	VTSQm82c/TbaAHKjuH5BFCrbV1ytIz280k+dBX8WZIgEAKDncr2rl9HB61LTcaGPohvtr7ZpaA9
	y4LLYsewz+0YDvI507SJxHHBMaGTWQBI=
X-Gm-Gg: ATEYQzxHhSol6Z4YSfDqJP27A4WLHVAZH2S6/qlC7uwXTRAJyfDxXESUnxt+r5uNNUB
	lIn0hHEn1M00ZNQEU8KIKWc6MWDghbYIW5d43T61+RMPk4xEmZTVyivAy31YCoy5UFU/MJEK61f
	9/Xw7Ww99BEU3quE5V6m0MDG++NVcvJqVQx0bptHFh2tht2a+i68A4etago71712oxedeIYhlk5
	6x9oqn7bmq//42kwvThp+TIUt4DlLlB2Vl44iClmUwCwiHEFUsGessgwgJ3lasEEf79oBsoNV9b
	4NmZVYyLtlICHn2fQXTU4/vDRaodmpLzMRzPuFHoHQykqzdcXmyfZs/X8oE+63JF/ROKOuy5N+t
	UIg==
X-Received: by 2002:a05:6000:2004:b0:43b:5094:a9bf with SMTP id
 ffacd0b85a97d-43b527c4f31mr8413523f8f.29.1773863223212; Wed, 18 Mar 2026
 12:47:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260318124450.163471-2-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260318163451.GA45978@bhelgaas>
In-Reply-To: <20260318163451.GA45978@bhelgaas>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 18 Mar 2026 19:46:37 +0000
X-Gm-Features: AaiRm53vsowSxkB5--4HeT_RVVv_RKIJ1zLa_k6p-WVMbxRBxgyHI8U3GVl43Nw
Message-ID: <CA+V-a8sTKuPnNs-shtDAt=J4n2naBoEhsTsck5-ZfJqt7wwRuA@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: pci: renesas,r9a08g045-pcie: Add RZ/V2N support
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	John Madieu <john.madieu.xa@bp.renesas.com>, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277454-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[bp.renesas.com,google.com,kernel.org,pengutronix.de,glider.be,gmail.com,sang-engineering.com,vger.kernel.org,renesas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.755];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 70CB42C22A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Bjorn,

Thank you for the review.

On Wed, Mar 18, 2026 at 4:34=E2=80=AFPM Bjorn Helgaas <helgaas@kernel.org> =
wrote:
>
> Conventional capitalization for subject lines here is:
>
>   dt-bindings: PCI: renesas,r9a08g045-pcie: Add ...
>
Ok.

> You can easily see this with:
>
>   git log --oneline --no-merges Documentation/devicetree/bindings/pci/
>
Ok, I will make a note of it.

> On Wed, Mar 18, 2026 at 12:44:46PM +0000, Prabhakar wrote:
> > ...
>
> > @@ -152,6 +158,7 @@ patternProperties:
> >          enum:
> >            - 0x0033
> >            - 0x0039
> > +          - 0x003B
>
> Other constants in this file use lower-case hex.
Agreed, I will switch to lowercase.

Cheers,
Prabhakar

