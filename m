Return-Path: <devicetree+bounces-250476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C12CE983A
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:12:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A297B3018F6F
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 11:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AC2B2C08B1;
	Tue, 30 Dec 2025 11:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bUaUtlfK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E7D3A1E8C
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767093172; cv=none; b=CHALMi/eDL95B4HAVgD5tZIErDnjk0HIfmwo3F0ExC/2VvX2/TDgYIHWc+OcGvucabNY/ewRIhdyEc80KkgsrG0WBuWJhOltDDEMzN08cVl98Pb6Tu7BJU+rMSf+OmdezXH8YZM44dPy029TL4Ph2gKWANa03PekH18hw5FMsF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767093172; c=relaxed/simple;
	bh=JcU9GrRpSQvM7DMb6kcX9IdaSrJg/ryVTN6TW/UWbCY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LGdXKHPgOO4oL8sDN6DdjM4TeLI5MrO2Dejp9wbQmZHsRUCqi7eknfUBi/NLCelcKFKWsCOIaSMu7Zybat3o71BkHHCVtcoo+JuLoJU255p9cVA4m0PmLQ5IfPKOfbTJ45fjZ2Wmpl4JrO1xCirhWBFCV5s/7duD21k3SnoFup8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bUaUtlfK; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-37b99da107cso91499361fa.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 03:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767093168; x=1767697968; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/yNA1AV5iM1LS0NSmDZcE4cFhhXCoef1YyBUYDjkr1Y=;
        b=bUaUtlfKWG6e3KQGRlaqsdasytoK1AZe4WKWcct88QNsNxyXcWVdFVQLIPZfLEnpSb
         51wR3xBUByb5kICYctS17zCUFLg5VDPGbS+/OuvLpV/n3x8pwXPDFPSbcZFFsOQsZeWZ
         gcU04XVAdp/08JldO5v6ofWy7Rg+RaExdi4XOKUho4fcCRBO/GI6V9ElB4W+li9deoxW
         K2EhCuZjVcBbLbLGzCVEmxfd0gGRrBERfzytl8aPIQbB5P/3m5Z03a62pYM7T+mC63rQ
         8WdZAps62tu8Ao6wbiFbUyMS8N29+nlrzpkUUf8w/YThlDRpLHdptBsm+QrExdUcBUTP
         sOWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767093168; x=1767697968;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/yNA1AV5iM1LS0NSmDZcE4cFhhXCoef1YyBUYDjkr1Y=;
        b=iwPqgsDFH/KsTp5GDhV42LQalCsbvqFqb8vbNy2wmP2G8+ydEcPBsYK0d3iBA02ilK
         PPYqtMXJtdE2+fj/KvtcwLKN2EnqDwxrP+f6AFI+9QdF67Cz3PtZJk4nomLt9ixMJ7ym
         tmYS2sUdibKBncSQumX/ObLN7aZWmKsbemuz/rLxZssBbv9cyzY6ON4pdUX2ntR6C0LF
         hMx3GTJ8pIJ7O+eh60ZwdQpL53AIcoEYrc22rZMBYS8sk0zSqF6pnhTe4pot4pq1i3Z9
         Ac/ce6q7b1lbTZpLcASJ1ocn+m2xYD2gYfkxHkOz/qZaiRFmn/pWeO5+JRUfrTSv5UeH
         BJdw==
X-Gm-Message-State: AOJu0YxOv5PEergFXtPjpCzt3RoRDkK6h5nOIW2KRhjCSnxwPB2YkI4y
	Kb2WdMu5pODK4QyCI+8+qc+HHGwGCAAgmaYHiHIRPE4XlkuJVDmkoy5/YZLfAWOjC50tmAsdgOB
	8i+xhH6AK5u104JtWr/jDn2wNsDMfPIc=
X-Gm-Gg: AY/fxX6V2xwKXi5SvftiL5Bwxgos13su8JCVFy+ZNdu+j49NneyNbxNW0gWX0kTwFDg
	k8HBF6Zk/B3BpM70GeJWLjXt/Fuly8te2AwmTD8W7MSnJUWQdwORJA74H3avRaGhRz4o/jdxhhW
	+d9NW5s+gQNIGjN83Z/tW8nQEm11yqYzwDmBSbIW7aUUK00CErnPx8P+QMMkw9G785BeLxOPRG3
	J6qQ8XGAzi8x9jYjUXQzrnCDMFA8NHoLq5utWcmpXdnMvlBtaqjXcOWURpeELr0nWrMMQ2U5Y7n
	i8NzYILrYgMrUSgEo6tCxV6ty7E=
X-Google-Smtp-Source: AGHT+IE2M4WxFZqnEfPrEAcC8SMB2vOImghddR//qgcMdMKJ1JqjQfXz0rueUs8Uu20fw0GhWjMPl3LuKHp94JXv2fI=
X-Received: by 2002:a05:651c:1508:b0:382:4ed0:2b90 with SMTP id
 38308e7fff4ca-3824ed037e2mr69073551fa.11.1767093168319; Tue, 30 Dec 2025
 03:12:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251229213726.79374-1-stefano.r@variscite.com> <20251229213726.79374-4-stefano.r@variscite.com>
In-Reply-To: <20251229213726.79374-4-stefano.r@variscite.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 30 Dec 2025 08:12:37 -0300
X-Gm-Features: AQt7F2pM6UnQwKRWIIbHFDh2-hbVrXhUaR1MhekQgxaBPsnwjGmNGu1vdJLxk04
Message-ID: <CAOMZO5CjdQiy2nJTEL-HK+xzZ9EyAE1PMhoUroP2nTZ07pJbzg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: imx95-var-dart: Add support for
 Variscite Sonata board
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Stefano Radaelli <stefano.r@variscite.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Alexander Stein <alexander.stein@ew.tq-group.com>, 
	Dario Binacchi <dario.binacchi@amarulasolutions.com>, Yannic Moog <y.moog@phytec.de>, 
	Primoz Fiser <primoz.fiser@norik.com>, Markus Niebel <Markus.Niebel@tq-group.com>, 
	Josua Mayer <josua@solid-run.com>, Francesco Dolcini <francesco.dolcini@toradex.com>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 29, 2025 at 6:37=E2=80=AFPM Stefano Radaelli
<stefano.radaelli21@gmail.com> wrote:

> +       /* Capacitive touch controller */
> +       ft5x06_ts: ft5x06_ts@38 {

Node names should be generic: touchscreen@38

> +       /* Resistive touch controller */
> +       ads7846@0 {

touchscreen@0

