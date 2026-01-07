Return-Path: <devicetree+bounces-252503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 818AFD00253
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 22:21:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 100FB3070D7A
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 21:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43DDF2D979C;
	Wed,  7 Jan 2026 21:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OlOF02yC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9EFE2D7DC0
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 21:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767820579; cv=none; b=Dusn8r3guDm9Nb3anUaEPmc8P+UM7DZIZ/swVdyHZodM+8Whf8WcD/MTQGwsV0m2cyViPKcdZxic0tq3P54ye57ThySsMUadGTUQ7MNsyYyRmcNashkZxSex78e7vC7mL09DFdgWF/Uvm+aaNpouFFyJGOH0zQAYk/YCvjVQiLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767820579; c=relaxed/simple;
	bh=Y2hxfStZTU5bifGNtZaCaokJ7qeOXiwJTbYrpCk8+h4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZF/O4bTr49b/+EVIPDoFLRsN1bhHBefh4uaEO5TrRXlMTWhDcG9X3WV+BS9HrNYbBnkJI7OibTINJFb7dLTlslFwCgweS55egUcKCl8h0XIJHMtm/xo1d0denU1dP/A/DmU03JSJMKjCbQoT+NYp3vmskHMBM4VtjgOC0OdNsP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OlOF02yC; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4779ce2a624so20756275e9.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 13:16:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767820573; x=1768425373; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dCitwE55o8IqWyri41ymTAwTLamoPm8KtfcEJm7bnsM=;
        b=OlOF02yCmV7wS+7sjWPowc0qIgq+xFi+QiFFxJ6pvolXCPHLHl0/VzZky2vP0cVAZG
         YiRbXc9pEE1IOIcYTKlcqDyFZ/CuCIO6d4ZXy/VkpfpT58uGCSmSY5F0SHVc35gkw1g9
         Op0ZvLp4UMVoltdNUqGNzasc4v5gdOCaS1zA8bMMZk+ZXy0+8hUG9r57RbdaDMTfIXai
         B492xcLAOICMPSJcAS6yF3j6nZ0b0HsQbKZwoZ62g6Ao6whrj+5QBU6eZkdvC/QTrRZB
         +EDuOC7uImhF+Pt6W19K0p1eRvbz42hjUCSzM7CpaNV9pAjfKVwQe8jFdnuaVKADIGUV
         h9tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767820573; x=1768425373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dCitwE55o8IqWyri41ymTAwTLamoPm8KtfcEJm7bnsM=;
        b=eqHX0AbLbLr7dAnExmURIhPF6GOm3ktmPUmC06Jwhd18JeWzs5+S9VY6UKVZUdPkd4
         +ctoyFp3iQjstti+qTXyeN3s8SMKD5CTAxHnlXHw5Y6fetN0F0lHyZZveHyG5eS6/Vz5
         fBm2U+isW9+GDCLxfLxrrsefjuUne9MfiKqKbMX3cX6cHnPJipcgDQShj9C0T9nrebWt
         5O7OneMOYNwsCPjdXBv4JUlOyqKwav9CaW9uXs9sy4ELocaBcbti4Yzf1j1xWdYW4BGs
         B79XcW6EP0AX8qb6ErGCDNjjJ/bdlrvbp7wiOCzAzmZlEXOulvgcM/dV7XotGeiZj/IG
         9zfw==
X-Forwarded-Encrypted: i=1; AJvYcCUi+3Awk2zVahwWKdPX8VS0WkLLa1MdFiXhCDBO9r76DK9FlV0DaC3bru5oNi7tbHY2Wch4nhTpRQi+@vger.kernel.org
X-Gm-Message-State: AOJu0YzCA+cxPlgQKQLG2jRkKXktcDv22nKyOKNzw3R8Kspog16gsQnO
	dzuSqiGDGTbqoGxPg3vqRYbZADMpu7IVdUyEcGpghrCPsOgN0S2dywIe/OMtsfYovQqO6QNRnbp
	/PqoH8lRfsQ3U2wKt8DRKPiRneAErIuc=
X-Gm-Gg: AY/fxX4JWQEvO4tIc9FPTTBBUndZ2TKPoTRe7qp7WG4/2fhf5GlrCXmd1i72WlXuKsn
	HypBtWKM0r3me1fkFpKP0GXDiMApB0xCX3BHzWZts/dgbHtsCmSfJYkjw53GcW594eQt0LBYbv5
	eaCe2H7jrEO1xIpQW9T7YltgoJG7jwGbYumk/e4OxlSA2fnANnMS6mvkC+dZxBJpCdV98QM0UWE
	TqXi4IppKw4kN3F7wBgQMAQfz6L+MouX2iCoS0aMStl4KuR9WIoIZrfJX4aB3DLae/maSEj3Fll
	W2lmZ6XxwHQKzJylpkMIwCSf1xUC5XXAddFnyDl1aMeuN70qw0/Fx4HxLQITTtD+KsoZeIQhicU
	R7ggthe+sYwluiw==
X-Google-Smtp-Source: AGHT+IGve208ZokXE/8tqVsqRpRaLA6g/AVfp11AspT3v34uPzJmUuLmgL0Vxdkq3s+EP2zdeokZvc4oYXJlvNhydjM=
X-Received: by 2002:a05:600c:4709:b0:479:1348:c614 with SMTP id
 5b1f17b1804b1-47d84b41b2dmr47018015e9.26.1767820573184; Wed, 07 Jan 2026
 13:16:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251230115814.53536-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251230115814.53536-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260102-quirky-hornet-of-downpour-ddda69@quoll> <CA+V-a8sY0QneUWQ4A0XCKUGPL8VYkU5NQE2h_cOK=06JG_1c2g@mail.gmail.com>
 <e49bca1a-7fc7-4213-b4e0-6b6ed08fdedd@kernel.org>
In-Reply-To: <e49bca1a-7fc7-4213-b4e0-6b6ed08fdedd@kernel.org>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 7 Jan 2026 21:15:46 +0000
X-Gm-Features: AQt7F2o45GC9wvdTVWt_M5nbtcntmbiN2eZaPfQPJ_GZHvGZEjLVr_yjo4DTGW8
Message-ID: <CA+V-a8uFnm0oJqbkHZURi9vGXxnfG7cvxgZ2GH5b8nYOUohXDw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: can: renesas,rcar-canfd: Specify reset-names
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-can@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Wed, Jan 7, 2026 at 8:25=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 06/01/2026 18:17, Lad, Prabhakar wrote:
> > Hi Krzysztof,
> >
> > Thank you for the review.
> >
> > On Fri, Jan 2, 2026 at 11:16=E2=80=AFAM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On Tue, Dec 30, 2025 at 11:58:11AM +0000, Prabhakar wrote:
> >>> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >>>
> >>> Specify the expected reset-names for the Renesas CAN-FD controller on
> >>> RZ/G2L and RZ/G3E SoCs.
> >>
> >> You should explain here from where you got the actual names.
> >>
> >> Otherwise you got following review:
> >>
> >>>
> >>> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com=
>
> >>> ---
> >>> v1->v2:
> >>> - Moved reset-names to top-level properties.
> >>> ---
> >>>  .../bindings/net/can/renesas,rcar-canfd.yaml  | 33 +++++++++++------=
--
> >>>  1 file changed, 19 insertions(+), 14 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/net/can/renesas,rcar-c=
anfd.yaml b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.ya=
ml
> >>> index e129bdceef84..9bfd4f44e4d4 100644
> >>> --- a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.ya=
ml
> >>> +++ b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.ya=
ml
> >>> @@ -122,6 +122,11 @@ properties:
> >>>
> >>>    resets: true
> >>>
> >>> +  reset-names:
> >>> +    items:
> >>> +      - const: rstp_n
> >>> +      - const: rstc_n
> >>
> >> rst seems redundant. _n as well. Are these names from datasheet? How a=
re
> >> they called in this device (not the soc) datasheet exactly? Because it
> >> feels you use pin or SoC names which is not useful.
> >>
> > rstp_n/rstc_n are coming from the SoC HW manual and is already used by
> > the driver (since commit 76e9353a80e9 "can: rcar_canfd: Add support
> > for RZ/G2L family"). The reset-names existed previously but were
> > dropped as of commit 466c8ef7b66b "dt-bindings: can:
> > renesas,rcar-canfd: Simplify the conditional schema". Let me know if
> > you want me to rename them but the driver will have to maintain the
>
> No, I want to follow my first comment in my reply.
>
Ok. As replied to Rob earlier I'll include the below info in the commit mes=
sage:

The reset names rstp_n and rstc_n are defined in the SoC hardware
manual and are already used by the driver (since commit 76e9353a80e9
"can: rcar_canfd: Add support for RZ/G2L family"). The reset-names
property existed previously but was dropped in commit 466c8ef7b66b
"dt-bindings: can: renesas,rcar-canfd: Simplify the conditional
schema".

Cheers,
Prabhakar

