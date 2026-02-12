Return-Path: <devicetree+bounces-264885-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIqcEmwwjWlvzwAAu9opvQ
	(envelope-from <devicetree+bounces-264885-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:44:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A76241290BF
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:44:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66CEC30523F2
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 01:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DE5C207A0B;
	Thu, 12 Feb 2026 01:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DkJROqcx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3581D47B4
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 01:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770860641; cv=pass; b=nqWzX88J5dH0Y4kUFU7QAmZaOez1CRBwzUpsbGzbv8msAGOSWnTw41FwIqT+xYrhfmqyDZXzC9FSRyPBs113kxAMi716xJOFGH2gonlW6GhV8Um1Eu5ycmRZo6P2abwKp91YvzcvI+k5dpwmIidwqoGe6GAdJTL+qaNx2PbPGB4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770860641; c=relaxed/simple;
	bh=wpm4nYoZnr8E0vskVsJSqDnE31Nxigu3eBCbeG9fr34=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jCYwpQYtz+cPcg1VG7jeTxitGWLDoWSDkvOjbrLA4fKS/cdLCUyWXzZNmzya1GhHJVJ/hUIW05EStJrSJ0DW2Gu01AEqGbE8uYS48IjbGDsF2rVYjdBgMh88CZDvPD/vQf4tVS7MwOpL0SZaAT7gNK9iXdpwPKBlHNArkfv1kG0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DkJROqcx; arc=pass smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2aadc18f230so28505015ad.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 17:43:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770860639; cv=none;
        d=google.com; s=arc-20240605;
        b=laqmOvYYSCx0pfmhJ/tn1v7xiwa7TV892foojT8hz29QEsQ6W2Ak9Crzz1vyUwxjuB
         LGxLOTbhT01DAZUrHlOt8lonA3nuT7z+iQvYFdFQNkX4Il0vPUgnBFcPNCGLOAz3GaSJ
         +8zNduqkfb3v3KIVZTJIDNpzFopYcf0F6SCPQqh2dFd7v67JT5ObOQSlDetRAmJ98/iq
         DAD6g25H6OXPPbHxoBipKC4Ivx6TxDTX8E8XhVOGNeYYKN7kHjdFgw0GPyUFkRAQofji
         KSa/ZugQeshcwzqrdkU5bWXF5QuN7pU8MQOFriy2UE4jOLAGaarXpng+Yf7VbKhOI3nq
         MUqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RFgZzDUL8NQEcuVi03CI+wzULvYUmUij2odZG0YI+uA=;
        fh=0Au9kqWvC+lj4OIcGjVox9CjfteGRzAXqw1w0IAXtEA=;
        b=N63gy80E7Oclz12Bn0OfcrUJR4b6k69q7/AzjHh/g1xJPwRN3QBWsEkbiiwKMnqFCU
         1L985H2BkIxNK3Ow5Vi8cHpNSiH825a7W1f6YAIOo+NL2iJcPy4nB+L7nTRj97FLEhbf
         DABHY8AXr3FA4T2jDXVfoyXc1jF92rF1WaDPLWMUrtcI1/9YX4eiB5VIFspTivy+OJiT
         xkRVOEoY+r+65ZfmgOJHwteJbq3maGDxif2fVPlcNKKCSau/LlXORFNJio8FKhyrvM7+
         L+hzTsbvT5Y/OlOTAS9e9UQkKRdLC1gai1Ik0l735uPAudxwPVn4H6ds2xoUiJfuDtID
         fPzQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770860639; x=1771465439; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RFgZzDUL8NQEcuVi03CI+wzULvYUmUij2odZG0YI+uA=;
        b=DkJROqcxhIXeah8FTEXgBkIKw52wgqDum0lcM/f+IPquKRbifOwnQJacyVBDdGHbUX
         6fWkFzx9RZ7dDCen+Hn7ioPUoCECctnpV2zpYiInMEakCO28ckO2QcarnisGxRBCo4/B
         Nj88vLEkFla2+iI1RVpn/D2tm0iOq1Z3glM9Q+k/GLaX2gZm2w3Q6Hcz/ms7xyhrIxbW
         YLxYM/kAW782aY3tcM2FGBuLeUvcufAM1+9EZr9RmeT8upaYXQ5oKjuT6eeGy0o2wwXf
         SdPzAieWHtHRTjosG3fleMA6pU3TBFf156MTNALLHNptWcdKlMypeEeT0NjttPAVcbvf
         stIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770860639; x=1771465439;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RFgZzDUL8NQEcuVi03CI+wzULvYUmUij2odZG0YI+uA=;
        b=hJ0UFMo6BED3Bo9ujUecThLFBB/AJas8I46FvAeMxpp13NBi9iwCNiexvffyP8rrok
         FUd+gBLlgA8vcui9eNzSE89uvd7B3dsGXNiGf0iqYdiwHPldsmS2VujzoCWoy7Yyz6vd
         OVIh+e0b7+I+IT50iVfmwiRO9KZ8QbffweaugWrtrb9nfh+5pmVasbIUO9QJBpZcWNYO
         CtQbg5lm4PKjzSsw3PMdnpWI6tdmcZP3tIptE3j3+6DgCFPUntskWw98EmFIPCNQBdY9
         u95sV55etY9Eja1ETS1su1MfD/g0PQElFr7h5oBeQAh6aWBKfV5tbkuDLLirkntwXhDL
         T7Iw==
X-Forwarded-Encrypted: i=1; AJvYcCVp63ZEr5PeUVnQ0kJHlenRTXu1VuQlb5WxSxlsOFFwnZwougFIuneUn3bksMF6iEOTypNk3oTevJna@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/39fvkgZ/59D8Sg83C+p2DM21NxBOGPFVD0wqdgaB5cQ9Yb/4
	MHkux/jkGxvFxl0HY2S/YM1rgfS3RPcGZXdlbCYVl6m+K7WOJ3QTZ4ORhANPbukRf8gLakOsMZR
	FjlNEiH5jrIaS8B9ysEkiqKChlLdIadI=
X-Gm-Gg: AZuq6aLvL1SvRMkWRsEjcNfd7OB5865LPBlqjdEL7s7Mu4RcHwSy806kHwmTf8NxFvy
	xSOZL3Di/4ZxMZQt+Qw2O31GXxy2s/AYPwORWx6ZX0fdl+Uc2/uJDzxdix5eVUxc9vjuSIXiwhO
	AcnTYDoqP4qHMDbidHtB27pnWuRAjD51Y1A5k9e3cGEId9L+m4bSo7PUhg2g0JRNZeCgk906dEM
	+wXgv3EiuRMcwfk5cnlu9IRfKfzQSDJDqYu/hnSrNKjaY7TvY2BsjeLy2mUXN8T38ArHvu9Fngw
	buABIlc=
X-Received: by 2002:a17:903:2f0c:b0:2a7:9592:210a with SMTP id
 d9443c01a7336-2ab39c29a48mr10091365ad.33.1770860638714; Wed, 11 Feb 2026
 17:43:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211093527.2892297-1-shengjiu.wang@nxp.com>
 <20260211093527.2892297-2-shengjiu.wang@nxp.com> <20260211215346.GA3958740-robh@kernel.org>
In-Reply-To: <20260211215346.GA3958740-robh@kernel.org>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Thu, 12 Feb 2026 09:43:45 +0800
X-Gm-Features: AZwV_QjAVRht36rdtyJlQLcJz5vrrk7UWVke583zejwvcdcPOTiO2Ws4TtS541o
Message-ID: <CAA+D8AOTgp9Oi3puOdZv4oYTHGBVHtgbBRV-U10hzMJMpQbBJQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: asahi-kasei,ak4458: set unevaluatedProperties:false
To: Rob Herring <robh@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com, broonie@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, perex@perex.cz, 
	tiwai@suse.com, ckeepax@opensource.cirrus.com, 
	andriy.shevchenko@linux.intel.com, nichen@iscas.ac.cn, 
	kuninori.morimoto.gx@renesas.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264885-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,vger.kernel.org,perex.cz,suse.com,opensource.cirrus.com,linux.intel.com,iscas.ac.cn,renesas.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: A76241290BF
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 5:53=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Wed, Feb 11, 2026 at 05:35:25PM +0800, Shengjiu Wang wrote:
> > When including the dai-common.yaml, should use unevaluatedProperties:fa=
lse
> > according to writing-bindings.rst.
>
> Generally true, but not always. Do you have an actual problem? The only
> possible problem is you want to use "sound-name-prefix" property.
> Otherwise, you don't need this.

Yes, I want to use "sound-name-prefix" and "#sound-dai-cells".

Best regards
Shengjiu Wang

>
> >
> > Fixes: 8d7de4a014f5 ("ASoC: dt-bindings: asahi-kasei,ak4458: Reference =
common DAI properties")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > ---
> >  Documentation/devicetree/bindings/sound/asahi-kasei,ak4458.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/asahi-kasei,ak4458=
.yaml b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4458.yaml
> > index 1fdbeecc5eff..259e97b7a3c0 100644
> > --- a/Documentation/devicetree/bindings/sound/asahi-kasei,ak4458.yaml
> > +++ b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4458.yaml
> > @@ -60,7 +60,7 @@ allOf:
> >        properties:
> >          dsd-path: false
> >
> > -additionalProperties: false
> > +unevaluatedProperties: false
> >
> >  examples:
> >    - |
> > --
> > 2.34.1
> >
>

