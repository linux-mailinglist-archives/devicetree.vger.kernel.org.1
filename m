Return-Path: <devicetree+bounces-29161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 465CB821A9B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 12:01:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C79E1C20DE6
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 11:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74DF5D534;
	Tue,  2 Jan 2024 11:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="mJnJSifX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D149DDA6
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 11:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=edgeble.ai
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6da6b0eb2d4so188870b3a.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 03:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1704193293; x=1704798093; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Cl3+Gz73Blj8bbHen/MsuMvAvYRueD40O/9CXlEA1Ac=;
        b=mJnJSifXdiGrl+YUcoDVGgIY+3696IDTRyDIH6F5w98M9IcaXPAhepjbg1g7gVNNxt
         mhnDZVLnvcCIR2sMkl9YEpQPsQcvs5LqjfPRRV8pjjgtaECwWnwwYYqNAxo5CoJV2Owx
         l1gC9OF7Fr08+xk1LmnUHeJFewEL1BS9eWvD4LP4AyTSGLYD/hj1WaucvF1nYN2eyJex
         JUO1IAFdx3Wz/I2oK6ASEtaqPaPFuMkr3NxZoJxaj4IGA/qnxB5U9HlM0sY8NS6mLCLX
         HNQaYmgxeKozLUiL1muh3JUXi91pd+7bNeAnniZosQq1sUbGjc+famSojPUQ9vsSfLXl
         BvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704193293; x=1704798093;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cl3+Gz73Blj8bbHen/MsuMvAvYRueD40O/9CXlEA1Ac=;
        b=tH47SEfGLhG3i7X86dh4GiCd5E2ZiNW3cEGqqw15u+Y+IhSLNozUb5y29wxswRU1/C
         yt/1iHO1GQVavHM5FARl0GodQisiajjPiANOGmWZw7+kjuP5Q23Gz/48hZLaJBMA0kvg
         0BirwUI/Cv5dFMwazmGAk6PYp0MCtBVMf2062jNlV55wNphTCKiNIY6MJczKinS6chtG
         HKhENxVjsfVkJ3/v8JP7aOXt39uIv7obOiXnyOhK869difrrtBuSHov/2ykEDuZHyrjK
         H9fxBMG/Vwpx4oqFQ8rbQ1gC29S7Jn4DiWYp5+vY5tCjG98BY5S6XvuDF3wBTXLHZGFo
         DSZw==
X-Gm-Message-State: AOJu0Yxdz1EgWvNe7FqcKryhRj9LAGEjsOXUGJApFijpvOdqFPYQiMk7
	rmk16Sos6cx7IQWcaYb8H87S8fyM5CqPXVlkyNc1Xkq3Pb+WyA==
X-Google-Smtp-Source: AGHT+IF2EGlw5GxLPP0MtA41B9f42K0EkBosD189HmVIxczVkPrEaRXnF58QaQps8h0wuPDaT95GdcqYAeKGjGLEysk=
X-Received: by 2002:aa7:90d8:0:b0:6d5:a679:e8f4 with SMTP id
 k24-20020aa790d8000000b006d5a679e8f4mr7350622pfk.57.1704193293222; Tue, 02
 Jan 2024 03:01:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231125190522.87607-1-jagan@edgeble.ai>
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 2 Jan 2024 16:31:21 +0530
Message-ID: <CA+VMnFx4j1=CGou4yya_7RbFgPwQ_KqOLoTWbYLthPw2VwR3iQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] arm64: dts: rockchip: Pack Edgeble NCM6A, 6B DT
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Hi Heiko,

On Sun, 26 Nov 2023 at 00:35, Jagan Teki <jagan@edgeble.ai> wrote:
>
> DT patch set for Edgeble NCM6A, NCM6B SoM, and IO board.
>
> Changes for v2:
> - suffix -regulator in node names
> - fix node lables
> - update commit message
>
> Any inputs?
> Jagan.
>
> Jagan Teki (10):
>   arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
>   arm64: dts: rockchip: Add edgeble-neu6a-common DT
>   arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
>   arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
>   arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
>   arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
>   arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
>   arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 B-Key, E-Key
>   arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
>   arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a

Any update on this patch-set?

Thanks,
Jagan.

