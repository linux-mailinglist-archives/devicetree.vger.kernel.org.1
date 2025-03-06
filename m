Return-Path: <devicetree+bounces-154779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C20A5488C
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:57:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7C081895AA2
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 10:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39D7B204F7A;
	Thu,  6 Mar 2025 10:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sybzewpp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA6C204686
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 10:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741258663; cv=none; b=igKoujUbh4LAcHUIIN8kx19F0IB0gNfK+/9Hh+19zhdZ6CLhYQH3B6g5fi2unrJiiGILIHRwXlXoeabZltShWkQf0+OuepEmFNKswExol6vjpuLOLmCmAQJz/v3dsnnSb5PhoX5FLpQyP8REBfUR+fQZDXGdY37Rv8hOMd6uMBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741258663; c=relaxed/simple;
	bh=HUzA5Pu2VpXIYuAhDxgWPL7oFqKDgn6WYCQ3x4sKcJs=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=OmIDRxCzicclP7JO091CuQyCFWV0LKP9CJtpawMqABQn8GfFArwBW3PM1lZdEXzziiB64Mpyno21oazNkAP6crZyt18DeGhy1dTvXrSUp9T7OUAPcjri3UwC4WMYjlBhHUaSYopgOD3V6fQMTusYg8aJab3095bDsQnIdrEPR04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Sybzewpp; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ac1f5157c90so83795766b.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 02:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741258660; x=1741863460; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HUzA5Pu2VpXIYuAhDxgWPL7oFqKDgn6WYCQ3x4sKcJs=;
        b=SybzewppP+syPgdAproUY/UYNOHa+oKAKVn58hK1cGBbPtCe+Rdnv56fNJfPZObh8H
         25tA6MnxUhQ+Ajl/IFb7RyAsnZFsbzk31W0Vzlz27KPqB7KFpWFClaXIpMwl/OTT21o7
         MuMX1W73iBU5mJ21jnzY1vRSPvhTr2k22UfyrbQq69u4aS0No3lGILoAncFxEv/AcNxD
         C743Y4C6maxL8PHBpei3VYtAkxQ+RQwh0zleuUVQ7Q7o0exIupNv0VYRyNmusr6HeSJf
         WRhryFA1na4qUZtBGYMPFA67Z1ICgRfDnoY6pijJWdcLtQcP032BohQwbEwiiBq5Z5OR
         7Eow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741258660; x=1741863460;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HUzA5Pu2VpXIYuAhDxgWPL7oFqKDgn6WYCQ3x4sKcJs=;
        b=uJoF5vjBamMpN35YKHctgFg3ubfd6bz25Ohab3+q/OxErWbOPEsaYalV3hFWf9Ls6Z
         rxTrjEDfS+paQGgs6EcJMdjrS/b4J5W3h2VtG26aQyN7JlqSdaCwx61J4ENp7Ovyp55A
         wynscnh7YjFJwqUXD8pzaQCT3EHl9IaWJNYtOrKtwbvKzQok33qaBzvO6B22dc68y5P2
         h8YidV0BUryrtNdJI/vxRQkMho3ZpsYc0Uc94/aBZZPHSCv3YnkO3T2GDFVVzHGfhGE8
         0elQ6o/nAgk5tlNXIi5dHiEHpTJmTk72lW4QgZmZG20vT6sxn57/jJ7KyOX/WoU/vJto
         W/Uw==
X-Forwarded-Encrypted: i=1; AJvYcCV1dID8+0/ywRfLen2uPNdILb7GmlsLsYvBUGa/SXLUcgyqKYKTCnCizVhS4rfYEEyIvGmztsc/YJ5y@vger.kernel.org
X-Gm-Message-State: AOJu0YwLvqGRFnvrYaQg9ukZRH5VVoVTEucvZyybv8OszqnCykYKGYf0
	jOo89PTPlZgfj6f7sqGS24DGoIcG7g/TBskOaLh3SHUOsE596F9JHRLT9W6Vj4U=
X-Gm-Gg: ASbGncvaU/0RMbPdtJLOTnPmPkwb1nIEfi1t3xqoVUSxPv/liaqsPDTiS457o9qzdL/
	cQ1eia5X51WU4mkxOVHsHysz3QOqJSln5WiLzhpQufnxh6U1hRXRjPTM/WbQii+rMgSa+m56EU9
	ferbgjgRtFqJaxTFLMEURvAq44qV7FYgO+wjWPF2jl+ZHA16os0JBIf2GwLI+YdFWSBTpWIkvQE
	L4bxG3hdsUQqoNxDpNgXGjb+FI/E1g4Q6Fp59c5xLXu5L7wLZQGJECs55B+ScSxWaUNbJXJjxy6
	GbD8IFkSaOH/koUcsZnoXUy/fTiWnFYlsBQkhFgdHDYejjeD
X-Google-Smtp-Source: AGHT+IGeZOiaY1aJKJjqtYueXhMP1BS31yX+hr4PezJXUBtQPVrMxRBsSKLnYFZO+vtwvwtDRkBuEA==
X-Received: by 2002:a17:906:29c4:b0:ac2:29b8:1f21 with SMTP id a640c23a62f3a-ac229b8202cmr306641066b.49.1741258659698;
        Thu, 06 Mar 2025 02:57:39 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2399d47b5sm74174966b.168.2025.03.06.02.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 02:57:39 -0800 (PST)
Message-ID: <b70f17589b91730ecf6080c626492368283ce7a1.camel@linaro.org>
Subject: Re: [PATCH 0/3] gs101 max77759 enablement (DT)
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will@kernel.org>,  Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
 <tudor.ambarus@linaro.org>, Rob Herring	 <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley	 <conor+dt@kernel.org>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Date: Thu, 06 Mar 2025 10:57:38 +0000
In-Reply-To: <20250306-b4-max77759-mfd-dts-v1-0-9fe8b0eb8123@linaro.org>
References: <20250306-b4-max77759-mfd-dts-v1-0-9fe8b0eb8123@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.53.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-03-06 at 10:14 +0000, Andr=C3=A9 Draszik wrote:
> Hi,
>=20
> This series enables the recently submitted Maxim max77759 driver and
> updates the DT for the Google Pixel 6 / Pro (oriole / raven) boards
> accordingly.
>=20
> !!! Dependency note !!!
>=20
> This series depends on the corresponding driver and DT bindings
> proposed in
> https://lore.kernel.org/r/20250228-max77759-mfd-v3-0-0c3627d42526@linaro.=
org
>=20
> Note that in that series bindings and gpio driver are accepted, but mfd
> and nvmem drivers are still waiting for review comments.

To avoid ambiguity... with 'accepted' I meant reviewed, but not merged!

A.


