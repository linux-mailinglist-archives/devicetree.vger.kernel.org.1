Return-Path: <devicetree+bounces-125488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 548789DC18D
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 10:34:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10FF016520C
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 09:34:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BBF017277F;
	Fri, 29 Nov 2024 09:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x9QdjggC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9262714F135
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 09:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732872851; cv=none; b=NASxXYVqdJ3xIfJyJrqidqbmVbuIOZKiU8SbVA/zFIZH2ZHPuw0nSxKLFDST1vyK9+xSerzZofiosD1s9Sq5hZvZqriCo2ealxnTCYYk/FbgAB1faPz1fr80NCQherL/ndpPAQipShZdTyuX8MXmdbyQQpePg2pgGBY+09t4JNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732872851; c=relaxed/simple;
	bh=xNgvtRisS5u9cN6139hn+NK3qqVv5Yd3nHI/xvwV1jw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xb6gssrQyA3X3fHPjjKadVn89u+QABVUEueqcHK2tZBVsH+Gjyhl4Spu5Bv1WeU2D74JNEQnRO2wxPX/xWQYyftgQappLh6APViCwSh8ms32f9z5ilaPPVLXhrFFkwqWb0v/DmMBbGyMm2K2Ede7SwGElEZYHzfRsbyX7NaDL8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x9QdjggC; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-2965e10da1bso828725fac.0
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 01:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732872848; x=1733477648; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xNgvtRisS5u9cN6139hn+NK3qqVv5Yd3nHI/xvwV1jw=;
        b=x9QdjggCkY9tkTBHbFrTQZ0g/UuFmhmFYBJFo25ms2KwQ8SpqrVAzmC7Pmy1v4bEwD
         thyh4BuRRQQgzLxqKB1Qe0gVCvJhbWmxjtLJOi6xpMY4s/jotb+OMn7jtRuAudf71LuX
         bQlql1QfqXI8SKUEhu7vWfpBYZerp3Ahs1LUa6S3CI4ZmmBqk6nZZC4B/kWvWT7ctk/m
         DfoAePaFZo0GSg6lMrMs0SiE2VDXNZnJ9cjXTMraa8yrJFeQmSdw3RKxmamRO3z7VaDj
         hYdnh/e/ODVTdvapXsYY4SjLKqEH+S7W0Mf/2P7ToeQI7/hgh+9hbDFu3S/9QlS5rsmb
         WV/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732872848; x=1733477648;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xNgvtRisS5u9cN6139hn+NK3qqVv5Yd3nHI/xvwV1jw=;
        b=WmroMJsbYi/I1MQ0d/q2aB06eYle3vlJ8fYZcZ+fr+udAhyNR5y9UqUqVQAFv23C+u
         Qz8MvNVpKYJ08X/UfKJfbPfN2YKL83KE5Vz1+B4limCc0rd41/tm/ZDn6GMBNYpDNcqc
         uBD+NYLOyo1C0JJJlMxflORskyUiKRRWnv4x2iGS5NUMlea70urlPo4I0hzPXvq4W2kG
         ovrnddoOhHyBE23vIqS5nAOXgMtWkbvZOUNYc6frv4/V0WXxOugjWnGJ/Ypd+XF/OaHb
         blLKUmeAbFURX1YKDF9m8g/4If7l9Ag08R86ywmnl3b0inQET6RMcB5tIyGi9a2XVoHb
         zliQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsPlVphEEm93mTETCn9auG+mlzoHNk5QiqITJgZOTSAshes9lDqBoiD9t7NQGTmtiDb8SPqYzRyuuJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwLcKR3JfT+TJvV7lZTnFJh1CzSMbSRcGzzH2S3Pzd2JXSunAeM
	Ezjt4fTWTP9y5e2aAVDUJdM22C/GiFSJCSB3yCXMvMvrgeY8G5X0awPEiB9HmbOA46y24Xr1UNz
	De2BOkR1zzsDiSI7LCbEnUKW8EaH/ILlU9vWmbA==
X-Gm-Gg: ASbGncsCjl5fLn+g+u1QoeFeSG9C/yBeh3zEfqzRRTkpwyjOTZZB4/XDagN9msq8Ujg
	orxX8LMvNJi0te6UucWt989KgfC6QTYbv
X-Google-Smtp-Source: AGHT+IHSSMxnaGOmFOSkOhhOzzx4jvQ52FptkRVrDxK4pnBkB3GqM5Uuf4cKswcMzu4vXxrMnL3Y6LE0/UTLwqBgt4s=
X-Received: by 2002:a05:6871:321c:b0:29d:c624:7cd3 with SMTP id
 586e51a60fabf-29dc6247fbdmr5795597fac.4.1732872848629; Fri, 29 Nov 2024
 01:34:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-6-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-6-1b7fce24960b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 29 Nov 2024 09:33:57 +0000
Message-ID: <CADrjBPpLDLoPkvAno5dqsUtZGAcxuTMf3X913syKmY68ndwggw@mail.gmail.com>
Subject: Re: [PATCH 6/9] phy: exynos5-usbdrd: gs101: ensure power is gated to
 SS phy in phy_exit()
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Wed, 27 Nov 2024 at 10:58, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> We currently don't gate the power to the SS phy in phy_exit().
>
> Shuffle the code slightly to ensure the power is gated to the SS phy as
> well.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

regards,

Peter

