Return-Path: <devicetree+bounces-180281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9CCAC329D
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 08:59:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3A141896F2F
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 07:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87C97190068;
	Sun, 25 May 2025 06:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UVvhBPTP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABBC18A93C
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 06:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748156394; cv=none; b=j7Enpq6YGNTh+EzTNCKpWEBADwlNo1xrmsIq8cr1Gv9PShoP0Ru1gbOpiuvPdAK+dJ8FxmF5xJ03bv9YaC717Ud1lbqFbAb3RP6UH2pMEe4g5YWn0puwPmquTTHEoBxmYQ8NrTrVLpQ7Wvg1YUx8eFFbK3meLekxEzFUjU8H7Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748156394; c=relaxed/simple;
	bh=n6woNA1KAB7A7cPpCh7C05v8CU7LoOLG7R9vYiUjRdA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lYlCf7ZyqFcJn8bBtkfyM+psYq4DWpiguKbebyZWw4V+JgmHVjX3o8WN3QFYEHYDKymk6lM8fYfz7v4LiUUlXeDXN7btX+22wo76mgCgEiThDSQCDgZqDDqAK1ILIAQOar48B26KYKWikTScKDelkCo+sy5Xl1Tui9DnKM2w494=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UVvhBPTP; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-601b6146b9cso568919eaf.0
        for <devicetree@vger.kernel.org>; Sat, 24 May 2025 23:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748156392; x=1748761192; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n6woNA1KAB7A7cPpCh7C05v8CU7LoOLG7R9vYiUjRdA=;
        b=UVvhBPTP7HmOm9yKbRkz20Mr8ZEov1O9XhPd3CBuNcgADp6AM9fSJ6oB+8jCUMzaxc
         I/LfhU0eshomUeP4sQ2NeOEC8L7AWJuCyC1fIBK9SOqPjfKQjzY9m4x/+l5M51dRNpkX
         uhnSQY8M7p/q+JyV1kbyB3p0z2/ACL6h9k8gpn0B3krEN96Nl5rompNeIxPkSkKmwDgn
         t8jAV/DLvnt45tIkUc0i7vfDylRDcXKNf6xEl4ap3Y0SLn2BiZFCn97oIXfcl8qU6CH7
         yivfdGNzRpLh6UPckD1G2TRbBkrd/DtzuiKTdzS2Y4LGj5lIvfoMz5U+JT+ASN8/ZUr1
         /bJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748156392; x=1748761192;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n6woNA1KAB7A7cPpCh7C05v8CU7LoOLG7R9vYiUjRdA=;
        b=gAjcrFSN+z/eyf8wKsxZi/lmjhUSyRzccGV7ZWLxc5kmAx0BDoiLx4qlG59EB3Ef1y
         FcKk44nBK+1jTN7eY5PK38TFKzLCXLIK9WfG0PUddZD6tigJQ/eI0Snh6lSbY3vwI0T9
         QgSGS/DlyF8OqHTr5BoDBv9PmmYM+yp0nvqck75HrYWiSd6fJaNrKiV7RoFjBMcxmlg3
         oEbQsH5otHbYDz4uD8eFUlmONvtORFmfZ/kSSHf7MUFab3GfG6t+nVd185dBeY7OmhwY
         dmPPz9BK8tmGuPmsmKQ+LrxPMcPwcW70U3JfzIYamQ/++DUfODpt8fv4hPlzamepZoka
         suYQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4N3P2kpmjLCM8DtOKc/q16ZFm/N7scgeAdtPM2O2WXGhrOCr0n1uGLkDvMYkNEsZB3DvlzuBouvYm@vger.kernel.org
X-Gm-Message-State: AOJu0YwNvxb9pCwv/JLWX0/qX2yoyxQ1TTMI8pQn0xBAh6nJ69lcaCUi
	g9QGpcvxPxwsbEznwcNWcRdAmLIqLcRj3w5u9ujeUmNeI/lHlEWRBtw/lVG9owNGqL5xD9Mdwxe
	Ht3Zbf6qbFoZPEtPfGa0FqwMBuDJdj1YNTZ7SpHVuzw==
X-Gm-Gg: ASbGncuC2z4MwpB+zE/qEQOFddgN12F13ZSYmHHqGCZYfmSNDNBVFjAi0YbjeCBwU+Y
	aAK1tgWAYA+Nh7fqRwb8UHeVBqP0rEAN9lfcyEhxKw/Dnshau3z5aet58uoVabl72ZWFQsajU7F
	Gaow+KlIoUQxXm3nBUn3b1wYI0Q8rdVYUQQ/DC8l9qGaK+Niy3HOCfFPR0aSV0HrrvHA==
X-Google-Smtp-Source: AGHT+IFgDLGOtCqohcdRalUhWXVpC+KpngWsK/Rw8iIAXMgLPGD2nNaWQvQPUiC4kmvZXurqEyjrTqM9NmLsfftktkQ=
X-Received: by 2002:a05:6820:450a:b0:60a:bee:497a with SMTP id
 006d021491bc7-60b9fa62424mr2365200eaf.2.1748156391776; Sat, 24 May 2025
 23:59:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org> <20250524-b4-max77759-mfd-dts-v2-1-b479542eb97d@linaro.org>
In-Reply-To: <20250524-b4-max77759-mfd-dts-v2-1-b479542eb97d@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sun, 25 May 2025 07:59:40 +0100
X-Gm-Features: AX0GCFtzlZ4NN5rM8kQ4Ddqkxfr236WnLwsk7oYUXbS3dPkq764kPsxxis5Ykos
Message-ID: <CADrjBPr2ie+6vNZK0oUH75whXDqX-oXdOODcrM75gMc0LmxoYg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] arm64: defconfig: enable Maxim max77759 driver
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
> Enable the Maxim max77759 as this is used by the gs101-oriole and
> gs101-raven (Google Pixel 6 and Pixel 6 Pro) boards,
>
> The child devices' defaults are based on this MFD driver's state, so
> this commit enables those implicitly as well.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

