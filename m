Return-Path: <devicetree+bounces-273708-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHzVIPJ1sGnJjQIAu9opvQ
	(envelope-from <devicetree+bounces-273708-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:50:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8881425724A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:50:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A0FA530152F1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 19:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2907A359A6C;
	Tue, 10 Mar 2026 19:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUVPnUpu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A2E34E774
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 19:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773172203; cv=none; b=lUV2v2MwfQwgRM8AkE2qT333AXF++a4GIqgkVGvIkjXYt+gr4TcaCZPQA8EyMTKHbpto5cyARdcgzDLISwm4/wNo6A4Y14t2uL+lfzL/Mt2neUfCZhyEBxm4jfMmEolb1D6eqJdVxt2jf29DlMm4fTiTk0gus/gqJ0hC1FC0/q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773172203; c=relaxed/simple;
	bh=61cOWIluLg/ri0kKZLFIWkcAPP0PDIF1kYNAbzD/75Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BIg1B33xyci6cUeLxUGGY0v/mpBD8rqYRQmfZM0W9LzT9+FFRsaTOvceashKhQkOrVfxef1CozZV/3T+iQOgG83KYCi7/FahHi9RQXfuyG7v+uXbyVj1oVlp/X2gmjnZO6PWG9XPiV3XOABmMzcVjGmRZRER5wNtw1M7qzrekto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUVPnUpu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C305FC2BCB3
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 19:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773172202;
	bh=61cOWIluLg/ri0kKZLFIWkcAPP0PDIF1kYNAbzD/75Y=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=aUVPnUpuvlUwp4RHysc462fQn4me0YVYvbhbzJufggMjzp05DwUo5Qkp7Wnx+cQvK
	 ZhoJcPCgtP3AtMoj8k9wCEHYI9AeYbRnakHmhpYubM6zpJ03fP+iCtIlZciP7P597P
	 3dkzQ01jsxTBzXl1lVB2umzWj51J1FlWQ0p2kNsRmgyo8p6i4NPV6RZ2GIqTWB/bJQ
	 hsoc5MXiNbZzGTnA+vlUNX9cgWmcAwFhje3e+eUbWYR1iNzWmm6qrTRplr/Sa/m6NX
	 ssO2aSr4IGGkqfc7pvg89RUi6tqQoKAQake9wsSg4Mk6MaxUBAXRorURuIOkZRIKk/
	 Iq+HqbfTdXs5Q==
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-38a3066b68bso70109461fa.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 12:50:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX/E9v94FmUnncIqYBknbxI21GqQA/246lM5O5m25bduKJOqjvolIZ2e64zL2UI6tJBrxTQ7gl7jHpL@vger.kernel.org
X-Gm-Message-State: AOJu0YzCvg6bgliTZJ8Da9NX6VTAiS9JYPhOt9UKJTaXHMCQomEpE+Wd
	9W8kvHOXQG0mU4sSoCO+Zm/z0YwAw2rKm3lxKNwu9oxIOkxWjCXHV8R4VCeKnIG6N3FW/w/YObc
	6RCSxGsDgEJf+gCFigxQJKoD59jKBR10=
X-Received: by 2002:a2e:a54e:0:b0:38a:5402:a9e9 with SMTP id
 38308e7fff4ca-38a67dc914bmr84071fa.5.1773172201072; Tue, 10 Mar 2026 12:50:01
 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260302153559.3199783-1-wens@kernel.org> <177317166704.379398.1719490251066452420.b4-ty@kernel.org>
 <f3ed7b81-4e43-4baa-8a56-b18fa7f56436@sirena.org.uk> <CAGb2v65TyEkirWpfynKnSCiuOAyTW1FZQyXncnTFEHGGOQr_Fw@mail.gmail.com>
 <33204e68-5e65-4486-a473-79d09def88a8@sirena.org.uk>
In-Reply-To: <33204e68-5e65-4486-a473-79d09def88a8@sirena.org.uk>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 11 Mar 2026 03:49:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v67N3svujuzPZ7uwv7kYbiah2iJFW3jZS2kmMmRvV92L9w@mail.gmail.com>
X-Gm-Features: AaiRm53gGy9JdNfY71v2inWqDsCjb0-wpAlLC2cqpxhEcDisNL_wKASMji7aaAA
Message-ID: <CAGb2v67N3svujuzPZ7uwv7kYbiah2iJFW3jZS2kmMmRvV92L9w@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] arm64: allwinner: sun55i-t527: avaota-a1: Add SPI NAND
To: Mark Brown <broonie@kernel.org>
Cc: Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 8881425724A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273708-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Action: no action

On Wed, Mar 11, 2026 at 3:48=E2=80=AFAM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Wed, Mar 11, 2026 at 03:44:01AM +0800, Chen-Yu Tsai wrote:
> > On Wed, Mar 11, 2026 at 3:42=E2=80=AFAM Mark Brown <broonie@kernel.org>=
 wrote:
> > > On Wed, Mar 11, 2026 at 03:41:07AM +0800, Chen-Yu Tsai wrote:
>
> > > > [1/3] spi: dt-bindings: sun6i: Allow Dual SPI and Quad SPI for newe=
r SoCs
> > > >       commit: e2f93f45d38f7b6dacb44203cfc7bb5d7e287b8e
>
> > > I'd have expected to take this one?
>
> > Normally you merge patches pretty quickly, so I thought maybe you weren=
't
> > going to take this one.
>
> I tend to leave a week or two if I think it's likely someone's going to
> review.
>
> > I can back it out if you want to take it through the SPI tree.
>
> Probably safer for conflicts.

Now backed out.

