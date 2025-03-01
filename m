Return-Path: <devicetree+bounces-152965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EFCA4AB9B
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 15:14:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B8EA4188C0F5
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 14:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 092B01E048F;
	Sat,  1 Mar 2025 14:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qhP+mQhd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372D01DFE29
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 14:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740838415; cv=none; b=MFILDft/G5hpRNl+BYVpat5UPQiFjwU5RmDrV+6Ul9VIry7WsH6IboLmpA/rElWCeEGoM0+qycau3yQ60aMwDP3xJ5b5ed4xzyoMUOIDIzjNfAj6HgRJQgvxl/LdCbkuu9doVegocRS2m311h2573ecoMqAj6LgkHrU+WdftGGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740838415; c=relaxed/simple;
	bh=d50HSxD/PimQmQ45XW3+Ssx/aRWrlXekJzuR2G9oxOk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=FLTzm+4RS7MeVQgUwjdWu7DFB3IsJiUACDR8Bbtd/TXv3AdeSaLtQASAKdZRFL3QfwEvkucA0gHTArk9sXrsMrwjBgZ7CGHNpVqTFW6Npyl7JeyqA2aEIwqXe6ezPE39nrIuLknnE4CJcYrNw4G7DpCiYPG4LO/bxDwDqGhNnfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qhP+mQhd; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ab7c4350826so62913566b.3
        for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 06:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740838412; x=1741443212; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B6+VMXcyt281MB6S0PILXj/mc3+AiyRry5Dl88JFAmU=;
        b=qhP+mQhdLTmkv9Ku7kQdEZOo2vx7eIDcFaxyctd9gwCcSJOz1CsfudQBDnECcPjtZk
         KrS8MxElReSfdG8JA4gWWGEuE1m33Nri1WoPsRqOzPt2Mdtn4Ak+zs6/LkHIoE5T/UF4
         pioTugZMIxyRA7qEuN/pEPSBeX85d7a6iT67zJ2cGhxJJIDQghq7lpJIw5K7Iff4riYc
         GEIMmxJHH11vgX40J0QO2arOp8kYU3rlFfhCxRd1VHs6uVr8hwK171EJXv2tMUtpkv+r
         bWEcjQvv0sI5XDDfw4nxxADTN+Gbux/bFJYQ9+2OVakO4yLFVi2Giqr0/ypsdO0abMOS
         ob0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740838412; x=1741443212;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B6+VMXcyt281MB6S0PILXj/mc3+AiyRry5Dl88JFAmU=;
        b=Vr3stxXQv0iIbIGSUWU0E1q3LCHsfTSHiq/DZN65I9DnjjipYSZCiuBd/QThcCle6p
         A7JT+nUtlwlWXZRNU1Au0AB/mNJAPsIyP3Yhs1WVrDDzXJSm/IsU/6SvHvWYIdAqlqSr
         KcGs7Rs043B0uvY/XaA+ajoXVuew7WlPyiik+rz4ZrpAC3dxykLhsMIUXEbFW5+1hwSa
         cqSart0VW0ohwsEDv0KIG/Ci/nm8LHBaomLep+FFipSQFQmtjidAOlJREh8ttfXASqOs
         TpA5ZMIHx4NxDV+YGVRQfGO2o5cJqgzcbdnd+rg787OVL4u4yJ6V07M/eqcfE1Q/gvg5
         hXvg==
X-Forwarded-Encrypted: i=1; AJvYcCUlaTfO8nYEHJsgpvcNdUdg1KdeCf5l/jZFZz86HKuNSGcNsMBqxd/A7Qhf8lSL5dr7vGSOKxN2+Oec@vger.kernel.org
X-Gm-Message-State: AOJu0YwPNdImtN6q11ocdDU0SbWzXxe97fgl5p9XXzrcupGgeN6QV9xG
	OoP3K1xejsFfs2U8bdXZvqg8W3pGdIwgrwox8hHz4L+Pw0PHoJxLAQuuB5I4nvU=
X-Gm-Gg: ASbGncu+36C4gdUGhul+7SOK0cVrioy7hkcveSoNoeg3ByuiFSS5znTozIgSQRIBWrH
	H5fW4v2LQHv2SvrPWoHQj5iK/NyYjvPhHUBqbqnolaK3gpLd8nOii/OXZPuyzB4eHloFju3aVjE
	wib2fExxbZ/9yXPQ+Hz0LucV/Ksns3RoikdQb/ZiL39H//9HT97SsQKQfjr5vL8cLZbNCAKArTp
	Ne8hHjZ/lC0Yi9+dACqysX1hkq9Fa3tXss3ZBE84cWqkuyEa6oIfRhI7AbkS/2Ih/SutsUNm+Tv
	3MUOfXUDMrPEymx/HsrMuFLfT8SQfE/y/IZKy22NUPNU0685k5r1iwiM6V9C
X-Google-Smtp-Source: AGHT+IFpPIcRFdEEfoNRMXs9IiWLSrC8PzKuk8Eq3BxzR7HGMfJRXaPfAjNFS/RvB4XMH80jRhalrg==
X-Received: by 2002:a17:907:7285:b0:ab7:cd83:98bb with SMTP id a640c23a62f3a-abf25fc79abmr339769466b.5.1740838412580;
        Sat, 01 Mar 2025 06:13:32 -0800 (PST)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c0b9cbfsm485532366b.14.2025.03.01.06.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Mar 2025 06:13:31 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250223115601.723886-4-ivo.ivanov.ivanov1@gmail.com>
References: <20250223115601.723886-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223115601.723886-4-ivo.ivanov.ivanov1@gmail.com>
Subject: Re: (subset) [PATCH v2 3/3] clk: samsung: introduce Exynos2200
 clock driver
Message-Id: <174083840951.17657.11144069313199701338.b4-ty@linaro.org>
Date: Sat, 01 Mar 2025 15:13:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sun, 23 Feb 2025 13:56:00 +0200, Ivaylo Ivanov wrote:
> CMU_TOP is the top level clock management unit which contains PLLs,
> muxes, dividers and gates that feed the other clock management units.
> 
> CMU_ALIVE provides clocks for SPMI, the new MCT and other clock
> management units
> 
> CMU_CMGP provides clocks for USI blocks
> CMU_HSI0 provides clocks for USB
> CMU_PERIC0 provides clocks for USI4 and I3C blocks
> CMU_PERIC1 provides clocks for USI blocks
> CMU_PERIC2 provides clocks for USI and I3C blocks
> CMU_PERIS provides clocks for GIC and the legacy MCT
> CMU_UFS provides clocks for UFS
> CMU_VTS provides clocks for other clock management units
> like CMU_AUD, which will be added in the future.
> 
> [...]

Applied, thanks!

[3/3] clk: samsung: introduce Exynos2200 clock driver
      https://git.kernel.org/krzk/linux/c/11fd259b7a9c386179f4bb9657c7597c8e8de067

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


