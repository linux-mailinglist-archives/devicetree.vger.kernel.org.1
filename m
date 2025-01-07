Return-Path: <devicetree+bounces-136092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0D5A03C95
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 11:37:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D10813A1146
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74A691DFE0A;
	Tue,  7 Jan 2025 10:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YynsWqFc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4121E573D;
	Tue,  7 Jan 2025 10:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736246246; cv=none; b=ISgcDrODb9xUPf3t+NiSNIYpx62i7GraW0BWB0CE7TTK9cGuRBcuRg/bNk+8YEhPaR2XmMh9Q6SXXOdyO3uUNAp3mBFpVPqPYQRwmYdluWdVLCULM4BmzUkQS/cjlQGN4UYLI92Vj27vIVy1C5oeNgHIE50QKuK2ZoxVtggKUCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736246246; c=relaxed/simple;
	bh=RNVYdwGeBEZ8n3x/7EiZLzqJLaDPgw+w3yHRiFecNjo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eg91q0tCYRGXr8srB4AMPQuPtSKMenuMab6aimUZuyfNkcukvBBbYIn1yX47WrXygJSP6l8mAvqI8K0iEqHRTQoRgRB9jMjozrpcx2E9Pp6MwUFFHLYq9RGUo0JGwrDaXdVDb/jft5ip/xacUhVMzVM/sayX8s3VynHBhAv/+20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YynsWqFc; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5401bd6cdb7so15677613e87.2;
        Tue, 07 Jan 2025 02:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736246237; x=1736851037; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xje32BOdw7wAqN9VcKNPAq9+7Mpm31xiFrYaEG4gc8o=;
        b=YynsWqFcg/z+YUIt6oYeBpZczZsX83IE1Vv19jHke44L3ZNtWQIszhXYUoZU74OYhi
         MuNNWXzTmPpecVDGs0TFbcvwUpIc/Lkuf9WshTEx7fsFqT07pVsEENcepiEVr7qvwMDL
         xrQKPmsokLzxg4yLFnn/xYlXCsFtcrhJZg/hJ1nusuNKiPa+ldmrk7+pGC7q5hXLmT1D
         G2ETGRV16/qrVdUGGDhDXGDFHgeykfitciEcIdQdAi4gDNdQHDi40bjlOU/PKb/UwKuR
         LvetmEzJi/6qOfErmOMPp+irANWjZGcOZUoWyiEy5V1pH1DwyaG77pe5nbLJQOSyMacj
         1PdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736246237; x=1736851037;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xje32BOdw7wAqN9VcKNPAq9+7Mpm31xiFrYaEG4gc8o=;
        b=XqsD9BuiehkroePbqjfYclaOSCDedXMoCAqiOFJNpWTGYx/tT6srUKTBThn/6f4p6T
         NcWhDDHbC4xS4yuw/6a21zBSxA5LrCp6GNYhEBaPh8nNTM5yaoJcOQWg9pMmnKTajfAY
         4RRGKArIzKE1rNd4HJ5a0+rpesjbwzCPiJ/avlm5xhwCYaL9VgfWpC3+Z3TXftsCOF/0
         ggZxvyqMP8uAT5iGcalOcIE9FA4fQCSDtZjw0NPB7DnvHIToFPSKphFUzAIHS3dmZQ5s
         oyD4hTA3WnLQuJ2HLdlVSS2u8ehc2i7KP5vI7nJPwjcjncMIzBTWhSrmT79yb4YKoMCR
         2bWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxWknQh6IA1aoMapcTUL9rQYkpQ3aDvez51jhT6mgP5XcL6nXflUq0D01RFRllXMzX0NTxr1Tnxp817lMt@vger.kernel.org, AJvYcCX/tZen+x+oWP/ce082FT/5LTGE4lqVapNkY/mg/kIax8eSLZhluO5pVMZcni/t4e1DtqpEQyrb1qrt@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8M5+5y9Y45syG2oaq23ENTduDxzLmEeuZoFiZ+ujIxdmrM/k7
	nuDKeFs/gFx9HFUz1B5dutwp9UDH2M7RU9ofuW597AuyAH1zQYAa+g2MCsTAVmx6WJ51/VEv9yI
	0lpHdHhaaM/iLhhlMKrw6HVYXrU0=
X-Gm-Gg: ASbGnctel4Q30rAQfeu1hXgFZFJuj58j4tKzovDpgQ29i6AfzoBVmXj2YnwZ1dFaeNo
	nVPG7N0klOJ8KMHYJZ+o8Scan2ikBcPWwn8w5GpKyQkZL3bnUQ2LKIyFpF4Y8nXcN4yOYJQ==
X-Google-Smtp-Source: AGHT+IHS3njRhHL7YfFO0iWHF22sHLsH5C52QKY9UxYlGlYE//joyWAtO538qgeg1ERJpfJproNazJyxMl4X57hOWEc=
X-Received: by 2002:a05:6512:1110:b0:540:75d3:95c0 with SMTP id
 2adb3069b0e04-5422956b7cfmr16752741e87.47.1736246237133; Tue, 07 Jan 2025
 02:37:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250107094943.518474-1-alexander.stein@ew.tq-group.com> <20250107094943.518474-2-alexander.stein@ew.tq-group.com>
In-Reply-To: <20250107094943.518474-2-alexander.stein@ew.tq-group.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 7 Jan 2025 07:37:05 -0300
X-Gm-Features: AbW1kvZdLxR4RaObsuUJc1Glb-jI0wjh8lFemgvwEzpoXOeKA2MO9ZmwnSRVm90
Message-ID: <CAOMZO5Csc+cOmOaRofWZW7Z9HL6d2NjMhZUdcomuyS_rtZwz0w@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx7s: Move csi-mux to below root
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Inki Dae <inki.dae@samsung.com>, Jagan Teki <jagan@amarulasolutions.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 7, 2025 at 6:50=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> fsl,imx-iomuxc-gpr.yaml only contains the mux-controller but the actual
> video-mux is not part of it. So move it below root node.
> Fixes the dtbs_check warning:
> arch/arm/boot/dts/nxp/imx/imx7s-mba7.dtb: iomuxc-gpr@30340000: 'csi-mux' =
does not match any of the regexes: 'pinctrl-[0-9]+'
>   from schema $id: http://devicetree.org/schemas/soc/imx/fsl,imx-iomuxc-g=
pr.yaml#
>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

