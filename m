Return-Path: <devicetree+bounces-272079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id utoMJTPPqmnVXQEAu9opvQ
	(envelope-from <devicetree+bounces-272079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:57:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B042212B7
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:57:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B260B30089B9
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 850EE39280C;
	Fri,  6 Mar 2026 12:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ogXpuob8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060953921F6
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772801785; cv=pass; b=PymBLTQ3xg+tvy2zaIKXSG+l1+Ing0aDsAgIdipclmhPe5vv5sT0+RUVuE1l/A1Z/PgyDpBkKxiMOrPz06JjITr/woayl5D3/Op0ME4VyQYrasOSvg101H0K0WMBwUkjhEd3xg3EJg79Sc80byRvldB2dcGHTpMXPTv0Tg7CuxU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772801785; c=relaxed/simple;
	bh=wJffGy7LYKR+jQmMe1VSnAs6VxFS/EDydi1YlF5GWZE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YEE8pkhsePSAcdQCDkdr8kGG684O4FH6vgm/+JODdIA8Dmzj6ocWOT57TGd69cwhNoqpCS2lhM6AFobw5g91WM9oZfY3qNCdss8Wva326Vp9BqB6xxEgJIGlRcGJdMLevQ97rfCgbss+PrA53WgvAxLewAlav51xfRcv2TRUFP4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ogXpuob8; arc=pass smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5a13e1cfa45so341116e87.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:56:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772801782; cv=none;
        d=google.com; s=arc-20240605;
        b=Q3s6m87CGiIzUDdkKu33tw0cNe1yIz7kOwt5HOVSvYNz3Zti/q8NWedsfGBwd5ewxg
         Fnm5mi4pnbJwia4I5/MrYW4r3QRa+dRXAYKUXSdMlhAurOdxYLR3jFGRQgblBEkNvV7N
         3Xj1NeDCVeNCvigTBNbn122jTJNNFToyoNMbSb+dfXR5dyDPBTaeEtkcr/BccNFoiHpu
         1muNW0ot1KAs58ew8h6Ft80bl5gg9cWng8D0ghPXIAXQHf+Bp7F+Irm0ydp/C031I/QC
         sSIP54WCluiyrd72sWu/5fYyplFY5kwvi8aKsQVzP2I+3mNMHMgec+6eiQKQuoWlE89M
         o1fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=G1h3CA12TR3DUwT2sEpGipCt2aGRjxneEfQ3TJDN9mA=;
        fh=wAUOnCsWffnzQgMEvutRD1AwuMQ42vAMmMJGiSldP7Q=;
        b=H/QX7zR1lxxN+WBiOjC9iyNSpLx7Y+fYnbMQSI/0sMHiQ+DneuLWyn0lBr8Xg5Xv9Q
         7zhycf9FITmmKi+8E2lTu0haM9hdXgG7RZ7WeU0pkT6NuCoYMrlRWRP3tei70DCkVP69
         +8XaIVlLl3JQYD4Jy9TGl1nXsqJGvsgl90n5f5COFds0X8BmjT5TFWA9lo0dAmQcxKNC
         EUW33H9pOZNh88oUOhduDTBoyXaigIl18N16lkuHlVz8WfywTDoyDEANGyTgyquywSdZ
         1ksnKRasX74nOIqU91f7GCDgyia877ViO/GBMAyLNgpzrKu19DkpBcIL+yqOsif5xBFZ
         6Jlw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772801782; x=1773406582; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=G1h3CA12TR3DUwT2sEpGipCt2aGRjxneEfQ3TJDN9mA=;
        b=ogXpuob8Idaca+LX/SbzjmftcU/lYUJ8ZI9oZBLY9GwwtjBzdxSBB3kCOMONwIuPoB
         YsSmTx4syeXgTNQTU0VAiLfiLXzfHFcOMiayOfUvex4R2c5ZCjyheMkDrKaYYduilwHH
         h+T1nWxilohlQFfY1aeRLPHR1LvAGBQwrr2NmRO3GGHcWAK3D1WBDIGmPL7+LOpPRmEs
         hw0Eq2cDJylOYrSf3mLUpd1CKTCAwflaFzaBQEm0g5yMgq3yzGlWKSqayzyrNNvbjRvy
         K00ybSHzxdrEB7GIrskGHuYnqdBGtk2q/0Q2P6Z8xim1akUzhFcOyvHJmtoSLRJtJTmV
         RTDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772801782; x=1773406582;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G1h3CA12TR3DUwT2sEpGipCt2aGRjxneEfQ3TJDN9mA=;
        b=lp/QsiE8DO+u3OblRT31X0p3Z0LWtvaqdjt7fdzSUjIzK9C1qBUMb3I61MfqVs+NvF
         YHGXRHw50hW1dXmdhR9I7rMKhKhmai1xeBwN6EvR+zIBsg17T1bqHAZOu4H/ZUAI0JzV
         ue+hpiRUVVd3gIVhlGgt/dXkbUlXrsIT0wT9LXvivHqe0GoE6H2/DCeWzv7Y8JeEoihn
         amVC/FplJEV5/hdhXvsd67QiSaoQJS4cshAIqG1+38oJh+Vu+92UZKz1LeRk1BFlPIKD
         aHGJV44R9g1DCHcaC1seGyLpUKSJyhk76+28siIAnlsTWoIALGcu5i0DX+cR57WwRlLb
         hsag==
X-Forwarded-Encrypted: i=1; AJvYcCUoNfNfff2elp9GwqoKzBxoNiuGuEOHmSEe+K8sOS9qa5zRYdAsdl1IagCRhUDWCCT5l+d6MfTfMa6s@vger.kernel.org
X-Gm-Message-State: AOJu0YwJg11KO7eCvncI++O6SpZk6/rFZOIFFCnBWmlYWVlvxmwcL9uy
	5I0pSqhpAKDjKU0bIwAxH2GUkDi8htoPnhfrd9PL7OhhhHuvdW6mD64AKQn1RhQAZmh+qGoy4RF
	6Qh6Jxvfu/R33A3x8/vTlanm7aaWzxC3jGHwDvHcPeQ==
X-Gm-Gg: ATEYQzzBECgA1jbrNEVgUmIcPWca1LfOksPfmGzh5KVwAXz6EYCHHd+VXYi+gnqK+B7
	VgtjjWwN1Q8pkC6blhPzj1q+S/DnlyTpSpinDa5MQ040KfVo81mOtP1TldLXFT3juCOQOr76Ty0
	TbxTBGKuDVL7foNQAVlQbojQ3hpHxbdoXtYx1b+TIkgrN7zX77XlRI+cBZdtHMl5ujm3ueMoer5
	fIjetjF0UEc9UVS3UGkBC4dHQEeVP2DAbstZ3RVKfGfPMoLhNmF+h+dSogA9aHOWFvwQXSjRuD2
	O+/gNC1XakaBrJlT4RE=
X-Received: by 2002:a05:6512:3042:b0:5a1:1d8c:42a6 with SMTP id
 2adb3069b0e04-5a13caae68emr693718e87.4.1772801782038; Fri, 06 Mar 2026
 04:56:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306112742.64235-1-ulf.hansson@linaro.org> <3eb61c4b-2902-4a62-8246-4bed683fe326@kernel.org>
In-Reply-To: <3eb61c4b-2902-4a62-8246-4bed683fe326@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 6 Mar 2026 13:55:45 +0100
X-Gm-Features: AaiRm53jQNANP_kwu30hFxjm3QLAerKyKf8WmQi4bAp-DnbOlj-A2lK700SBqDI
Message-ID: <CAPDyKFosu5=gAb0QzhkACO6RhXkOFNiKKOSdwrDsezT-bx4U2w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: samsung,exynos-dw-mshc: Make both
 clocks required
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Ping Gao <ping.gao@samsung.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 32B042212B7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272079-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:dkim,linaro.org:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,samsung.com:email]
X-Rspamd-Action: no action

On Fri, 6 Mar 2026 at 12:50, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 06/03/2026 12:27, Ulf Hansson wrote:
> > The current binding allows one or two clocks to be specified, which is
>
> It allows only 2 clocks, unless you meant that referenced dw-mshc schema
> allows one clock. I don't see it there, so I am a bit confused.
>
> > wrong, as both clocks are needed. This is also confirmed by looking at the
> > exiting upstream DTS files. Let's update the binding to fix this.
> >
> > Cc: Ping Gao <ping.gao@samsung.com>
> > Reported-by: Krzysztof Kozlowski <krzk@kernel.org>
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  .../devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml          | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
> > index 27c4060f2f91..3e560dde714e 100644
> > --- a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
> > +++ b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
> > @@ -42,6 +42,7 @@ properties:
> >      maxItems: 1
> >
> >    clocks:
> > +    minItems: 2
>
> That's redundant, 2 clocks are already implied.

Doesn't maxItems mean the maximum number of clocks? And since clocks
are required, it means that it's perfectly fine to only have one?

My points is, we seems to be requiring *exactly* two clocks, no?

>
> >      maxItems: 2
> Best regards,
> Krzysztof

Kind regards
Uffe

