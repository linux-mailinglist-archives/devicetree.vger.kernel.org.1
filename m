Return-Path: <devicetree+bounces-278035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCQbJplqvGlQyQIAu9opvQ
	(envelope-from <devicetree+bounces-278035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 22:28:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B7E2D2AC7
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 22:28:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3FB731446E7
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 21:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CD0B402B94;
	Thu, 19 Mar 2026 21:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wq9falUI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E396E3F8E09
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 21:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773955551; cv=pass; b=oKbTUerXzv1gnhbLJNaK6cdtSXo2hz9AhayVxzMmV6FSXfWBUNChHancwa7eYYTbC8b9XupNadgrw8fLBOH+CS1XZ4PhXn2ZYuFQADXBFNCE3PcOBSp+QslCIeuF2SrzdFd22H2u/JBWtWnw63Z/deJyE1YLMn6SqtrLdtZhcLw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773955551; c=relaxed/simple;
	bh=0xmPzjQJZlQdvWU93j2fpUbP2wdKZDeT3xI2xGj40f8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nygn1eHvdsXhbRUcSPbNHOXaf/4br6BlsaY1+T6+2/LiO+EOxU+KeMIbQHatPfiORljlQ5cJj6zKe/mlXx+rb68GE7FRvOjr7+vvr3mly1Lw0aIBSp9E8NFQM2cnSQKtV/6h4k/0tPnndlWlamwmSXlMJXimIryV3FsChZ5sKM0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wq9falUI; arc=pass smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-43b40003d13so905060f8f.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:25:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773955548; cv=none;
        d=google.com; s=arc-20240605;
        b=HE6pxGdfRYzHK97yzDEdN6dCvMb2oo4bFuqyeLQnhvblRtGott6LLkdRWL0IlybBxB
         IvZ0VRLrB1kikQUeWNBzQjaSVBz93SrFWT40jhQZY6C4Zv/GQhYsrcdo8R0JEDh63NKR
         UotETYl7OyG+MUvsKQ7M062yUWcA6qR5A3KJo+i3C8TBE37D1BwLDhXr8I/kptwFf0kq
         aGRn9QLfHlgf1uE1R91cMajVHZ/OyLZIUy73gR271HtaPhNqCO85SiJZmRgz3e0m1Vru
         VNnvIGNAecCHTaKZjMoz6YgeXfUovllagk0pSqI6rUmFkbtAX1qstTcQCZU33/jjycRc
         mc7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=11+5iQhuoi7uXTy7W6XUR1mpsLG8FBwfMw3VmGaz2Nc=;
        fh=bhZh5ohZ4Dy80QZwWLdiTiSRd3DfbWSWeh0Cu62Hi8A=;
        b=Ztl6J67SnFPmqVxKCXqvumW9+jgQImXQgZPLowMSXKcw9b0r6IspSCB0Eru2swh3q/
         xwVyWIp8wL6DdwVmQ4XaBQOYnT/1Af+rzK96uiDc9RPjzByNhMBQA7oaMlERt8MOndRR
         AYZ22870eFthQkGcIf6wjz+uki2VuFDMmolQHI1i2zULmYfTAcQ7tFVmEzGZ51jCGT6l
         sURbQ+i5txaK5amD82AvWJ75ZpRZmT+09AO7htRZ5nXHhgtTdHeV281ZDmGDU+sFwu9y
         M025cHBrSi8BE8iwLlVCLqWKGk7TMnKVJjc2X5arzBTz76m0V+xMZc80kMnwN5P18igE
         VDBg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773955548; x=1774560348; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=11+5iQhuoi7uXTy7W6XUR1mpsLG8FBwfMw3VmGaz2Nc=;
        b=Wq9falUIevYVel+9X4YXlIUkivwkt7ibVUlP1G6Z4Y9YYevRjQKuggc83KoNeR2e/L
         4MD1xRVBwRnszzyvULbTOsUlULa1yqA8khDsuSN5EaizcXnbLc0KTBCQ0gDh0YVVvE27
         pk+4ceTqMioTv2trH6nP9QpTz5uPuWIa+bJSjsfaUNX388Ael18mXHKAn1p58Utv8esw
         X7CgolWRyfoOKHtobnPWXhd8YQQMfiV87oN2Ftq2VoZzyvWeimK4JgL7ud3LnwefNcQv
         laiZDYfFkEXlTZ0G4wIxerRmnFyn62/3RacrD5NQ8micJJEdf+mcEcvsDgQR7G3nHL2i
         wi0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773955548; x=1774560348;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=11+5iQhuoi7uXTy7W6XUR1mpsLG8FBwfMw3VmGaz2Nc=;
        b=KxpkKVt47NrXNKjAlQG2i5uFxVhOHwJWXxkpmUCgZtEYDPaPB+dg713xmVNsbssJPi
         HVjTxy78qeIb/JgQYFNiBFRqOeS3eWdcgWmSu9vdZ6nlfGCU8ueR4GfKF8XfvXaTVNxR
         3xCtxv6nsBJ8rNylSXALtD+cmLPjBKW0OkO+vF4inhRdzqiVJUktcx9+otwALSRbKaKc
         b5kPmiePOqD7fpuyIynSRyTI/ubwiYw8rL3NYVpeOuAugIvtNy8PPevbirasy15iC/r4
         iB+4CamVK2msgirkPDU303jnVT1eftX5Qflqr/l7yfYk7Fn9QA3D+gVa+bQ72UD4ba9L
         kyHw==
X-Forwarded-Encrypted: i=1; AJvYcCWFbgtsfXYa9tYd0S4BP7nxasEmnAavVKDBsAog92UKRM3Cb9ZnlKq5R/Z6+N3BOXiy8N0GoMemUzhj@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ8BoDcmFyigi2at7rsLynCrY5PBdK8rSXBp8v4UNk9Etm5daS
	UlbVB3a+JLW1VX7ZjBn2cM8+EkQo25Dk6xFi3R5ToccHspan0HHxUB2j8MmxN7vhDXVeamM3sZ6
	EHWm2uKW0afMcWC8boMcuwh5xCWXA7xY=
X-Gm-Gg: ATEYQzxu7CdRbI2aVnRjGDFcWDec3IfhJvpPFJUlwnsT+DKNQN2RCvnWVVFvTjIgMX5
	JXAY/NQ/thHsHoBgQXN7YurM/MjXySVmHt183XyT5x02Fgf8/h79PXUyc7uYaAUagRsDZ9aL1wt
	oqFdRzC/YMmVrH+aRRPE+oJazOxmK78KwA0ZUeHaecxe76WHKW2rN5SObg7faA3SClzsPkgIa1o
	bo2V/BlfFh/KrA6EWD1Qm9usRgv7W7m7K5hMIQr+FkeD3Nx+py1cxBgeb/UKRHtEpkPjf/mCJuv
	6mHlOkomtnNAWM/Opj587fMD6hwF2ztz0zv8TxAv+6oCA9ECCPEu7KM103Ij7pTrZGPrvg==
X-Received: by 2002:a5d:5f86:0:b0:43b:4921:8743 with SMTP id
 ffacd0b85a97d-43b6428168dmr1457840f8f.42.1773955548067; Thu, 19 Mar 2026
 14:25:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260318124450.163471-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260318124450.163471-3-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260319-outstanding-rustling-galago-79bbce@quoll>
In-Reply-To: <20260319-outstanding-rustling-galago-79bbce@quoll>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 19 Mar 2026 21:25:22 +0000
X-Gm-Features: AaiRm53jXekaVqxmChJ3S736fj6vkeVSf_bLa2tMBc3wXcwUkkgJMeStMSMAbkk
Message-ID: <CA+V-a8ukASOXD+2Bdy8HNpZmTARgVEaf_+WM-sjn1jG-AFr20A@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: pci: renesas,r9a08g045-pcie: Add
 RZ/V2H(P) support
To: Krzysztof Kozlowski <krzk@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278035-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[bp.renesas.com,google.com,kernel.org,pengutronix.de,glider.be,gmail.com,sang-engineering.com,vger.kernel.org,renesas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.530];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 01B7E2D2AC7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Thu, Mar 19, 2026 at 9:34=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Wed, Mar 18, 2026 at 12:44:47PM +0000, Prabhakar wrote:
> >      then:
> >        properties:
> >          interrupts:
> > @@ -236,6 +239,21 @@ allOf:
> >          reset-names:
> >            maxItems: 1
> >
>
> I do not have above hunk in next from 16th March. Nothing about
> dependencies in cover letter or changelog. What am I missing?
>
My bad, this applies on top of next-20260317.

Cheers,
Prabhakar

