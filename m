Return-Path: <devicetree+bounces-248268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8684DCD06F4
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 16:02:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B4BD30DEA34
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA0C2328605;
	Fri, 19 Dec 2025 14:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="clQ3KbMC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF0133B6EE
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766156291; cv=none; b=RbrMzvY4z6zLR9qPxztoGsp8mvKsBF2Jp96zrKF9je1Ii0dkc3ifV3y7Mjs/m91rSqHFI7asLggUzlXaVOUQjegUP0domVdvsTsAhRPSvdleH8acXLr1WqS6/FwaoJMM4tzvVp1tgJN74AlydUGqnUc+m9/z0gUv/soHbaBcr/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766156291; c=relaxed/simple;
	bh=bNc1dQiwRs9Ssf3LpIDfqsGZyzRfK4SH6H4kXeHx41I=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=AvmKMy+FE1Ihj+h/s+Ztmy4c5VfWJr2Gpuc3YNwywyI9NQH1e0D+mLpOPGKnq3BVH4KtbFbHLe8it7KBU3F4sKhnmdhrArsw3UMRJxR7BAgFYWqrJ2sKo9V5J0/PQIMjQnT1WcTXRUeSm44yP1Ut3+lBRzICiQKv9LUgUHqLoZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=clQ3KbMC; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-64ba1a1ea06so696782a12.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766156287; x=1766761087; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bNc1dQiwRs9Ssf3LpIDfqsGZyzRfK4SH6H4kXeHx41I=;
        b=clQ3KbMCTGib+8UNjd6fz/NKm/I5e4T7FozpYTLSRp99jsTYJvv6C7VgWbVAmJk4RH
         xOsa9szyb2Y/i4BAKeAaHV0oq5qRIUIYuNQEykjLqWuo6sa80ZL9Rvpe1ZRdHTkdsGoJ
         0rzxx+i4w3Xlw9eEJlV8xC8+HLa6FyknAx//nHt9M6nykYq6t6Wzs9NCFikok47fNX02
         mbqx8CYMJk19kGKmZxbN8RsY4fGrlHUcZmsLlUTfHroo3WOfpxQx+ENolYMu7M+4XfxM
         uVoko6DhUBKZ+tekLvMf1hBpcYreKeSt33GD0p1OnHAE9HEh767967dVStZQNz7dHgdm
         xvKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766156287; x=1766761087;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bNc1dQiwRs9Ssf3LpIDfqsGZyzRfK4SH6H4kXeHx41I=;
        b=BnNMAPfSr5Zwb9BdZVz4QzzipbQGWkfomzgxSWMm5bqvYKQVzvCB2t5GOJL4dRMFSn
         yJy7lDCYRt2NNVh5duFQfKH7aoaiaPSP2yLuWgtlgjOfo/PXxMVKviEXgE9LsVRmzulZ
         MNFdH4EGoEH6GVjvdOvVbwLAWkFh3eiBVkAnHqYJ3bDzcVW35HpeJYVEaBFdl0oR393E
         4B2FW37u/7SQtH4QB17hR39g7Jo3IRA4q5KQv4rTiXdfXzXvYsAF7a2bowdmDaBq+2GA
         M41Z+0Mq9U3bmI57EbH01OG/6OrBFDEQfvbp08wiSIt1mbuKVcigvyVBaKUXExLPERv7
         VD1A==
X-Forwarded-Encrypted: i=1; AJvYcCUcGpRg8NZq0z3Ff5gS9S+gEloH1HoDVt08L4ATMP/RdJKWV1V31P/79RIgrH74UgAWgezGrLNpMqoD@vger.kernel.org
X-Gm-Message-State: AOJu0YwMuMrtzYRAbanCTC0EOyhB+YtHwNg0CkTgmQEQ/4Os8C+7VABP
	B2yGxhDjUHkC50KJqf/G33iBlcidRCcIVgxYMqLXrCzCxLBj3iBPiJSYOenC2HpSez0=
X-Gm-Gg: AY/fxX5LE+Q+5ueoLTpJqARNzQ9EYbIZolFn2iEC+H4UD/mGj/aEgxp8PeMxiaxLPx6
	M3P9cdScHbkOzgQtcysEirEZNfjnclENXt/ayj+BhlV6A5DcSSicVr4kMwiMzImM17kS7oJwWl7
	hbbjZczR9Umrtad7uZLzhXcm5nK8oxSAQ9FCLm89g4GJMrbA75J6/NTpwHCuVhMV9jWOCEhAJSi
	yGAVdgfbzDcyvX5qhs9bQ1vPvhD0xII8ldKXlxLpGuQ5k8hjCD6X8ZktAzCJ9LTWjfV7jD5F8xH
	UQ+gUb1zNl9ql8jPTK9NBtNaCvQ38DrNxXYln1rjlFmPTWvf4vrjKdNBMPm5ms+XZfY1Kh8xQ6T
	IHT6+GYDio69zwq5HR7aaj45yMEmHcwpG6+k1XHlEMOuVfn1BHPa9kgkfmbAadF3+RaxBXAw2os
	j0tIz5pY+R9leI+X9UhA==
X-Google-Smtp-Source: AGHT+IEDWLL5f2CK6H3TmqDNWHhuiGj1D56NMXG4q2PHWr/qeo6wGDL4ChtB8dXpxrxWSNjxO3/ViA==
X-Received: by 2002:a05:6402:5188:b0:64b:83cb:d93e with SMTP id 4fb4d7f45d1cf-64b8eb6194bmr2724166a12.20.1766156287195;
        Fri, 19 Dec 2025 06:58:07 -0800 (PST)
Received: from draszik.lan ([212.129.80.126])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b90f53c16sm2370855a12.1.2025.12.19.06.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 06:58:06 -0800 (PST)
Message-ID: <cda2b1668fd30cdabc9a0d722319fec4e0706c50.camel@linaro.org>
Subject: Re: [PATCH v3 4/6] soc: samsung: exynos-chipid: downgrade dev_info
 to dev_dbg for soc info
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>, Peter
 Griffin <peter.griffin@linaro.org>,  Srinivas Kandagatla	 <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
	willmcvicker@google.com, kernel-team@android.com,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Fri, 19 Dec 2025 14:58:13 +0000
In-Reply-To: <20251120-gs101-chipid-v3-4-1aeaa8b7fe35@linaro.org>
References: <20251120-gs101-chipid-v3-0-1aeaa8b7fe35@linaro.org>
	 <20251120-gs101-chipid-v3-4-1aeaa8b7fe35@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-11-20 at 11:29 +0000, Tudor Ambarus wrote:
> The SoC information is exposed to userspace using the standard soc
> interface. Downgrade to dev_dbg to stop polluting the console log.
>=20
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
> =C2=A0drivers/soc/samsung/exynos-chipid.c | 4 ++--
> =C2=A01 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

