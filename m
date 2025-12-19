Return-Path: <devicetree+bounces-248265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC8ECD06A8
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:58:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A5FDF3004D00
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F320933D500;
	Fri, 19 Dec 2025 14:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xSUVgFWg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6479533A9FF
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766156045; cv=none; b=LRUd/ByhunsGIjpcw76jZKjgfNWAsmgbv+2HXsa5NzIAHgHYhdcd11Z5YjfbktqPTAReaDAVWUMKDG2iC0jGkPma3G6X0RX6DQU2WD9QA+gN1YGx+Lw4ms11Ak/s+C2jJLFs+GuvTa3i5ti/z4aDSVoNnxlNlPhpNebydNsxP8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766156045; c=relaxed/simple;
	bh=2SY5w+tUH8s9MZEweKPOypbqcfjFIujvFs5cE+TaQsk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=raQGE3rviwCVSWPtixEs7iLEmStIG4I55NTAih28kcJzijcH6BxrYx/birlHMiycXPQLLCGiE304seaOjGbDO/4Nb88hZQPMwrSrZ+UY4uj980+5We4HAXWvjrxn45SbMZdGnbqzVSd4riRayFRmGme3baBfFVTXAnDjW4ehVw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xSUVgFWg; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a09d981507so13101715ad.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766156044; x=1766760844; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2SY5w+tUH8s9MZEweKPOypbqcfjFIujvFs5cE+TaQsk=;
        b=xSUVgFWgtgFSj6LA0if8keTrYc0UGCZbjoOSsblmCIQIEYQyGofoL/FsSdAPzZBWTi
         /RKPPHp49G7uOIyt1L4Y9GlOUEpvub8RaU7ThLp7mg5Lf40zDKn9UXzLTyFpuBiuF+ua
         22VYkF8ipNcH5//ARwgwoDF7ccVLfMLoHKR2rVmsXWnjVZBXY6V+UfY4sAAC8IYeDp2t
         2tj5OiJOZ9YprZjKy1HRWpLTwjAGLN7WtICDApMkkKe98vV79XUO08PxwIz7vekZQw3T
         uKov3b3OpPZ0iLpfxiObi0/nCtiNBchX8ucdNukY71ltoJqTCneEwXRXNSFfy+XDmcVx
         S84w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766156044; x=1766760844;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2SY5w+tUH8s9MZEweKPOypbqcfjFIujvFs5cE+TaQsk=;
        b=KqH8qfGBeuOvCbdclzjYumjGQ0SY8Oy6Ms4p57jD7dFDRmHnbwoeNM9sd+RhmkkVD8
         d5KqiBLmf0swwT/ieiWeCamWKo04CP/mJfzXqAnH7AQ1jwj/mbPRkxvlY+SXN6pl5JDS
         w9vhZdDfxWr9rcsx99jC+Uo8df59sAu5zuPD1tbY4pjqyeFYh5yLze8o459GSSx86VqZ
         vtdx/uj+mzqAiUyUtO7sEDn2QFwxY6IA77Xd/vwbJCl1Vst2fgL1p9ZrwHZMZAVWK2hZ
         VkVrz9mnzASvBe8ewoxTlH8V1Em/xkrT7uE1VPID4GhMtHyeBzNbcSg1N0irOlcOb0z/
         3LpA==
X-Forwarded-Encrypted: i=1; AJvYcCWyi5a35wB+6F/pzggL00tJFKZb2B706EpJL7cqegORUQt+qRIXfNxUByYxgejRm5RD76hwIfWerypu@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+izi1PxOkACCqQ7gyYWGQHLt6K7sNGRztfr+GAByoedijAjw9
	40RdlZ2kwNYcTXwfxnilsUKXdoZsbYAikUmcmPP1h26UpE286kqV8Vn1ORdKbYgSIOE=
X-Gm-Gg: AY/fxX5XSPn51DEuRmmWzg7gslnrls1gLDqewlurvnRNcJ+cKPkyeWPuUuKyJvsDzxe
	ajyObmt3/ERTlv1WY3cT3mEpnlmdj23hydbCghqkluMhecbSiem/dC/FyjqGKE7tnZqFfBqdLxk
	O1V3AVuhMQG+hDeHwPo5IA6iKVmUepc8A9EwYq7w7+P1+fDhv0V4qh82zDXgasxH5SP8kIcPuZO
	6hSjp1sZB5XOLlEzUQR8qeFTRj3qqP+FZH7OcDdF0uzSmEbfXsH8Ru35wmP0rsKvAmRNb8howL6
	ascalnPzyrMGS/A1bsSAArDX0fEPCS64xp6ewHf5BVtQP4UTGF9uYz35tuxK164SnyJkwazQJNr
	VXQo4lfMJsFYCqZHLS93m8PQlYi059lmVsXqYed3Cb7Vc5afSkcKcJI/J2n2pvz5S/+hWXWr9ph
	OzHnA2JRfazAw3eA3wbhIrGxIBgvGC
X-Google-Smtp-Source: AGHT+IEfQV9bnP8fsaEkN3KGv8ZqOWPjOs88+7XQncM6ppKvoaKoftTo6/MtRekt02qZ2G9dsu6RDA==
X-Received: by 2002:a17:903:3508:b0:2a0:9047:a738 with SMTP id d9443c01a7336-2a2cab1635dmr57855615ad.19.1766156043627;
        Fri, 19 Dec 2025 06:54:03 -0800 (PST)
Received: from draszik.lan ([212.129.80.126])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c66bd3sm25192085ad.1.2025.12.19.06.53.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 06:54:03 -0800 (PST)
Message-ID: <5b366a0c0d7f4dcb6a3daa793ec503a43ea754b4.camel@linaro.org>
Subject: Re: [PATCH v3 1/6] soc: samsung: exynos-chipid: use devm action to
 unregister soc device
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>, Peter
 Griffin <peter.griffin@linaro.org>,  Srinivas Kandagatla	 <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
	willmcvicker@google.com, kernel-team@android.com,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Fri, 19 Dec 2025 14:53:58 +0000
In-Reply-To: <20251120-gs101-chipid-v3-1-1aeaa8b7fe35@linaro.org>
References: <20251120-gs101-chipid-v3-0-1aeaa8b7fe35@linaro.org>
	 <20251120-gs101-chipid-v3-1-1aeaa8b7fe35@linaro.org>
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
> Simplify the unwinding of the soc device by using a devm action.
> Add the action before the exynos_asv_init() to avoid an explicit call
> to soc_device_unregister().
>=20
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
> =C2=A0drivers/soc/samsung/exynos-chipid.c | 28 ++++++++++++--------------=
--
> =C2=A01 file changed, 12 insertions(+), 16 deletions(-)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

