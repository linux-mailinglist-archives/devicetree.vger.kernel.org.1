Return-Path: <devicetree+bounces-243949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF46C9E999
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:54:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 54ED13498E1
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:54:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAE822E0924;
	Wed,  3 Dec 2025 09:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lbJkrdG9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734032DFF1D
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764755694; cv=none; b=Y0eYd2AJS7HqAX0szi/hXXry+nHQiTFSZNVJPg167nP5LQito6G2bzE9zf32lHhPRjchk/02MAFHU7Q49eBjr7WspVyEdTK1l33xXmLC1IZJhRcSlcJGSEcPNnO0rodPcme5QO9Agl5OB+fQ1gYuVQ6F/RPwfAPEpiSJvJd30Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764755694; c=relaxed/simple;
	bh=f0dqnFUxVAgOq5yOpOOqeQxSwqMfw0XwWJ0/CitF0RE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M898lt+k2u+J3UvBsBvk8uYviPS9un1Ext3R884vLW5m1uf0bLCOT0hFM43jnRTA2An0pINzZRGjoMs5zXUwpmLaeT5fT22OIsgCg9tk6dIhN3YvjDcUIAB4usDMzRx+14n3CFEWuKBqZJq18g2Hdqe4VkPrA6idAY0F+0TQdP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lbJkrdG9; arc=none smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-11b6bc976d6so942300c88.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 01:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764755692; x=1765360492; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f0dqnFUxVAgOq5yOpOOqeQxSwqMfw0XwWJ0/CitF0RE=;
        b=lbJkrdG9gEvbnM353BGTynxqyRKis3e4gYQB558RAab5Reodcp7zEJHJbBK7kUR0Xh
         cwHcsFiOqE5KFDZD0JOHsZn4hBczGNkOcPlkC3eLm/h4VCUkol37MCPmtAcZyvkvCa6P
         X0946JEO2QN6NIwg4ybHWlDDKGvkmMnKbHk8t0B98z1VLrc7qJZ1B2PZHg2VGI6/tr3d
         I05SCaDlzp0rxdTf32bDcJz1KIWoxzq0dHmi6LmrwyAvvq4cxw3gyIQg2Z/zmvO3KjMU
         Fvtf/JJB99AlOGnvRcGAmfyYIpgAGAetKuC3Uo+0yUALoIQqqnVny33WMbZPpE3tFxzL
         vb9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764755692; x=1765360492;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=f0dqnFUxVAgOq5yOpOOqeQxSwqMfw0XwWJ0/CitF0RE=;
        b=pNNY028iGzE0LqccvmF4XvIk3+niyZ8g5I/L0WfAR3OItZ03Lu3pmAL/fUJGZh9X1A
         aBl3+p7JWNV3ioGYr94C/HsZTZfzAwiwZW+eREbGFkaRYIPaUZ3TfeuhdxgYui/0NVlM
         uUsBh/wreJz0jYWNVIiO16PyWHabbI0RJUYnyfU2DbZ5o6HAYXi2bMQhWM1cdUotIf4s
         23dRPpALKuaTpG8jLZYSDhZNmfmsoDd2SECh/If5+jmZ1ZlbA72yAThL41YQrVZiK2ER
         4xGxEYPXbxhyq+r6sPyywc/GMju/kKb9UbTorCtqBJBa4A7LQT+3Y4c626pRKX1RaFmi
         uaeA==
X-Forwarded-Encrypted: i=1; AJvYcCVwuIDm4a3imCblSX6Jhh6YoHJtax2DwOJxZi5xVwJngFiC3BBzRzQFoAXN75RWpJTILer3pSJgltDn@vger.kernel.org
X-Gm-Message-State: AOJu0YxXMVUdTHE6Qs5Hrt4zB39seQjtSTgr+S0euHhs6YZxsFtI0Vay
	pwa6WRdBZ9ZV73tCdyAHHosraienKP1rptHtRLHJehQUZ7WeJxm/emDMLaJDC7Dw6pcBldPWdxI
	3+JC7RByLmU3GGGFMtm9DTd5wB/IyBI4=
X-Gm-Gg: ASbGncuAeDZ9A+Zij/nM05mxrxZbur86gg/of2rN6t0uCgXwSepZMniNMXBt19QHCyB
	/DZtCFJxfdQVG8uuv+S3ULh3LBum/RvU3zp4/wRSKoC0w4gkBPjPb7qizFXByeyM9g0a4HDP6yM
	15TAl+b2IvRz9Il4vIk3N2PFmmCARCwpg8o/wapJTjZHE/EZgnKpEP5Diq7oLgwBKVNhxmFkJc5
	CX6ow2hWWJ9mYitsSOW6S/cjz1NgyhjBdZO9HcOR216sivDHuUUN64VWlnsd32xzv3rUoAGWgOT
	7TnUQwCGdj1j6D789APeCnl29AtSGmbzsk5SkfBN1PaEXD2IZSxJ9RtqnvL2c4KlKgPeV6JDkI9
	Ms+wTf6RotA==
X-Google-Smtp-Source: AGHT+IGh1q4mLj2gpybqPMtTKo+p6UyebY12iwCECr8rP8U6hfyWr+Vocugi0CQjhYnT/XilGYRxTAhtqzRWz5addaA=
X-Received: by 2002:a05:7022:1287:b0:11b:c86b:3870 with SMTP id
 a92af1059eb24-11df0bd8024mr1582589c88.4.1764755692362; Wed, 03 Dec 2025
 01:54:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251203070605.1868821-1-chancel.liu@nxp.com> <20251203070605.1868821-5-chancel.liu@nxp.com>
In-Reply-To: <20251203070605.1868821-5-chancel.liu@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 3 Dec 2025 11:57:24 +0200
X-Gm-Features: AWmQ_bl25_jqrQMlyIUwjWkr8w3cz7Pw4t74hPJrR4CZs7y8Sk8Qxgpyr61aeU4
Message-ID: <CAEnQRZDDLKyU9a1HPt=V=WvEmfOCsEBPd2zy8FWaKUAwUr5New@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: imx91-11x11-evk: Add PDM microphone sound
 card support
To: Chancel Liu <chancel.liu@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 3, 2025 at 9:08=E2=80=AFAM Chancel Liu <chancel.liu@nxp.com> wr=
ote:
>
> Add PDM micphone sound card support.
>
> This sound card supports recording sound from PDM microphone
> and convert the PDM format data to PCM data.
>
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

