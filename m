Return-Path: <devicetree+bounces-180282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB7EAC32A4
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 09:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E15BD3B56D1
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 07:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFCEC1922D3;
	Sun, 25 May 2025 07:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PTTLued5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2BC3234
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 07:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748156552; cv=none; b=p+gqnzIFgU1eFErEmiyAjOYhPqDxpMfJLaP0h6XOYk23G8sEoZho8TMe/JxOVaGi8MmONpWqTtHvk99jbUoYehut/5tFDXhv0I07X3IbR+xlKt7zUxjFyDm32NyhmI9sOHDTfdgOSrQtLJWYs88GM8aj/U1j3u614i/3bWNLZcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748156552; c=relaxed/simple;
	bh=xmVuJpzpAO9LBTZ0wqrziL7kSCWF8SNFJEq1vwbSKj8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FpdZHGzZirAaWcpeRxKUTK+2EaL+Ne9cnSLsK15BXPoJ7Fyfw0+VL6rvxFvZ8uFB+dDdF3NZuQOLSfX9x1Th13aYpaufd4Kc83xx2j5VJGd2QFSYUmcSQk+hYS5/IIOhYv4J/OorVGnUElx8eTHOItCNaiP4+z7KwPEC0kcTtAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PTTLued5; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-401c43671ecso600274b6e.0
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 00:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748156549; x=1748761349; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=++2YpVIWSfdyU9wkP36ZaRD+uvghyqrOoMuB3yBAyQQ=;
        b=PTTLued5VxluoQv5Wr4F7Q/TzluT9Kw1Yk4tFoI0uUpWnyapBoXktd4mHlTXwGdgkj
         NrCSMmgw3ugN+42+j2oXr7PMZDlCxubplJ1mGW95tlJsJvhfRRPOJGngmj1C85O5T9Vy
         KC8O75OfcYqGecdXNe8b9CKHPmi7tO5dcQVy8BUQoLHRmiQRuzKQC2DmxrOq/13luw9l
         dlO1zBNWPGLbWnUw/VPthH7H5FVN7j1p5+5ntTCe8NGmT074kCTP+Je4RksblAAikVHr
         G7vscD0y8W8P77NTXGtwMDuZLynuQtZwlHZJ04EULM5ujS0ahNh7SVFM4n3SAz/l7BA9
         ATNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748156549; x=1748761349;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=++2YpVIWSfdyU9wkP36ZaRD+uvghyqrOoMuB3yBAyQQ=;
        b=L8ahDyqFFuL8P4Bk3GR+3aS8mpK1nfXsPcUThYLihikY5wx1AfG9WBW+JvN2dGc0Mn
         wbgyl+ZCXsd9OXXGn7TkWfR2bOXZRWOy4UfvYG2BiMaYiyV+uI6L8gl2rY6lVwkIU/2W
         m6Fb22VhZslB+0hB7gtn8vcGPj53PjqT38dRXkdB2hT6WcrP02zkQ/J/Ic1SFO3OUOek
         jFItTFEq3r1k4ZvsCGQmpiYDfTJ7L12FeLQtWttW+ZKIbAXQtXG+HyD5jsvdkDwU+PA7
         1jLER0Y4h6IkywwTv4CDGkqg4NW9hEfMw1XjMhG2W8D4OQZ3LjlQsgwMVrO8+7B0l4eV
         5AUA==
X-Forwarded-Encrypted: i=1; AJvYcCWu3mquZywW9ckOHK0rby6EX5F/J8v5D1Bo+DVjTAporEL0a94p5ZhMdsWOIV+WBZ/+ByCOPV2USS3h@vger.kernel.org
X-Gm-Message-State: AOJu0YzCc6Z5UlT+iX57R9UQFR9G5upHXobm0Ye/7ol1O6+/0L2FAum6
	/P3pm6m4NGTes/qReYrkAU7BIcJgKlD6hcymnOK/R4/ty7+6l7xFJybQKnH2N9XANen3W4U650l
	M4H4iej4/ndqzODV3O8muDm94MeDZODslFlhHoZr0Mw==
X-Gm-Gg: ASbGncvauwLr7nFnPpZ+UNWxU8LbrkOCIw2S+AxioFNDsNeopwl8JyOFQt4A6skFEEQ
	kuijLx3SIeQBmxahqfkhRJKJ9NSsZSrxqXkEg5MbkGiboegZFZQ8ohqb0i0C7uV2XvSoivdQLNu
	R3fXrZ8ttnjEhMkp8TH45r0y6aLdBYBWYinaKaTiq3br7lPxoln/roVIQjpoGMx5ni0g==
X-Google-Smtp-Source: AGHT+IGr/xoVtnGmyX8qGFJo5xUSZHa6jevK9WgX6XTSiHo/5DgFtJ9gSQBs5D6r1l1zV6o1b9oFwpI2DMroSyKfCf4=
X-Received: by 2002:a05:6808:1b85:b0:400:d71c:ca26 with SMTP id
 5614622812f47-4063cf85609mr5281162b6e.7.1748156549522; Sun, 25 May 2025
 00:02:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org> <20250524-b4-max77759-mfd-dts-v2-2-b479542eb97d@linaro.org>
In-Reply-To: <20250524-b4-max77759-mfd-dts-v2-2-b479542eb97d@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sun, 25 May 2025 08:02:18 +0100
X-Gm-Features: AX0GCFvvZm3ZpbAlMbK7Jst1a1IiZ6IBCab2RcTFflgx7AbbvRBIsrph-OCoOqE
Message-ID: <CADrjBPqVJDBS1pYMhSy8L5sOEkA+UVKNc6N7oY9oiv_twUKt1A@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: exynos: gs101-pixel-common: add Maxim
 MAX77759 PMIC
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 24 May 2025 at 06:21, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> On Pixel 6 (and Pro), a MAX77759 companion PMIC for USB Type-C
> applications is used, which contains four functional blocks (at
> distinct I2C addresses):
>   * top (including GPIO & NVMEM)
>   * charger
>   * fuel gauge
>   * TCPCi
>
> This change adds the PMIC and the subnodes for the GPIO expander and
> NVMEM, and defines the NVMEM layout.
>
> The NVMEM layout is declared such that it matches downstream's
> open-coded configuration [1].
>
> Note:
> The pinctrl nodes are kept sorted by the 'samsung,pins' property rather
> than node name, as I think that makes it easier to look at and to add
> new nodes unambiguously in the future. Its label is prefixed with 'if'
> (for interface), because there are three PMICs in total in use on
> Pixel 6 (Pro).
>
> Link: https://android.googlesource.com/kernel/google-modules/bms/+/96e729=
a83817/max77759_maxq.c#67 [1]
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

