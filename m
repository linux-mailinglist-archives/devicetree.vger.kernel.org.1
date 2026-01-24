Return-Path: <devicetree+bounces-259141-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YC84KawhdGmg2QAAu9opvQ
	(envelope-from <devicetree+bounces-259141-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 02:34:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 095487BFBD
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 02:34:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23655301C158
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 01:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E74351F418F;
	Sat, 24 Jan 2026 01:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="WktcV58A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC630A945
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 01:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769218471; cv=pass; b=GALO24BrKY25yIaHmqVxqSpq1VbXf0XPdlJ/X3kBx1E9tGCuH0rpg+Y8xeXQPDnmJ9rCypgXvAN0b0yIlCKvXi6Nkg79TNfdjKtThy/PyoN3rl/43J+qm3/fsT0UTXrnfNX151Qk8cw9hVy5ihfGqGbcH7scwI8x+R8X7OfXVFY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769218471; c=relaxed/simple;
	bh=Zk4q4K0se6+SF2hBrk5rRcLDLK95kFoVe579bDxPx5k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V4lWibVzuqkvtQoRUgbRemDAwSma1iwHe8gE+xCLVU8Yl8XAqCaku+u831a3fmPm4UDIHHv0TEdqF6hxiUgDChuEfhoGcQKFLDWNRetZTDSaGsGVaRr8qoJT4QSHcGGHsZ+9dutqb1zFHRsHTrVWWc3IxYKMyZDnqFlDpRCwy2o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=WktcV58A; arc=pass smtp.client-ip=74.125.224.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-64969550a1aso14163d50.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 17:34:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769218468; cv=none;
        d=google.com; s=arc-20240605;
        b=PJI2XrkqoOAh+1Ntsr3xptldbdSX3X42CahQ30FwBuF+t+4Ett30mecwUNwAJcxyr9
         3DZhGvnKV3dLb9/QwsvlQg8y9oTSy4aP8n5eEWvbkkHbFJVeWaTqodPSpIxUe03/EA3n
         IkXlMcGWSKTxjdWn/kYqv9dk6xTleXnCN9YR6PA8ZDaWOkuq9RDnGdMiFEuM1GMooDNU
         lb79NXk/bH50MCZzKdoVsk1UTBuhDe38eHOqtI9/d/Om2Ktkj6AmZ0diU8JY3OorOfGv
         tc9Qg5Kyi9qapYTWVeiHz7bas42AGb4epMa0x4lMPIbcmdmVw5hr60x52KSrZFVaHPst
         EYjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=agEgREMLVDdazclEpRe8zfrv759DuR+/W32J9A7FeaE=;
        fh=k2wm+XwN7imJag6a8xa4pAAPLUk72xYRC6P15coyKdw=;
        b=hu1OSSdbZHrZ3mfJwKdCcC3jJNA85iQfzrGkNdSMmP/sWKxQqr2fRLZBBCgLWJuzto
         v5R2eWCMBa/Vpra6pGFUS7NBZkSXlT0oGKvc3qdd+ur/+CUx6fQ3OxQcl9eFxoKdZYIv
         VULwFgf1WQ4T1c2Gcf9WoutpKTckt0vJFyuo1DyUI4CSoVRRwvjFR6o8fWJ0GAHCmkKD
         JPrFYU62ruuoBRifEHHj8hdC6L0TLifGkXcse+xmMOp7T7RZbzm2dOfcvp0uvtC9V53/
         n/nwesgSQrrXNcuLoTaFx3WH9AjLZV/lcqHgOLVxNg2k+ot1LokufCEdCbtc/jg0fMj/
         lblQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1769218468; x=1769823268; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=agEgREMLVDdazclEpRe8zfrv759DuR+/W32J9A7FeaE=;
        b=WktcV58AOq5TdIcsYOXtWNNRWNuAy/tHz8I5MSbs+dwEaeBMDLn55if2w+hpWORSV7
         dYRvg7uYukJHubH/MXzC4C9Zrka0cpJDP45XDE+fva5z7nfqjt0SWU/DMjC7r3CJ3WSL
         0bGcyJdBvl+5naN/+Bw/LBsL1JfJgJ2Vjxcpd4ViFHU9AGS6TA4e848xGpnC1KY0lc+D
         WUBuZR5zvlk7nkhaAxGdVS0KxuuemMbIj0Xarn6hy8OnZ4XmjqsYCfDcKm/HnwDHI0WZ
         l5YcIotbXbXw4W5yMGwLqFT1RXlVY8RosBSO/L3RNIL5reRQO6bw5lu4+gEN2uwGtzXn
         dM9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769218468; x=1769823268;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=agEgREMLVDdazclEpRe8zfrv759DuR+/W32J9A7FeaE=;
        b=MKa6irF50LRIwFW3S942orJglkrsvwwrOAhYcroEeVSiPHPyu8HLArCK/F1S+mBHkv
         WrN1TzCRZR7zvfGskyWnN/x5nnVk7LnM47OE9MwHlRtlZ4izKiMNCj8ikrGz0hfcxBDj
         uXuQEkzN5JNViTqPK2yGNiANCK6F6DbrYY79dDHrDOG60syCRQDSlRRCr27T6pvHS5M+
         EfLFxX8Uv0H26Dwuiy+zqVNfZeEriQ7JRm8CkBuxCaLn/fn6Spqa+zv8Au/1ekQeEtBG
         R++IEn95jK8ab5WOHg/oAmTTOZrbsvJd1Abz+xBRZx99XSNBxU34IlYoykvtLGCEuiBx
         /F8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWWtJvXeeoFVZ853V/K+iuUVt6Tsy11EhK8ymPPAoZbaVkO2OWqYWvTzqvMjWBZsAxiT1iLVVMoqc/C@vger.kernel.org
X-Gm-Message-State: AOJu0YwqPLTcIQZK5ovlF/WC4JOfMKdqYtN44cziMLAmQzh9dU+/vNLu
	JgASmNdQBQdCWiD8NfEYNDM8+RST7U9fNZiqjbUPCPsySBVOEvT1JVLhyeaEO7Lhs1HXXF1sR95
	rTMcMMUzjdyOPfm/GUAQUu3QWR2rFR5q8Goynkrs3qA==
X-Gm-Gg: AZuq6aJJhCDVFDXZkLScTtFQl+MQc96dvSFUqFpOGdy6yNCwfz4XGqQ7E5PoNY+iHeo
	lQC+KCTCFride/+wCnSzrCmAmpPtxwcqXhArlqEhGHG74DLJ2OsNcz5MFc6QbCQV5tz0oWmF9cF
	XqF/X+P9S+l+X5HiutRcy5QabxMMbVYlbg2VXAuSB/WRLhhXyxXglYGwsKotjweqvn9inAcHlfa
	BcrFxNTCA/w503x+CuXigWF4LOVfIFDQThazCfwVyyg9tDTJnpQb8lFtmBZzPjVcIKnCugKAD7U
	bQgrZGX+Ec4l/Qtx2sTWmtLcykbXJobaJKCWsxmr8SPK1DDYCcEqTmWFxZP8
X-Received: by 2002:a05:690e:188f:b0:645:5d39:2543 with SMTP id
 956f58d0204a3-6495bed2248mr4358820d50.19.1769218467721; Fri, 23 Jan 2026
 17:34:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260122-atlantis-clocks-v2-0-c66371639e66@oss.tenstorrent.com>
 <20260122-atlantis-clocks-v2-1-c66371639e66@oss.tenstorrent.com> <1bde71b1-1a7f-42d2-afce-c206269dee6f@kernel.org>
In-Reply-To: <1bde71b1-1a7f-42d2-afce-c206269dee6f@kernel.org>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Fri, 23 Jan 2026 19:34:16 -0600
X-Gm-Features: AZwV_Qh-aoeQQcUuaKT5O3JGbzcURLIxf1lZ82LX_R-DdXFUIZwX0O2uEAEQO8E
Message-ID: <CAEev2e-WqFJR5QpT6ObQCrQFaAnCGt7HyNM4Q7CaqQCtRJAcSQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: soc: tenstorrent: Add tenstorrent,atlantis-syscon
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com, bmasney@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259141-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[a8000000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,e00c0000:email]
X-Rspamd-Queue-Id: 095487BFBD
X-Rspamd-Action: no action

Hi Krzysztof,

On Fri, Jan 23, 2026 at 1:10=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 22/01/2026 23:36, Anirudh Srinivasan wrote:
> > Document bindings for Tenstorrent Atlantis syscon that manages clocks
> > and resets. This syscon block is instantiated 4 times in the SoC.
> > This commit documents the clocks from the RCPU syscon block.

> > diff --git a/Documentation/devicetree/bindings/soc/tenstorrent/tenstorr=
ent,atlantis-syscon.yaml b/Documentation/devicetree/bindings/soc/tenstorren=
t/tenstorrent,atlantis-syscon.yaml
> > new file mode 100644
> > index 000000000000..49fbe2423be0
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atl=
antis-syscon.yaml
> > +description:
> > +  Multifunctional register block found in Tenstorrent Atlantis SoC who=
se main function
> > +  is to control clocks and resets. This Block is instantiated multiple=
 times in the SoC,
>
> Please wrap code according to the preferred limit expressed in Kernel
> coding style (checkpatch is not a coding style description, but only a
> tool).  However don't wrap blindly (see Kernel coding style).

Ack.

>
> > +  each block controls clock and resets for a different subsystem.
> > +
> > +  RCPU syscon serves low speed IO interfaces on chip
> > +  PCIe syscon serves all PCIe related functions
> > +  HSIO syscon serves high speed IO interfaces (Ethernet, USB)
> > +  MM syscon serves GPU, display and video processing functions
>
> Same feedback - clock controllers go to clock, not soc.
>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - tenstorrent,atlantis-syscon-rcpu
> > +      - tenstorrent,atlantis-syscon-pcie
> > +      - tenstorrent,atlantis-syscon-mm
> > +      - tenstorrent,atlantis-syscon-hsio
>
> Why do you call everything syscon? syscon is not a hardware name. How is
> this exactly called in your datasheet?

I picked the syscon name since the block is a bunch of registers that
control different functions in the SoC. The block's name in the
datasheet is PRCM, so I will stick to that name and treat this node as
a clock controller as its main functionality is that.

> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - tenstorrent,atlantis-syscon-pcie
> > +              - tenstorrent,atlantis-syscon-mm
> > +              - tenstorrent,atlantis-syscon-hsio
> > +    then:
> > +      required:
> > +        - tenstorrent,syscon-rcpu
>
> else - properties false, see other examples how to do it.
>
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    syscon_rcpu: system-controller@a8000000 {
>
> Drop entire example, one is enough.
>
> > +      compatible =3D "tenstorrent,atlantis-syscon-rcpu";
> > +      reg =3D <0xa8000000 0x10000>;
> > +      clocks =3D <&osc_24m>;
> > +      #clock-cells =3D <1>;
> > +      #reset-cells =3D <1>;
> > +    };
> > +  - |
> > +    syscon_hsio: system-controller@e00c0000 {
>
> Drop unused label.

Ack.

> > diff --git a/include/dt-bindings/clock/tenstorrent,atlantis-syscon.h b/=
include/dt-bindings/clock/tenstorrent,atlantis-syscon.h
> > new file mode 100644
> > index 000000000000..053cef2b43c8
> > --- /dev/null
> > +++ b/include/dt-bindings/clock/tenstorrent,atlantis-syscon.h
>
> Name will follow bindings.

Ack

