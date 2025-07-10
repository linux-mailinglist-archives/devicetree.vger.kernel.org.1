Return-Path: <devicetree+bounces-194837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4F3AFFB23
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 09:41:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BEDA01C46DD2
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 07:41:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ED50289E2E;
	Thu, 10 Jul 2025 07:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tWh1GAoz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D3328983E
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 07:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752133274; cv=none; b=E3izN4qeaxP0nrUVHmdLrArh0DRf0WnJpkIWyN4MLHeUNZhN9xDUqMM/W4eAT/XnO6PCVU14h8uCEZ3IAKIGAtGCjmZsikFgT8u3MDLhW6kGXJMsYg1gRG1y9jC/hytXOmGuNyrESzndsgsTqlSD4ul1z1ljmrqyhjNT18/W18U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752133274; c=relaxed/simple;
	bh=GYNoVdAKRWVmE1F4lpwjJnXn6AMF9TT383wPE3kxNxc=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=BG/cNlYzlpNMcJlm683zK+7t9TP5lFefClYCdnJHsiw8oo+nfquyi7yZCEytoAZSd50uJBBLrvrvCVrI0O+Ea1Hvg/oj0gBhps2XxS2+Z9ArCruqKH3jnXIRwqYHvxpqkN9UBxFbGfPImUwCi6y9cpjB81aAz/1izJg4wJnHU8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tWh1GAoz; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4537edf2c3cso6374975e9.3
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 00:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752133269; x=1752738069; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GYNoVdAKRWVmE1F4lpwjJnXn6AMF9TT383wPE3kxNxc=;
        b=tWh1GAozGBaBEaktfzI0TSxeCkQCh2GdRNftwCT5NiVsgJXNE4ujW677GNFn5h47HC
         IZOeaS/DqSzF1oe6Ba9xQ8B/rrJ2Vzfo3MkCaEOD2755ttnpdcX1SjtQTlrf1oaychwl
         CpfGKLq4nEqEJO4vX40C0wCda0fK9m6pO+vMf9b47tlSUta+n0b1Glu7zdkm17i8azn0
         pLF+Y+o0Bw3ZiLIvDoNjrZQEjv4pmZM2BQgt7tKVfHpxTjQ2W4vWa7Ai1ZhpDM4MWBbj
         nznqIlC2So11ApZYfV8iHvu22eJjESCxXDiRSOTUhGOGkaKrc5AmGh2pFXeryqHwYz1k
         zbJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752133269; x=1752738069;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GYNoVdAKRWVmE1F4lpwjJnXn6AMF9TT383wPE3kxNxc=;
        b=F1/tYmfnFib6Kep+OpU4OzHQI9evq2Y/dTljB7vH1nveyR7wqDpzxAbS0yRV8hM7jb
         fl3jx/1UsKYl5NqmMFyZBdYtGviVWxPmqZZY7F97d4FFBB/tF1btVkbJ0v7ArA7bFnac
         vC60uSvng8HmHrvwC6VIeZZ4CDMNUNVmsDFjjMFLagd5n5JDnNhtFKtLKDKtj31QH9oJ
         97LHf1derpMPwatcdvhg9YrG22PNlkndw6SuiSHVXSb24yoUs1Cae/fvM7cgRMJi0T11
         nOSzF2hqgE1gD+sIWUEk3LnVjOHcngXI/UE8NzHcJ/pw9MlYgqOzgWy9oy2809Nbp2wR
         kRoA==
X-Forwarded-Encrypted: i=1; AJvYcCW0rE66mMukI1l7QiXJp/xwjeA0kkoEBzE4biYsJYfZOVU3zPDUtprr0SmYIbpGkKj576Z+4/D4o8yW@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr52VZupMj54IU6MwYevW/mTmrw4jqEFsmvHgt8pTeViSlJiAr
	RfJ6sdnQqVw07SqoKDDEg+cllj6NtEHKtdE0FACTO/hQVOKaqyNf/1RPbmNESXKGy24zEcJG/Om
	mnc2x
X-Gm-Gg: ASbGncu7dQuzG0Gzk+yJTWeOi5JDBT9uSXoHtugB+cyHCp44SWLx9W4ameW1xfDWFrD
	2n4FwJ3/MwiYE/xVNq5YExOyC1BswtCPADZXlSygws9Wavz0YQ8FrWlqCiXxcjZwNVeqHky/Mq9
	JY7kNNX+KLtrHxb87bHUppaFoq7DJM2ZQd43ai5MsHxNYJolJh/Av/MZ8421WMz9Bu38FqPZ8un
	WyAKRxEMCdyJ1Wk2n0IRHjNMZfq/3XYbdq2uTw+gyCMf7UVksIG+0/1T9mVSL5SLSQSy704k4Eq
	UIlWh7P1iUsQzEkWZgkojxVtuU3M8q1Db90zt8lw3bVHNBqtED0S7H2bryfnXvl9LjhSv8dlzPF
	1
X-Google-Smtp-Source: AGHT+IHAKWHAz0ARt1BvQlaWFcq4y9BAt+xbNRCyzxhCMv47nKYFLDZpuaCU2IxFuVRakMsMLi6B1w==
X-Received: by 2002:a05:600c:1546:b0:43c:ed61:2c26 with SMTP id 5b1f17b1804b1-454d53a0186mr65715925e9.17.1752133269645;
        Thu, 10 Jul 2025 00:41:09 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454dd474a9csm11086495e9.16.2025.07.10.00.41.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 00:41:08 -0700 (PDT)
Message-ID: <fe445967514bbbb5bbbcc806f98dd6bbac9e032a.camel@linaro.org>
Subject: Re: [PATCH 2/2] arm64: samsung: MAINTAINERS: Add Tesla FSD DTS to
 Exynos entry
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Peter Griffin
	 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Thu, 10 Jul 2025 08:41:07 +0100
In-Reply-To: <20250710073443.13788-4-krzysztof.kozlowski@linaro.org>
References: <20250710073443.13788-3-krzysztof.kozlowski@linaro.org>
	 <20250710073443.13788-4-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+build1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-07-10 at 09:34 +0200, Krzysztof Kozlowski wrote:
> Effectively all Tesla FSD DTS patches go via Samsung Exynos SoC
> maintainer, so add the pattern to make it obvious and reduce the chances
> patches won't reach these maintainers.
>=20
> Cc: Peter Griffin <peter.griffin@linaro.org>
> Cc: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> Cc: Tudor Ambarus <tudor.ambarus@linaro.org>
> Cc: Alim Akhtar <alim.akhtar@samsung.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> =C2=A0MAINTAINERS | 1 +
> =C2=A01 file changed, 1 insertion(+)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

