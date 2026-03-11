Return-Path: <devicetree+bounces-274241-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJnpIJ2csWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274241-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:47:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C75BD267885
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:47:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E53D304C7F3
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E58CC3E2743;
	Wed, 11 Mar 2026 16:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UiJCBeYU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 952E71FC110
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773247541; cv=pass; b=BEQn1+cASLchMniH9/MLG3hjZ4d/fGbHpvkdJMYmzUtGf8ZuVic8XNwueWdHTOeH1Bek8M6kjeqK015HjBEL7ojCSByvp3+DyRmUfXwIIMf9aaGOGA2TXufSPWS/cN3LUs7K/kcuU6E0JWjuroXr7WI87/3f46SJlLZ9/S0x0HE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773247541; c=relaxed/simple;
	bh=Pytt0LS4QTbvNFwjxMDR4iUC6e9Z75QMqP7WbaGLiu8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ho3aJcaWgGkEnTC8/1y+zyWNxryvL+mGTuJmDtY5ys94Uv/90rr8sg7Pgxce3VI6IuAe7BR98OW7fuqTlVVgiKghbzm9jkC4+3tsa991wT52rS0SiY/9LX9wMGVASOKw+Mhh8Ykc8dB8vB+OpxNXrBB8FirWnoAwB5082N6NFb4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UiJCBeYU; arc=pass smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-38a2a59baa6so1159761fa.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:45:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773247539; cv=none;
        d=google.com; s=arc-20240605;
        b=fkqUOSLXClSM6MGx99kuvS+RmEqhK5Me403snFignHAGiGFgYI+ZOqaGHTmpuIRE1j
         bgCXBQbTH7lf+qveOW4PUvPHLgrTWKWJpF8jobY5+t/Zrrzsg18GX+VYpSXp42e0f1iG
         QrLUaYxoi+z/kzyGc5ie6EuedzgjK9mLLWz+xrKqBsPmW79POuvLmAlSMjcQtvH0Bs4M
         M0c8h2JdJXqEEbc3ewIV27tfO6ov3X5GfMB3y+vXAvXO51BxPtxvwSLqjZjtIzugFfrK
         ti7vJ3w1cCfrcK75wgKsQK4YXAr7RyWQ0hst9VrjNpS5ZwPH0P7M38xhG4Uoqvt3rayO
         MSSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jLnMSxUqU/vOSI9yL7h3tOcbtV9bRdE2IZoz3VycQi4=;
        fh=7crpkuUDikpVLfp831hitwYG5bFN6BgcaspCpPSi8gk=;
        b=A4dXB+aBMm1ADx27bDy0+9BEHJU2lfQuaUefZr2VYxD+iJLkwkNgoL9pbUICNIq6Oi
         4B1AiS+YxWITdq15iaQSGllEJeZdWvM2HGJWulFf/O4oDqpqagSKJJ7u0kt5wCZOA4yi
         SjBTlWLAILrir9mh3bVjS+dnlcOqID3ACncTWAUNiHi9ou1ZWJEqgquTTKFiURHG5thz
         KOM6v1EIqNj9oPYysD1WXQl4eo6SZNRtZN7xl6aYutgZ8zbPAquSIHC4ztXlMY3ukfIZ
         +Rf1pLq9IvxxN43B7GObSXZXW72u8wGhE9S0noeE6khUwQ2DPqnujrVdkDL632nAypIx
         uWXA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773247539; x=1773852339; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jLnMSxUqU/vOSI9yL7h3tOcbtV9bRdE2IZoz3VycQi4=;
        b=UiJCBeYUvEWgDb50y1rr+NbkWT2313E4nHxLWazc/qik9ODUOM5nCCXb3AIm2pknjc
         IQLQuF06nrWU+FObjsrF9GphJkjXPDDVY018M6PwY4KO/scRC9TbjX35S4iPk9Vgp9N6
         mw8CwHk1MYqKallrsudoEjPe5j8+28LCvvzxkxvVYQdp9uOXvXehB4r0yWGsBqMxiG9b
         CSqiSjlEsjiveXAHA5UO01p8NUSIeBO4MyFQlTm515UNesiHX4KvFLc9TRKGrvVxyDF/
         Zw8yXzCntRP/V+Si6sXky9OikKaJYW7PVLlJhMoOyYPKRHpF/xtcHDhJD8Y0LU7EbLDg
         gRew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773247539; x=1773852339;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jLnMSxUqU/vOSI9yL7h3tOcbtV9bRdE2IZoz3VycQi4=;
        b=IM45mPjoWaB05NiKgnCpNBLFBO+QC65bZlknpo0Zer//J7iDTXidvqZSrM2dBlQSzx
         +oMYRj+vnAfUdUKTpqKBXhGeKjkeO+npQz3cVVAvihVBj70Dxt3LiDEX1u3cgDeKZGTq
         OgIWROQ+tyO7Ma97/g3PGthPvsIb+wfGedwAGj7B0BEFEGwdL+qhnUAUu2Jnpr43jFzD
         Vm1DMlMmTX3s+yPp4TNMyUP/S1u7c/C3HqQ61vCjAFGmcZS0EPkU1E7ECt2s0alSGZDV
         lWmMwwQ59ygjg1ybRKecciFBn6HANR87yUggkosYEfg3p98sgrx29ZzVuCIpfD+PgqAW
         qh/g==
X-Forwarded-Encrypted: i=1; AJvYcCV05axTUEkB2oYbMrsmCbQy5IsM6iYJ2fl4+Oe5Mdl9Bz7dwPc/uodxH3/bHXnfj9fGTZsJZ6mc9zoD@vger.kernel.org
X-Gm-Message-State: AOJu0YwAQNOuhE0LtpQF/Lqa7QKseao7c3exsOeZI44V5rtZthwkWcs6
	4eCBoBp0Vite0GPpaFCqiNhfF678dSfz/pqHMFerEnAchAP2Pubw6nuYpfODzRi5iTQ3nDsyY+Y
	cdXI9Be+rK4pjmW+kc1IvXlOxLM4PrEA=
X-Gm-Gg: ATEYQzykTjfITyDR59IC6xLURZn4ae4MckJkrgLZeEm65Phl/oefAxg1/Zz/7r/cu/6
	YexlxUeEFlMak2l3BY32PW+UJ7AJEqsd5XAhqn1CoIvHsYOsLJat9aNedJhb2d4ebd8C7hxFrxM
	ig8QhNdljrEnLvNkIzsvz2vXldDQW4kFl20JbJQorpf+6kiRnBkB/GuEQPGgliN5FyExYzqv+7M
	RsPKd/K/NvG6hG3vPAA0RjX70CRIoy9vdMbIXHp2iXaUpnmjfdHv0WCVA9E/15eu6Kvlpumt4z/
	n1//TlrqvwXR+hsXAMYF7ug+L/KXbnX4xS6mGOFBPEvJvu8NnUvfdCRnzQIGsJFerra8mgEJ
X-Received: by 2002:a05:651c:1605:b0:38a:4de2:85d7 with SMTP id
 38308e7fff4ca-38a67dc9fbemr12968571fa.3.1773247538651; Wed, 11 Mar 2026
 09:45:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311-dts-snps-reset-gpios-v1-0-ea1cc09fba84@oss.qualcomm.com> <20260311-dts-snps-reset-gpios-v1-5-ea1cc09fba84@oss.qualcomm.com>
In-Reply-To: <20260311-dts-snps-reset-gpios-v1-5-ea1cc09fba84@oss.qualcomm.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 11 Mar 2026 13:45:27 -0300
X-Gm-Features: AaiRm507l0YwGQ8hPR6SwFHiZ8rbTpqpePPRrK9orbsaemsmOMG7afnYzJw6ou8
Message-ID: <CAOMZO5CfB9N=arxsxf5V6pisVMM25UP9hvbbFL7R-R7sA6xB3A@mail.gmail.com>
Subject: Re: [PATCH 05/12] ARM: dts: imx6xp: Use undeprecated reset-gpios
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Christoph Niedermaier <cniedermaier@dh-electronics.com>, Marek Vasut <marex@denx.de>, 
	Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@dh-electronics.com, linux@ew.tq-group.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274241-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: C75BD267885
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 1:08=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@oss.qualcomm.com> wrote:
>
> Freescale i.MX6 PCIe host controller bindings through referenced
> snps,dw-pcie-common.yaml schema already document "reset-gpios", just
> like Linux kernel did for a long time.  Use the preferred form over
> "reset-gpio" deprecated since commit 42694f9f6407 ("dt-bindings: PCI:
> add snps,dw-pcie.yaml") in 2021.

There is a typo in the Subject: imx6xp ---> imx6sx

