Return-Path: <devicetree+bounces-134395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFFC9FD5D9
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:12:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA4CD1615A9
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:11:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85F2F1F75AC;
	Fri, 27 Dec 2024 16:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CwTOli5z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E1F1F75A6
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735315917; cv=none; b=TeVZUr2iGsF9fC7KJof4sAkh5Pk4MpgwQZzlSqb/RpGRey4Djr8y15Vr/o051Xk5yKuEx0eKHS1I0+yQU/TjEIq5oWZGNxanUC2UA8bnQNd6hpY+RsNwdPmbrA5bw3yIWi07qhlixhZw10K4ZUJoeH3KCzZWrJWTLFG35snvVMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735315917; c=relaxed/simple;
	bh=J6jOL9AAxWglamTsC6cbdjMvO1jXJ6RrlsbJ56BXeD4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=elwJaVMP+X6Pge8uGWAkUFbMcyWY1XsE1oK8eB6rNE19KIyOXk1AEQqYWlcJDIAqWo4QLfDwc7rfeZakExvnjlkDU0tKG4ckT7s61mQuFWzWp+LsG/wHyr4EIDc4o/Dp31vi1O8DacC5258rPFcs33upPZhz5p7muuQvO+a2/rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CwTOli5z; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53f22fd6832so8428789e87.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735315914; x=1735920714; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J6jOL9AAxWglamTsC6cbdjMvO1jXJ6RrlsbJ56BXeD4=;
        b=CwTOli5zF3ThT71os9bMnqN5iBcqWW+Ni+gIF/CVraJteI8j/7ewGnUMg4UAjYOP6k
         wD1k35NA1BZfq6otHfjxbl/ZIXpWAhhQnZW/hmcFl1kbXsqywfLoT6LzfZvZj1dTsFOZ
         ILOMlvOJ6Aa80vB19pAHB+53ofJf+O8eFSiiWYwOM9zaVDW5tH3GSY5lxE4md5XeE6+c
         K+1jRHhk2M7Y+lbSVjrJxXBSp2M50JQZlECay0TO7eR6F7wx4JSfU07YS0dZsQzfLoo1
         Ljh5Ici3xhRXG/FmepZDCXqfU9ytdW/ef/tRpRFgatcLsg8oa5gOW3UfdYL/mhfSCcvu
         wObA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735315914; x=1735920714;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J6jOL9AAxWglamTsC6cbdjMvO1jXJ6RrlsbJ56BXeD4=;
        b=lCpD+5Jvn0xXzb/ExWudVENB+Jl5xNzoV2bpsS5oFc5PYe39FGkBKn6NIWKJ/l2aix
         yaQcQLS93BdoL9CK/hqraI9etjU4P6l/s8mSEMCspi7eHTGZtWvsHIvKwx4YNcIcFMM6
         l3FkjrHXnvTl5uNl/kWnxLYBXUlYewyKuECTtx6CxJGSdLYsnaRTJRd2BrA4bC4FfZ9B
         PuU7mB2RjUpNMp+GkvcAehtVEM8g18uXw8B6wbxu4ZMuVgneXvlTPR4rdI5VqMV/02J5
         O+sVD2xex+SsdpjUFZKyO0Xyqc/0FobvFuVIr88ZPkYxMpU829Q+FlhuEWDtAiTMN0Lk
         IeJw==
X-Forwarded-Encrypted: i=1; AJvYcCVF4su4H417n2RjYd2bz7rXR4lFPkZoTHFF+Z6dRvWWysABbEk0hATjrqLGLEahVSU+NzVauo1Lalnn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8s2HHYOJ/N37LWurCffQVvados8QRBaNwPxbMEoZOdU3LC5lz
	9voPhvX1luZ2kpjT8BoWgXVr4bwbeDehrWaAu6bwo93S2zDyLQNNcTcMcTB0Kvhpb9yg+m3D/Rf
	7SEJish4UAsKo7q1zcb+tg0yRgYzKdwKD5FDiBA==
X-Gm-Gg: ASbGncvFn9IqHkcwV1cs526Vf1+hqeGL+Rw+Q5GLhX9LDFVZaPIntt+afWBYGCTh8xr
	QcOD8WewlVkjLzJD0mQpfIOLBBdgv/haVMHBL
X-Google-Smtp-Source: AGHT+IEfzgrnWEv0T8X300Rwk6YsTgikGaZ2unlJL/Mp1uL2AGkGBjigq6K16TIrpmYWFmnd0L6EjwQh/s6OpeadRoU=
X-Received: by 2002:a05:6512:33c9:b0:541:1c5f:bf85 with SMTP id
 2adb3069b0e04-5422956beeemr7174420e87.50.1735315913918; Fri, 27 Dec 2024
 08:11:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241224093522.3815562-1-kever.yang@rock-chips.com>
In-Reply-To: <20241224093522.3815562-1-kever.yang@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Dec 2024 17:11:43 +0100
Message-ID: <CACRpkdb+3=VQiY0eHcVDcqVMpkSXY1sw_3pC6uCxQ8EZtRQp2Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: Add rk3562 pinctrl support
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, krzk+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 24, 2024 at 10:35=E2=80=AFAM Kever Yang <kever.yang@rock-chips.=
com> wrote:

> Add the compatible string for the rk3562 SoC.
>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Patch applied.

Yours,
Linus Walleij

