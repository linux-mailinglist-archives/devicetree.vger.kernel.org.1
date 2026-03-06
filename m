Return-Path: <devicetree+bounces-271955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNAULv6nqmmzVAEAu9opvQ
	(envelope-from <devicetree+bounces-271955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:10:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 177BB21E7A5
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:10:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8363330DDE32
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA96735CB9F;
	Fri,  6 Mar 2026 10:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HL4FI8Jf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021803502A5
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772791620; cv=none; b=dxRqPUyYDWC99k40hBoutWgbblKMMHkitgTUKv8tN+yOTk1X14J982XnX5DgAqfmn8k10jNoMUgoFJQToiwgp9iKZqZ16mbS144CPL+tgscsP+exDgQar5bT5Ix7Tu8M+89PE8icxlEiq1iESd9Mi86qeYPvlcEzNA8EVlfl+Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772791620; c=relaxed/simple;
	bh=gEDlrhwnbLHEqntSSkEsQEo7gWXaJKYcg2RkMc37BfE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=t6GBLZQmbcIRNlYAv9udjfcpzNBlUWAlEROpmMHByEB1IQKDOQw+UAQ7iraEt/W3q354JivOihIfbWu7IsYUc0vAoO2/bqY1BJdIV8FZZyi017j1w++7bTgw2kl582Ey6aNGmeDMlXxKJrWHLKnZQ568AZv9OVnRH/O6+D3OHiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HL4FI8Jf; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-480706554beso98172595e9.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772791617; x=1773396417; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gEDlrhwnbLHEqntSSkEsQEo7gWXaJKYcg2RkMc37BfE=;
        b=HL4FI8Jfk7jr5aKtIyJG4muLLEqLp8oio8ZHdAYDQORAEkQGfmWBK0sk/oj06dlDyD
         FFi3ZVi+cTQu8n+32z72pgC5FqI30npYQvefJ9eyKpIMaXQR0dgizZDtw2uWmvTcwStO
         +hm0QmsHHFFGvjpKGEDl0K8dmU7SlzMIkJoP0r0/DmQr7MrJ/Ysd8xwAjGxGvZJcKLiT
         oI9TXtphw+eLeFKb30H5p/jp0f9tevtLEizCwQZbGVV5YQBRTaP04WdPnWe3K3JbBbFO
         xbFmNfetjRIuJj2IPZIl7S0LosHru3i0gwnFYJAs8rMUV3ZZUFrRHCYVzVNatWc9FjUC
         RsQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772791617; x=1773396417;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gEDlrhwnbLHEqntSSkEsQEo7gWXaJKYcg2RkMc37BfE=;
        b=XXDIq+mCL5hSs1LvT68im6c3ny1slgEO2lrE7/b8DEH2hr/F9iWQ2O5G0ObAMOvnal
         1lauANtinsVLYud4dznR4j5BmM8aVAFq9UGdytAB65Ga8Yz8ceb6QizzRCrhTtr0ltMU
         KTunRF5yvsGZ7nW9qcKE08YCpEq8J2hH8ATXYd5OX37GsMErwmU7MySpl/uiQrAL3uxH
         BBuWgPPZArZmEJ2y/NUmz82XN32F/0mlyPE5NPtRpu55XkIim9URWjROwyXJ0dJ5Ozjq
         g+2RXjTgkfBV9OWb01zPhHQXn7WUbx3D4fx75uRLeb1nw8BRR583P/0ND+8qYuHDPok2
         tq5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXyExLix/hMuVdYAfP8itHBPZmVPVMmOeCShfEhKeN5qKIehUKW5jDSV3jnccnYf8ECZSJxAX7YJc2y@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/tFN0BwgTtjP11XNTS/ce79V751oQhylscStWsR7S/LMVd4xF
	vkerPE3ic/kKJVh3BPP6NW68yphM+qKLdQRPrPoDoFAehsqb4vtBl5UdHkK0ovDfBLw=
X-Gm-Gg: ATEYQzySnz4tLHjba9/OOqSqjJa1zfFvu5OuuuBEX37V9HWKpZFolHqgKdgo4PRBCxg
	/Qx8i6oBPRF9LvC7zywVUUgbsk45cOWGdZL6hK0e7iyp0cTHOLbPUeAp3GJtNv1iLVfYrL9HvDr
	DlAJp8z/BMOV0D5UV4NauVqzMhYcgMZd7bnJ0fKrlrgtWaRlHH6/+NA+DAlBUWeqkIw1DNf7pqb
	GpO/VNeX7uPBwEi5FuyqtO0l+xJdAn/Sc8nTbik30tON3/KaPlOhFTG8Zt8IEw2QMXPwtQbXqw9
	AHOv1ZfmM1DgHa3QRkTSkgoe4ygLmLUbdUW89PSuXBH2k16fK6tKo6p7DJVgC+d8YQDRDKAv017
	+5u/eAqb5UhB56YBRx9inl6lCTayOWEXYt8CMjxW10+Q0JVbbG/lrDCRnvRs/QUjlpOKc1WRvju
	m5ohlBJqSFzsnUV/S/DH7yZZfwyG2z
X-Received: by 2002:a05:600c:1986:b0:475:dde5:d91b with SMTP id 5b1f17b1804b1-4852695b649mr24350965e9.17.1772791617341;
        Fri, 06 Mar 2026 02:06:57 -0800 (PST)
Received: from draszik.lan ([212.129.78.78])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4852378ea07sm15919135e9.0.2026.03.06.02.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 02:06:56 -0800 (PST)
Message-ID: <a03bd4a3c457cd3ade735b087fadedd1920c842b.camel@linaro.org>
Subject: Re: [PATCH v6 04/10] dt-bindings: soc: google: gs101-pmu: allow
 power domains as children
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Ulf Hansson	 <ulf.hansson@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown	 <broonie@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus	 <tudor.ambarus@linaro.org>, Juan
 Yescas <jyescas@google.com>, Will McVicker	 <willmcvicker@google.com>,
 kernel-team@android.com, 	linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, 	linux-pm@vger.kernel.org, Marek Szyprowski
 <m.szyprowski@samsung.com>
Date: Fri, 06 Mar 2026 10:08:18 +0000
In-Reply-To: <20260306-hopeful-amusing-sawfly-e60c6d@quoll>
References: <20260305-gs101-pd-v6-0-8cb953c1a723@linaro.org>
	 <20260305-gs101-pd-v6-4-8cb953c1a723@linaro.org>
	 <20260306-hopeful-amusing-sawfly-e60c6d@quoll>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 177BB21E7A5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[samsung.com,kernel.org,linaro.org,gmail.com,google.com,android.com,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TAGGED_FROM(0.00)[bounces-271955-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Fri, 2026-03-06 at 08:36 +0100, Krzysztof Kozlowski wrote:
> On Thu, Mar 05, 2026 at 06:11:53AM +0000, Andr=C3=A9 Draszik wrote:
> > The power domains are a property of / implemented in the PMU. As such,
> > they should be modelled as child nodes of the PMU.
> >=20
> > Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
>=20
> It is impossible to test a binding in a meaning of "tests", thus you
> should not add Marek's tags to bindings patches.

Apologies, I think it was due to b4 applying to the series and this one
slipped by me. Will remove.

>=20
> > +patternProperties:
> > +=C2=A0 "^power-domain@[0-9a-f]+$":
> > +=C2=A0=C2=A0=C2=A0 type: object
> > +=C2=A0=C2=A0=C2=A0 description: Child node describing one power domain=
 within the PMU
> > +
> > +=C2=A0=C2=A0=C2=A0 additionalProperties: true
> > +
> > +=C2=A0=C2=A0=C2=A0 properties:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const: google,gs101-pd
> > +
> > =C2=A0required:
> > =C2=A0=C2=A0 - compatible
> > =C2=A0=C2=A0 - reg
> > +=C2=A0 - '#address-cells'
> > +=C2=A0 - '#size-cells'
>=20
> I don't see improvements about quotes.

Odd, I'm sure I fixed them at some point. Let me respin this.

Thanks,
Andre'

