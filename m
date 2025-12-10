Return-Path: <devicetree+bounces-245526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7D5CB1D7C
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 04:58:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45D413051E9F
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 03:58:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B24230F533;
	Wed, 10 Dec 2025 03:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JgBtSSyB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A501522128B
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 03:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765339092; cv=none; b=j3txBoHGDYP1rC+a5S7E4f+GggqgdsTFMBSgBF91N6hUU5cYAJFkd3UE8DJ61dMofmafSprhe4vkiGk2qBeYDcc+tmTLzT01bPH8whkoeneoEFTuZPxFXrZWTOQXSiod/vfUDUdxyeEerTrN4/E1B+lXsAGJUPs+FutPF+R9eTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765339092; c=relaxed/simple;
	bh=qrrddUg0J/Vj3a3W8m/yYJDr8fLKEDPh9eHraAS8sLU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bDPhjIzn5EX0F05LURJyEmGGXRTv0pTy5OMOpjKSIrxzgsMEIHREQYbekMp76YP6Do78rZFprJhNZQhqPFfH0NZGv7UWyn0QS1GPDmUU/Xk0B08m5f/v+2R7kXTL6hHVK6mM4WD/oNoZW+yMeEGJxiR7SDqQIs7w4XYcq9ukUlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JgBtSSyB; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4f1b4bb40aaso96591cf.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 19:58:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765339090; x=1765943890; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xLoOmL2OINkQVzeV8Rqv6NYJGZqFQ0WjVAMg3gQeW1M=;
        b=JgBtSSyBJA5mzEIQIZHh8R6Rx6bRaxpaDWAGcKeH/mkLSKuaCh7Q9tdHKLJ7Dt6+aD
         F7yOF6TwAavII+UHDa8IeFGVk/KzkcjiwDq/vaysMSBihsyKU5Q/Y3AcqHCehJa0u5vq
         iwh82EnAauyW7uYi423k8yx3G1rZhAzeuOzrDgvop3jiiNo8EkYlo3aPofLKXSJ0pNtH
         3khfD75movDW3Msvtyxf0Z8TRZsGmNwI4BPnCXplGm0AVKa+jtzndhkaxh+akZGJBRVf
         OAoN4L1Ck3pqpWHYE8cUb8KbjYrodWkvNEpPVqjxWPEzFpMxI1w6T3oQZMKOqF9tOKkW
         6zsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765339090; x=1765943890;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xLoOmL2OINkQVzeV8Rqv6NYJGZqFQ0WjVAMg3gQeW1M=;
        b=BIctrHV3LQti0toAa0Deetu4HRM2UG6h9Scz/MKu2EkjNt814WVEYcU8C83Xt+cHNP
         Gj6caKeW8M94KqwvaJNoB96/C5oOgXhEAI33cj2ihrEbw8ly61DdpFTjKiznRDn1Jrx6
         wO9VrnDMtD2AnWVOkxyo3BzuqeLAqf2Si+n60NneRqrC+cxa7GlZeXtnzaR+jmhTSsvb
         PCL29rqepQIxcG/p105qzCRhpWB7lyAOuNamKzIiu6+5DVpBZoEgI9nPvwVoCM371dJ5
         iJ2+rvxl02EHryuTS1mamvNz/u2m8chB8ud7OEK8xo5055E4lkzA/3qi8s1DHK+3cGmi
         ufag==
X-Forwarded-Encrypted: i=1; AJvYcCXoib4/RmZGhKEblc8UCi+wAdgN7jXQmKZrR3ezoBnYd/kylij5zpyo1AuiynaPJMebUIPzGKFW1spe@vger.kernel.org
X-Gm-Message-State: AOJu0YzG2wKkQzCs5YHt1X0k3xM48xcSF0lIMW++11hk+To3JOY3mX0s
	gvefvUj5yiAYFCvA8XT1CkIaywHMLISJvRRKIX/drKH+XB56L9VQH1PNTcpcDhPcKc6g2SqHnVI
	/c0Vx+ds5U5IlHaBRkKxQ1sx7+d/6cto=
X-Gm-Gg: ASbGncvkVS0C6JBbuhUmIIZ5pSsaB7d0xs5ot+sroUK8pu4oxfR2qfQbx0pE7vrOHai
	12sRbJRAPtTP9fLoo98KBHxgNCGKpZg69lAf5g+9fh2K/RqJk5DUMO3DKVv4NVO/cLTI/rBlxG1
	Tg2+SfkmXJ3YhUzh4XI9CdJNmTlq0+T4lznhsSuo2e4dbTwLufjtQoGSTHFuDr3EMFfQeCaRnuV
	MOv0sgUfUZEOwsP5Z9JtjZvecAAZjO3a+/C2TYEkQz4E46MUXduh3oEDy87gFBUrXy43jZZ0WTb
	HNLFQMY90yFa1VIPsP8sHpyWdziHJv7xToB3CBSNESXqxHozJL0IpR2ND3IT4Zph+rcbZ3/aGoQ
	ZqLLd1xcQAmvRHKFdeFeeJx1Qe+l0f5kZftA=
X-Google-Smtp-Source: AGHT+IFGSPpDaGsF7GV6bSeqZjzx0wih4VR146dqGL5dRtKu2H9I9xlLneXMcdOPKYcfgnDqQlmhKeVlt3Ia1lJlppw=
X-Received: by 2002:a05:622a:5d3:b0:4ee:1dd0:5a40 with SMTP id
 d75a77b69052e-4f1b1aae5b4mr12728361cf.59.1765339089481; Tue, 09 Dec 2025
 19:58:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251209-tdm-idle-slots-v1-0-38dabf6bc01e@gmail.com>
 <20251209-tdm-idle-slots-v1-4-38dabf6bc01e@gmail.com> <aTjZc3mgu7CQOkDU@sirena.co.uk>
In-Reply-To: <aTjZc3mgu7CQOkDU@sirena.co.uk>
From: James Calligeros <jcalligeros99@gmail.com>
Date: Wed, 10 Dec 2025 13:57:50 +1000
X-Gm-Features: AQt7F2peQnceaEJraJhL4gaHZEV1D4IiSKkpSo2-8pS48v4HYxCHrY9kKA6UQpE
Message-ID: <CAHgNfTxmYxNaYOdGK4Eb4ouCqmUCjVuhzGdgTAL=+ybObqrCmw@mail.gmail.com>
Subject: Re: [PATCH 4/7] ASoC: soc-dai: define TDM idle behaviour modes
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Shengjiu Wang <shengjiu.wang@nxp.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Shenghao Ding <shenghao-ding@ti.com>, 
	Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	asahi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mark,

On Wed, Dec 10, 2025 at 12:22=E2=80=AFPM Mark Brown <broonie@kernel.org> wr=
ote:
>
> On Tue, Dec 09, 2025 at 07:31:17PM +1000, James Calligeros wrote:
>
> > Imagine for example two codecs sharing a bus. When one codec is
> > transmitting, the other must ensure that it is holding its side
> > to 0, or data from the transmitting codec will be corrupted. We
> > can trust the "idle" codec to simply do this itself, however
> > this is undefined behaviour. Some devices may leave the line
> > floating, others still may pull the line high. We need a way to
> > control this behaviour.
>
> I'm finding this explanation quite confusing - you appear to be
> describing the situation where two devices simultaneously drive the same
> signal which would be extremely unusual and I can't see how it would
> work electrically.

We are trying to solve a few of problems here, and one of them is
a bit odd. I've probably jumbled up a bunch of different things here.

We have the use case where a codec enjoys exclusive use of a bus. For
these, the codec can transmit 0 on any unused slots to hold the bus.

We also have the case where multiple codecs share a single bus. One
codec can weakly pull the bus low when it's not being actively driven by
any of the attached codecs.

However, a number of machines split six codecs into groups of three
across two electrical lines and then OR them at the receiving
port such that they appear on a single bus at the SoC. Because the two
data lines are ORed at the receiver, we have to guarantee that line B is
zero while line A is active, and vice versa. To do this, we set a single co=
dec
from each group to zero-fill during the active slots of the other group.

> > Thus, we define five possible bus-keeping modes that a device can
> > be in: NONE (UB/as initialised), OFF (explicitly disabled), ZERO
> > (actively transmit a 0), PULLDOWN, and HIZ (floating).
>
> What is "explicitly disabled" in ths context?  Why aren't pull up or
> drive high options?

The OFF state was added so that consumers can explicitly disable
any and all bus keeping if necessary and supported by the component.
TAS2764 and 2770 both initialise with some bus keeping features enabled,
hence for this hardware NONE !=3D OFF. I suspect this is the case for other
hardware too.

I neglected to add pull up and drive high simply because none of the
initially implemented hardware uses either. I can them for completeness's
sake, however.

Regards,
James

