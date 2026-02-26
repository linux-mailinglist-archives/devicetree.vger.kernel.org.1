Return-Path: <devicetree+bounces-268563-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +H3FCjaln2lfdAQAu9opvQ
	(envelope-from <devicetree+bounces-268563-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 02:43:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8116019FE5B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 02:43:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C0973006795
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 01:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83F2031CA50;
	Thu, 26 Feb 2026 01:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I7OQ7itl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E32D1E505
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 01:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772070114; cv=pass; b=nXCSFu0XAWEoA552bwvip4cclOMPfxht2TFfsIS0x3u8/SLccU66m3xPhc5/3ubTxxLwkRJHQvY+r9+SECPPAnQ3EOIlXk5J6XS+yrwISLypqwNjLraQ3sSzA6OUoYBjoudtrNYu/4lrei/DKUSucO8JKRiDFgdymZxBKBSugN4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772070114; c=relaxed/simple;
	bh=rqXDxR6r3K3O/MS1HryN8hRV89OcJSerUknDb4iUGVU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bwC/jKSEOrsyCBUE1ndOXLpA/f0IonEstEPNRMwrt3+wwgvRMMIvlqXyeorwx3HmiFAcaPhzAVoXTeVh2Z6QrqGdPzXeeWQLuFesfanr0E2cFGIu/vnqrX+jZKIb0ajMpw997Ps+QqVP2TDBz2DV9nCuREmge6MM6qxlazmHalk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I7OQ7itl; arc=pass smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-3567e2b4159so93076a91.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 17:41:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772070113; cv=none;
        d=google.com; s=arc-20240605;
        b=VR0mKzw9MC8DOt+q3KdmZa56PaLajc1X4pekBj2XQgLCUlDUzRB/m/L2I/fq95ukjt
         b1qfp7cH9e5pI40EYo8Mpd+k04n6HmQI7HFSlerWr3gpVHaQAqWwQHjpzPGtpmrdwfEZ
         hQ5pu1SO5Vp8mRI2JcEA7B6wLmRPrZzTkh61qi8WcOOTGkCB3StTaOWRzpYVLyDcGp5x
         w+N6kCUjWwNVEQjumhdmdX3bWiG51+lysikbPdDnBd19V2yIueKRZ9MNYhNT4ImGGCNw
         /H18ltmPU+V5WOgITmDP1n8s2Ey/4l7A1VYLGHmZEXx4RbkRjnp/3uU8iMUG6boWf0/P
         Ic9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rqXDxR6r3K3O/MS1HryN8hRV89OcJSerUknDb4iUGVU=;
        fh=h7zXvxNOiQ0PRIP0xVEy67llZ1cFrF3U4oCQ9ce+yIg=;
        b=fSMVWsjdcWDq6BbyFwjlNBZKeTmasa6lGOcIAXv8FJ3YSsqyq00DzmdK2c0IlV59Fy
         QeXof0GtF1hY1v953Q6ASQ5vGITM4i5VGxZWMMo2KZUzSX5j/YEonYVX+XV9rE9ycO0b
         e02VvFX22RMkzz/DBL6sEP2tTygCiyAwtMCGksF0Sh77ENf4vXMshg6RnzTO7aBGgrbq
         6Zu1xuww+MXftdVQ6OsxrGiKNqnZR3maumxJJPjDIttiBCHChEV6ZK6T6l5cyWIClRAN
         ZXRZwuOpMRvwsEhxquca7N122M50zcjq874kP13P6P/QLRR6dQD72QBwVbF4JEh0fGby
         ptXg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772070113; x=1772674913; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rqXDxR6r3K3O/MS1HryN8hRV89OcJSerUknDb4iUGVU=;
        b=I7OQ7itl+MZJqhgliZrNaTuxLXcaAj20uVsNd6Ppp1QWKWmRqwt9e1QRjwa0mIHrSC
         7hPGIioQk+y5DttijywcMcEHkYP+RAPjJYUyj1Alu3pHIBglHy2GKf79/61bvhgOTKF/
         +hlmelY3t9wxbR94sZfcht4enh+Sn1Vw3JCaiU3E4ng3Z4o0YlD4XCWgpbWyGVvVmR50
         BcnvIigBXY2U2XFaeMx83Ifryg9SbPPaPdNIjdnwPpsG+MIy3MsRFZMNmyZR2m3v0GhD
         6UPsJmIm6N1l9UtMhk6+fpXejWvtOpd1DNDK7/M0S/bQhhSH9yyxFWFUJ61cOUv6mtLY
         ueXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772070113; x=1772674913;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rqXDxR6r3K3O/MS1HryN8hRV89OcJSerUknDb4iUGVU=;
        b=tnMNi7cwxn3yV3yM8Ub+mH7jl3On3IB8KO6EWqMs59kcoTNiyD+bKxPf4jrthcFrU6
         jUM8XFr+lnNiLdnfZAvc/n7NtPlatCZJZZlLUnpxKlCuxHafRcgdSF/+ig14f1OJq9sX
         pb0c2UkGeJjga/FRe/F4HO2+qKJn45luZsUunK2NtPHWcg5NiZaEGvE000Oygqo27f9j
         QBkpn17B8aqBaWzpD8keZ4jSJOvhfO4JS501dfHVp17yt9LsfqMq0m/PkB5F+gKxXHn0
         QYLP+eh8+2XjaapGqLgWVfWhctJRxUsc5KJT+r+IaONtPLk/MFq6VO0u6sNOAbLYnc83
         j9HQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCPR+2Aen865Bs5DXyV1AxLatllOq0WYq9GYN2qJp42j4hCRF7mjUFyrL+MWftZjGhxTiLK8Z+2TTX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+6tKq0TyPYtBOm6GL4XtlRxRYTSL0v3KrZEnuPJFhBBPyPbR4
	DQ96jwoAoJvt4WWjl7UaGrnu/GMbwU24ZHxA973N2rdsruHmThc588mfRZFVnGHf9boERi8necd
	BE1HHJg8tE/0TNhDCM0HYZcRxrAgEDCQrtZ+i
X-Gm-Gg: ATEYQzzSePaMJDvg6IwYAwNRoz/BUNkCek4keFisZmN+tRt4HapAe//A48ZACH30Mxu
	eKXU67JMvBMn9Sxe7z7EHN1QK4vQwAKvZwXvwQgRpMDQlzl1FYk62Dd6R+0F2q7IcZvE1Hn//88
	W7nmj+TV6SIGyWSyrqJEAZeh9s2I1NUzf78NYKcG5NfxHgRs5SjqvtF32JVB/bNY+pxHJBWd6Qu
	tgSTGvdw1G+q+iPiq9LFyo+fRaF5f9IdMWtxR46gv63sts7j1qagyNRSKPtHXNfs3Dl1UHyEk2v
	5P721Fw=
X-Received: by 2002:a17:90b:2e4d:b0:356:2bdb:a375 with SMTP id
 98e67ed59e1d1-3593daf4e60mr634315a91.14.1772070112551; Wed, 25 Feb 2026
 17:41:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225015705.1113199-1-linchengming884@gmail.com>
 <20260225015705.1113199-2-linchengming884@gmail.com> <87ldggq2pb.fsf@bootlin.com>
In-Reply-To: <87ldggq2pb.fsf@bootlin.com>
From: Cheng Ming Lin <linchengming884@gmail.com>
Date: Thu, 26 Feb 2026 09:39:54 +0800
X-Gm-Features: AaiRm52FXOgLSZXxD4WwgpVru-DPSpst1rXFD2wx0GOw_KFmuGibYim2rg84h_0
Message-ID: <CAAyq3SYx9jza9Qba5G2AY6Zbg6=3MLcoPgKEkwe_Srv-GWHHmQ@mail.gmail.com>
Subject: Re: [PATCH v7 1/3] dt-bindings: mtd: spinand: Add randomizer
 enable/disable properties
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>, 
	Pablo Martin-Gomez <pmartin-gomez@freebox.fr>, Tianling Shen <cnsztl@gmail.com>, 
	Pratyush Yadav <pratyush@kernel.org>, linux-mtd@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	alvinzhou@mxic.com.tw, Cheng Ming Lin <chengminglin@mxic.com.tw>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-268563-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[nod.at,ti.com,kernel.org,linaro.org,iopsys.eu,freebox.fr,gmail.com,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,bootlin.com:email,mxic.com.tw:url,mxic.com.tw:email]
X-Rspamd-Queue-Id: 8116019FE5B
X-Rspamd-Action: no action

Hi Miquel,

Miquel Raynal <miquel.raynal@bootlin.com> =E6=96=BC 2026=E5=B9=B42=E6=9C=88=
25=E6=97=A5=E9=80=B1=E4=B8=89 =E4=B8=8B=E5=8D=8811:10=E5=AF=AB=E9=81=93=EF=
=BC=9A
>
> Hello Cheng Ming,
>
> On 25/02/2026 at 09:57:03 +08, Cheng Ming Lin <linchengming884@gmail.com>=
 wrote:
>
> > From: Cheng Ming Lin <chengminglin@mxic.com.tw>
> >
> > Add "nand-randomizer-enable" and "nand-randomizer-disable" boolean
> > properties.
> >
> > These properties allow enabling or disabling the randomizer feature
> > via the device tree.
> >
> > According to JEDEC standard JESD22-A117E, no single data pattern
> > represents a universal worst-case for all NAND flash failure mechanisms=
.
> > Different patterns, such as fully programmed, checkerboard, or mostly
> > erased, can disproportionately stress specific cells (e.g., programmed,
> > erased, or those influenced by adjacent states).
> >
> > Given that no fixed pattern can cover all scenarios, the use of a
> > randomized data pattern is a practical and effective mitigation strateg=
y.
> > Our hardware implements a randomizer feature that scrambles user data
> > before it is written to the flash and restores the original data upon r=
ead.
> >
> > This ensures the data stored on the media is more evenly distributed,
> > thus reducing pattern-dependent degradation. This is especially crucial
> > for preventing errors caused by unbalanced data (e.g., all zeros or
> > all ones) in blocks with high program/erase (P/E) cycle counts.
> > Ultimately, the randomizer improves the long-term reliability and
> > endurance of the flash device.
> >
> > Please refer to the following link for randomizer feature:
> > Link:
> > https://www.mxic.com.tw/Lists/ApplicationNote/Attachments/2151/AN1051V1=
-The%20Introduction%20of%20Randomizer%20Feature%20on%20MX30xFxG28AD_MX35xFx=
G24AD.
>
> This link brings me to a "We have moved to our new home" page.

I apologize for the broken link. I will find the updated, active link
for the Application Note.

>
> Anyhow, this Link does not make much sense in the binding. If this is a
> very generic AN, why not, but maybe I'd move it to the SPI NAND patches,
> as the name implies that it is a bit specific to Macronix chips.

You are right about the placement. Since the randomizer feature and this
AN are indeed specific to Macronix chips, I agree it makes much more sense
in the driver patch. I will remove the link from the dt-binding commit
message and move the updated link to the SPI NAND patches in the next
version.

>
> > Signed-off-by: Cheng Ming Lin <chengminglin@mxic.com.tw>
>
> Otherwise both the binding and code look ok from my PoV. So besides the
> Link that must be moved and fixed, I'll wait for binding approval.
>
> Thanks,
> Miqu=C3=A8l

Thanks,
Cheng Ming Lin

