Return-Path: <devicetree+bounces-265159-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AxoLqMMjmmS+wAAu9opvQ
	(envelope-from <devicetree+bounces-265159-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:23:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DA612FDE1
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0BD3A300C39B
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A386B24503C;
	Thu, 12 Feb 2026 17:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4cqJBmv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 812E4214A8B
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 17:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770917022; cv=none; b=k17ddNUiuCPidTYVD2bAKkN1oQTc+Lj61q3/3mwciBN7b91uELxOceBqk4zZCwtJajaQjYxSds6QJnR90FDWRckXxpwIoXn+xMSApQ1JAwcE8m126wqd2FeydVmAuDwaHj/n6F221MOEalKM6A+ZrTTse+a8qRY6Q849AOo6GOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770917022; c=relaxed/simple;
	bh=PXUOOzNqnHMX+0XnIWqWXRpUxu/0JJ4vrNFn8/nFqss=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gK7BjnjAfp8vT1AeWAuQqTiw+AE6Tj/tHNVwAKruH/KrME84y3dQso/fzcZBMexSiwkfu6JYmUynYNwyMLuw8yLPtkzqjMW9NgsD8BKNvLB9genMcvB51AapRCWcmlnybkTrj2Dc5z4+yc5DPfsH44ilNR6xtdgzGElymgOjv7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4cqJBmv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 634B3C2BCB2
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 17:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770917022;
	bh=PXUOOzNqnHMX+0XnIWqWXRpUxu/0JJ4vrNFn8/nFqss=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=q4cqJBmvcXvukKQnTyBEXAfOq2U6CrE080zMq6pRoXH9RcDF3Jj53d5Hiv9QKexWV
	 GD13xOf12bufh1npU4shUVOKNmzbgQjpfcS1OQxydQiACxbXhjinWCrkA+x9XZOFPy
	 xTNmoupasg950/KbrRZiQJnQokpT7CCq+oiCAtUgbsG91dBpq9PBvHqwuVUD3xMcZz
	 HkDsx87M5XRsvsvjdvsTYPApvBjUHR7jI9uVaxwkw/PSb/7bUU9ubscktzlIZhpFeS
	 q6j6jFEBwM3UyTSmkW89LGW6rwpR3fsHpkSmC0n9mPdOx3SykFO8dT1RcErjaCAKFO
	 9ka4GnEqid9zg==
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-65b9608a9adso2224697a12.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:23:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVr3G2mFJsymnOsnWvIeYRgYe1AKCFq2dpXyGSizATaPIsyF+nhUr/YzCYkEwvrjRG2yverGKy9I9V0@vger.kernel.org
X-Gm-Message-State: AOJu0YyE1skUZhfndhaF+s4T/cFo6bLfy95jjBxfmW634AFSAF0U53ek
	4o34F3E/DUNPcEpLBeVSSkIhnp27HavrCu1ZPcPa5w6SdIm7sxkOtyhjuUj5YZ7qozV2z0Kf4ba
	qL8zEGfDNinD1vysE6aXd2aw/WjT8hQ==
X-Received: by 2002:a05:6402:42c9:b0:659:3d7d:e38 with SMTP id
 4fb4d7f45d1cf-65b96e50d45mr2054024a12.32.1770917020827; Thu, 12 Feb 2026
 09:23:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211094736.88-1-hehuan1@eswincomputing.com>
 <20260211221017.GA3976151-robh@kernel.org> <b0805c4.368e.19c50c8c197.Coremail.hehuan1@eswincomputing.com>
In-Reply-To: <b0805c4.368e.19c50c8c197.Coremail.hehuan1@eswincomputing.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 12 Feb 2026 11:23:29 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLa+Wehi5SSOm6A4jkRMKMvB2J3OG7DR+aAwCPrS4jGnA@mail.gmail.com>
X-Gm-Features: AZwV_QhBYRB4GsWZrFbzudGCr8iVnYKK4zgVAcmHAZVw9ORJzGDwJrwJIogyyHc
Message-ID: <CAL_JsqLa+Wehi5SSOm6A4jkRMKMvB2J3OG7DR+aAwCPrS4jGnA@mail.gmail.com>
Subject: Re: Re: [PATCH v1] dt-bindings: mmc: dwcmshc-sdhci: Fix resets array validation
To: Huan He <hehuan1@eswincomputing.com>
Cc: ulf.hansson@linaro.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jszhang@kernel.org, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, ningyu@eswincomputing.com, 
	linmin@eswincomputing.com, pinkesh.vaghela@einfochips.com, 
	xuxiang@eswincomputing.com, Pritesh Patel <pritesh.patel@einfochips.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265159-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,einfochips.com:email,eswincomputing.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D6DA612FDE1
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 1:37=E2=80=AFAM Huan He <hehuan1@eswincomputing.com=
> wrote:
>
> > > The binding defines tuple-style reset-names items for some
> > > compatibles, which implicitly enforces a fixed array length
> > > via JSON Schema.
> > >
> > > Defining global maxItems for resets and reset-names causes these
> > > constraints to be intersected via allOf, resulting in an effective
> > > minItems equal to the global maxItems. This leads to dtbs_check
> > > failures reporting reset arrays as too short, even when the DTS
> > > provides the correct number of entries.
> > >
> > > Remove the global maxItems constraints and let the per-compatible
> > > schema branches define the required reset array sizes explicitly.
> > >
> > > Fixes: 30009a21f257 ("dt-bindings: mmc: sdhci-of-dwcmshc: Add Eswin E=
IC7700")
> > > Signed-off-by: Pritesh Patel <pritesh.patel@einfochips.com>
> > > Signed-off-by: Huan He <hehuan1@eswincomputing.com>
> > > ---
> > >  .../devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml         | 6 ----=
--
> > >  1 file changed, 6 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci=
.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> > > index 7e7c55dc2440..8af55a53b569 100644
> > > --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> > > +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> > > @@ -49,12 +49,6 @@ properties:
> > >    power-domains:
> > >      maxItems: 1
> > >
> > > -  resets:
> > > -    maxItems: 5
> > > -
> > > -  reset-names:
> > > -    maxItems: 5
> >
> > No, add 'minItems' that covers the whole range needed.
>
> Thank you very much for taking the time to review the patch and for your
> valuable feedback.
>
> I have checked other vendors in the kernel that use the resets property.
> The minimum number in actual use is 4 (Eswin uses 4, others use 5).
>
> Is it reasonable to add "minItems: 1"?

No, if 4 is the min, then you use 'minItems: 4'.

Rob

