Return-Path: <devicetree+bounces-224314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B01CDBC2B49
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 22:53:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A4FBA189A737
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 20:53:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6E8B23E334;
	Tue,  7 Oct 2025 20:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SlGUFpSs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1BC1D5CFE
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 20:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759870411; cv=none; b=beKos9oW0u+go9mGBip1+q/E6Yg61DTb4Df0w0afY4W2c/MvjkX8vpULUvipYkTF84kO0qyxwX5kRz4M5sc/wuHadUMsfVYQJiLHczUn0qJv1KqT3hk5QzwFK3EkklqDRvdEqP6mLi/oSU1hWMord97bNMlJ3DWa9Nn6+gLyas0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759870411; c=relaxed/simple;
	bh=/hCZP75SmDHrCZY5PWLz8NOVMBMSMd1PrqQADWHi6tM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qwTCrNgBmU+vBsHxsNw7TDu6McfKcxi6Ne9AhP1R/YtmQI3ZFmQQnOVec+S3bC9PRHIp0JAI9GLIDoMSXG2VNZi26QCHoH0X5xKiNSFki4sSKD8q30PDS6Pe9GYNjynsAZCLpe8IwVZ1MgMxbHVqk7hvKjGlnzu3NJDQpz1KnxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SlGUFpSs; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-43f988447b4so1574418b6e.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759870409; x=1760475209; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/hCZP75SmDHrCZY5PWLz8NOVMBMSMd1PrqQADWHi6tM=;
        b=SlGUFpSspz44Aw5wUKlHa342PN49vvlrUAMNLdS7xKJR2gulKpDZtYd70s33EVMqUB
         d2k3McBx8l0aDVxdmSsZYHq7L/xqAPwE8CZjoHAllk/QjDD5JiHdDeNEhI8oiAVpOzhi
         8hZrwkurrQLZdIa7JXTR0wxcwFACOC66xYgoSX0HRda5WnPfsxGs6DNKq4NQvnrnZaIc
         sk80RjesUNWg6H2sQwMcC4WbFP9/AY9uqfQaUHVxfhKflrpPxDr5eUfyBk4tdFa036G5
         E+ttBI2bX6sr1uowZuA8z/ToSCxC7e/00glVZRQ5OT3Tvbddfh11h7E/BXYBOJsBAzPl
         /F+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759870409; x=1760475209;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/hCZP75SmDHrCZY5PWLz8NOVMBMSMd1PrqQADWHi6tM=;
        b=sd9ihhitEvD+losnxStVvMme/PLvx/uix3n6JMltGYzS9TrmC+KL+5ag2DJJaGRQpi
         faOzFLtO//8Jfdklxn48NZ0ICFTuZIZgI+45cDQOIYzrVrX+N7YGm15F5oav4G2et5Q9
         sXWZ3gJhOCju0DZa1UHCAlCFMtnTMJn+L1Idoz+CkdXBYw0HYoQI7rcjEQ9VU/F1Dk70
         6rvWmNiVH4ufLArZLh03V1/Sd+er4IL93U2j7RRTf2+Jh37PPo1JrSik55dO349lQsN6
         rg1qklscvRA6v/41IXUJH/NiZ+16O91uHX0tUQA9VPVhHq3lkbkXf6ptl6IDSav+Nm+B
         9ybw==
X-Forwarded-Encrypted: i=1; AJvYcCXTc/lmHBujqEq3kdzpH/nafKGqOq5SfLNqJxkFyhhgCbhpOai8tBeT9FhmhKYmHt5lO8ZA3UbLFWhU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0HeQ4sj+MXzSla+8fDK7ADe3c/utb31IyqvtAkFM77/MYF38B
	ao1+EzzI/14YVXwILkaK58Cw4YLDdAeFuwSmsseqkBDOsTzLeptYTJyWERzmzXeGk+wXBAORyw7
	L2TxA5OfdqHLHXvVi4RVjSK5iJbp7axV9i2pcuFZ7qA==
X-Gm-Gg: ASbGnctuuvcDtpRay4LaeJHz9jXm7JIVuZFXprEnSH/K8oNAjJHxgzzKyyClDE7uZII
	rW6r9ESQ3lV3jRBYTwPypfcVtNDrIdFIY3GhQDJRTtEYODrfgvDR9j8ljcbXz/TAsphXIuPMMAQ
	pG59Qyk8Rxsdn5ilbSEWAh1eyyiOJhYbKD98Pcbke8sdjDbKgXQ+OMZDDi/3aXMFkHQ1deGrISl
	uWnmmOCDT0uvbNuiwdhiO897u8WQIEkfrM+GQ==
X-Google-Smtp-Source: AGHT+IFQJZVs4LBnBVbWSGDsdN3906KKw4UjF5sMiH1fvSeD9gn0otajPAH5kYHA1+VAEseWAd1TdVpRyCmSlYYSQ1w=
X-Received: by 2002:a05:6808:1988:b0:43f:57cb:7f83 with SMTP id
 5614622812f47-4417b3e3209mr436998b6e.46.1759870409126; Tue, 07 Oct 2025
 13:53:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006-gs101-pd-v1-0-f0cb0c01ea7b@linaro.org> <20251006-gs101-pd-v1-3-f0cb0c01ea7b@linaro.org>
In-Reply-To: <20251006-gs101-pd-v1-3-f0cb0c01ea7b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 7 Oct 2025 21:53:17 +0100
X-Gm-Features: AS18NWAUUQxOHKEKFHDJ43bMyMuc1k66q_SOXE8Wv3pAaENJrBaMTokvZjBYJtQ
Message-ID: <CADrjBPoharrk2BwLuFaAicErLxZXre+gSSqwws6Q07E4C9f8nA@mail.gmail.com>
Subject: Re: [PATCH 03/10] pmdomain: samsung: use to devm_kstrdup_const() to
 simplify error handling
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 6 Oct 2025 at 17:43, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> Convert to using devm_kstrdup_const() so as to simplify cleanup during
> error handling.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

