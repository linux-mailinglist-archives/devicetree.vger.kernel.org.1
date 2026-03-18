Return-Path: <devicetree+bounces-277455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEKYBwQCu2mreAIAu9opvQ
	(envelope-from <devicetree+bounces-277455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:50:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 850262C231F
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:50:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7CD8E3055DD4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:48:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A39053EFD0F;
	Wed, 18 Mar 2026 19:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JISMVokk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442E83603C2
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 19:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773863310; cv=pass; b=PSFR5P/0Zq2X+bIOqU4hNjvtTzYIPnwk/M4v++Jxcne0V8TeE8QXDtOouHgYTgU956HkQUDqp5bRkFS3Mh+sdyNffeM/6saR+AfO4rQZedga+dQ80GvcEFLnLTU4hHwGqbfGNky8aoRnRgtbQWN+9N9IAgEzqcYFF3uUjC8pYJ0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773863310; c=relaxed/simple;
	bh=FLa8rQzR9s19uAT/5ZIrsFfEc09f2snRTlaHdk1TKIU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ULTLbyiUl9pgQO7krtSgpsidz8LR3o1jjX19ZdqKwD5r1AvmgaZxTipR0lFnYBuU8OSiQXorP9iRuLO0svJJBtAwWc336TPuUmR3osYwAcSJzW8SxGV7cRlQ0+NzMlC0LAac/f+XC8KGxFCvNC97oMxJYr8Gn9WYbLV5U/RwrqQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JISMVokk; arc=pass smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4853aec185aso1773965e9.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:48:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773863308; cv=none;
        d=google.com; s=arc-20240605;
        b=UFF5plWWzvQnComRp9TwLHd/K7mZzdmtPQ7wM9IcUz75QZj8HfYg8/sPdVPKQXaqSm
         B4pW+9DfvXAabNPBzPcz7+cwYH3VrNptzRkCZF7tQuOQmdfFIAh/+idz+ei6mu9/bRAj
         cK+6A2AhsaPrgAoVU4WuWLWwMMUxvH72lw3PyMQ2ZGQO/fPbFmhyDgd4ztaEy2mAI5Ie
         1OZZPVnfnhktX0zfl9qY+mKxnFPMQHtwTPEzwd/4xWyjh/+odItrVLECu+Vj4P59EO+7
         obzQnvMYIyx4fq6cK554EhdGEcVv2srdm1h5VBJaznlPvb6OkkxVZmfS5Pd8Y22GioHh
         RwJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qEEWh99a1X8WTNi6tZLCQlme3I6QdM9wUDMHyAHkv+c=;
        fh=NPPSmS4HNKMMPpTV0fZXLye40mIkHH5XdYrTjSEH2QM=;
        b=cSzf8HwJ57qzPQsZd+Eqby78R4RamcA1sXDeJNx/x4cCRj+9IiXUYFB3EZLjisYdG6
         0mErn2/fReKzcQa/+Le2NAmUfWqjK/3a/rBfq0nVFPYsxod7GAKFfrzVf+FpXzAWkg6+
         mEI2l8zQQcV7Cm612uNvZCwWLNe53ILWbrCTXU62nZZjFAxXqGJxerIo7BPnQ3FDa5aN
         PxV8kPwJqadujXd3nMVU7CQ6SaOx1yFQBuhl9iJvg03WxCtt6cFZqrtsvgNNPbpEZ1ro
         GHHfQnMytH3ilUmNZ8DLcg8CPYeNwXxA/27BL6motVn6zNb8jTdcQ9C0PiKSb5R9G1ai
         3/sw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773863308; x=1774468108; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qEEWh99a1X8WTNi6tZLCQlme3I6QdM9wUDMHyAHkv+c=;
        b=JISMVokk82zpY7CBSHsQIMw+3V7XeLIUZnh3S11XrflKRs35ho8iy3t9X5cm3beBYU
         xm3t5verRqzcb1YhkpuJBcpXx1suriQXyGbS5l2+wTqV98ad4ObJhmz57WilT6ZA+Fpd
         4o8i7A2UBofHdPu7En0VvRhl7qrhWUK+SijFXGlm+GUi6JfUX+MGIUgxpEb1QyB7o1BN
         oZ+LdOZOD6dWC2Tm79uPA1v1TZv4pyrt7xFLVUh5B40s16Zx+dB9iQOEWH/nKPGmabUV
         tbjwyahI/6X5H/JvW5qWMLzOINhPDuch7jKfImYx411QC/2Dt9FvlB0Tb65jCLuexIBx
         KIGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773863308; x=1774468108;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qEEWh99a1X8WTNi6tZLCQlme3I6QdM9wUDMHyAHkv+c=;
        b=dAzMj2mn7JW5G+aF481pb2NSeU0SMReHAFxFEFk4x+erVV6thxQ3RGgED/BlKXP/k6
         0FDg0GMH1+vob7ITP+o7evMBVtIOH6m0MxTiAMiqmBBx8n1ZJwZ1YG2GYhuzPRdFT2dZ
         64AfVy1DGq6IzD4zZKOhJ94KzD7QfcX6fgb9sFM++fllb5LYpBl5/gKW+SuBj34HZ6a3
         BC30Jd9UYz0b8U7qvti5gBu9sEep8IpqcENUdWlL9aKcFqmTwX44WovkACpx6dnQTIut
         JXAMpRttcdY+0SmyW7Oie1XWT8D0KXHEy8T+1I1CGTRpuQypWWCxduDHRdNiljLMchhu
         DHdg==
X-Forwarded-Encrypted: i=1; AJvYcCWJ3g33W2o0zqRjuhhoSaQDUR5WKDNK+4i04riJeo7hm7wyePgQnEyVlW0J3+HSybxHL8eJKjXHtSoB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx3zhTnn8i3zJYELtwUMTTQaTmSr2yncG1wnOe+ylUXHqLcruY
	r7/9aZvgjWZCUCg/GhBWhxxSy90mJmMLDmd0SWBZwuy3qMD3lDcBiSsIBeBHzgu2ypMtjVQz5v5
	yQCp0Qagmk/GgSpV/nvm06QNSo19Vtlk5sCdbIRgElA==
X-Gm-Gg: ATEYQzyt/XtRQibmFe6qSfsjKa02/cCYisAC5KJdMafmmW5UFu31KAA3l4jp0ehaoxN
	qNN0G/Em8ramvy1ox4G8VIxITOP79tv9kSk8+zZLxm/jfTMUgP2Sb5wjtfiKoOJFCWk8NplzIQh
	IDJyrxMilmCdtaQ1rMG7+FV/duVumd//FqrTRucarUX6VIK3qPmC8Dn1AqJ+evy7ETDqQxvOLhU
	8mzD2AkgY/U1K9aUzOl7GU5lQa39F8Vy8m3JmQPUB76W5wHFftOZr1Xm/nAtOMmMAuZqazEhiEO
	XEoAZ+4/Yml7kFHbfqE/bGaIkSzbJ+QDz5gr2fROcvdvCsd7dUqKh50kXdHsKMppLAc=
X-Received: by 2002:a05:600c:1f11:b0:485:41c4:e2e5 with SMTP id
 5b1f17b1804b1-486f445fad8mr75654535e9.27.1773863307397; Wed, 18 Mar 2026
 12:48:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260318124450.163471-4-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260318163023.GA45848@bhelgaas>
In-Reply-To: <20260318163023.GA45848@bhelgaas>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 18 Mar 2026 19:48:01 +0000
X-Gm-Features: AaiRm516n8YYRZ3VpTEDqe-zyE0F6jTjlgD123Nu8UmO-uhnFe2823Q784bfJqE
Message-ID: <CA+V-a8s=em8dZ5PHHx5hrkZkJeM_4NX7SpdZYdNpeyyx4PT8dQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] PCI: rzg3s-host: Use shared reset controls for power
 domain resets
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277455-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[bp.renesas.com,google.com,kernel.org,pengutronix.de,glider.be,gmail.com,sang-engineering.com,vger.kernel.org,renesas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.338];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 850262C231F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Bjorn,

Thank you for the review.

On Wed, Mar 18, 2026 at 4:30=E2=80=AFPM Bjorn Helgaas <helgaas@kernel.org> =
wrote:
>
> On Wed, Mar 18, 2026 at 12:44:48PM +0000, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Use shared reset controls for PCIe power resets to prepare for RZ/V2H(P=
)
> > support, where multiple PCIe channels share the same reset line.
>
> What is a "PCIe channel"?  Please use PCIe spec terminology if
> possible.
>
This refers to multiple PCIe controllers (Root Ports) sharing the same
reset line. I will update the commit message accordingly in the next
revision.

Cheers,
Prabhakar

