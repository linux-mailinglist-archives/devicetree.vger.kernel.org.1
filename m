Return-Path: <devicetree+bounces-271117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJE4KURNqGmvsgAAu9opvQ
	(envelope-from <devicetree+bounces-271117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 16:18:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5961C202780
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 16:18:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 621113035E2F
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 15:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC3B5342517;
	Wed,  4 Mar 2026 15:09:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC28A34028D
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 15:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772636987; cv=none; b=Yc+GtgQ+nv/Oij0hMKHX4sf0LcvORqhYOXIjAXZzTc2aqkldu3dRLvxipy77aNDmuQ8ns5zfz2ZFoOKTUSbbkx8vKUX+5mu9eu8lCnyKiiXycONvwRQJHz+V0frANurvH+4+b4NB2jkO8KtVF4+sHHQyP1j1d/+EKxGOSuC2+lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772636987; c=relaxed/simple;
	bh=stMCj65DIZttmcEMyLUzMF4GFW7A3LJezswKZItX0ns=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pzYgkTHlNuKARXwIvg2En/9eWGoa4RqMP5MG3NG+T8xo+JeP+ns+CLMclIQ9bwVW74dCytFCIg8CyUXFBIBzdBox3eKUWiOLGmn0mfg1+4hbtkANUEQL1m2VplpgSFFYzbFu6xHivfcb7XBmwGK6oyVe2WAT11xvg3z3rMvZrIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-56a8584e3a2so5847862e0c.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 07:09:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772636983; x=1773241783;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vxSWH/2v55NAFblNv9fIFlXwxWEhhmnEpCtyuAZg0R4=;
        b=gxDOlkPGLsPK1xtfxHfXBSiJ36a7sz3x75R+jcLn7qi6JqOvFei31NI/afRszsGZb+
         1Aazoh+zgWUtT0SHhGmCENk2nLf7miBQH5ZYajq2UgUrB1GmKSWBBCvBhEtqRUePvhh4
         64IIsApPsBEynNNAn1QL6QQj27w8U2u1EZOrYZnD5BCt4SlS1DuBPgXDKLCDEbqrli+s
         sbl/3IA+Y/m/ym+wwar3rQXAlHsFTdsSQL7AGFpsmdGpoEO7FzGXJlbsFpb4ktL9yMnH
         h0z4sF8DHCcbR4lnnkVeiCCAq3X4tc5vj8MhzelpZLnYwod+v1KixaGG6ko81nSi4S9T
         4WKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhKfsNp0Eb+3PiZBDHLh/TsCrh2bA+ALXxcUaskuktUE8YEqK9lZ0ijbwqUVmt/qfLwOtFyOoSvqj6@vger.kernel.org
X-Gm-Message-State: AOJu0YztyKSZ5JQoXClcvVp3BWRO6Gfefq43rk5q3ZIG+9ElONhjSSSW
	MOSD8od0u6818jrSxLEnS4jTCpULBZnvrGzr6oZp1Qt3ttrdhXAza/wm9pfsMpfz
X-Gm-Gg: ATEYQzwoO9dhYBjTPaLdb2tqBGrQdsAoivGXkNGLE4qLh9iE8H7EGwmBkTsQSI2VZxh
	GCNDFdFrD8CeYRc2sjlAiYFMgm0w01isgoM4TaaJLaa45H3GiCZQ6yAS3iAaVuxgI7s9lIa+TTK
	Oy4DGBqBQevpEH/7coqDFFSuK8jkLxIQJO06Cd4KOo6IYi2ayvEp9+JRngdgC1Im+BW3khqUTAU
	ufdFMhpLGwLF8D0vivDeVkeIFl2AaQoMTjOheU3EaFOd0PN/eGCTxRnffUGSuiK7MI2T12NHy0e
	Qj6lkyc9RTYi2h92KZ7XVx2dw7VbQsYDrRTJ1+dOiHB59j3GNtg4W8KfAkD4M96LrtrY9oyGUCK
	9wN1qC7Vik+dZKavrhi9if3SfUXX0kYl81v2EdkEdHTQkZHFckzqkDj8fskyBAtCDR3gutUaWtx
	3wXsZgxe2oGlnGP/KMmVt3oIZzPq3Loz6iUZP9v+fxlotiN5xu/51uHZtnstXiL/6u
X-Received: by 2002:a05:6122:218c:b0:563:83b2:ef2d with SMTP id 71dfb90a1353d-56ae7822f86mr1071312e0c.16.1772636982627;
        Wed, 04 Mar 2026 07:09:42 -0800 (PST)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com. [209.85.221.180])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91659421sm24921041e0c.0.2026.03.04.07.09.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 07:09:41 -0800 (PST)
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-56a8584e3a2so5847844e0c.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 07:09:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWe+rRy3+lpoXMzaUd1gGDm9VRXojTvvXq8+IAJ+XITubfrsyEcopZyXJnYLROmfE4zDj6QJ/e6X7Ny@vger.kernel.org
X-Received: by 2002:a05:6122:250a:b0:56a:8c20:2d9b with SMTP id
 71dfb90a1353d-56ae6b97c39mr1061719e0c.0.1772636981170; Wed, 04 Mar 2026
 07:09:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <107183629106ad392e17fdf539a3d79873024377.1772632987.git.geert+renesas@glider.be>
 <86y0k77jhs.wl-maz@kernel.org>
In-Reply-To: <86y0k77jhs.wl-maz@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Mar 2026 16:09:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXwd-k79EyU=gs8sWFSO=Ap62kbmb7UX3MDUir986GvVA@mail.gmail.com>
X-Gm-Features: AaiRm524M_lVDqJeLtLCIplagqZCSJvYvhbt7bK9RL4CkdtLzJuotoXm9OoR-Jo
Message-ID: <CAMuHMdXwd-k79EyU=gs8sWFSO=Ap62kbmb7UX3MDUir986GvVA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: arm,gic-v3: Fix EPPI range
To: Marc Zyngier <maz@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Thomas Gleixner <tglx@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 5961C202780
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271117-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.933];
	RCPT_COUNT_SEVEN(0.00)[9];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linux-m68k.org:email,glider.be:email]
X-Rspamd-Action: no action

Hi Marc,

On Wed, 4 Mar 2026 at 15:32, Marc Zyngier <maz@kernel.org> wrote:
> On Wed, 04 Mar 2026 14:04:10 +0000,
> Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> >
> > According to the "Arm Generic Interrupt Controller (GIC) Architecture
> > Specification, v3 and v3", revision H.b[1], there can be only 64
>
> v3 and v4?

Doh, no one is immune to hallucinations ;-)

> > Extended PPI interrupts.
> >
> > [1] https://developer.arm.com/documentation/ihi0069/hb/
> >
> > Fixes: 4b049063e0bcbfd3 ("dt-bindings: interrupt-controller: arm,gic-v3: Describe EPPI range support")
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> >  .../devicetree/bindings/interrupt-controller/arm,gic-v3.yaml    | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
> > index bfd30aae682bf3f7..360a0643a0b567a4 100644
> > --- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
> > @@ -50,7 +50,7 @@ properties:
> >        The 2nd cell contains the interrupt number for the interrupt type.
> >        SPI interrupts are in the range [0-987]. PPI interrupts are in the
> >        range [0-15]. Extended SPI interrupts are in the range [0-1023].
> > -      Extended PPI interrupts are in the range [0-127].
> > +      Extended PPI interrupts are in the range [0-63].
> >
> >        The 3rd cell is the flags, encoded as follows:
> >        bits[3:0] trigger type and level flags.
>
> Duh. Thankfully the code didn't have the same problem... Thanks for
> noticing it. With the above fixed:
>
> Brain-farted-by: Marc Zyngier <maz@kernel.org>

Is that a common and acceptable tag? ;-)

> Acked-by: Marc Zyngier <maz@kernel.org>

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

