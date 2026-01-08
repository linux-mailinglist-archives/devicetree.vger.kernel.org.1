Return-Path: <devicetree+bounces-252852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBDFD04850
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:46:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6C4833D8C70
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7092A3D34A6;
	Thu,  8 Jan 2026 14:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W4Lrpy7w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0FEF37C115
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 14:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767881282; cv=none; b=pLzBR3V8Zy0qT9/ViusE/WLcIoHe/GPPxsrPpu20XTjAGogqzlae+YO3DoniVvhBP32lr1FfFyqURp8E6hrqVMA/lXJtS1PhLRIYYOI3QK9giU/pPpSiG0sT4jn3M/JIiKB07hiKEhFipu9rruGKDwL96EnMO4XTEU7aEho14XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767881282; c=relaxed/simple;
	bh=8nMvPB8zadVyfsKlAj1v2LGmAamemGiweqUfq17KWGU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=E52QTHk0143lTvLdkKhDJFo6TZqzqKMm2XTbVZfZghMN9vuN4aV2VPUxi8j5pFIagRZ4IDd94xj6KKtfi26e3MIr4jqbAlx4MbX9QslgyI7PRAqc1y4s3vY77He30UZF/VPtFLw4xqnIcSF5rI7yq0uO6qf5K3sAXqBzU6rxkIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W4Lrpy7w; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47774d3536dso18503915e9.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 06:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767881279; x=1768486079; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8nMvPB8zadVyfsKlAj1v2LGmAamemGiweqUfq17KWGU=;
        b=W4Lrpy7wi4Za+DoaWL3Beih6KM3lrbMdbaKeMxsHe/iBXDZaZVT39DJNavFuW6fcmq
         kAp79Tb+BcQrru/tR7i10j2G5FNOHeHwXhxyW8OtG7mkKBelZoaulmDvAZ49QUtfvJ+T
         zrgg1fvo3/nksUSMoGVOC9LwoaG1ReGlKHjNea2kDzet9cY//Z+H4tZc/MV6jImbLsfI
         9gJFt1ZX08R8Ic7PGVH7AFVxRJtOfRFA5QgnuJR9Ned60SGNzLYqNHtrM59uhcYs5/pN
         ibt/m8V4TSoUntZNDdOxqzsgdOiKyfep+dxw6L3HlyzJ/GxFFMK/dCXFVdF0lDOGz9OG
         T2Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767881279; x=1768486079;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8nMvPB8zadVyfsKlAj1v2LGmAamemGiweqUfq17KWGU=;
        b=VvWZnAkV+gzHcwlwBXm41COvYvAltfDN9WltNJb/ZST8OPsGo7P9gQ6eQb3Dzu9DEn
         SyHZxXcNVfp+lZTgsJChNzeAKPO/PWmpXeq+BpI2I43kH6ZNax0WFABiGw3Ry9teVVbw
         4Ool3ZGD5dNwiYceVN5B4jBcjawfZ4XArV1sxCyFIg+qDMiDLQNkCc2tOwLg6rOzD0aE
         9rZmSQqbtYnI+oWzXX7nYtSTQ8B0y1ak0t1zjxUHRxbL24JTp+wX9t76r7ymYJVPH87R
         9PuH9zRJTZASbgLSkm2HYpPFOKnb5wC9CvwZHVvJydXwm35d2aDxHe5CW+PXXkFzMhIO
         Tyxw==
X-Forwarded-Encrypted: i=1; AJvYcCV1Oci2E5hN76DTTAAyfIuXrcpr26ggG1CwagD6O/GwIIM4rDa7tJN7VxfiCL8NU9UA5uSjZLVM3+F1@vger.kernel.org
X-Gm-Message-State: AOJu0YwcPoTLFdLOxjKEIXJeXNuPmZKppBtpKUYzL7gmnWBsqbwaJRi5
	zpnRIxZISEvLDspyhwdMi69OiMXuyqnocPj5LwFTyFLq1kJR+WnOnG7f
X-Gm-Gg: AY/fxX4RZZ+iRMUzZMHXuknCozKUl/iLQ3S9NuPxmI6WH9ySHM0cUQavFMUUGBoNaXt
	phr2zRSXTxKWfmEcsKRQ/jsO+w7SabdpnKthfCtOF/Oz/Emb/4Leg7TrcGh54l9m9MhUkcYje8E
	x6gkq2g+VzHvD55/2BXuk6GKw5kR5nGuc6a6tCkp1LNpPeD8FsblmEYmJM4z0XYbtJ8O+fo8Qaq
	iqZ9IehPVMNqORHcp6rrykXZFlnez8dCNtfLKGrN5JWNYqf+MFDikEWBOrlT2aJLKkjjqFkNBfv
	kgKwe1yFZ1xaKLLF7MWzoPI2cxBPAUWOEe1ZNxiH4KVBTt6eG3XTbTxKKWbn4//daq1KRPR9s2W
	GGn7mXXLCopt/FWfupU8oNxn/4HxMBSKFAYWmoHplg3htKzL9mEFAEY558vdjNYs1d3HmKvbEFa
	wnvYJMgbzFpIK5RZtIdYXe190RESozLY6Tcg==
X-Google-Smtp-Source: AGHT+IGlyg3a2wGJ6eNa4NY7IUhIZRVQLPQakGhgz4PI+aNlgwGt6ig4v0UiSDeoqq/5mYZ3miZerg==
X-Received: by 2002:a05:600c:8b6c:b0:46e:59bd:f7e2 with SMTP id 5b1f17b1804b1-47d8486ccebmr70673845e9.11.1767881278927;
        Thu, 08 Jan 2026 06:07:58 -0800 (PST)
Received: from vitor-nb.Home (bl19-170-125.dsl.telepac.pt. [2.80.170.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f653cd6sm163176345e9.9.2026.01.08.06.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 06:07:58 -0800 (PST)
Message-ID: <49bfb30f71eae0844676e6b545d67739b6d79539.camel@gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt
 Trigger
From: Vitor Soares <ivitro@gmail.com>
To: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>, Nishanth Menon
 <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo
 <kristo@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alexander
 Sverdlin <alexander.sverdlin@gmail.com>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, Kendall
 Willis <k-willis@ti.com>,  Akashdeep Kaur <a-kaur@ti.com>,
 linux-arm-kernel@lists.infradead.org,  devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu, 08 Jan 2026 14:07:57 +0000
In-Reply-To: <20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
References: 
	<20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2026-01-06 at 17:22 +0100, Markus Schneider-Pargmann (TI.com) wrote=
:
> Remove Schmitt Trigger from mmc pins. With Schmitt Trigger enabled
> u-boot SPL is not able to read u-boot from mmc:
>=20
> =C2=A0=C2=A0=C2=A0 Trying to boot from MMC2
> =C2=A0=C2=A0=C2=A0 Error reading cluster
> =C2=A0=C2=A0=C2=A0 spl_load_image_fat: error reading image u-boot.img, er=
r - -22
> =C2=A0=C2=A0=C2=A0 Error: -22
> =C2=A0=C2=A0=C2=A0 SPL: Unsupported Boot Device!
> =C2=A0=C2=A0=C2=A0 SPL: failed to boot from all boot devices
> =C2=A0=C2=A0=C2=A0 ### ERROR ### Please RESET the board ###
>=20
> I bisected this issue between u-boot v2025.10 and v2026.01 and found the
> devicetree merge to be the problem. At a closer look I found the
> k3-pinctrl.h changes. Disabling the Schmitt Trigger fixes the u-boot SPL
> failure to read from mmc.
>=20
> Fixes: 5b272127884b ("arm64: dts: ti: k3-pinctrl: Enable Schmitt Trigger =
by
> default")
> Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
>=20
Hi Markus,

We're seeing a similar issue on Verdin AM62 with U-Boot 2026.01. The
board has complete SPL boot failure with no output at all.

This occurs in the same version you bisected (v2026.01 failing).
Could the Schmitt Trigger changes also affect Verdin AM62?

Best regards,
Vitor Soares

