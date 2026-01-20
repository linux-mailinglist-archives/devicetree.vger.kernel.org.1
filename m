Return-Path: <devicetree+bounces-257317-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDnsCPyDcGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257317-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:45:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDEE52FBD
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:44:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C74955C84DB
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17CA141322D;
	Tue, 20 Jan 2026 11:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MGkDI8DJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F3A3D5243
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.210.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768907283; cv=pass; b=h0w+OReOkbVValHm6qV8w1d7a2CL7ebwTy62nmLVhUtpc3XHScnOa/QJmhnGB20BSTqgfGqsNWTCYYt01Fw9IsBSxozgrcEfXABMHIyenvSbegjx0VPnYiONQGw+JzuzBNGFP+6VhVr1ezxZpxQ5ae/n3Y3n9FmpIhHdt2P/z3o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768907283; c=relaxed/simple;
	bh=G67HGmUfVGd2ZvWRQTeaSHRPd97M+0Ot/yOxv4YVwbs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RxYHymIRDDENjzRSnYvlk7uvIqcENa8JKYSuz+bonyiEuVpJvLJ3qYooDVlEnRa13gxJPVHVosHaSFFNmnnhKK/l+Hc0GenaSEOMTVWPB/XYaJ+BfXZpHXr8HnxSogBz/x7lFlmie/uOnPdhYW1HM2NzdaIedypNmYqX390S5ok=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MGkDI8DJ; arc=pass smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7f216280242so1949220b3a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:08:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768907280; cv=none;
        d=google.com; s=arc-20240605;
        b=ZDnBYCGNJhpWTfEokzIXUzHe4KqwXyUXyR1sBbU46x950Ix/c3TmN7hFQvaoHFeWAz
         eUNa1BIlvtmsaefeixi547/hLOun6EeJ/EKOJLugpGI8l3jacDFqADYqOj8U9tQ5t6GK
         +rrAe7JKSGx7Wk+mWPI28ODC3AwgMIsM9mzPoaWRIXoJIhP7VH6LQMSvJP2iMsnCCu5o
         fpsbtaJycdcL7VM9mk+hZr+gLnjGX0aK3JjAlLEqCwgElgYQnWSfCWvDNsTzkGyhcJCM
         SSiDslHiYWvOWcKNHx2OkBrpI0MqU1bR83nO4yj4y8EQ3/7CGsqhaRekAfHa/1QQSrPf
         tj0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VTp8D9aHKubMXvdcgA6NueZbNBOyUWbHG0j1r0Ye+Vk=;
        fh=vel086SoID+PGeoZvw2Dax32XTSj7uwgOc5Jb9Hw+do=;
        b=WjK97TOEOfuTT7eoBSqPBz5Xz0Z4cujTb21NDPjSAUpe5tBIuqEEXFjr2jVkep6sYt
         p8HNrfbbqLPgPpjyXKgtAVCeEUq5/wdWQV6BmDtFsEbYb5QAOc1jFpny0G5WS1PczT2a
         AK3GtdDPKg7Eyra87qYuT7oSkdrVsj3ve7PVd8pTtV/hCjaq/kHp4qiMMXgIp8SXb2oY
         bsqL4Z9N1RJjLlCsncPsJsWdwP4k5lLW8Cp2eyxmVYjbBsTzGc0yZFy5MeBau9prHAMM
         NgHarKplX6/SWngstRIPko+o1n93hB/de4nfvnFrh1+oCT8om4ium66s/KVzLYi6u6dh
         Gywg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768907280; x=1769512080; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VTp8D9aHKubMXvdcgA6NueZbNBOyUWbHG0j1r0Ye+Vk=;
        b=MGkDI8DJyXabrsg1Hssr6kMgzexTbDeXoc9Oin7Wz0Ns4Bn1txsFySL2Tk9jKZZjQC
         d1BW7XfH4QKQY6Hug+oIKtnXoig+tZQLkXVJOJWDFgphnpOa3/YR7D7Ou30s42iphmFr
         OLDe21UDzefn4p7E+6evgaXLaDsMpBihRgCC0zgJmUufbAtKTzm/a5HfKwVHGFnqoO3O
         eT4aVNUfn8nlvCYisUUITOXw9I4AVNEWljk4YiIofDT6RTxluo9H+AOzaIJhnw8aiz6r
         erGJBPB6jfr2jXXeOv0ipziB3LN12VNo4tEgWvqFpi+g5XmvFWMOv6lEzupKL2RbXnrc
         Jgaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768907280; x=1769512080;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VTp8D9aHKubMXvdcgA6NueZbNBOyUWbHG0j1r0Ye+Vk=;
        b=Q9g3u11DD9XLpAtj/vqb9oNsrsZ9n2PBNqE1QvgXjosBdIK16D+XOHOkG0M/8oYcIv
         xabddOrnm9qyWUXoBRQ5j/dAyIBjImLTF7JXW+TmDMRY6uhvWtev3kYL/bz1OFPdzi3d
         YrXIOBU4GE7BoAnilKGU7PBrAHdlrCpomWZCsaYc7atYAv3N41+qXAlxLkVmWbJnWkTG
         56Jpn1h/KotsPHlBRffv4FW5H21zMbydn4Zbt1NkOJrfijNEu7uFDYzFbWfoI1cVNr82
         IZ5QHbrgng2NZ5fgdGUt4hOgpVuGGpS8FpsQvKG7f5wDVHxHRIMHidhXJafc9jdNDqa8
         EX1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWmJsrnAZv5siUTYuC2QMnZsEKYxcU4p1aKBljSEaFcAbFzWYSYxo4of074Wm8xKtpd6z3GVyUvqzt3@vger.kernel.org
X-Gm-Message-State: AOJu0YyXBlwBkJGkuf729BP99jZwyATMxTQMQrcCipV9RJUVvCe37urZ
	TwA3qBoah7Kgcn2Wb/V21ALbejNYfCk5YBl81eSB8yDl2AWIlOpF4zrFcfkyPToMo5nVtQvISPS
	yGC+2dGDXY0deQeKLXW2vPQvySKn9D5c=
X-Gm-Gg: AY/fxX7m+v75Xeq3pbiqR+UcI1R+buQR11uV6tsJ213WuFmzHOpXVFQIy4J7Ebqo+tK
	/umxWvCQPFXWkNdddSx2y+iTGuohQWT4lHDXmyPb3vsJ9K3FU3qLVfN70k6+CR/yPz2bY0rUT9+
	3fc61v1mmkcU8aex1ahSJbPunWzFw2VnH4/wyUqgoAOTheI9B/DZaoyXWZJlOr7tPa+QiNh7ZeD
	yd2v2le89R8aV5KpC+AuBVRJO+QE/9QtanwkKzmmAsA7f0l/Vtn6DSZn3AOnW/o4ETCqLx8Xqji
	G7/epQ==
X-Received: by 2002:a05:6a21:3a42:b0:38b:e70c:6406 with SMTP id
 adf61e73a8af0-38dff36821cmr13408140637.22.1768907280519; Tue, 20 Jan 2026
 03:08:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120035210.1593742-1-shengjiu.wang@nxp.com>
 <20260120035210.1593742-2-shengjiu.wang@nxp.com> <20260120-fractal-lemming-of-chemistry-6f21df@quoll>
In-Reply-To: <20260120-fractal-lemming-of-chemistry-6f21df@quoll>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Tue, 20 Jan 2026 19:07:48 +0800
X-Gm-Features: AZwV_QjlRWGRppxCrBr9lEF7AFifqLu4-_l_Wvfec_Mh4jj0zdL8Z4fH3sbuZEk
Message-ID: <CAA+D8APePw6BnRP=Wnw+zna+oc4_aoMWZewYC7yx-XYLBrSKbQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] ASoC: dt-bindings: fsl,audmix: Add support for
 i.MX952 platform
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, Xiubo.Lee@gmail.com, festevam@gmail.com, 
	nicoleotsuka@gmail.com, lgirdwood@gmail.com, broonie@kernel.org, 
	perex@perex.cz, tiwai@suse.com, linux-sound@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257317-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org,lists.ozlabs.org,pengutronix.de,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: CDDEE52FBD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 6:31=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Jan 20, 2026 at 11:52:07AM +0800, Shengjiu Wang wrote:
> > There is no power domain defined on i.MX952, so make power-domains to b=
e
>
> There is no defined or there is no power domain? If the first, then this
> patch is incomplete. Please read writing bindings part about complete
> bindings. If the latter, then you miss constraints ":false" and commit
> msg phrasing is incorrect (and remember that in such case you won't be
> able to add power domains later because now you add complete binding).

Thanks for pointing this out.

There is a power domain on i.MX952 for the mix system of AUDMIX.
But it is enabled by default,  AUDMIX device don't need to enable it.
So can we make the power-domains to be optional for this case?

Best regards
Shengjiu Wang

>
> > dedicated to i.MX8QM.
> >
> > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > ---
>
> Best regards,
> Krzysztof
>

