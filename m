Return-Path: <devicetree+bounces-227413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DACBE18C6
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:44:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24E3848059A
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 05:44:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44A1523A98D;
	Thu, 16 Oct 2025 05:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lZrCmrZv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 893F6239E8D
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760593485; cv=none; b=efRNaNnpkbiJr2e25fIQNmhvd/ZGUkt8m1SvQWQUmhRmUb7KbUsOVrwdF2PUSLWhru0Jcl6jNouCFhgsXKSm76GfMcDl2Bly5fFr1vOya/nYPBEXHao6R5tv/SKj5G+1HT2mBNQi6I0E1wBvxSbvBAplByQA+zIdKic3jGcoCqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760593485; c=relaxed/simple;
	bh=p9TBkTZ5r+V3Vqzg3Erf9DxM3Aqb0ebyWyF6uv/8DBk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=MeSLz6I2xe3TU4KexdxapcPjEsTK21InA+qac1y2zCmKueaxNON3s9orv4KjpN2oMFBPwSvThBQMxGe1ooQMaIWOCen9tBogFW4cHujUGMpc96b20WgbXSkQqlgAuy5K2JDPT3HIooHvm1lLfn9/xdLhyHJPDUAj372NCPd6/2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lZrCmrZv; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-639102bba31so523684a12.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 22:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760593482; x=1761198282; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=p9TBkTZ5r+V3Vqzg3Erf9DxM3Aqb0ebyWyF6uv/8DBk=;
        b=lZrCmrZvNfSUQPPoKBfDSDSm6QKmirBXZlL0AmcrljEtiLekyKw7MB0fhCclDrkobV
         /HgV4JM4VFTKiDq2mC2AqT6MiRxk1C8npSBVUE3DHxpRX/5g5quqPPxxWSUMU2KmL/Lm
         dPO0m0R4s946uOZog5gTUCeKS2KdIYh+JzJhhdS5lXd1vnKM0fVanRlDGBWMrKoXSjd2
         kX4c829jhQX0IXoGNWD4sugQS5BtJbgDhJYXVC2/NYA52vTUo+lN3HShwHXi75fj3Fu3
         ZFMlaNKd3uquDsKX5VHU2jGrZyX4h1b2Kg+cz3snwdLz+0qkzZIEQtjzJjcShTZWG+QB
         K6eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760593482; x=1761198282;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p9TBkTZ5r+V3Vqzg3Erf9DxM3Aqb0ebyWyF6uv/8DBk=;
        b=IUrwpXxLJJEhYjkZ4xIE4MNaPvn1LshrbfdKx6lgJIfDts3qCAxF0RYayb7zwBSJ1E
         aFdVJXAlMwjAsO0dMPfW0YOVMg4zRFHa2mVBNLy9Z5jDd+gZhWbLSGsRMDWxoUcLC6u4
         6bLehyagtiUa9rIKhfylo5xpEIY2vqHCuUr7KfLUF1nxlDg6sY39NTiltGGWz24KqaF9
         xN7q1XIvPA8fxxdznQpW28dQsuZPXugsk5rhHdk2OyPl8ZrYdpnuS2kbgqElqwM0HPHA
         6PdyERomMHUfyJUBCji57sKPOYsF9sJfT/TpvuWwlQFixHkT+6/i+3tDRtZ43O78s7ED
         PdSg==
X-Forwarded-Encrypted: i=1; AJvYcCVGngxB6ZeU0zl0i5iLkAqEyQ/FATtrKkaWAqXsci2e0WAtYQzupI8mMWGgavaGsji4cJ384eRevSyi@vger.kernel.org
X-Gm-Message-State: AOJu0YztJkL5Zu0Fy50Jvt5EvZpwx6gBkxSMzPr9zR0imHm6AnYcqlED
	sCzUEQkJ/k2ybH2huhbbd+9/wFETOpiBkeuPTUK21R8v5R3tYqNd87OAK7b1isYNdGU=
X-Gm-Gg: ASbGnctwswHA3JUjDcgHESmb3hogoCnM6vJo1ZxMlF61Xb+/f3x88OvMS+Od13Yq2FD
	UskBA3rpU1Fp5ltoRB7g4ImCnFMcysSWFVFmyD1yEGICPV7UF4qb3Q1ZIzL987UHVzwOQ2LOxMY
	8pYP9aTYQhmrVn3pbxUPtm38cFFWRdIKiJdG/qvIrDqQIg1qN1WqZNG1UxO/Xx4XCMdZ2RyHqYD
	JG4Vgo2de6fLNd0rpoe7OoYz7ZkfTGGvlPmUE8J/N538NaRZkwa5is9xuFkpMVybB37PTpvqKvp
	vZFv9SS9Ub9J4nSgRI/ryebUsgVXJ1e8itQUTTREA1XAaD4JYzE3jH2JiXscdfV2WGT4CkU6D7V
	riGp8tc2K2kCLukmHIc5QilQBePS1UYq/tntpwsMTmvPXwxeWR2DAdnvOULqBAzVdLBCfzDLs6z
	u1vDL6A08P2QSpe5IeRw==
X-Google-Smtp-Source: AGHT+IGTAzXneDlTJJthrwyFh1A2mpMs+brYmC8fjkaobeSG7qIGMGjBpTwlt/OHwTYQt+NY+Zh2QA==
X-Received: by 2002:a05:6402:d0e:b0:634:5381:530b with SMTP id 4fb4d7f45d1cf-639d5b8956cmr28820056a12.13.1760593481782;
        Wed, 15 Oct 2025 22:44:41 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a5c133412sm15055961a12.32.2025.10.15.22.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 22:44:41 -0700 (PDT)
Message-ID: <a8dc26e96c6ea0bbb2b9f02ddf3360cf0fad8331.camel@linaro.org>
Subject: Re: [PATCH 1/9] dt-bindings: soc: samsung: exynos-sysreg: add gs101
 hsi0 and misc compatibles
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>, Tudor
 Ambarus <tudor.ambarus@linaro.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Sam Protsenko	
 <semen.protsenko@linaro.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, Krzysztof Kozlowski	
 <krzk@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, Krzysztof
 Kozlowski	 <krzysztof.kozlowski@linaro.org>, kernel-team@android.com
Date: Thu, 16 Oct 2025 06:44:39 +0100
In-Reply-To: <20251013-automatic-clocks-v1-1-72851ee00300@linaro.org>
References: <20251013-automatic-clocks-v1-0-72851ee00300@linaro.org>
	 <20251013-automatic-clocks-v1-1-72851ee00300@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-10-13 at 21:51 +0100, Peter Griffin wrote:
> Add dedicated compatibles for gs101 hsi0 and misc sysreg controllers to t=
he
> documentation.
>=20
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
> =C2=A0.../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 ++++
> =C2=A01 file changed, 4 insertions(+)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

