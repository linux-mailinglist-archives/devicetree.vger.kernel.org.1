Return-Path: <devicetree+bounces-194835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1614AFFB31
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 09:43:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91A477BAA0D
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 07:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F146289E21;
	Thu, 10 Jul 2025 07:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X71MCt1m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1669D289832
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 07:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752133218; cv=none; b=KaChBitGjm8/tThazA/wMCgU/ku4PK28m01yL4c12DAUHQ627gj5AgJXZnfgm4CXm+8crscwMnKGvG/iiYCAoDXUM8mh9ZcZ4nUATorgr/5V9c2uEsf6h8m6dTXX2WmhfMDjfzZ5qa1ujqCUfBuwk7fUCpHLumgv26wUE0Rq3o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752133218; c=relaxed/simple;
	bh=bVSinIxBeazkKEKfcVYcVjaoUaV4wjv1lfQNu+0RDdc=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=g1UXP1VBU7xWzqvMeftPgUwcJi3A6/Rs22LIE7tOfeF7B7ngNtYxNu/0haWT2OQfspFVcUteFcWAA0Zn/sNa51qdCrgK0RAgCuONr9m8KTr3NtXjg9GsKPzLeGTKsM+/ooRP6ZI4K9xBFY0jFFFIa7KrQI761SDxCKFTf4RWKb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X71MCt1m; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-453643020bdso4440295e9.1
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 00:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752133214; x=1752738014; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bVSinIxBeazkKEKfcVYcVjaoUaV4wjv1lfQNu+0RDdc=;
        b=X71MCt1mpk6haB6Le5wYPXgVY5IuY62UveVgmBTg4Z1xUHkWVhqUxgVCAykNzH5sfv
         Qg9k9ds9qG9b891vVz59o5U4qS/Fm6xYrXwPQPAL2Lbv+VBVhtaWVLfIHG1MYAzpY6eU
         4qTxjJmgfw2QGXW6bKKOcY5pa6jcZnG6OGUtVSiG6Y7AYCsD9ysJ+mZlrtiZdK52R3Lq
         uPNk+bHsxZEVuN5IAENbdDMr/AnPo9/fFHa/lQ6BVwo7R8IVeu3BQ5U7cOHPOaojxuJA
         jZ4W3+sP/k6UTWnilVjpdV11zobnTM6Mdab0ruxgD5tA72K6yal1NXGqa17/lHKxLCiC
         bJtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752133214; x=1752738014;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bVSinIxBeazkKEKfcVYcVjaoUaV4wjv1lfQNu+0RDdc=;
        b=v2itLW1M3/k+nRiWEM2vz7VeWFR2GWnvl3Ndn0bLVntJsaBQwbDP/Yogmd7eiITces
         iOEMpKeVVVVONzNkGlGS43uS/ob2Y2b78QMEvhXO9ZKR4N1PLmvAY/kIjeNbJQo51mk8
         oXSGQSLKZzLtUPPQ6zUHmrSsOLD4FVEUUOr8kR1JuOEl3Eup0KkUGzEL8j2ugSAqj3tm
         K7kmgK0YjYSH8Eo7M+HjTkKeEKr5tQBZR5f1sinDqc2481dNuaRTxhoMpSJQjlIgLgyr
         /uQgJ7kXhFxCac+DH0GqUU3EvlqjnZ3aJ6igp5h65bZ7pCnqECeREntw7QtpJ22jyhD0
         MvsQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4+8N8rxLb5MxXqd4YbSrfrtHjR4B7xJGtH8idzRXy2laqW4CvLSnAtw+bGsjInF66Uvz6coewAGQ0@vger.kernel.org
X-Gm-Message-State: AOJu0YzvoRUawafmSa4d7q1TGVoVOK+elaFXQ58PCPvNKNShUMT2Wall
	Z2Xy97TdYezqZpqfnfPB6MOSowu2dAa6For0CQ6UYfXk8BuTiWENhYhOzOtIfKnJWKI=
X-Gm-Gg: ASbGncvtMJfI2Y/CKk4McA/jPRSS/rtVIGK+/CkNq0roFCOxI+cnjng2XTa1Y0x/gbz
	+RZmflhI6MlCuUy6t/EOV/jHUd+c6ajnnfY9aDF0ocatKDq2Y5ZrvSEsPM4Ctnd0WZHNxkkDt65
	x1DPXWkK7k4ZqxoqLqGRYQlhjcZnhHNuEHNY3WcKT5ELyvXVXc4XCabqbjfujJ39uBqjQIYQQIx
	lRwNmLzyDHRUZXnWvgLrpFcFFTCWVNCLyoojuiqXxYuqP64u8PhP1QYQBtTSywgeSUZYh08twCb
	67QKoN+94QyHYUJzDRSd1Kgih0d3Bukm3DwUCgEjsaqgbGmusOVf/y0RnXW5pslLMA==
X-Google-Smtp-Source: AGHT+IEw2BMJU0viDmTOvkyx/B/l0UKxFSMsiQvTqQWjzJquhhrpepUjy0pyReFZsMn1allOYgvtiw==
X-Received: by 2002:a05:600c:b85:b0:453:99f:b1b0 with SMTP id 5b1f17b1804b1-454d53a7430mr48773265e9.20.1752133214419;
        Thu, 10 Jul 2025 00:40:14 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454dd43915dsm11113575e9.7.2025.07.10.00.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 00:40:13 -0700 (PDT)
Message-ID: <965df42623d1a1c2bac49bd9420cfb5fad672048.camel@linaro.org>
Subject: Re: [PATCH 1/2] arm64: tesla/google: MAINTAINERS: Reference "SoC
 clean" maintainer profile
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Peter Griffin
	 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Thu, 10 Jul 2025 08:40:12 +0100
In-Reply-To: <20250710073443.13788-3-krzysztof.kozlowski@linaro.org>
References: <20250710073443.13788-3-krzysztof.kozlowski@linaro.org>
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
> Effectively all Tesla FSD and Google GS101 DTS patches go via Samsung
> SoC maintainer, who applies the same rules as for Samsung SoC: DTS must
> be fully DT bindings compliant (`dtbs_check W=3D1`).=C2=A0 Existing sourc=
es
> already are compliant, so just document that implicit rule by mentioning
> respective maintainer profile in their entries.
>=20
> Cc: Peter Griffin <peter.griffin@linaro.org>
> Cc: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> Cc: Tudor Ambarus <tudor.ambarus@linaro.org>
> Cc: Alim Akhtar <alim.akhtar@samsung.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> =C2=A0MAINTAINERS | 2 ++
> =C2=A01 file changed, 2 insertions(+)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

