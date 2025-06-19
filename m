Return-Path: <devicetree+bounces-187651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61462AE0BCE
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 19:16:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E02CA1BC5459
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 17:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12D9A239E9C;
	Thu, 19 Jun 2025 17:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="FDgbpl2w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5350F1917CD
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 17:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750353397; cv=none; b=LlKbCj65+YEQBoCPHbKV5zczc0BtxCgUIezLVux+i4QkDCALgtlLHXUGMX2Zij7dwBFnQzDfTBVHlebeSo/Q9JNQT5KyupPQ570mOh+l5Vi+H2lBMgFOqSuskB5Qqzx5KK1cJq5hiLEH606R7QBsVFqeyY54oS7o3YYlXl158ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750353397; c=relaxed/simple;
	bh=vavngEW490W1TVlna35U5JsoXyvTKiOlogApqdvOnX8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=VcVjJ3Bw7MYjKPEuauJA/Z7+2HiqtgQF6MKCRWyuO3ULwoM8WLv2I8gV8tf8UqweWnxOQtFY5pwdQfC60pSId36WIwoyGGsqmZYrB6x6fqXX9C8OUtdCzoEFN2aoi58V1fwuG+HX5S1UezDTuWIB0MqDN54l/8UsRQ+usbmXB0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=FDgbpl2w; arc=none smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6fabe9446a0so10312346d6.2
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 10:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1750353394; x=1750958194; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vavngEW490W1TVlna35U5JsoXyvTKiOlogApqdvOnX8=;
        b=FDgbpl2wK4Z3hPOt4a++qe38RCn3R4IlGGc2p3z4Tccl/hT5c03yTZsbobd/N5bIxD
         4n2eMvABYOpBwJVd0Eb0RDBKPj2Gp5zSZKaDoMC3bQf1eHMHB0+FFSVr1a2HZ9O4qEGb
         MKoF/Ma8uxZr41sM3URhEF3+cNIg+Y9aG84TC58I4URBNViyBNpyVkvFQqFK5GH0tXye
         yGd2ZwuDI+MMKrtWrkMe4n8tMx4Fyy9l+pMU0iODj029HCYVoavCnKanC6/Aznq7y5iF
         qiguE4kkxLIi5AlH0voWyHZY/+KusRKaSl5yZgU9K2mmkZ0+sYODLtTR0v9DtIW+h7X9
         +I7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750353394; x=1750958194;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vavngEW490W1TVlna35U5JsoXyvTKiOlogApqdvOnX8=;
        b=xONKzk/9EuBFQQqJZzfgl5n8iSd+w6MWa71arQ9sROJaY8I3cRPI667IyOSx3QaVTz
         QkKInUk/B2NJ/wJCmOOiAuhni5PyCKBhU/9x0Sh4ARCcLazFAOSjPKWZ8lzqt7IyVBTi
         KEjeYmfk3+S4oa0EPQhbCJixY8eQ3je7mD1T7Rdx40vpb/mEjG2TvrZ8ke/LnaDzgpyO
         kKgFD1fZtY1yrT7cX0kXtmPTPzNwzZSF5390lfhOaeW6D5Ms1KZJ/1jFNqmimnnsLB3G
         Jzcf4ih0x3MRrGH5KWj16NHt5sJ9yKQCeJhUKQ4n0xtHJA94EA4/KKqHHK+VzCZt3RQQ
         kNLA==
X-Forwarded-Encrypted: i=1; AJvYcCXM0+jCiO7OykIa3Uvko3hlQF8bL/2H7JvfcAe8TrX79TuD7Z+NRHKEYY/TuTaIPY4YWwKsOoUY6HI7@vger.kernel.org
X-Gm-Message-State: AOJu0YwXS2+kFs5kg11qesQSxqVigPru24VeS7Njw7cPyLaBtlnNIRo/
	fUECVpx+CNaHUDLy25q3SpBd4tzq4MXRSFvCV28JfMFzqYtvOvPXnIIZkOzUsglcm38=
X-Gm-Gg: ASbGncvV6rtcdWC2sIswVWf2TNcoOPbTWpgCqr/aJ3uIbGb2bwDVC7emGPczTOCRVjC
	KTxCSk5OQL9v1uU0jK1Ze49ddejqfx9HlJGWby7kFMbpE9VQ+8Jypegae07+SIl4ORcEhScC5pV
	07qBomGq7jyvW+WVrGgr7xGv40uq7fBCSB/T6wIlxQh7BOG8PWuDUNCDCnRqEh5b3byM7mON2qt
	9MtP8PA/eqzaE7zV/TQK4CdtKRH2VrjDGMTV/Z2tr+Ea7JGVkhgafJ8dy7NrBVABHXvp+4EUHPB
	Gxid+AQQIS2CV/9ZCoWhJwmveW9on37tPdATvD15Yz7RMHfXaky9YfKrQJpAbBW14hw=
X-Google-Smtp-Source: AGHT+IFZGR1oLZzp6cLHcCiYls3uKiELGOeDzcSxdXOkGm/XLOLstBIyI7bjhXg4re8Xuf3yDJehIw==
X-Received: by 2002:a05:6214:540c:b0:6fb:4e46:7f3a with SMTP id 6a1803df08f44-6fd0a4d68f5mr760206d6.16.1750353394282;
        Thu, 19 Jun 2025 10:16:34 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:b699::5ac? ([2606:6d00:17:b699::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d3f8e4b0f7sm19537985a.67.2025.06.19.10.16.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 10:16:33 -0700 (PDT)
Message-ID: <d46d73f84e78daf152962ffb5cce7dd3ae0920d1.camel@ndufresne.ca>
Subject: Re: [PATCH RESEND 1/2] media: dt-bindings: nxp,imx8-jpeg: Add
 compatible strings for IMX95 JPEG
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Shawn Guo <shawnguo2@yeah.net>
Cc: Frank Li <Frank.Li@nxp.com>, mirela.rabulea@nxp.com, mchehab@kernel.org,
 	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 shawnguo@kernel.org, 	s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, 	krzysztof.kozlowski@linaro.org, imx@lists.linux.dev,
 linux-media@vger.kernel.org, 	devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, 	linux-kernel@vger.kernel.org,
 ming.qian@nxp.com
Date: Thu, 19 Jun 2025 13:16:32 -0400
In-Reply-To: <aFORokzx/sImgDtA@dragon>
References: <20250521-95_jpeg-v1-0-392de5d29672@nxp.com>
	 <20250521173444.310641-1-Frank.Li@nxp.com>
	 <eef5ccd99d82dd33e3a4ecdb5d4a5b75ccb0b972.camel@ndufresne.ca>
	 <aFORokzx/sImgDtA@dragon>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Le jeudi 19 juin 2025 =C3=A0 12:27 +0800, Shawn Guo a =C3=A9crit=C2=A0:
> On Fri, May 23, 2025 at 07:22:04PM -0400, Nicolas Dufresne wrote:
> > Hi,
> >=20
> > Le mercredi 21 mai 2025 =C3=A0 13:34 -0400, Frank Li a =C3=A9crit=C2=A0=
:
> > > Add compatible strings "nxp,imx95-jpgdec" and "nxp,imx95-jpgenc", whi=
ch
> > > are backward compatible with "nxp,imx8qxp-jpgdec" and
> > > "nxp,imx8qxp-jpegenc". i.MX95 just need one power domain which combin=
e
> > > wrap and all slots together. Reduce minItems of power-domains to 1 fo=
r
> > > i.MX95 and keep the same restriction for others.
> > >=20
> > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> >=20
> > Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> >=20
> > Krzysztof, will you take this one once the DTS part is ready ?
>=20
> dt-bindings is the prerequisite of DTS.=C2=A0 DTS patch looks good to me
> and I'm waiting for dt-bindings part to be applied first.

I was waiting for sign of life on the DTS part, we usually get some ack,
which is good sign we can take the bindings.

Nicolas

