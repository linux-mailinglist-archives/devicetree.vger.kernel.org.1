Return-Path: <devicetree+bounces-133506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 557889FAD40
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C97518854C9
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 10:42:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85F1D1993B6;
	Mon, 23 Dec 2024 10:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dgTFHQxu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE48C190054
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734950534; cv=none; b=edxA0lL8pI6mEAhyUyWdqjcFD9WYHI8WHPrIGR4UeYxKuRz3Y0dkUmyV0pfe1+yQlZJyJ0p6V4IBm+Uga5f2T5LCUXYdeRgTJ/4TTWgb3rTE5/stNStX7NfUb8E2IdLyC5jV0gdQNKMSfcDVSV4Rig3jl0chCnoVHMvMMomJIdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734950534; c=relaxed/simple;
	bh=aQrK1HPme1KX8MRXKGRDKhR4HEct1R158EqjW1hnA3I=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=hFiOhix5qywcePFdluduuc/LbqlmmY7ffbg12tuxFoKQSB+0vLtuwsne9AqvT6EWEzCCB96GVHr+I15Ii2EV6kqaX/IZ+IsLF4PU4ujL1B+3j20CP2FtqHAxCv/XdvtD+xkXe8jG/pAAJkXiEnSvAZeirUvDgp40iFHelSRNjpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dgTFHQxu; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5d34030ebb2so636755a12.1
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 02:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734950531; x=1735555331; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aQrK1HPme1KX8MRXKGRDKhR4HEct1R158EqjW1hnA3I=;
        b=dgTFHQxutuHc+D2sPGOcvtbVyPluFlWWCbFwqGrnJRL2yueIM4LBB2xKdiLIDW3TYK
         VLRlY7k9XAKcJbwIZgYr7KFnSVFhwlZTJQqH2AtN6J1qUtxzac/scT9Yn8Ig5HZ712bE
         33aAXydCjKw7UVKQmkII5Ile7seexfxwTmjJGkZULUwWiLJolcYnp/a4jGucRkmH1E7X
         4uG1PrLVq3nifXNA5jVr8IJz8LjAMFxeW1zt38RqxozP/APkI3gov8VpDwryK9fOoswb
         f2q53rHb1hD4wcXsBadJdfN26ENlFBb53EECBUc2a7X9syjX+o/Lj5dnROzsfYBSBRlT
         xYLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734950531; x=1735555331;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aQrK1HPme1KX8MRXKGRDKhR4HEct1R158EqjW1hnA3I=;
        b=qEvkeVXQBCT6QL4P/btVkzXHux30rvuY8NyOmuoiKznm/auX4CVlCSGFQYUyztb5gZ
         pMSw7q0NOtNX3X/Frrx91UnDppclxiWlPD8nUpX8csC0es0mzIpQ7uZINXOCvSSW+9t3
         vu7qrxvt/zHL4oKC9ZZ5Uuxs96kEcqoXhUZs7PM9xKQjgOUsSiyhYjadItahjHqhVzAD
         FKXQTLF//YfqntGXqUyceoNlSF7WsTJPae5KuzWUDE+X/U0qiPN4I9idOZC0VEOs7Gt3
         jVmRRnEzYwcoQSkWBPV1WtOAtRGeln36DwR8Z5fZ4M/mxhfMwjLYjcGG0eW/H4Fx4kQ6
         MsRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzL0WLrSdtdCBK98vpnBQ6dwecjuhkAqQ42p1w5pwNP4UtFlVcISn1JPfAi6Hf+5mgtCpPOeU+ijl6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy36Npmqpz/A2RrldMYzRIOa0CNTIBv3L9BmOLkW1kATzaWyyxC
	6pFmzLDESFkGaksze4Ply/vffZ6+jUtqOMCNdY8cjW3X2G2oaUsaY6QDrKYaM24=
X-Gm-Gg: ASbGnctsoibFvtrimK0nfrj6Lbl8XWM9AlnLb88vbscPYGd4YZLmy33eQnX0dLiWnih
	EkvssrFMMkHXbGC/WP4edbjxz0nihdjxY8ZsQiX59vA93E1ydjvWDy1ZwFoGdB2e0JjwDPrcxx6
	NjKvH7VzW9Z84/RjAfD1N9m6G30T04FJv9sb2OBdZfFz0bvhsFfbuN2yo0ESlCH426Am4wVJM5V
	9PR/F3tpL1IJbxVldulKLBWlvKg4yULwdcUZA8c6rf7ToeUPGfDlzidxJLHsA==
X-Google-Smtp-Source: AGHT+IHgWrhh+2AxSpUDrI7JHbusEzDDQ2ltYsz69a2vCjN8/HtQhE7ErhArGzKx/MO5IH9aoL+HgQ==
X-Received: by 2002:a17:906:c14f:b0:aa6:8e9e:1b5 with SMTP id a640c23a62f3a-aac27026ce8mr1182784666b.3.1734950531082;
        Mon, 23 Dec 2024 02:42:11 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f56csm504416166b.24.2024.12.23.02.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 02:42:10 -0800 (PST)
Message-ID: <d7dd7286c90ecf43594fd1d44975254479270539.camel@linaro.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: exynos: gs101-raven: add new board
 file
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter Griffin
	 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Date: Mon, 23 Dec 2024 10:42:09 +0000
In-Reply-To: <dbeb28be-1aac-400b-87c1-9764aca3a799@kernel.org>
References: <20241220-gs101-simplefb-v2-0-c10a8f9e490b@linaro.org>
	 <20241220-gs101-simplefb-v2-3-c10a8f9e490b@linaro.org>
	 <dbeb28be-1aac-400b-87c1-9764aca3a799@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sun, 2024-12-22 at 12:43 +0100, Krzysztof Kozlowski wrote:
> On 20/12/2024 12:27, Andr=C3=A9 Draszik wrote:
> > Raven is Google's code name for Pixel 6 Pro. Similar to Pixel 6
> > (Oriole), this is also based around its Tensor gs101 SoC.
> >=20
> > For now, the relevant difference here is the display resolution:
> > 1440 x 3120 instead of 1080 x 2400.
> >=20
> > Create a new board file to reflect this difference.
>=20
> There is no board file here, I see only overlay.
>=20
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> >=20
> > ---
> > Note: MAINTAINERS doesn't need updating, it covers this whole directory
> > ---
> > =C2=A0arch/arm64/boot/dts/exynos/google/Makefile=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 3 ++
> > =C2=A0arch/arm64/boot/dts/exynos/google/gs101-raven.dtso | 33 +++++++++=
+++++++++++++
>=20
> Nope, boards are not overlays. Boards are DTB.

Several other boards are using this approach, e.g. in
arch/arm64/boot/dts/freescale/ and arch/arm64/boot/dts/xilinx/ and
arch/arm/boot/dts/ti/omap/

Can you please explain why this here can not use this approach?


Cheers,
Andre'


