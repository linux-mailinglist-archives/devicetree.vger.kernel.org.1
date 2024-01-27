Return-Path: <devicetree+bounces-35754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C11D83EA5F
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 04:01:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CFDC71F21773
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 03:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDE3CBE48;
	Sat, 27 Jan 2024 03:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VevkzP4w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F6D944D
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 03:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706324491; cv=none; b=GIlfY4hgJYs5A/ewVQ4Itpdjc8BMShhOllw6Z2w9Eg49i2vHQJuJUXyPcZxDMGJmW/CNLhtqli+zVQSiBYN0a8dfMQfnz8EzmHr3EJ+Fb0w+CFEj0drt3uO4JlsHA81eajHPbXEjhQNcTnuBImIjprfRbEjcxZon/jLjfywPWmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706324491; c=relaxed/simple;
	bh=mpZkUl+aoY0RPgreyHKlJ+srTSeRBx9b883F7RwVZk8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hKZxizH8FCunfxlRxfhn+4hLdyf44HCZf19Rg7gT7lSyUbbJSh6Bp5rFo5usYcIILsb+umf15sebVqMcLn9sTrK/0SUBU1oLHRJVDk/UAZA1tgpoTcxfYfXDKIzNbdd39emsLd+4ckKn6ZNnCktUeGXBsovGmfar80pjBJ5FY5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VevkzP4w; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-683cabd96ceso6623466d6.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 19:01:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706324489; x=1706929289; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6vkFM3dPZG/f/Fgbkzo0F5rzKiKhEW9FsgweYkZSxkY=;
        b=VevkzP4wss52AckR2Xw64PJqIlrwgsfeqKhyXWMzUmjWjASYj09SgR99kCLr4e75Gu
         xpyKLSWpsUWewOdFcGkjkslnkAsRLGOPJ/C6t56XWtJ6GNkONIGqtWL0OETo51vnbTpx
         CiLigDnTfuuho4tQbBoNnnNcdg1pzh5GlFjY1MaOIsW1tIE636Nica1kM9ISym9ggbFF
         eAsmKZjyD4HRJ7kygRqM6Ynobb1nzYj6bjO6q/+46qHQ21oHFdMxlSBIn8tmaDcMe+F8
         Tni684OAHHtpFNE6xFTLUJrlgnFnJPRJu0KDZACDm3Rdas5fwYDxpi2dGPiD4xEcYFfy
         WcFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706324489; x=1706929289;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6vkFM3dPZG/f/Fgbkzo0F5rzKiKhEW9FsgweYkZSxkY=;
        b=uAPDB4qGAYigV3wwoXP8DWHfWwAJQlDvyRt9IN7OpR+CdOoGSw//r/YSdcYKDlz4Kp
         N6SxHmXhD3S8so/4vXRad07xOHxosDHM1bLCPBar+WA/QJSeudKM3oQsqwhy0s11EX6d
         +WWJNzAi8rTuXXxhZupoeaJ77k1u2ONdxt9meykL47W2oDREW3l20KoXhdM20iSEldE1
         oSC5paxYtG//sglKnsWvEQUDTcSqsIg+w348g+8McqPH++31UXcRSyqenM2lf6T1C52d
         0EmbW1T+nzHgN7oupQa38Ean2KX85QnfF3uANUD66mYE9SDdZPqac4mrtGL9a7/0UExW
         7s5A==
X-Gm-Message-State: AOJu0Yw9k1z+HCdo6x+R2IqzM6Kts+c6kCSjHPDmXCNtTaqU7apfGUA3
	8PUrHqruEh9k8yTFVbp9jOZ7q+bULqHJ0w92GHsUCQguQhLmH4HKKh4htDt+yleo+9qcoMIMQOS
	qJZsQ+OG3HE6H1pO/cYxiraztQ+ig3MMS/O34hQ==
X-Google-Smtp-Source: AGHT+IFAX35xMXfkakOwP8K3SMKnMDyNTO76q5ljD0La4S0xUuY7z3pgZcTD6gNcSa50u6yVPmp8bpq8bGmPXbkujUM=
X-Received: by 2002:ad4:4eaf:0:b0:68c:3df8:735e with SMTP id
 ed15-20020ad44eaf000000b0068c3df8735emr72545qvb.63.1706324489202; Fri, 26 Jan
 2024 19:01:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127001926.495769-1-andre.draszik@linaro.org> <20240127001926.495769-10-andre.draszik@linaro.org>
In-Reply-To: <20240127001926.495769-10-andre.draszik@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 26 Jan 2024 21:01:17 -0600
Message-ID: <CAPLW+4kY-K2hnDTTeB_KkkqrZLai_V6xVV5DEm4tY6+yX-zKQQ@mail.gmail.com>
Subject: Re: [PATCH 9/9] clk: samsung: gs101: don't CLK_IGNORE_UNUSED
 peric1_sysreg clock
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, willmcvicker@google.com, alim.akhtar@samsung.com, 
	s.nawrocki@samsung.com, tomasz.figa@gmail.com, cw00.choi@samsung.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 26, 2024 at 6:19=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> Now that we have hooked it up in the DTS, we can drop the
> CLK_IGNORE_UNUSED from here.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/clk/samsung/clk-gs101.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs=
101.c
> index 7f6c3b52d9ff..d55ed64d0e29 100644
> --- a/drivers/clk/samsung/clk-gs101.c
> +++ b/drivers/clk/samsung/clk-gs101.c
> @@ -3393,7 +3393,7 @@ static const struct samsung_gate_clock peric1_gate_=
clks[] __initconst =3D {
>         GATE(CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK,
>              "gout_peric1_sysreg_peric1_pclk", "mout_peric1_bus_user",
>              CLK_CON_GAT_GOUT_BLK_PERIC1_UID_SYSREG_PERIC1_IPCLKPORT_PCLK=
,
> -            21, CLK_IGNORE_UNUSED, 0),
> +            21, 0, 0),
>  };
>
>  static const struct samsung_cmu_info peric1_cmu_info __initconst =3D {
> --
> 2.43.0.429.g432eaa2c6b-goog
>

