Return-Path: <devicetree+bounces-240259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A31C6F4F9
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:34:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CEC7338345C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D898535A95B;
	Wed, 19 Nov 2025 14:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SbJNpwjt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8079F34F48A
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763562161; cv=none; b=A8eRPUeBMN0jhdCYRzIoHicAsGlCpAXDyVeYZ0yxGVHVEHpoe2eP2Hrfhm62wHyhtkOsaDyizoBM2ylZ6iupw8Y9cLvshIDoCeVbSnnFgMB7lSa3EXgsxIJvq0LNHTUGsVpO0dzWo2YlaucqBzZk2WKf61ipswvNujQAAvcX/Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763562161; c=relaxed/simple;
	bh=MhrsZIbWzRhCkp8ZCo9BwzqVTC7yndSnE/Tw3//4s9I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kg49hTYEsOX1GhI0BeymjZNfNBlT9ZZh99MECOTQiY6atiB8XQVeDLKIYNtTdCfaQ5HjcTIlTQivy9CzaHmLsK41XUm/MOQTjxq4fZSksTc2oo3pWT2+uc3EzD1xXcgJg67CEHmhQApueEP/z56AcALM2Bv7WdY3uX2OGKC/TJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SbJNpwjt; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-640d790d444so6089022d50.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 06:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763562158; x=1764166958; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MhrsZIbWzRhCkp8ZCo9BwzqVTC7yndSnE/Tw3//4s9I=;
        b=SbJNpwjthtm/8W8rajTN3TBOYNG0IZZOcGjIhztrWsBJAOARwr49/KvjH0bBND+vX5
         q97U6xkYvMPOqHIcmJUsMjqU8iNdKrY0HoaM/cLoP+pWBuKyxnnNBsx0onVd3ZGg/jwt
         hvBhe0c8po6aFWGjffuLncll0F/nLWLKtxyG7o4fVJ5mUmjH7epP2XH5veOt/+ikPwR9
         H3l4MEPZyxrAEpZuDXdXPt+t0Z8d+ngLsNUbAC7m8MsCAxKdfNMiR13d06Y+z9p8KU9A
         4sYugiEf94/DjGh/AM9HIRPvTRi6APVUJvoD65TL/QwKhcYC8UJSWGgeHH883E9voBDg
         a1Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763562158; x=1764166958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MhrsZIbWzRhCkp8ZCo9BwzqVTC7yndSnE/Tw3//4s9I=;
        b=gstzlSABC3zpTTO7K8VTPXaN5WdFGgdkwlfwyH5oM0KNgvaOjIZEsG3GBsvIfyxmO2
         TArDHnUg/1rG4K7B88XRYwluT8u8E2mOh3tUQhIlXXSPCJJCMk6ng3zep5dBg7KG2lTg
         jqHn6w3rxRaQ4zG5YuPaoTAk+TKHzRMnfAt2Cvz2c2D0qaERIkb36sieUu378shmYEBQ
         MK2C1zFl9b8exUZVIA55OOmSozuqM9hkVa7f/DSIHfiE/SMaSOBDRVFVM4dps2zSw0db
         Lu/h/+MifwUTJF17MeIOvSEb1zMqfWlnreG1EKyxuCSmD9FjIxlPB4IxS4UJpt+p+90p
         h7FQ==
X-Forwarded-Encrypted: i=1; AJvYcCVp87ZWqUD5wIWP4oLdzq1y+2CAJBWGxb9Tl1HRDqiXx0WgHXPWYTlTcn++Nvz0B7U7o95dMWZrDULq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7KDylNODgAu/TBWapG5ikKx+CygfxX45Xa+ucTETPMHn6Vt8J
	dEUjHm48W9PVO491x6hsC7XVfAhshU60Ij743M09Q4lmlZ+hSOZ9XYhOld5urE00UY8VYbA4kzp
	FaosXs1Dhhy8q5GyuEk0JgLCri9ydjU7Yizvmyr4Dcw==
X-Gm-Gg: ASbGnctynq9yro8mcV2tO5aKmxu+2wnuu82+hS2dVUApyV3jjZw3awupjJ2koLQiV18
	tFAlKbqUNU2/HzfQfXZogAw+PKapCE8sVucCVaXZiYFm3KYYsa6NBuzop3EWuTbO5pIxHrBrvne
	xIYHfEfcH6TmvmWOE9AEzMAlcxIaAEmYLd/go0/XnJFFRM9fKqLZ2jpLTK7WXhmrNxuEpk34/Wx
	0fSZYTLQcNL/IBF3MrsSex7hyvKRbSeMo8os664AfeRNfoGg3csM8rNkkaroP+cCqnqDLwxU6RE
	lJB3JA==
X-Google-Smtp-Source: AGHT+IEK96oDDGhtSMOrFEinT1tokH4hnf8wTVBS3BSk/cku7ibmRWyEcIG9r+y6XUg52Cr/+RO7BwnZ8CPpg1m6izg=
X-Received: by 2002:a53:d00b:0:b0:63f:a89c:46f9 with SMTP id
 956f58d0204a3-641e76a391dmr13332400d50.40.1763562158314; Wed, 19 Nov 2025
 06:22:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251118213428.36700-1-robh@kernel.org>
In-Reply-To: <20251118213428.36700-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Nov 2025 15:22:05 +0100
X-Gm-Features: AWmQ_bkPvGHNxXPgik4goguOsOD08uL9PsXetzBiLxVbcWWbISsz0NGOhdm9JVY
Message-ID: <CACRpkdZ3bz2_-vh-RwVwicLyBOyfROE5EGtBqCgPYcy7srKNSA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: xlnx,versal-pinctrl: Add missing
 unevaluatedProperties on '^conf' nodes
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Potthuri <sai.krishna.potthuri@amd.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 18, 2025 at 10:34=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org=
> wrote:

> Add the missing unevaluatedProperties to disallow extra properties on
> the '^conf' nodes.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Patch applied for fixes.

Yours,
Linus Walleij

