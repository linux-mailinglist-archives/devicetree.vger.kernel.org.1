Return-Path: <devicetree+bounces-325109-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CKYpMDnWU2rQfQMAu9opvQ
	(envelope-from <devicetree+bounces-325109-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 20:00:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FDF74592E
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 20:00:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=b67a8uQD;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325109-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325109-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C609E3002501
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 18:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9BB5367B99;
	Sun, 12 Jul 2026 18:00:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB25242D72
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 18:00:19 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783879220; cv=pass; b=RJIv+yn1B2shAez/ip2is+tFr8QjYCwbwzJ5Vq43GKkzlPSExvuuevZVPCjH0qOIMZkeTmxD1gBoTHkPkWdSvUjSXeM8sIS4bZaYAiHbsAG4JWaI93MQcX3tctUzEFh/29fIiC7ZPceOXJa4gkLFBFkH4VyKd8mqFm6kgFBEzYA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783879220; c=relaxed/simple;
	bh=cRxv9sy68hXENvOQFEeBEAjqu2eRG7JdQ1T4qGjfx6A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WKmYQGFvNtrDzeZ/M0Qq2XdYm1GkuSIgA3P/MDJUn7DZgcdnz2m8E2h2qfEiTy94T7l0TzXM2h6TLzYcKPO0h9NKgNvBh2IpdNT7ihV7hfQf3Tynh8m8qpQ1/2UoB+KRQeU+PPjll6izPXHP89CFQw+dKsdli5T77UGzNL+LA/k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b67a8uQD; arc=pass smtp.client-ip=209.85.210.174
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-8486ac3f347so2726742b3a.1
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 11:00:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783879219; cv=none;
        d=google.com; s=arc-20260327;
        b=aAryTsCemKygbKoj4ydXUHtNEwp1PfNcdLqU1FEDKMEr454BErzTicRUEd5Op2Vtat
         YnkbX2EGs7MDuybIHpoC5/QR6aMASm557tJcXN/zKdQQQbWfDYCbj/pGhCSUNT8qKpk9
         NqcQXXRjopLXQNqgvGICe9QKkrU8bNeHZxnN5KWHBNBUJZl3cwKOG+Fo17E4soVDU/MT
         6EMdTauNKdWEDMnWo/MyBGeJuzJXvrwW9hZn/vCrXHo3sYMu3XC1ts4A/oTla+aZjTf9
         bhLzGf29ph6dp0iSwElS3BZ+hQFCZr8bzuUBbNPq76xJRv7kvySb64UJexjPhJFacsqx
         pn4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z6YF9Ptz3U1E3BzqqGAaNIm/PU93N/xwLs3WvAhZwqc=;
        fh=KMme/1I+YAyIlsev2ajR0HNzVa8MRM85aig8J4z9mRk=;
        b=FaC5u0/hhAWpXvV7KSOZgeVt8tO/JDtn06kwBL82jN3U2OiwaqloZhTRsunrR6o3Jj
         vJ09AAJmJv5IL7+/dF3o8lIgIH1ADDByn5SpyOYWUIovaoOBkOEIvIZpXZKnVHwtOfjJ
         r36hqLcq+n5vtBx98Yt/3QDtkPKJYLe0Qzqd4GHDp09B3B+TM+pfeKgyE+mIj3nQ7/oD
         EVJv+tYPJCdHcJIY5s0lznDYf3w1kY92emQX+wmvysZ4NgW/kMd/GSopwY7573+pYdio
         c/W0khk6mOTFMumD4AqbKINMk3AiV30KVI40BVI4uDye8Q5YdQ7WRb2/HUz4dsH7uMpr
         jYIw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783879219; x=1784484019; darn=vger.kernel.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=z6YF9Ptz3U1E3BzqqGAaNIm/PU93N/xwLs3WvAhZwqc=;
        b=b67a8uQD7ZJXKRmVZUQ4ZDSOUfYkWU/M+OxSuL5BzKqfDOXh+o/hdCdcCfqqt2PUGN
         MPLEHUDUjsep7WCaJubDapZDToOj6WFPfh2/nLz5xowPiDQimZQhW208uG8VREJs3yrv
         WzHx7sBud5KfPxAt0PYeOSxkL/Yxd/dx65+NHN3PEypaAgwnI/XTUHoZxO3k62SDUBgx
         EQvAHgQnohP//0R9NxN0sr99I6Xm9ufZ3eFHizHj6cLBGrIOm8hpArdT1Btb+kLWzo0q
         9Pq+gr1uxX+C1EaKXA9x1rV1QgaH0ddGcES5hCEybkMwYsTyinoKMxyY6gNd6uu5qiQr
         TC3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783879219; x=1784484019;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=z6YF9Ptz3U1E3BzqqGAaNIm/PU93N/xwLs3WvAhZwqc=;
        b=EOMjQwh4D7OmJQS7V4ZC4JLaBq73mvD/U6mpOqswrpAcfwFoszFJighNmwS9Vjw/Vd
         mAOGbbRMDn39XVpP4JaXGwO0IbvTzdM0Gr760JAhqnFKoWNh1+tHChHAc3D7K2FpCj+H
         g5hF14O0lo92+EpY1va5UhBxYMc1SeSvOCAWb+u18l/mI2yH96RDn0/GAq0teYF9Ek75
         eKiluxUNX2fvVz7SiT1QD/TvenulsL8AvKnwLEpc15Cv9NshVWv59eIVpc0PhVfUNvWO
         I2vjNKFWPcEfQBEQ1fkrRLCsDo9i8Nh4nJn3GNijn5I5U1QAg/XS6d6E2bwYhD521c5Z
         7U/w==
X-Forwarded-Encrypted: i=1; AHgh+RrQMyttYgflvwWGj2GTqB8qrwHtQ98spEm1gqpka48Z9jcHbTX5n1+mzucVFFwp1dzOFjdtQXKjF/6x@vger.kernel.org
X-Gm-Message-State: AOJu0YycBpY+CbfM2FRK2DfYwDFJ9uC9qu2wBlYVlS6JAfNzrCSeFU7d
	KL7qoaNt1hsQouKKperSt1wF6BN3VnpuYATwUaeq7bGMlIbTBSdk6tMi+wJNqKyGF2gpvjCFbC3
	vvC1DFGyOqsMj0wPqdk092D+IyGClN5o=
X-Gm-Gg: AfdE7ckeQLtfFVBsz+nlgWe/W6gFIqGPUUb0Ea8D3p+BbsNF8IVQxeVCKYYQqkDpDhI
	5lI9lCH54qAW/+nT2DYPF+f/BfZLs4Gfu7+3JBOB+SszbwCIqsNOnUyvwrdF9jzvskL/uAPdI0S
	FBJp9fwPcrBddCiSPEIHfQEXDyuOsxci3SNkORb60aBkGatFZTU8i6VgQ2AkVUVRpXLWkURmUmN
	2rzMiVOe4hrlBTgPU5f7bUz8MTQly96bmWDOq01Ao3TelbRABSmR+lNOzEjPpqgiwMDkMeuR+/I
	/nnRUXEZSpspVWEjYlcapWEhg9IXjdHagL+6edbXLcTWbw2IzQMm6c966VIgff4hfiaOvGP/S8b
	lUQtmMv30UA==
X-Received: by 2002:a05:6a00:1f14:b0:848:2a69:97be with SMTP id
 d2e1a72fcca58-8488ab8fc78mr4988265b3a.10.1783879218918; Sun, 12 Jul 2026
 11:00:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260711-nanopi-m6-v2-0-422675a65402@gmail.com>
 <20260711-nanopi-m6-v2-8-422675a65402@gmail.com> <b9a5beb6-b701-430c-b667-44780736dd89@kwiboo.xyz>
In-Reply-To: <b9a5beb6-b701-430c-b667-44780736dd89@kwiboo.xyz>
From: Joachim Eastwood <joachim.eastwood@gmail.com>
Date: Sun, 12 Jul 2026 20:00:07 +0200
X-Gm-Features: AVVi8Ce_3L_f8KZWdaCv0iUnfK1E_2A_iQtzLV2gceK6YTWldORZsT30D6eKJVM
Message-ID: <CAPSPb=t=jZke2pEinPvJ4mbxKMF3hSqMfx3GMjEUT6N2FEyygg@mail.gmail.com>
Subject: Re: [PATCH v2 08/12] arm64: dts: rockchip: rk3588s-nanopi: remove
 always-on from vdd_npu_s0 reg
To: Jonas Karlman <jonas@kwiboo.xyz>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	diederik@cknow-tech.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325109-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jonas@kwiboo.xyz,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:diederik@cknow-tech.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[joachimeastwood@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joachimeastwood@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5FDF74592E

Hi Jonas,

On Sat, 11 Jul 2026 at 01:24, Jonas Karlman <jonas@kwiboo.xyz> wrote:
>
> Hi Joachim,
>
> On 7/11/2026 12:11 AM, Joachim Eastwood via B4 Relay wrote:
> > From: Joachim Eastwood <joachim.eastwood@gmail.com>
> >
> > Since the NPU is hooked up on these the always-on isn't needed anymore.
> >
> > Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
> > index bcb2f5d63a61..463cfeddf270 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
> > @@ -258,7 +258,6 @@ vdd_npu_s0: regulator@42 {
> >               regulator-max-microvolt = <950000>;
> >               regulator-ramp-delay = <2300>;
> >               regulator-boot-on;
>
> Why is boot-on kept?, NPU is likely not needed until OS has started.

I am not really sure.
Looking at the other rk3588(s) boards, they also kept the boot-on parameter
when the always-on was removed.

> With PD domain-supply the regulator should be enabled automatically, or
> is there some other issue that requires boot firmware to enable this
> regulator before OS is started?

Maybe some Rockchip people can enlighten us?

I haven't had the time to actually test the NPU. I'll try to test it next week.
So this patch is based on similar changes done to other RK3588 boards.


best regards,
Joachim Eastwood

