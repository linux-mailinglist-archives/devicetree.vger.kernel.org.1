Return-Path: <devicetree+bounces-265278-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJJ7Go3cjmlSFgEAu9opvQ
	(envelope-from <devicetree+bounces-265278-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 09:10:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3F6133CF3
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 09:10:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A703F300B465
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:10:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B71931985C;
	Fri, 13 Feb 2026 08:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d2El5B5X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC6D319601
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 08:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770970243; cv=pass; b=h6t7ulgKc4mTgjY8XC093ZtdcGbjj1T2MYJQQzYt92Z1TkO1mgJOtkuaQ/1vVJlG/JI3mUZWR9MUwXAp+TRSbgktnAth3umFlmYnBTvAJPajQDMqdsS3sHn4mNFCSi2pxdtHlgr9r/fQLTsg4uP8DvsNJprYX5GwVsybIfHGObo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770970243; c=relaxed/simple;
	bh=GLp4dFZH5Dh0/9zN2TZWcmJzLYuy4JOfbFcHtRYGlyw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Er9cVstv3rTNbKEj7J+kdFA4/UsIuFP5ccIsAk+wQSOkqZ/BR4NuD6chbF09uZMgl3rZS3F3varn9kH3DFoSQwgMbGRM/pkpY9d1Ro1KA4i4CvFShGJiAjCTYqmHWnFZToJSEOBPaS+7m96k8IbVTNJyC2aTrafJld+Jbpiqp1Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d2El5B5X; arc=pass smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso4472875e9.1
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 00:10:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770970240; cv=none;
        d=google.com; s=arc-20240605;
        b=F7KdHipB2HLB22GSWeRFsG3GUQXi+Jqmw8U8g5iUBlhoiRF3KOZf+n0xmVLEXCg59Z
         W3lYtF9nEhHs4B60XB044eRElCD1+QS+W3uTUs8Mt1OlmJ8T6cxZtacUErVmCwVSeCz7
         1iqSbEKA2ftEaSDtdfiJcKYku02865hi27ikmObXImNlm8fhDH6SWowBqWCvVDm6KVGe
         g+MtBCoZFnQDCAlZiU7/ElO4Pcx69QDsxetldr3zPakQYyndfB7ptYUEe2ZS6P71+nhr
         huiDv2ilDvqYr4csvIgfW1DQpEProGfVZZFNf7FFZGP0O5i7TKFBR4uAXT0eCH0a3WFs
         l8AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tmSI2jAhYtI7ZLsx4RzoCyPtRR9eH6Xuh33KxtJVVj8=;
        fh=LZP/va64qgcsqSm70KTZ8CkHEIwyHaaNan3Ik0Qx5sU=;
        b=Q0IvgLgs39R813+wB/T9vzTxDRl/C/Cne5SCUPwXxh7+iLhxVKx3OqvX5Xz8ut42JN
         2W0QJaPm+DWapQ1fjobgtoNrZpPvDSNUH/3k4Wtwl86607WNB+BL8ZN8e4RHjBSrQH/z
         AX+HppuSQcQ1+4YvAHA7UH6G0se2mNJNDCQcdBkEXgJxvTmvmrgsg8kgR+5zAfyw3+cY
         KNM5uDoNWZ+fTV0N8UErCK13Y6iHOjpslr0E8VnQcoYgPD5vk/eJ3lZfdPP+7V+gYruv
         SWeAbEuX/f1ocLTJuh+pHsU+p70lLAfeRMLIvejF/kyZMLZyyk71SfOXXeb7BeF3NYtf
         azUg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770970240; x=1771575040; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tmSI2jAhYtI7ZLsx4RzoCyPtRR9eH6Xuh33KxtJVVj8=;
        b=d2El5B5Xq9SZztPoS76WzCAXfaYqiNP+iFfI1ZGACqTFFYUqfcfa4/4kFvjmXyISk6
         kgQt4AkaUWGrc8KfuxihBHlpsX5LxWItsTQnqGYFgnVC4Rr8Qr1eVvpiFGJu8fBgQBQ+
         AetYg4HJ9K+pFHVqYammgKBrVJclC/tMgK7mzFIfcytJKuNN4QbXNffVTX85ok3AcFVq
         eq9KgSFNntzj2Xkh8j8723gDrAgTf6BABZfmpviq3QZAaKuUNkot+rIJtTnKjNX7+Fsh
         fZT/bosiZUotTPTQskt5Ma75WFV99gXIHpa9G+CvMnRi/weBXKGmdS3/vgazH9AW+M+W
         mmLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770970240; x=1771575040;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tmSI2jAhYtI7ZLsx4RzoCyPtRR9eH6Xuh33KxtJVVj8=;
        b=pIV/yBN0VoHq+k0NTbV7uz2dBlN/5ZXO8xvKiesx66A72TSnmn9bpJ8AkVWeSPoRvl
         mhBjC7aW5t31grjnoKLoyDbckfRg7+K0SVZ2JTUks4soVKTV4+LV7uuBtjcIsaFKCJx3
         FJkEc6oCcv2Wpay6/sPgTq2UVuKXGb+4KnG8hyvL7dR7bs6lT6PCuO8rHEwp8ZWGBetP
         DEf0SnE+vxToL4s51OnboGhbMMpA2tVygINReEIB3VxscgGTY/EUqsw0GlvodZH6+SCI
         UrUjQObGrnwxhtBJSigVV9ygzEFQghILt4+gvyJsupb4aSHi1gPtSsqIXl2tYkZk2xGT
         KTSA==
X-Forwarded-Encrypted: i=1; AJvYcCWcUJcD57BAtCp7YtWjVq0I17TlPx3ofacMHNZX++AUVBLSMCXnL/eJHPFxc+/cZFvQVBpse4NJwv+4@vger.kernel.org
X-Gm-Message-State: AOJu0YytOlzjacIZwIrvvJ0jsyFCsFfs31/B+NcwRnw0kRf+s+vCxpVh
	mOtnVQeQQKckkIuqA2x9001yFfGu/br6rE0sjUIyUk3U0wgXjT9+SJXxyhQ8NDXV33yMQufP6tD
	h7fWpKy9sriLfgkPKrlvRM826c0Ssz32oVZkr
X-Gm-Gg: AZuq6aLeS7C5IbcpDgpZxmxXnl+xdALe69kwNyFeJAmKdr7e4GaxrffEi8IhMUqDQ44
	UkVBH5Sh0cb4SbX7pNIxR/mkHrJOvfY/QZEw4m/t5R1PllAEU3tw4Fm6kqAeoY+YP7G8po97J/t
	alOQj1gMGSbGdKrR8B8f/FOlUBwR/MBpQncSHXFktuOwznBb1ANR5UqBEKuoLZhY1tRQCFBEYXj
	xXSPPJfhnQ63evZYtikfVB2cS9DKFA/eys7YHg131D+qW2OMQ2d1dlwCeNx01ZoPEWTMDRxGijW
	7aegkBQ9
X-Received: by 2002:a05:600c:3d87:b0:480:3ad0:93c0 with SMTP id
 5b1f17b1804b1-48373a5d6d5mr12271545e9.23.1770970240070; Fri, 13 Feb 2026
 00:10:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126191536.78829-1-clamor95@gmail.com> <20260126191536.78829-6-clamor95@gmail.com>
 <3152548.Lt9SDvczpP@senjougahara>
In-Reply-To: <3152548.Lt9SDvczpP@senjougahara>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Fri, 13 Feb 2026 10:10:28 +0200
X-Gm-Features: AZwV_QhSOgiPRAPx2Z0byJxn5tRA0sX_heVg44H-sW_-S1oDy8g3MrQUXJy_z98
Message-ID: <CAPVz0n0z7gGmGNk2Kj08ZAZ5=8-+TZ5nQZdaAYVBb=zd6Cb=eQ@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] ARM: tegra: configure Tegra114 power domains
To: Mikko Perttunen <mperttunen@nvidia.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265278-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,nvidia.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: 4F3F6133CF3
X-Rspamd-Action: no action

=D0=BF=D1=82, 13 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 05:44 Mikk=
o Perttunen <mperttunen@nvidia.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Tuesday, January 27, 2026 4:15=E2=80=AFAM Svyatoslav Ryhel wrote:
> > Add power domains found in Tegra114 and configure operating-points-v2 f=
or
> > supported devices accordingly.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  .../dts/nvidia/tegra114-peripherals-opp.dtsi  | 1275 +++++++++++++++++
> >  arch/arm/boot/dts/nvidia/tegra114.dtsi        |  126 ++
> >  2 files changed, 1401 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/nvidia/tegra114-peripherals-opp.dtsi b/a=
rch/arm/boot/dts/nvidia/tegra114-peripherals-opp.dtsi
> > index b40a1c24abab..5e66c1dc8fb7 100644
> > --- a/arch/arm/boot/dts/nvidia/tegra114-peripherals-opp.dtsi
> > +++ b/arch/arm/boot/dts/nvidia/tegra114-peripherals-opp.dtsi
> > @@ -1,6 +1,76 @@
> >  // SPDX-License-Identifier: GPL-2.0
> >
...
> >
>
> I compared these core rail opps to what the roth (SHIELD Portable, T40T) =
kernel defines.
>
> The HW 0x1 (speedo 0) opps match process_id=3D0/speedo_id=3D0 perfectly e=
xcept for msenc/vde/tsec where the curve ends at 408MHz at 1120mV. The roth=
 kernel also specifies a process_id=3D1/speedo_id=3D0 with almost the same =
tables as process_id=3D1/speedo_id=3D1. process_id=3D0/speedo_id=3D1 doesn'=
t exist.
>
> For HW 0x2 (speedo 1), when compared to process_id=3D1, the opps in the d=
evice tree are in some cases slightly conservative compared to what the rot=
h kernel sets.
>
> So I think all of that should work (except maybe the msenc/vde/tsec curve=
 extensions?), but it might be that there is some further potential on T40T=
. Hopefully these values are actually just a difference between T40X and T4=
0T.
>
> In any case,
>

I might not have used the most recent T40S source. HW 0x1 table in
that source looks like this

_clk_name, _speedo_id, _process_id, _freqs
                                900,    950,   1000,   1050,    1100,
  1120,    1170,    1200,    1250,    1390
"msenc",   0,  0, 144000, 182000, 240000, 312000,  384000,  432000,
480000,  480000,  480000,  480000
"se",      0,  0, 144000, 182000, 240000, 312000,  384000,  432000,
480000,  480000,  480000,  480000
"tsec",    0,  0, 144000, 182000, 240000, 312000,  384000,  432000,
480000,  480000,  480000,  480000
"vde",     0,  0, 144000, 182000, 240000, 312000,  384000,  432000,
480000,  480000,  480000,  480000

I might adjust table for T40X and T40T since my source does not have
speedo 1 / process 0 (T40T) and has speedo 0 / process 1 (N/A) which
is odd. While creating these tables I assumed that speedo 0 / process
1 mapped to T40T and since T40T and T40X are linked, table from T40X
perspective looks conservative.

> Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
>
>

