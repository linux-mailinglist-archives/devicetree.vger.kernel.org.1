Return-Path: <devicetree+bounces-116972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D5A9B481B
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 12:17:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96A60280E16
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 11:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AEF2204938;
	Tue, 29 Oct 2024 11:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jrK6bIFb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E341204943
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 11:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730200648; cv=none; b=rX/gqPunXcPvW1f3CfzXj7m5mdMLX6drqnHb/1kri2XPALwaPJHuOc5haz/h4KNobCCCQ888Hqzlf0apAUbV5perMUG+52SRMsBPwyn8eQ3xSZjP2b8F7xaScIvTGu/ktBbl+dPLfPzgnzina4nC9/SCSgBOrK2IhVrU+bkXCg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730200648; c=relaxed/simple;
	bh=0Y3lWwBLaNSuSrYHVXg8RSL1GdlpeH3OKXRkXftMX10=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kOeslM7OEzwPTDkvSvey875vnrCHQdvH1iU/9zeYchYiKiJ6e2iYNmS5034wdH2fmW0Q9ejhEi0XJ1V+xHqGJlt0xkrc2JoZfVTtsAvvFtDVDSVRbIT97wqerX/9sTsWvLdeX1DxA9+a4CAi7eNVHAIISWfahNUK+26NldgahpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jrK6bIFb; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2fb58980711so47465921fa.0
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 04:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730200644; x=1730805444; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Y3lWwBLaNSuSrYHVXg8RSL1GdlpeH3OKXRkXftMX10=;
        b=jrK6bIFbrG6THuLda4M9ypppUpLR83DrD+985S2+t8jl7gE3Bb7C+hQ7QgWgv35TP7
         cnKVTX+oBeFx+kNPY9EoNw2vatnv7vvqztH+fJUz0XO7OSCA1Uhy2jhkzpSOJI8OofHc
         yIN+rk33UdmH9O1ZPIPQtXjWmvA4VEvZrMycDWCMOixjyNy9Q36pv6girm0/JGb5pbNk
         xZFgP4S6tUVQCt7CHtpp/zADlKcAuZpnhHuPZosGzaT88wDZ50CaNxxHv13hw+kRTQrA
         YwUbTAzQptUdf1SGLFC366CRlFRDKiRlIWsrxx1MGGuoSmHLJEpUHYwLawdViMNRB6O0
         7l5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730200644; x=1730805444;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Y3lWwBLaNSuSrYHVXg8RSL1GdlpeH3OKXRkXftMX10=;
        b=qnIHIKxiH1cfVY+gUL46tP4ONNeMkpSgtH04vHdllmX0IWkBXvA4jVzqyG6aH9ddW9
         G2YI7Npi/55fO2YX9Sds846cpm6r+M9EcGXTIRbGo24cj04KkxQcyI2JJCiqaEx0i1Zg
         NVBm1KtTSsvc/KZQ0xH0SCL9gJOrhFi+Ff8WhnVb0HF8ZBY3slvHtMHnSeWddk1PM2UB
         2jL04CadZdKcEv5I50PUPIP2IV8cf5mOaIQ6tKvmsrtdPHejG1SyMJI781Gbb6czFBH2
         A/iHLbwpyrkWE5NUy4/OnztA6lMSrfon5lwDGBpTmKhbry5zeBcGA4UuDFIfirfdTX39
         p2oQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOO+fZwz5do9pbNf0NFj9rS6sGzgjtNjAYGCV+/EFGF8VnuMjIRX4TCrgHvrV8b+IW8ffZfF3gbGob@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4NHScMAJI0SA2lLMeMjDJ3Eu9MUkw3B/EIKN4e9PofpKIdl+9
	EW9jNIEY28B94LsNHezbygm71KzX3qVTkXG3zWBAb+XQ/uWvzFQyvitZ5ApkBoIn72xwjyZWDlK
	9O6GD4gv1/nAJYqLMvDEnN2CkqnE=
X-Google-Smtp-Source: AGHT+IGsU6uHMBv+O6e4BbQ7UJDSfYHHZAkZqCwn67mMrBXMiocwqn/285jyQOio3gIiF1T/G3/0V4DT4isdy5AAHHY=
X-Received: by 2002:a2e:f12:0:b0:2fa:dc24:a346 with SMTP id
 38308e7fff4ca-2fcbdfbab66mr39852531fa.21.1730200643976; Tue, 29 Oct 2024
 04:17:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241028180844.154349-1-festevam@gmail.com> <20241028180844.154349-2-festevam@gmail.com>
 <20241028194728.0655edd3@akair> <CAOMZO5APJM57_ixBiRFZSZex3AiawA=mtqMszdGezVoajaXYhA@mail.gmail.com>
 <4addc413-dd13-4867-8c49-45539af7b45b@pengutronix.de>
In-Reply-To: <4addc413-dd13-4867-8c49-45539af7b45b@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 29 Oct 2024 08:17:11 -0300
Message-ID: <CAOMZO5Bu5U=MGq3gzOjaeWuhnowJ-TN=ktCtw_eXDO2Q6Kxbmw@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: imx6sx: Remove fsl,imx6sx-lcdif fallback
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Andreas Kemnade <andreas@kemnade.info>, shawnguo@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	Fabio Estevam <festevam@denx.de>, Marek Vasut <marex@denx.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ahmad,

On Tue, Oct 29, 2024 at 6:50=E2=80=AFAM Ahmad Fatoum <a.fatoum@pengutronix.=
de> wrote:

> With an eye towards improving device tree stability, I think it's more
> appropriate to adjust the binding to have three compatibles instead.

Yes, this makes sense. I will adjust the bindings accordingly.

Thanks

