Return-Path: <devicetree+bounces-273762-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMLUGqqosGlTlwIAu9opvQ
	(envelope-from <devicetree+bounces-273762-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 00:26:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64648259446
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 00:26:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 468A430193BB
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 23:26:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A652A3A3E81;
	Tue, 10 Mar 2026 23:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FS0G6SM5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3842E2DFA2F
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 23:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.170
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773185187; cv=pass; b=YDfhf+nB3n9eGqY9qt1r1dy+trolmVUNY3FdVHSeAJU5gH9xi3MRiLMAfJQHlYWkUdkVIHaXGKrGn3XOLyXzvJs7yDbFH7edYBrxJhrZNSCOt25Etke7FGueBXmi53z3Kt70JpWS+8VildqyfKkQfiSZ2p/nKRqzsvEfE/YA59c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773185187; c=relaxed/simple;
	bh=ZOa2IeVwwJoZni+iLaFzf6wf54SQVS4tnwaN7R9hpUI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pjcWt7/1FgN1OMcgJmxY1d6hnZrHrC2xo253YZkl3tcs2PcQnM57aG21wB7dJnlazJpz+yykDB2EE8zk9GQcIIZtS7L1GUikvmd9Jt03+JjGvj73r5m7Z4taT9QFIAZxBYQCtY00iSv8mCTpS6U50yIjq8OwailGgBVQLM4H5pk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FS0G6SM5; arc=pass smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-38a32d36396so4192781fa.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 16:26:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773185184; cv=none;
        d=google.com; s=arc-20240605;
        b=A80Z8yD6SbMq7f/0Fpk+zXT5OMghAp2OsTMbDo7/Yow0v5xOizhQ0gol/MxkSVo2rC
         n9fEKyBePwhddJZY6K3xWWun7veg4FaXAKowrMe+/FTsEtN3D7LxVPWs8fLLys3FKK3m
         S9r2RBJQxhwuK0UsJg04QEx1BnsJJ4NsBu6v5THEHKZIiA2fic8mwMLZXa83xamrpKpz
         mVfMElqd5UwQ9fIaMEEBVnyHSjArkZFOaBGvvaSP3sAoj0fP+H+/Q28u7cRQUhO0gSg0
         RygQ3XU53n3tiSbpC6h0Gx1sK7fOXOMeHvytU/TNLdK4gmocCmkgKbEPLm+sL4P/pEYY
         bn1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nbE832rtYKpMRX+tYnhnQzdSRCBoOQQ9m9+SSD0KKTM=;
        fh=RpxCTObrZvbDRbt5MbZBNBeyXcrnq8RcYP6mux2HEsU=;
        b=iooHv1QlQoh/KJiKteFBmjxFlvmOEuH3TNj6ztRoevRTyZ/af8Nj3zV6TRgIuNF3ye
         5dbPHCneZD27DqoIZUCP526Ey4E/mPJ2EQy+m0rg4UHV+q37K/6/Zi8FqRMf/8UP50ww
         FZMNdlUnshAeZNtcUVAlkBrI04LWDXlaR06IpR4zB6qWIamiO2CPrHt0fx3pkcKaiN0F
         Qhih+k3lgKF0+1z+01X+1+2G0IqreyIFtEFmkOqXgmyInD8NYxV5iCNGlnqGnBIbEBQM
         QyrUTCzGdDvFT9ePeQMIN0U6Ls9lxYcMuh6wVdq+2nku3MnMs+N6Xq88yAOIdIx+sA6z
         JTVg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773185184; x=1773789984; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nbE832rtYKpMRX+tYnhnQzdSRCBoOQQ9m9+SSD0KKTM=;
        b=FS0G6SM50opA4NUgexPKCZz78UVT0BGlYZHuJOSqyvV8QPWFEd5AY1G/n3A4OC1vRJ
         P1YqsHZTjIqx99+VksZtDM/wVBbeK6PFht7lH06Na3rcRYg74FMhZt5f2FwSkmq7Y5wa
         VTKNS3H1drcYbV8cgLIZH8gB19yEtzvgGVriOLmT4BjuVQyPhrPkEFwKcQSnuTL2EMcT
         5QP7kHhE8YgT/5/knRaKO3mA/1e/V2HqtIMmgKf3Ok85CnHoy/S9xHkOBYStJiuztji3
         6WVWsMYuSGFPr4ww/NPi12hp5B3VKXnmPqssKHgAG5LFVvUKhyu/pGE+PoSYDJ1JCLs2
         lsIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773185184; x=1773789984;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nbE832rtYKpMRX+tYnhnQzdSRCBoOQQ9m9+SSD0KKTM=;
        b=Qj6OD4ASPnXoxk3d7/4dOrbJGZyy8FdOAhXzo9+kgS5fMd+ShhONLDi9GJVg8UT2AX
         6+2vg6S29FcidIfphpRyscxXZ66wk6GzOCDkExNiCxmIQo5INAdQi+Et0J1WIxnV05CF
         2KDxsOjO+a6QHeB+GSQh0iwVCEOtL24QqG9DZ30pyaUEzVExdLaLlXFNy57MXHG3gRy9
         39D9MpjMfOBPoVTG+BtjNOsimpXy1dbMXo6e645Xz61RlhqyolpNvh6/EiJQiBTP5P2f
         DU5tcuxcaCfvqLTSCUzx8ReLgFh4TTNIcJhFX/Y/jvnAIcBIK+QiH5cOBL5IHjHGHJlJ
         bSjA==
X-Forwarded-Encrypted: i=1; AJvYcCVrfvgeVsB01ne6JXLZzZa6x1F5d6d2sSUI7fppRia0EOn65ROv3RDkvlmzR3FjtelKVmhvyovENCCC@vger.kernel.org
X-Gm-Message-State: AOJu0YyBtVDV9siQEG2Th7ldZJwtRWczqzMSk3oTf1ZdAKPTIvXm+Z7R
	oTQHMFUYtscyb2D8VCDBgKbNj4zQ3FRJFV+WSEBbqCEORl1V8bMZgEtfcBnK6ABhXec5kGC+JtU
	mxNGBn2LVIqhrrYEouop98iNVhQA7vaI=
X-Gm-Gg: ATEYQzwGvuvl1WdSR7UE7vGAajHwIcBwGuPPFUMCFF+fp42SwQg1P67LMHPwmfX7rBL
	v0CYXOsuNHrO+8w/XrloyCSzIK2Wu6oWyPRjEMvwOpNeYmh87vCyCqOw+YmYbMYR0s72GKdfcpW
	Tb+vhuc7Gqprl0wB154ki9eE7MUIdmgbrl7JlwTabXY+QI4o6YTiemL8MU5bwqh22mESzCvqmYO
	6hVzP6zAts5HlpDqNyrVvgOs+VDRL7jvNrXoppxo3FwSwE+ItsuiN4hkqrvd7hr9Qb0vnxe4VAe
	izG14+/CjdHJ3r67An90TEZ5GSPYjmtfCmk3TlDrb+GSepDSRBlYQfSCGhAgKTdvvJkY03SGGer
	Cu/z9q5o=
X-Received: by 2002:a2e:9e11:0:b0:387:a16:ee83 with SMTP id
 38308e7fff4ca-38a5d01f781mr12942351fa.11.1773185184057; Tue, 10 Mar 2026
 16:26:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260216010219.2131484-1-festevam@gmail.com> <20260216010219.2131484-2-festevam@gmail.com>
 <47923648.fMDQidcC6G@phil>
In-Reply-To: <47923648.fMDQidcC6G@phil>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 10 Mar 2026 20:26:12 -0300
X-Gm-Features: AaiRm52ednYfXwxvAUqCdpkvrziRMGpVc5js93M_Hig6B9OSV9sZiqzLFMTLwA0
Message-ID: <CAOMZO5CBFq-crZs1Wub=7iaWT1n==Jrv2D+1q38NXd1cJM51+g@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] ARM: dts: rockchip: Add support for RV1103B
To: Heiko Stuebner <heiko@sntech.de>, Tom Rini <trini@konsulko.com>
Cc: jonas@kwiboo.se, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Fabio Estevam <festevam@nabladev.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 64648259446
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273762-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,mail.gmail.com:mid,1.49.45.0:email]
X-Rspamd-Action: no action

Hi Heiko,

On Mon, Mar 9, 2026 at 6:24=E2=80=AFPM Heiko Stuebner <heiko@sntech.de> wro=
te:

> > +             cru: clock-controller@20000000 {
> > +                     compatible =3D "rockchip,rv1103b-cru";
> > +                     reg =3D <0x20000000 0x81000>;
> > +                     #clock-cells =3D <1>;
> > +                     #reset-cells =3D <1>;
> > +                     bootph-all;
>
> I don't think we want u-boot-specific properties in mainline.
> They are normally kept in separate -u-boot.dtsi files

If I keep them in -u-boot.dtsi, then Tom Rini will ask me to upstream them =
:-)

These booth-* properties are all part of the dt-schema, and many SoC
vendors (NXP, Renesas, TI, RiscV) are upstreaming them.

Just some examples:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
h=3Dv7.0-rc3&id=3D256feb5be482315a91c1bd1a1808276f57ef76dd

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
h=3Dv7.0-rc3&id=3De05f6566bc778bc1215283e667e18692d16b25f5

Would you be willing to accept these bootph-* properties for the
Rockchip device trees?

Thanks

