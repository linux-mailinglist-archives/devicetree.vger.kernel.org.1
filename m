Return-Path: <devicetree+bounces-269824-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIZhKMpFpWkg7AUAu9opvQ
	(envelope-from <devicetree+bounces-269824-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 09:09:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E641D46F8
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 09:09:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 90E59306FE66
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 08:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B07337BB8;
	Mon,  2 Mar 2026 08:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j9CNzJY7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73600309EFC
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 08:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772438564; cv=pass; b=Gvm08853ntV7zuIV0kgn7q1/nZ0Oz44KyBgj90V5HmQe6xwN+7NPSwKMWqt8JueszW+x+vSGNXPmJKN2GNOk2WX/4/ZX582ozjGmajL6o/NUw2rPpz6iCPd0rgc7BaCz6d7XowmYYNh0rQY8fa5kwVwZWSASznmtCz27twXXPDc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772438564; c=relaxed/simple;
	bh=vjkn4ApR2SwjC9QQbFTj/Obyb525qHPBGoJ4zOPSnPo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZmRNa2ruXT/AepgxYMvcv4Co3zvWx7mWpbVBw9G5Pmyonm5ldXLIGnqY5FYX+TvWo5uyRytUeGmBCWy9Y8pejMmPqyb0ssTFKncJKp6cNoEhecb3UtrByIEtvMy6YYG9TKw0a40oR8HubW4QxPNasw8neJFC+DZ4Cimu9NbAqEQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j9CNzJY7; arc=pass smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-43991064db8so4276417f8f.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 00:02:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772438562; cv=none;
        d=google.com; s=arc-20240605;
        b=F4i1pOhMwUigsEqSPgvAfJj/3ther/9bWwMJ4qCjQ9kIFRbojfNWY7U55Pcn3ipCxZ
         wypJcwbHU2eub75c/6E4is+2sTfvOI5XzRsYcXi4o7KyejQ8xqteaRJcuIUgJhQg0P5A
         FyWrUVNtaIr7wTH/62tyCpcZ6Smd3tRmN3GDUZnupqv7vJOYs5Zk18of7ym5LC8tDji5
         BI1ls6ycZRc6L+ipC3PYNMffNQvUgEJGAle4PzEo2JxQ3LTl2ikZxTf+2ry9QzXFXSQh
         RFd+mYOIXRv0wkTBDDNalDHTIYcmpevVNoEEJF3wgCAaw41uNaU+rSMBr4ytz3/8F0XW
         s0Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=H6APRDcRhUjIkR+M3BFPhhG/NfjMrz+PATN7/PzHvm8=;
        fh=45eOijZ4/nOWyKAyTVCOtHNpJg+c6h4zpPtNnU/HB40=;
        b=YSNSZALRDHKfH7KgKDbZlSDfiGmex/AHLP3KqUFddF9snwILFDsPDu6kZqfSUvrUvC
         5irixIIPKKVLhctnPuLfah9V39BN5hSxsWQL2ivp5ddTJzlRFSPt6z/k583RGtyqCF6u
         vRdErRd0aHsKKqQf6MQTWHtrUJ/8CLpqubhG2V8Xk4t3sxBmHMGY6BC+R16SJHn07K+8
         BChqCq8fqgFSGmvBLNZPrpoEQki5VwXOcKGX6HGQBvx9UU59gg+b32j2d2R/qLi3Z8Y0
         dXSj+wsbxk1VwteHJpU/4R2xsJASVOKno0bK/dyRcb0w9FszRNVcdsuhe1fQLOb0m900
         a5mg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772438562; x=1773043362; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H6APRDcRhUjIkR+M3BFPhhG/NfjMrz+PATN7/PzHvm8=;
        b=j9CNzJY7UuNEHg0M+XIAyq8fqv2gsARtv0EBXfE5pR6JiLkoMF797zSQoCM8fZUay2
         JbJh+9OVeBuMYBQHO4I4nDL4NQZaX8Mob833Cz4ggHEG206+q/rFieMBUO0w9nSKYYUN
         in5+cc1VU3oVoopVW45IcGgCOnH5PdEMSx83ESMkkYnVfH4U/RV9IKuGR8r/TblCf3/y
         EOrH5d/Z2z0cfGV2WQbi0M13QmT+kqNyhBeLxRyJoXRVbi/3SPzeWn5oleIRmKmY7Juo
         f89ywFr/lEBJLps4KRwBQAinHtFv9iWWQseh8GGVXXNqStgUe7tiIAwvjthGvBgGb5VZ
         1Uuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772438562; x=1773043362;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=H6APRDcRhUjIkR+M3BFPhhG/NfjMrz+PATN7/PzHvm8=;
        b=DLvxFHbyqhG+Y7zL1ApejKP+GfE/9J6fAkQcIyI0oOsE4+wyBNDITJRIMc0dbaY3sl
         /6A8gYCz9HIPzJvSqV71iiuxbsYwf5YE7eewY4pdhuo+SFOuyWpKw3gfrR8CQxeaMh0y
         F0SKY/EJhMxGXH8l+JuXJpQIsNCHeWkgqQl7G1y7S3Y0UYijXLk84unOE/cj0/IZumqh
         UOUFOjmalD8bReoqHneaW499+gNvJ9bkzCkspsrV8ik9OvQElO1722LOC7ejOHoDLKn4
         SGBiqNmfUBgDoX9JliW8jO3nih8FrN1u35waFKRflyf5GdpZUTAdG21uWIZL17SPZKua
         CHsg==
X-Forwarded-Encrypted: i=1; AJvYcCWC/zB3u97pJwGIrlECwkb8Nrd/Ick4Z7MZauiXzkElNtSJkPOun0XQnOrHyt2fPjQ1svUUEyI+a9qp@vger.kernel.org
X-Gm-Message-State: AOJu0YymRi57gU86/eZe/1apkI8on/vlrE+fbJsyfbvVblBd5yWcwmlD
	E1KwLRCEUCbCIjLFaLDzjf1XT5gIc3pIjirKDC3Os5vj6fnQEPOqkOCq4qJabDcle5Fz9yoVEPi
	8jKSMBZ3fry6PivKbK3FLFDphDaE5kxM=
X-Gm-Gg: ATEYQzxhoQKS15es6uLifM9XFnmMizktR1j0JuG9uhggdVQdWJQXvp6QJcGAYnwOCOZ
	IXifgjNowGbTkzzWr9HZ0tomcKdEJ0Ay0tWsPvOX/Pk4q2O4JIEKkQm3Qfq0q8ebtx2+A9AFu0W
	f8kbbcLwSA/B0W9THDOCEJwR1rM7pNt6YGhFjM/j8a+7iWs76FUIk/r7y+LBl7P85mudiJurAem
	RNOCoyC4vVRp3rQqNBDDAhlxUQdXHNbFXdqaWPGu22lV4GNA+UlfcOUqYg71DmzhjA+XoKwLb71
	o+FdpL9WIEb9KwEcY7w=
X-Received: by 2002:a5d:584d:0:b0:437:67fd:ef5c with SMTP id
 ffacd0b85a97d-4399dddc7efmr22120608f8f.8.1772438561482; Mon, 02 Mar 2026
 00:02:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250828055104.8073-1-clamor95@gmail.com> <tdknls7jieu4ple3qhmdqntllmctks2auxhxzynwjjmgl3hnx2@nubqlzpgohwf>
 <da8aa4c5-4aa0-42f6-acb6-55d37cc29774@linaro.org> <amc5e3sffmwqguivwch6b5vtmlgu5dlwxm7bsrn6nd3rllbvxg@koqmavn6uuy5>
In-Reply-To: <amc5e3sffmwqguivwch6b5vtmlgu5dlwxm7bsrn6nd3rllbvxg@koqmavn6uuy5>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Mon, 2 Mar 2026 10:02:29 +0200
X-Gm-Features: AaiRm53AlW0Vs5liTlfz2qko8M0ob5L9wn1q8gJB9M2tLSanbYjxsAX2ISoySnw
Message-ID: <CAPVz0n1XMpnetG6JKhTLMxW3WNSSAV0Sr52KrZc=Frt=fmSKYA@mail.gmail.com>
Subject: Re: [PATCH v5 0/6] thermal: tegra: add SOCTHERM support for Tegra114
To: Thierry Reding <thierry.reding@gmail.com>, Thierry Reding <treding@nvidia.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269824-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,nvidia.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 44E641D46F8
X-Rspamd-Action: no action

=D0=BF=D1=82, 12 =D0=B2=D0=B5=D1=80. 2025=E2=80=AF=D1=80. =D0=BE 13:27 Thie=
rry Reding <thierry.reding@gmail.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Thu, Sep 11, 2025 at 08:56:12PM +0200, Daniel Lezcano wrote:
> > On 11/09/2025 18:27, Thierry Reding wrote:
> > > On Thu, Aug 28, 2025 at 08:50:58AM +0300, Svyatoslav Ryhel wrote:
> > > > SOCTHERM is thermal sensor and thermal throttling controller found =
in Tegra
> > > > SoC starting from Tegra114. Existing Tegra124 setup is mostly compa=
tible
> > > > with Tegra114 and needs only a few slight adjustmets of fuse calibr=
ation
> > > > process.
> > > >
> > > > ---
> > > > Changes in v2:
> > > > - no changes, resend.
> > > >
> > > > Changes in v3:
> > > > - expanded desciption of "thermal: tegra: soctherm-fuse: parametriz=
e
> > > >    configuration further" commit
> > > > - changes title of "thermal: tegra: soctherm-fuse: parametrize
> > > >    configuration further" to "thermal: tegra: soctherm-fuse: prepar=
e
> > > >    calibration for Tegra114 support"
> > > > - Tegra11x > Tegra114 and Tegra12x > Tegra124
> > > > - ft and cp shift bits dropped
> > > > - clarified tegra114 precision
> > > > - lower_precision > use_lower_precision
> > > > - nominal calibration ft and cp hardcoded into SoC specific structu=
res
> > > > - added tegra114-soctherm header into dt-bindings
> > > >
> > > > Changes in v4:
> > > > - fixed Tegra124/132/210 cp mask
> > > > - dropped TEGRA114_SOCTHERM_SENSOR_NUM from header
> > > > - TEGRA_SOCTHERM_THROT_LEVEL_ made SoC specific
> > > > - adjusted soctherm node and inclusions in tegra114.dtsi
> > > > - dropped use_lower_presision and nominal_calib_cp options
> > > >
> > > > Changes in v5:
> > > > - fixed CPU and GPU hotspot offset values
> > > > - added static_assert()s to assert the TEGRA114_* and TEGRA124_*
> > > >    counterparts are equal
> > > > ---
> > > >
> > > > Svyatoslav Ryhel (6):
> > > >    soc: tegra: fuse: add Tegra114 nvmem cells and fuse lookups
> > > >    dt-bindings: thermal: Document Tegra114 SOCTHERM Thermal Managem=
ent
> > > >      System
> > > >    thermal: tegra: soctherm-fuse: prepare calibration for Tegra114
> > > >      support
> > > >    dt-bindings: thermal: add Tegra114 soctherm header
> > > >    thermal: tegra: add Tegra114 specific SOCTHERM driver
> > > >    ARM: tegra: Add SOCTHERM support on Tegra114
> > >
> > > Hi Daniel,
> > >
> > > there's a build-time dependency on patch 4 in both patches 5 and 6. D=
o
> > > you want to pick up patches 2-5 from this series and I pick up patch =
1
> > > and hold off on applying patch 6 until after the merge window? We cou=
ld
> > > also do a shared branch, but it may not be worth the extra hassle.
> >
> > I can take the patches 2-5. Regarding a shared branch or wait for the n=
ext
> > version, I would prefer the latter
>
> Alright, let's do it that way. I've picked up patch 1. If you take
> patches 2-5 now I'll pick up patch 6 once v6.18-rc1 has released.
>

Hello Thierry!

Patch 6 "ARM: tegra: Add SOCTHERM support on Tegra114" adding thermal
sensor nodes to tegra114 tree was not picked, may you please pick it
or should I resend this
patch?

Best regards,
Svyatoslav R.

> Thanks,
> Thierry

