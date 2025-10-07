Return-Path: <devicetree+bounces-224311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C42C4BC2AF8
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 22:46:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7AD113C811B
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 20:46:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E861422D4DE;
	Tue,  7 Oct 2025 20:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pUSJO31+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B4019DF4D
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 20:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759869985; cv=none; b=f0jmqnOGsaRHNyy40YT80tRzP9cq6N4OOF/wRDgCztzE3z/gMTNEAfgndx+qejfD0HVOFsRSquSr2+oXsnMoVCo49rNU3EmiAAsDtCYU7rq9nFRLqJgxQyWhsxKK0zdZ/v5zzDQ28SYwI6vGgpXVs/I1AcpqHwCL8cL8pPug8T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759869985; c=relaxed/simple;
	bh=LbdMXV3ozTZmE/S9AboaOaM8iqRjDNxZDvdwE/Es4Cs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P/nhu7wmPHkPODl6KDIwl8wNcx4+78T+JmI5WH1OcwDx59DJn7ZTgsoc0AEczeKT3LOfqSjXSVwnSHZWv9P9LsX3IgtbKfrjlfK2LHwEyn8DBe2kQvPVhbPumSvTY7BFXw6rCCJ9ZLYzX/y/H0ehaoA6iI7poZMfmKJGAtavZZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pUSJO31+; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7a4a993dea6so2211330a34.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759869983; x=1760474783; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LbdMXV3ozTZmE/S9AboaOaM8iqRjDNxZDvdwE/Es4Cs=;
        b=pUSJO31+QZeiKVVhaGISvowrx0WkWAOveOLBZf2c9BTC1f4qjkIDLfCyoOnxZ/GdgR
         d85Ln+ToATRTkEyEQQ3/nl/MFf1xK7fXIIJggUBYgQjZTtxlFYwYHKPEJg0HNAbqMHWW
         Fd8J3+YQLo3doOOyx7NK6lOTrlRibz0vQm3jHg4g3cRL6Qeqf497GYo1eXWBlerfk3gO
         2TEhuZiHCiuTYSXYLZzSIPLHxaLMNmbo/xp+Mn0HnadDsYR6JfInomB4EwRUipwCWABL
         joW6AeWpugEWwHxq+fQ3FBr7XhDpdRCnXAKBrrROJxAbQYzf1KfGWRTKiaSB/blCYBUJ
         U9kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759869983; x=1760474783;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LbdMXV3ozTZmE/S9AboaOaM8iqRjDNxZDvdwE/Es4Cs=;
        b=nTDTfVOVVZ+WhjC5+iTYhIGc8yUW8GWRHDCgM/LjPAdp6P3sBTMuNSGV6lIoPE4K29
         5lhOqRWfYYHTZf+sgmhs2+tEd3mR3Eo1HBW1Wa/gBFQ2ylBtUidCZZJy6osHsFpk3OS1
         qfZb1I1gQ4UvOPD6xsMSeFD3KvEFbh7e45ioBtRMUtife+NPD/r66BoiBVlKah3HoOxl
         AFRJ8MFh9pbDSFyR/+6EA+gy3m/dY5m3E2C4bkWl0IFHxcPgsVVN0xGcMYn+jg+8oujb
         1rm4KllquWjcx49O1WNY9oSIAEkLux9INYoBZbJnU1Ic9+Btexx6qgYq1Ec+amHX6q1K
         9MPw==
X-Forwarded-Encrypted: i=1; AJvYcCWlXUpRhxTO3gfl1quK2OByZ69GD0s2YnLfAHJ0dnCEJrlh2EMkA5tbI99enjeXbn7hoM5/CO+FbFLk@vger.kernel.org
X-Gm-Message-State: AOJu0YxevwEJSmiSdwT6tHz+rJvYNmfPV88VbQV05SGGnKDtv6S6zPnR
	/hlJG0D+fXd18t+IMtRM7EQv+3bIG99MiKaKPa+mcgk0hakKyzh9/jzaTy9XcrWEgj2OeAWP70i
	eDbjSy/UkhVF29T+xWW8DDe+4l4f3nZxONsCa+MwH4w==
X-Gm-Gg: ASbGncuH02rQkxsjsMNob3CDbXvyXle0WZ8RfDC3W/R2Fq1XEoxoc9hckiit2IMUH3o
	M+Jdu70s2z9bIMAcWHPI5FmVnjcWJlPvpOQ/pGKEVvvFWmvtCiBCZ9SimgPlpplYSSFjdjOrdIw
	mL+obFB70JgAZxghZ1S0NwtP/vrIYNn7z92/ODVJms1+wltKjfU+wns+mytIZcaeMLy1cwBLsEc
	7Qe3FmavzhmExfrYgUW7bO9/mC3VqMZ82BL/A==
X-Google-Smtp-Source: AGHT+IGcTMLJLJFMRFfxr35P1VFknbDk8xxpM6Ma7bfAlp8Jh6N302g2i+0XPxTMnwxgopW6JsJbBg7g+qmgQgVNk1I=
X-Received: by 2002:a05:6830:621c:b0:746:dbc7:e3ee with SMTP id
 46e09a7af769-7c0df715858mr633841a34.4.1759869983308; Tue, 07 Oct 2025
 13:46:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006-gs101-pd-v1-0-f0cb0c01ea7b@linaro.org> <20251006-gs101-pd-v1-1-f0cb0c01ea7b@linaro.org>
In-Reply-To: <20251006-gs101-pd-v1-1-f0cb0c01ea7b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 7 Oct 2025 21:46:12 +0100
X-Gm-Features: AS18NWDxc12ZxAU4LNjeEPKBB8NsjHFZacb56hFZBSRRIbtDZk4xL2W2KL2JXWI
Message-ID: <CADrjBPrT6LVqs2NSu6HMWiQ5Rm59pXcbfcjLc3ZxrVBrMjGQwA@mail.gmail.com>
Subject: Re: [PATCH 01/10] dt-bindings: power: samsung: add google,gs101-pd
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
> Add support for the Google gs101 version of the Exynos power domains. A
> new compatible is needed because register fields have changed.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

