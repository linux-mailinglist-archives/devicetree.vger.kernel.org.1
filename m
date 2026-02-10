Return-Path: <devicetree+bounces-264381-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNbMDaQai2nSPwAAu9opvQ
	(envelope-from <devicetree+bounces-264381-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:46:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA3011A5D0
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:46:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 53B5E300B9E8
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:46:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44F3930F547;
	Tue, 10 Feb 2026 11:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I4ozTvC8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA804221FCD
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 11:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770723998; cv=none; b=o0ycpFXmnuPAN+mXZM6AJX94kabZJnuGF+FcDTFnbPCcncGfVmEWGSKh05YYAFyomI4b/fE02GsalREMGQc8C0L2SQ7/5H+84QDYFJXDoJmcwrsqecgL3mtq1gqXtm6Iceec0eOXNO8iOZi9WPI0lSfduBaO2UxKLmReaGMQaJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770723998; c=relaxed/simple;
	bh=zc5tflQ79bUhmMOCZPDFHjXYBcQcDGycOKsVYYk9oQQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=KM+nt40m+VZmDkZFqt1WmGD0GT9Fs1+++l4PFGBJXI5CRQb50Es7cwTAmyZ4ggnOiCcsTG8N2cPnQ/SuXihrJaTHIp7FUA4Lry1y2sFojsAVREpsvulwj2D8wO/6Jzec7uKZqUwe1i6aJSDD5XUEmBLYqmV0a5wMLZYNvqSo0h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I4ozTvC8; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-b8d7f22d405so95161266b.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 03:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770723995; x=1771328795; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zc5tflQ79bUhmMOCZPDFHjXYBcQcDGycOKsVYYk9oQQ=;
        b=I4ozTvC8sFSui3fJZpM0ZeWbMtjGFIisRO/xYqIkbwtS17BC94OWrJ6Uzni+um8Trx
         8WaH/WJ/AGK3dsbLZrKuehvu94v6H11C2FUzHgCXeQH5nxwaVpgntGOn7UfBAKOB6Dtv
         je+KlpnXQwB89s6AFE6z1Bex20Csppnm+JZvsUEUx0PC5CuyTHDvuzr8c+NqJ4iLr0Pk
         ehABxddwMztCeLkLc1GcHbEMucoOvn2DV8FiZHxBWZ9vT+hpzk0mwE08KiVDxUGJDwnx
         3MePQUVYvQnyfwHykY+1bu0YHx2h5sGXGiRO8ocn+89EfP9+8oL0eLJdKfjQ9FBIKA9d
         GYfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770723995; x=1771328795;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zc5tflQ79bUhmMOCZPDFHjXYBcQcDGycOKsVYYk9oQQ=;
        b=CGAfT2TP6n0ENNf/fNPXHyDWO761JPXi4tGOhyEVtuZZBhC41mC/cU0vKNce4OpfBC
         BQD9qcQrMU1iuHwdNeHwR4jkN5tbewd+yMEmQlf6wRv2TtY8obVHD5ttOxnplVGLBrav
         lToQaO4ft58zq8EH35DlC8WSyuiOQt34xQamNpvIBy+y17nl+xYY3fzUFkFSetJlSq5N
         uL9XGXiSVxybEQXzvVI97ntnxjxeZasoM9llYRJmD4fDaHEiEkGIHCvTefeAeBtbRZbs
         Vk7eXhxep8lguVbkr+cnwvaCTTFYvaucscXXFqv3F7FVnxzu9/TnWtU8HAABTacbQD78
         pK1g==
X-Forwarded-Encrypted: i=1; AJvYcCVQVEOI1xz+RTbC7Nn3WBvz+iA0X8Ssjpsbf+GEJYisbbJraZK05aJ+/OXZcCjO4UZcGqorDxz/XWjg@vger.kernel.org
X-Gm-Message-State: AOJu0YylfvlTBGvdDP629xrmPbaaeyOcbWdMM2b/P7Ht+ByQp/KEP2qN
	pKYhkZjVeuk3P+2tyX2C0z3eNqzzFovZp0FJ7EicoHyJetBRda+p0X5ghaVceq9Q4jc=
X-Gm-Gg: AZuq6aJS44Mj5hQUXnZOyU8WRrNfp6bakIQKfUctSK3mkQ8yjIKorYocRyuT4YfjCwn
	vCe0nL6glvRIaeo7DzxfnJPTtdYOAa1+wwtiToCGJZdm2nWEemRXsYg7gnYnD4lH1Pf1IwvJhxQ
	cz/vEHRnJgU6ERfpIS47LA31cj62f4KHYVyLThrq/vVXyaLiGOrRaTs9SXsfI2RBgg/+6nibnt1
	ByxZ7rJ+LDEXGS5MvuWg4iaBoxGYY1D0ZnFxIwgkWG2+FjicbhUkEKhQxxIXNW8hwmrh0wyjhU7
	L9gmE/MiX0Hfop1mmxkCivaVzlP1zwN55JzMrU3X71HIKZ1mdjr7hVoMBwe5h2VpPUzklnhXaZa
	r4RptdVgrBmQaXIXv0qq8mO2rlTVadZy7CcIlXpBYkwlhSntibxrG3uTNW4E2230pY9Mm++pfUE
	tcEM3S3AeBajaCafT7ZWmmhdUSitOHwQ==
X-Received: by 2002:a17:907:a4c:b0:b88:637d:aa75 with SMTP id a640c23a62f3a-b8edf378326mr922391166b.30.1770723995271;
        Tue, 10 Feb 2026 03:46:35 -0800 (PST)
Received: from draszik.lan ([212.129.79.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edae3ae99sm530445566b.60.2026.02.10.03.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 03:46:34 -0800 (PST)
Message-ID: <81ef51394b2612368bceb81466dbb090260578e0.camel@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: exynos: gs101-pixel: add all S2MPG1x
 regulators
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Juan Yescas <jyescas@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Peter Griffin	
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Rob
 Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>
Date: Tue, 10 Feb 2026 11:47:02 +0000
In-Reply-To: <cf4073c76c2db84fd8fac3e1c2a63918bf9d45da.camel@linaro.org>
References: <20260210-s2mpg1x-regulators-dts-v2-1-68783c9e0a32@linaro.org>
	 <cf4073c76c2db84fd8fac3e1c2a63918bf9d45da.camel@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build4 
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264381-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 4CA3011A5D0
X-Rspamd-Action: no action

On Tue, 2026-02-10 at 11:38 +0000, Andr=C3=A9 Draszik wrote:
> On Tue, 2026-02-10 at 11:30 +0000, Andr=C3=A9 Draszik wrote:
> > Most rails are the same between Pixel 6 and Pro, with the following
> > differences:
> > =C2=A0=C2=A0=C2=A0 * only Pro has UWB
> > =C2=A0=C2=A0=C2=A0 * Pro uses l2m, not l14m, for TCXO
> > =C2=A0=C2=A0=C2=A0 * Pro uses bucka, not l31m, for NFC
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > ---
> > Changes in v2:
> > - add comments for board-specific and unused rails (Krzysztof)
> > - link simple-framebuffer to display regulators
> > - Link to v1: https://lore.kernel.org/r/20251113-s2mpg1x-regulators-dts=
-v1-1-80a70ef42be1@linaro.org
> > ---
> > Please note that this patch depends on the bindings updates for S2MPG1x
> > from
> > https://lore.kernel.org/all/20260122-s2mpg1x-regulators-v7-0-3b1f9831ff=
fd@linaro.org/
> > for validation to succeed. Almost all of them are in linux-next, but
> > patch 1 from that series is still to be applied.
>=20
> =C2=A0 ^^^^^^^
> patch 7

Krzysztof, could you take patch 7 of that series? I expected them all to go
via mfd and/or regulator trees, but seems final decision was otherwise.

Or what's the best thing to do?

Cheers,
Andre'

