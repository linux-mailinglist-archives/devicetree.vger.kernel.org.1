Return-Path: <devicetree+bounces-224942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1FABC91A4
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 14:45:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FE351A62655
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 12:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E26DF2E11A6;
	Thu,  9 Oct 2025 12:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XVjMyp9y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6432D6E55
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 12:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760013926; cv=none; b=efMsX/Rh5w0ALF3ziILoI4l1LOR8zGjrwesTK+F1rAKrfiuUzDfqrk0/J5SpG0Bzj0sEtQAZbEQ569nFm1r3+wOn09A3DSbD+26OX2njCdQyai1+2A7pXkrRsP5Tg/BlNFAlNJo7wjSafbhidhpSHKiJKq8NTpfHX5kAZ/C4pok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760013926; c=relaxed/simple;
	bh=+qIn+RPmmwPv3OjgMXBX77cROFYyBV3LwSb/xEzaOA0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=AHMre328lRFwsymH4hmbsEzluc1rdfScu98MRPLUW7YGor0kIrDws/NFjaT/B+emircq1uf8H6KTahs9rxrOJ7vUqNSxG3gurJaMA356J1LxJmMOhr34kxY8ZIwlJzvBd6P7tQLcAvxG93HHZHUH61JffLfDrCCfDW9njpyU6UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XVjMyp9y; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b3e44f22f15so130128366b.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 05:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760013923; x=1760618723; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+qIn+RPmmwPv3OjgMXBX77cROFYyBV3LwSb/xEzaOA0=;
        b=XVjMyp9ybbgsoaIoC6phHf0gwxtiqkvDTBltEZRWMXSk6fiOglqgNCBGLdih1aeLXi
         wXwSmbwg+ykKhcO7s2ekQZiqcb6+L6GbxwAyGMJrF4w9/Du7pbucRWUN8zDwRam5Ui+z
         I5fKc7qcG3dSzvD2cG4TzOCc61dyPqqBIKKtSMYmAPOgGYSrimg8vOIhlUZY3ClIbQWd
         0kIbhYFBP9RCKAg3ZKqthtPQPcMOSL6vSG0TvkRh0XsXDjrjKTKGTqcSfb52Xp4A+qX6
         4XHPyTEZ4uokAguOhB8yFBvn0wb8AIVgtofX57M5I1jVzH5WJWAqr1fR5A9XD/XihoSl
         4RZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760013923; x=1760618723;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+qIn+RPmmwPv3OjgMXBX77cROFYyBV3LwSb/xEzaOA0=;
        b=GCK8C/bozZQE5Ytkb0WBpDhLIG6QTPzcI0ZEKAT/WTKtinbug/Ppz5ksrFYQnvkbWC
         5m+lyKhSApr8Ym+gMe3Li5GDwFEcB2bBknMI7KRFo0325mi/GeoVoLutfYIFKfG5uwK8
         fh2bonieBJ4PzzkP5waNEKCHAg5TP7opD+KiPsRFM48jZvAXhQ/1bPmf/zrIBSKIaPT+
         LudsYTzn23py2Se1hKpf5jaMpoBM5HfRzqufaoPuoEvpjKFbRKzZsoTl14+uKYECiOOk
         KiN2gHkpnmwBAseP3ql4glk/J33N3V2a0so8DSVgrg6xO7xCQlLeZKW/H12pgcmsCM/B
         eUZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFH+LZZhZOfb3KhC78BYQi9oiLM+neaWr0IbJNWQOajx8QV5ex1pJqucS+mUpURYCES/UGdnw2t66G@vger.kernel.org
X-Gm-Message-State: AOJu0YyZpQlpI94hE2NYzvWYiYpi/J7/rKSQYze0nLCAtinEZelJXGg9
	pRUfJIGwn5WD2FJROdzZvhJk+XIzCzgdHttHwV7YyWLtpZaKK5vpUQkFnXPg0bHLeaE=
X-Gm-Gg: ASbGncuRnY5rh0SZhDdCKfAcUJhfq28O2RJtTogMWkSYZyzhqfnIhp8xleSWN+l0jBb
	tH0qsuEznIm5aEPn+6+zUEZEhhYZbkL9OoTum2XPzL8AfecPOUYGBWK5aGwjKqhG4jOpMxK5mda
	88m/lMsN6jDTolgq2B9i56lCqdDEjqu5IAv+HrTBQL67le9UsUUn4yZhKzaKZG8bQc7GeYrwskR
	GYwliJkoVX26mtOeCY3stvMTk18V0FnN7EJZ+wBYOuDhKF4rD1CdK0frkaMXehbnsmVyLtGqjSW
	jF3bFWPdSax6hEok9Q8J2yplvQZSdQE4odN3Rg547JAAkucGzoYwVjazta8hIKovJQyrAgBGOon
	4bgTvQlJPFEr3rZdk2GGEl7f7n7rR5Sled5yysF5gj/pCEc2YZf2bbw==
X-Google-Smtp-Source: AGHT+IF1kryN6ovbJfIQc/Fy4MJIAskuq3zQgUsbduVZ1K8QdtBLyuZQWhuT43c/0DSCHjf+2b58hA==
X-Received: by 2002:a17:907:3daa:b0:b45:60ad:daf9 with SMTP id a640c23a62f3a-b50a9a6cb4fmr894498966b.3.1760013923400;
        Thu, 09 Oct 2025 05:45:23 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865f7420asm1880196166b.43.2025.10.09.05.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 05:45:23 -0700 (PDT)
Message-ID: <8e95e30e0ca9a85ee40f93e01c23edbfb4e1b3ff.camel@linaro.org>
Subject: Re: [PATCH] dt-bindings: soc: samsung: exynos-sysreg: add
 power-domains
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alim Akhtar
	 <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
	 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Thu, 09 Oct 2025 13:45:21 +0100
In-Reply-To: <13426fe2-d4cc-4d87-bc4a-4a6dca955456@kernel.org>
References: 
	<20251008-power-domains-dt-bindings-soc-samsung-exynos-sysreg-v1-1-ab41c517dec6@linaro.org>
	 <13426fe2-d4cc-4d87-bc4a-4a6dca955456@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-10-09 at 08:42 +0900, Krzysztof Kozlowski wrote:
> On 08/10/2025 23:17, Andr=C3=A9 Draszik wrote:
> > Sysreg can be part of a power domain, so we need to allow the relevant
> > property 'power-domains'.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > ---
> > =C2=A0.../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 3 +++
>=20
> It is not part of power domain for any existing SoCs, at least nothing
> indicates that so this should be restricted as in example-schema to GS
> sysregs only.

Thanks Krzysztof, will do.

Cheers,
Andre'

