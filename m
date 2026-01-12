Return-Path: <devicetree+bounces-254063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CE21AD139DA
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 16:22:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DBEE8303167D
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 425A52DCF43;
	Mon, 12 Jan 2026 15:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OnZtIzO4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6BE424A07C
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 15:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768230416; cv=none; b=r4ENY9nBhdpiBQXIRk5DgBHEwl1RjExZ10Knb+oE5gDD3WE09Z6exZGcZvHukCTrD/iuguK4wr1do3d50FMDmYaWDWjW6q0XzO9adgwhuYTfuvtAX0hr4bo6dbQ+S6tjh7k2AqK5z7c9Wcdb6gQ5rKF7Z0hIkKEWEsGyScdapxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768230416; c=relaxed/simple;
	bh=75MQjJBAxr5y5jIsOd2DHhXFNZlk3zoenuPM48yKilI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=W3izdoe7KCckkAMdNBDagIrmU821W4WzfLVUf0Uq9h33y58+RP5HmpD62c97tNYM8rxChJBdwVAEMC3YwzXYQCVmY9CovQbquXDA9XWqmFf/ybtqXDGi281HAcTHVIW30Ee57Vkw43Ipm9QEIQLl0FCCW+07QE6wSjE/WtHSe9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OnZtIzO4; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-81ef4b87291so1031019b3a.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:06:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768230414; x=1768835214; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HP6AkMvuLhfF7BdOoI9QTFT1HBmcbloV9tH4WSSJF80=;
        b=OnZtIzO4kGV2h899ADR0q8KyLPcBMXJot72RWGn6yRyRwRmpW/bcGjHlUvfeoqU71o
         QQnojS4gL7dYJZeShxPnQhDdMteungeiKCI9Wz2Uao/ZMPkf4c22eHNp3lHwbfMOm78t
         dRxblA/rTeYzsK6JJw2DfyY1uioMZO8EeCEy5Z8fLRU6xWFjYEH0X3nApD1h4F5/rU5J
         z34Ibz7ok8FM8GIoV3IK7Jw+sLNNO+dz1eVAs98qYPH6RUx2RZ0gNMNQsvXmHo2DBA0+
         UVPaG4/udrG22ZuLc6XJgsYwDbcRWiBAffNbzS7cjl9meh/9l4gO/X4fkwm/jovYxeTv
         BzHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768230414; x=1768835214;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HP6AkMvuLhfF7BdOoI9QTFT1HBmcbloV9tH4WSSJF80=;
        b=au0aJfX0xad+yNv8Vf1XGlKKQ0GCg6IHxPE/7fEno2EgdQqREh8w1SR3EJyf43/1zM
         LHT161jNQ2ildGlz1c6qHlSFcU2xTx3a4KPSTz80W0tovnRPN6ToKuX1XAHgOu7eZwXs
         ypxSS/xC46Rv6BpBs05CU8+EVfMf5IQtY3IF1w/vJnYEK4iXtu0/5YqVG0UwQUI64YUu
         HcdIhVqLM+8r7tLgjzdb4bk4H9xdnWZAWMFXYIQajLfgCJBmR6tW2jLHtsliQv+5AilX
         3oWSBqJUGl2ARd9vmM4kGI9lw3F4PMhrnsGMe/GycrnAv3TQUcT8OcDw8q71kliMddl+
         9dKw==
X-Forwarded-Encrypted: i=1; AJvYcCVW9uQPt5T4bBbDePW8VwybXai3dAXEEriFoHkzlbZrM2SxCXVUQ2cuIiggiZoUuB51VkW2tLz0DJ6x@vger.kernel.org
X-Gm-Message-State: AOJu0YzZltOAz0lKz3EyAfwDLiwvGDpN4N7bnt4lCcGE/HmeeAZ41mkZ
	G4MN+qCEJx8kArLHFLsJZPKE81rNHfiXoUZxQu51uIC9cdkEVzYE3xRHuPl2wCqyVaY=
X-Gm-Gg: AY/fxX56igQS6ZWxIoFLgOXLovxenTTjEqHsGyXiDwFcB/1c1nBPiKrR9cRjs9Zuq5n
	tpYMwNY7SsrX6YCpyEHBeHozaXlXmBTLmR7TxHfYrj86fRihtorB8fFuQMcMdXG41ItOufIpsA7
	ig6flx9ZiTxNz62OWWXaHU8JD35jITTfqM9Hdash8/md/wbDjOieWF2g+W5V7n20NkJHjTZDNKw
	inheQvXZk2uvMHtUM7AOqpsp8ogw2q79KZ2V27tKYYz8Y8NNe7hjRQGQNkU/ecHEzDBJyvtajY4
	sgiUIXL2Vu53U1aaOhPqVlBqvs6ahHLtmXifsrRyKP46QwREGY/ElD07a5s4dIuHTrUbYYp73/4
	xxk/W3BmxxaELn+21UxRVtJn4r+6iTGmw5lmEXXfyY/tG/ZH5FJHmT5w3Na1QLaCLSrR6sXvn9N
	f+km+uA6LvVr1AnJkg
X-Google-Smtp-Source: AGHT+IEPMgDPCYjsxat+foxE0Th9ljcBX6K2Ppfj2CK2lZL+CCALz+VFGZbGbJZ0pdZjm8CcOhAGug==
X-Received: by 2002:a05:6a00:90a6:b0:7e8:4398:b34f with SMTP id d2e1a72fcca58-81b7f7e226fmr16141102b3a.34.1768230413899;
        Mon, 12 Jan 2026 07:06:53 -0800 (PST)
Received: from draszik.lan ([212.129.79.54])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81e6c8199f4sm6182089b3a.68.2026.01.12.07.06.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 07:06:53 -0800 (PST)
Message-ID: <7097507636282e4613d324ff5acb74eb747d519b.camel@linaro.org>
Subject: Re: [PATCH v2 4/5] clk: samsung: gs101: add support for Display
 Process Unit (DPU) clocks
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>, Alim
 Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki	
 <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
	kernel-team@android.com, Will McVicker <willmcvicker@google.com>, Juan
 Yescas	 <jyescas@google.com>, Doug Anderson <dianders@google.com>
Date: Mon, 12 Jan 2026 15:07:20 +0000
In-Reply-To: <20260112-dpu-clocks-v2-4-bd00903fdeb9@linaro.org>
References: <20260112-dpu-clocks-v2-0-bd00903fdeb9@linaro.org>
	 <20260112-dpu-clocks-v2-4-bd00903fdeb9@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2026-01-12 at 14:16 +0000, Peter Griffin wrote:
> cmu_dpu is the clock management unit used for the Display Process Unit
> block. It generates clocks for image scaler, compressor etc.
>=20
> Add support for the muxes, dividers and gates in cmu_dpu.
>=20
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
> Changes in v2:
> =C2=A0- Update gout_dpu_dpu_pclk to gout_dpu_gpc_dpu_pclk (Peter)
> =C2=A0- Fix dout_dpu_busp parent (Peter)
> ---
> =C2=A0drivers/clk/samsung/clk-gs101.c | 283 +++++++++++++++++++++++++++++=
+++++++++++
> =C2=A01 file changed, 283 insertions(+)
>=20
> diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs=
101.c
> index 8551289b46eb88ec61dd1914d0fe782ae6794000..b38c6c8749aae42319d2004ff=
5ffbc9a19320cac 100644
> --- a/drivers/clk/samsung/clk-gs101.c
> +++ b/drivers/clk/samsung/clk-gs101.c
> @@ -25,6 +25,7 @@
> =C2=A0#define CLKS_NR_MISC	(CLK_GOUT_MISC_XIU_D_MISC_ACLK + 1)
> =C2=A0#define CLKS_NR_PERIC0	(CLK_GOUT_PERIC0_SYSREG_PERIC0_PCLK + 1)
> =C2=A0#define CLKS_NR_PERIC1	(CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK + 1)
> +#define CLKS_NR_DPU	(CLK_GOUT_DPU_SYSREG_DPU_PCLK + 1)

Between APM and HSI0 to keep alphabetic ordering :-)

> =C2=A0
> =C2=A0#define GS101_GATE_DBG_OFFSET 0x4000
> =C2=A0#define GS101_DRCG_EN_OFFSET=C2=A0 0x104
> @@ -4426,6 +4427,285 @@ static const struct samsung_cmu_info peric1_cmu_i=
nfo __initconst =3D {
> =C2=A0	.drcg_offset		=3D GS101_DRCG_EN_OFFSET,
> =C2=A0};
> =C2=A0
> +/* ---- CMU_DPU --------------------------------------------------------=
----- */

I'll do a full review later, but this new block should also be between
existing CMU_APM and CMU_HSI0 blocks to keep alphabetic ordering.


Cheers,
Andre'

