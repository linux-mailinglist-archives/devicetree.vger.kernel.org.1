Return-Path: <devicetree+bounces-200933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B32B16AF3
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 05:47:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 646C918C6959
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 03:47:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A8D923ED76;
	Thu, 31 Jul 2025 03:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jdw36pig"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAEF4CE08
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 03:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753933621; cv=none; b=CBWTA0dD6P8IecLt/t9dVIq7QBnVyEBfBEFuRa2lqexYvkq9D2RTLvVYy9VZ9Oiyh+rYF55mv2ds72YdMlTT96LpiIXq29/ozWNGfGtMud2LEcO/FdB7D/JbW0Cb8mLsv594pA1+HSvPY0XxFKO/G/YrgidHth6870Ce+PLspRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753933621; c=relaxed/simple;
	bh=YELIpOTk7v58USyg3NWMuW2KC3hMjQSyAozxB3de114=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FLQXwxHgECSFzy5unhQo2B8zGYsUzO14EtRwSUu4jdtJIuKaKx2rD2vMlFBa8ZjTtYgXXaFLjdu+p8jcABFUUDHo77Dxf808xFLI+/ftVxubMV7/f/wjj/fWoX1m6j+tQzo8jQlH35o/ZxOxUyJ7blpLAiHzcASx+jwfFhkDf/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jdw36pig; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5376621dfafso197826e0c.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 20:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753933618; x=1754538418; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YELIpOTk7v58USyg3NWMuW2KC3hMjQSyAozxB3de114=;
        b=jdw36pigsz6iN+7FkSKdX684ViN8s2ooktWqTwIpoLAGtu5QJU5acg9Rgy3sX8RXbe
         3D1QcLhswibsRwqisBBjc4C+A2piU3+i1XHCN5pbPdMOxl5Ryaz2HPPCuOceLj0SYfix
         mDUHASYq31lVGeGmV+SSTy+Xmiu4kDuUK45zw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753933618; x=1754538418;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YELIpOTk7v58USyg3NWMuW2KC3hMjQSyAozxB3de114=;
        b=bF6/QL/CxOByX7WqY93Bbi6A2xGxo1odvwN7+6MJT8Es/EX0BEe7fiS0a3YZFkOza2
         RQSZ2/j46AdqpA/v3c+Inkzm3O1EqR7nRl92VnnI1ZLoAt82SHb0sMZ27b2T+LptsGeH
         4q7pm/f4LaNi19MVATt2b9T4ai0tfQZRRfkDyTyAl4atiBWCf1rVbLO/CGNG5AANmfkT
         MVquJgUoSJKAhzEORB82vP9RdRB2dBJ1d9HCcmIQQajXgZhaeE4B/nC396XkvakmVXv/
         CJ7TB2ch3SeoytlShs5JNFAEHeroZxLz5tEOIxVBlebT0IUrP6dboyHyqPFFCwuMOCvz
         Qltw==
X-Forwarded-Encrypted: i=1; AJvYcCVpUQ2UdXqMDOECAUV4fA1i+ngC90gVdhxO/1GMHTVs3kNriUO46YtNOptB8XWd9a/CTbLiUnfg2Asw@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2GpZbXfsmZKVabZsRQbB/N9VnYy3SaM6hUiz+ppaytSyZAwEE
	8O2svSQ2xj2qbw2jMWw94ae7b2QEIXUNvoyqVcK33VPWLB9AUfVdzoLCJZqO3bVnZ3j7rzz6eaQ
	+cpI=
X-Gm-Gg: ASbGncsmR393dl5XUgJpLTaFsufCVQ8uurLRPWUm3j2Z1XT2gFgy3gSdGa+aV6aVVbp
	Do6Hv+Uh3AFAxPWUVPNK4BdE60gn33uE3wtxNpEHki57JHlKZy09PJux3wQhLe+/NM2WC3CGgOF
	3sQUwq/l3XeRdloIopiRCpSal6EWROWZwnPPVGnmQHM5DZVUE1aQ6g9IcWEs9h2ZUN7weMVpA7Q
	ikV/dRkEfApZbV09sIM1+XYIRxDd9886cLnNaKM+QmDyIUuTPjf8elpj8N0wMUOzCIKMAnNLkQz
	NDMta5qOqd28A0orVDx2Fzjy+2wiZeLHIeiqoCs5aZd3cwHNiaTRXqsfylNBKpQwasgRtYOiTLK
	No5+qJdFJ3a7IyZdxJdWD7VWybZZY4kmCck6qNkuiEeLyMJCk7Yex42RScA==
X-Google-Smtp-Source: AGHT+IFnSDlqLK1kObREirXBbB73QE04W4MgLJGTTosq6llIBAwN9KMdMVMdbvUh03OGBkGQLp9Dbw==
X-Received: by 2002:a05:6122:4590:b0:52f:47de:3700 with SMTP id 71dfb90a1353d-5391ceeda35mr3880076e0c.5.1753933618275;
        Wed, 30 Jul 2025 20:46:58 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-53936d44050sm181117e0c.32.2025.07.30.20.46.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 20:46:57 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-4fa75f98b61so185814137.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 20:46:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUGWQcIPDOciAeLu3tZQJUeDldtw+Aqt80EiyC4IBgaZcGZ/RIuJo2B3fgqh29eGeKD6aYrHAuwH2fT@vger.kernel.org
X-Received: by 2002:a05:6102:3e92:b0:4fb:dde8:76cf with SMTP id
 ada2fe7eead31-4fbe8753b11mr3988803137.13.1753933616614; Wed, 30 Jul 2025
 20:46:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250730152128.311109-1-laura.nao@collabora.com> <20250730152128.311109-4-laura.nao@collabora.com>
In-Reply-To: <20250730152128.311109-4-laura.nao@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Thu, 31 Jul 2025 11:46:20 +0800
X-Gmail-Original-Message-ID: <CAC=S1nj9eVDxSxPuntMjTSrwhVAhVLMs_s0aR+COQjM2HB0S9A@mail.gmail.com>
X-Gm-Features: Ac12FXyuQfNec5PpeCVYeU9gZNhVWy6e9AZ1QYJ8r0Oc3K8xhe2Kp-euR4Zabx0
Message-ID: <CAC=S1nj9eVDxSxPuntMjTSrwhVAhVLMs_s0aR+COQjM2HB0S9A@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] thermal/drivers/mediatek/lvts: Guard against zero
 temp_factor in lvts_raw_to_temp
To: Laura Nao <laura.nao@collabora.com>
Cc: srini@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com, 
	lukasz.luba@arm.com, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, andrew-ct.chen@mediatek.com, 
	kernel@collabora.com, nfraprado@collabora.com, arnd@arndb.de, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, u.kleine-koenig@baylibre.com, 
	linux-arm-kernel@lists.infradead.org, wenst@chromium.org, 
	linux-mediatek@lists.infradead.org, bchihi@baylibre.com, 
	colin.i.king@gmail.com, lala.lin@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 30, 2025 at 11:32=E2=80=AFPM Laura Nao <laura.nao@collabora.com=
> wrote:
>
> Add a guard against zero temp_factor in lvts_raw_to_temp() to prevent
> division by zero and ensure safe conversion.
>
> Fixes: 6725a29321e4 ("thermal/drivers/mediatek/lvts_thermal: Make coeff c=
onfigurable")
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Reviewed-by: Fei Shao <fshao@chromium.org>

