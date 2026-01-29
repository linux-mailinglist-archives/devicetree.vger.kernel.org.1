Return-Path: <devicetree+bounces-260767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIl/FugRe2nqAwIAu9opvQ
	(envelope-from <devicetree+bounces-260767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:53:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2E4AD085
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:53:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 604543009F82
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A05737BE68;
	Thu, 29 Jan 2026 07:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hITg21l2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391C3379999
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 07:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769673184; cv=none; b=jeIIbot3Eqf6/DgfSghofcSvamNus62+RKmOdHUiD7rY4xBcimErlYyIrtcLdSKeYRRFULC/l+xfZfYoMgzYJxExKXlYhlAwN+Iq4fzgISe9HroLO3JhadwscKgqV0dENrSZQFzCi2d22O4LOhL4C2Byuw2Y4NG2+nWt+Dva/EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769673184; c=relaxed/simple;
	bh=TreBPbYcd+qcEfeyzd9gSmsPnjmGM3aP8CkrKuGABXo=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JJAKjjRjofHP2pflew/EzsB1Ul57P17cUlhdCfgW5SlFflfR9ZJHORrPsSns0C5HK0ZhJeNP2Wvhg/HWWz2EI2/pxrZ3NlU1ATxZDB2zK9Tuk/IKsEhW7a17nnTrhB1Yffs/zH/IQ3ieta1x8W3LBIPCC0uvi03RuASJpb7QwJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hITg21l2; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so5035035e9.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 23:53:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769673179; x=1770277979; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TreBPbYcd+qcEfeyzd9gSmsPnjmGM3aP8CkrKuGABXo=;
        b=hITg21l2RRszOmIciwQjy2uAj0jupjwwklVg+fvb3B7bBd58xF/oWBM4QRvWZu07N1
         L+xjAlc0SoxWIv1dued1hCfn/9RgC+RpO4ggr1yTuUTuyr2kpZfARFF8G/yzbVd5jLLQ
         FXpRGxp4RyEBMdc7yC2y2KkTYGY5WQS0wfM4ED5hBEEadYh2sfp1x3qvSSxFIxlomM7D
         cOiIQgw3/PrqNclCYEkuypajUxcanDP+vk/HS90xsH62ESbSNXExOtwjBJwAzMNn7O2R
         AmOdAgmjWUY6ojcn5HQU3jY9WJPERuJmrA2so7Ip8zNhSwbMB+W6PWD5ltFG48CZKSKx
         odiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769673179; x=1770277979;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TreBPbYcd+qcEfeyzd9gSmsPnjmGM3aP8CkrKuGABXo=;
        b=gUqHwbHT0/deu6CDTiX3euNBU90uH+FqHvRp24sDOeBDrbPSzZ9iGMKA9OMUSWk4Rm
         b5cprqkZXqER+QmQXol871qwmd8xSJeFRbobtA+RG0dTmtFSwytDl70VK1BMlYje8G0/
         3+bKBYD8XHYZAPhnOnaEj9g5MMwPhzCdRx+dHZRXxB0zrIqMYSIitUEYHvt5kF7UB75v
         O9Hfdre3bSkYPjDjVotfX5UZ20HKC03HIEAN87rIYRU5Xr0nid3eVYsrCg2QH6kLNytC
         g08uq0cIX4MFeMcqZkUNKuB2byv+FhdzPOlzsklMJiOfiLjYziUfrgzsuLK8izKqvBy/
         o0wA==
X-Forwarded-Encrypted: i=1; AJvYcCVxbcbv+zotr1GSLfcAPjqyloHgO6NZnRvQM7EBFe7+OZ4yHMfWbeJwlCKC/9GaoubLpWiV3JE+CcxR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhi4wbztylQoDv7pY5afRguppnEIXKK2kyziF9ii1/FYUMOAcS
	T2gjSBg8Pz+Lfx/moWxsSqEvCY99ivv+xUx2EnghUlUi+tteP1K6lqb45bXHdm7NQpE=
X-Gm-Gg: AZuq6aKZRm4AMQ/BjioZmzFIcuhs4DjNboPoKh8tDE1rylw2lbThqPjOl0JqviKG6ay
	u6p9fwB32t9tE7uXvNhLas/jPYEH6+cMQSTyp2L+cS/+tRDXC2/oOOpD3ewpsaWFBJHW3MqN+/Z
	oFw2emC4iwpqJ5pAwlpPhU4YP4rEdgx8YlKm4es/B9Mg66pKQh0Ly8dMhJIznphGQZyM/mh+xLL
	WaE+bWpAH9+uG75NL+/q51ucwJttTFsl/LR7OQmwD1F7yAm+ef1uO+J/cn5yGslktsjm77VQqW0
	5bp2cR6YgGL7I2TBUndmAO0QS0Jnd1VGWl1GVOZqPJhd57OrU45y20G7/l0dpRgvt/VrdA3USTp
	I5cjkxyxVUDvJOpvOOP6T5ItxfzK9mxI81JbJdw8KFfB1XfEXQX6cj9Z7nHWvdZldYq6tmV0ZwK
	SaqwFQKw3VnoJTNxODVg==
X-Received: by 2002:a05:600c:450c:b0:47d:6c36:a125 with SMTP id 5b1f17b1804b1-480829beec9mr29095775e9.17.1769673178631;
        Wed, 28 Jan 2026 23:52:58 -0800 (PST)
Received: from draszik.lan ([212.129.82.147])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-481a5d31756sm4253955e9.2.2026.01.28.23.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 23:52:58 -0800 (PST)
Message-ID: <3471955c681a8f9fb0ddf2dd421e1b4552dfbea5.camel@linaro.org>
Subject: Re: [PATCH v4 10/10] pmdomain: samsung: implement domain-supply
 regulator
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>,  Rob Herring <robh@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,  Ulf
 Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, Will McVicker
	 <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Date: Thu, 29 Jan 2026 07:53:10 +0000
In-Reply-To: <20260128-gs101-pd-v4-10-cbe7bd5a4060@linaro.org>
References: <20260128-gs101-pd-v4-0-cbe7bd5a4060@linaro.org>
	 <20260128-gs101-pd-v4-10-cbe7bd5a4060@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
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
	TAGGED_FROM(0.00)[bounces-260767-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EE2E4AD085
X-Rspamd-Action: no action

On Wed, 2026-01-28 at 16:10 +0000, Andr=C3=A9 Draszik wrote:
> Some power domains on Exynos are fed by a regulator rail and therefore
> regulator control needs be implemented for Exynos power domains.
>=20
> On Google gs101, HSI0 (USB) is one example of such a power domain.
>=20
> While at it, add a to_exynos_pd() to avoid direct use of
> container_of() in various additional places, and update existing code
> to use it.
>=20
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---
> =C2=A0drivers/pmdomain/samsung/exynos-pm-domains.c | 53 +++++++++++++++++=
++++++++---
> =C2=A01 file changed, 48 insertions(+), 5 deletions(-)

Looks like I forgot to include the binding patch for this, will
do a v5 shortly.

Cheers,
Andre'

