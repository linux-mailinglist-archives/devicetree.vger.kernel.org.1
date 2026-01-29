Return-Path: <devicetree+bounces-260692-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sK4hDPXAemk3+QEAu9opvQ
	(envelope-from <devicetree+bounces-260692-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 03:07:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 570ACAB029
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 03:07:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C7E9A3002F6F
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 02:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AD3232B9A0;
	Thu, 29 Jan 2026 02:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J+Eo34J9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D943469FA
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.215.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769652463; cv=pass; b=rbtXr+APM9xj/aqSeRmdOoVMTD2OSAy+iSXeb2Rp7nLHFuQV/uIXpHS520ARGM7o6EviRehBMs9JEPuY75bgqLh8e9uISSXbETd3GXL0vkRdZcyz1CXxaonxMRrTdeJtqiD6RviOxAH5llb5nDPpHJKxA3TFR4OAQHfzzFuwOuE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769652463; c=relaxed/simple;
	bh=oDVuCZ5Gx/glBVCpME6YGkCQ33hbuczk3pr5ShKRnqo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZpzFyp9MRvJuEDCek+qWkg/hbDF/TMLYTME46L4xDt6eDqbJ7eaLJeSSgs9OsL7d8t8JB0cr+vOeyO3ipssrkrunXtPWt34ZoG8ELPpXq1HOSrFAGP6GMrZI30Jp6t/bvSBEF4Ig1eKCmpeH4wcg7bVSnM/4h4aS8mynYn6R4F0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J+Eo34J9; arc=pass smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-c05d66dbab2so298998a12.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 18:07:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769652455; cv=none;
        d=google.com; s=arc-20240605;
        b=diYrZoakS+yhRttO8Eh1cCtw8Q8X8DJFuVC1967Dunzc8kr+ZyRKN3GBW03ALRMtnW
         AubtNK5HWV1H1c62DMN8WJ4wJXEYNTa18xCrl7J3qGMGTvD3MQJvgrDNhRz8j06+0Jfm
         HHEsjLAAg0mgfWVIgSx0KbegyegiGIxIPa93QfXUaOTCc0fXzvcDRdQKBMj2v2TpqPFA
         66eh4+3CKjl1T5g0/npIAZDPVgXNwYvIgX/M5hK9J3rnVaEDN9sisPM5M8Kt75SOt2UN
         aRO5T0125r7eRa6+kh7RFpiaPswL2RazlYif0O0ILcXvmIXkLDMAcgE/XXNuTbRtojgj
         ouXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/EHsl0dfhwfqP6ryiD+Uuzynxf8kJEamt13Ja96DmZA=;
        fh=B/j5dcWOvcyhDA51OOZI705Pqduul3x/w3IlDNliC04=;
        b=YS5sajgRXjamHBhay3Z8FiN01jvHdp1/nQKD5aHousw0ksU73gdQ3HW3EfOoJUZtP6
         10ouayBa9i9PCFeNsS0PNJdnPBhCySda/sdxwdUVVInHoLDIMYTh/gNC7XAqcDvYCk11
         441sXAqS9biOBssvm8qQqgji/LovRRCrlgHCewP0xHueQ1j/XahsduNjsPev3f7nvukZ
         tJcOKyX6F7S2e2IpinvlF/buj6TEdC190Gt82zSBJ+GNnRqrlt7IgOiM9CIN35pq2QJl
         18kN4EqHFqBs0TExl1cHebQjbSAomFHDv0u/t+nqy3kPSTJKtRlBdpw+kqHXEyIE2vQb
         03VQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769652455; x=1770257255; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/EHsl0dfhwfqP6ryiD+Uuzynxf8kJEamt13Ja96DmZA=;
        b=J+Eo34J9bRemQ0iHJkbQMh3NZHdr6faIJb2+gS6mDUeHGJymdT8MTMpUXY25X1+hSs
         +aS3kHspHL69+knqIGQrHHDwc/appvbBwm9FNbxcSWyq6t6IWmXasPwkNQedmsJ9zCsC
         CUfBxM5Tfb6usYXR/6/fJ9kSi3igDrfJpVQt3DM4I71T8lJtuiwD8RcWqzrOExdIGrmw
         w16pO2x6ZfUplYUQwrjwwsIkiQCChqdJ0r0kAn+HjRqyw/XMT7RusieH2IvQOt+tLyW8
         G5i7HNkJ1hSiqaNFlho98uZrXSLVGP9fLF5Xi7M3Sn7Pm+Z5TsEiWZ+UQ5nu5p1GyLvB
         ORqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769652455; x=1770257255;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/EHsl0dfhwfqP6ryiD+Uuzynxf8kJEamt13Ja96DmZA=;
        b=PGHr3eUDQlZlml1NQCo1SF1yo4NF6kXmGdu5OGC1cDdBl+aEEjowSuIAkoO8QhibFB
         yLaLrB33IGfZUIpgcHccjeP+TGTlp3rFt2qXsz8e6ZSJj+xTwutg9tKVWPg079T6uwde
         iYFFBAaI5ysj55GkEwFuXd+bEorTBAzIrcal/oqRrB9Jd+AA8HnTVDyTniaBk8NlrQnP
         T5lFQUcAmf0QAfPYUPIrV8H85cFf5YIsFOpqvIENzSOxpmgkPU31cx0RK4Zr6uozJAn1
         fkHJTAsjFuSO9viaJ9gRYhGtaURssoOZE29nITheGrFTQQgVAuJ/6YvvKVrOtMhZSun7
         0AWw==
X-Forwarded-Encrypted: i=1; AJvYcCUYnSE+6ITARhg7znyoiE4dClbp8Y/8umW1xdg7xpz+OuXUoLXZjCHG5PZnVk4lPkfbyFhgmk3nBCXw@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7qOgJ0QLLi8A/t2dPWpE/juHUSCawpQitbBXZYDnz+Lrh4yMQ
	QJMYgsRiKgRUTPlPg2P8MdP0ivW0pGzdKk0XU3H8kM7VCkrW/l0KF8KIZddwQDZn0dlasfCjlu1
	CAzcRFv2ZhTiFrXLca8m6ejumzrZDsS4=
X-Gm-Gg: AZuq6aKhz9AO35bbNwJHZzO1Cxkm6Qqi6o+21dXqGA//d8pr8QsDJeA//nNM+D2gFIw
	cA768ju/S+AVd6CYLA36WvH930WNEw/vuWLWGR8jOtvKuUkn5098o2t1PNWiNYdUOFe83HHRK+p
	xmCa+tAhiUad92zjCFIs1/6MjnPNIeaHu3So/qmUvcemJ2ZJND1CMunAaEx8LZftYQIom+OnO/Q
	L0SzZ/V9jUeRHCZWerkTGcB9fA7shlhinPZtOS+esmPV67ley2EeJcJdF5DbXXmWrK8188=
X-Received: by 2002:a05:6a21:9d8e:b0:38b:ec0d:51ed with SMTP id
 adf61e73a8af0-38ec658522amr7340595637.69.1769652454754; Wed, 28 Jan 2026
 18:07:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128071853.2602784-1-shengjiu.wang@nxp.com>
 <20260128071853.2602784-2-shengjiu.wang@nxp.com> <20260128-daft-rabbit-of-abracadabra-fe3274@quoll>
In-Reply-To: <20260128-daft-rabbit-of-abracadabra-fe3274@quoll>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Thu, 29 Jan 2026 10:07:22 +0800
X-Gm-Features: AZwV_Qg-rrUV06PleoYM6kICczpC4hfgzfJ0lPzEIvMPV1d9IUOkAJEm-OUeTRw
Message-ID: <CAA+D8AMb-QPuqXfb4RyFo-9WTaH78WrAnCGTaS3DGXBP74DT6Q@mail.gmail.com>
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: fsl,imx-asrc: Add support for
 i.MX952 platform
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com, broonie@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Xiubo.Lee@gmail.com, nicoleotsuka@gmail.com, perex@perex.cz, tiwai@suse.com, 
	linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260692-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,perex.cz,suse.com,lists.ozlabs.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 570ACAB029
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 7:46=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Wed, Jan 28, 2026 at 03:18:51PM +0800, Shengjiu Wang wrote:
> > Add new compatible string 'fsl,imx952-asrc' for i.MX952 platform
>
> We see this from the diff. Say something useful.
>
> Also, why power domains are not required?

Ok, I will add more info.

There is a power domain on i.MX952 for the wakeupmix system that
ASRC is in. But it is enabled by default,  ASRC device don't need to enable
it, so it is optional for i.MX952.

Best regards
Shengjiu Wang
>
>
> Best regards,
> Krzysztof
>

