Return-Path: <devicetree+bounces-254285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3417ED16E9A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:54:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 177AB300E8EA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 06:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16609369220;
	Tue, 13 Jan 2026 06:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BhJFP7Ij"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C220369229
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768287288; cv=none; b=gLk+D4XkZBUgwVEDmd7P/U5BywpK5g3TjDVf1rP0O8fyNHv8aZQNVcqs8peCgxp+QTg1mJKyzQ0NFYEK2l29b7J9EFkabDz8ALz2pyT3825mp4Ytcke/Uue+qP7yKDhOe2PwDYRsXSmrAuViWy/eE8jIyUZ8CCLBjSX8U0EoiYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768287288; c=relaxed/simple;
	bh=QIEz2iPUowNcUwBXSgq9zpqKfkl981xBKD3hZQmbb9g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l7qwF3vGahDxmHMO3jdCmE66pqSgKrQfHgCefV8tHeo/7OmMRJZQrfTKaUwQnNQFnObvHw5rwbfbnjcJTtF+bDErSB+rzOEGjdMPKLbDjmBb3jdXItnwuOspwjpajuXR8eNWhIKGAADDDVe1nlfIF9e0C80mTNz58thbNjG6cj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BhJFP7Ij; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b86f81d8051so417507466b.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 22:54:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768287285; x=1768892085; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QIEz2iPUowNcUwBXSgq9zpqKfkl981xBKD3hZQmbb9g=;
        b=BhJFP7IjQV4F/PR+lyYWnyRptv/5tJvx/LseTXS0rZ9Cmkt+1dsaCDPN0r0SYy/HcB
         dPAiJk0R/AUTfqAJ69wr8txIdCkKB9t7gaG2AmMJhiqrsyLnY6DT4G8boS/Pnf4q/6ih
         0Ca8Px4c9dRV1+D7rJeAmKR1ZLfFDSkHQytEoEDfg4cjkxMfUopl2L1yuIRNGOHzi75p
         gGjC+AQcTQzqpXkH7aQZYjR75KmqON2INkt5HUnv+CPtT3rx7x41eSRNHwAktKVRFiHL
         mCt+nFs3gMD0mJLava6Mv/UbvzVro+n76FNRLVVB1bWrxv3vsSfGNvWER1uqg3R9zPJ6
         nzwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768287285; x=1768892085;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QIEz2iPUowNcUwBXSgq9zpqKfkl981xBKD3hZQmbb9g=;
        b=WIRDJLs//5gUxVvg4MAnAjw71Xd2h7KiIJF3QHWbAgsgeoqeB4w7tlIJe20JAVEEjw
         uJTpQSdixbn9qNNWW6PCWs9Ln6MxsS2iFsV7yx7f81Qcf9ZSYZeAM5qhhmzAnJhzDxZ9
         YBrvNNdwD3pWjKgSpV7U3B+5LXCS7d65GPfO2/bFWJwNWuOR0H43DiXtpypGVdT/Ey40
         SQ2H/Ooq3l+UZACPKLZV27ZVeF4ODY8/MjqCSiMlYJLrU5+mFvj/RZjUka7yN1JWjaPy
         iXHKpl0JwONIG0zl8/jIC615onHRhy8sTmIEug5jzdc5/W8v4oMT911tweIJ2fjWKM0y
         zrHA==
X-Forwarded-Encrypted: i=1; AJvYcCXnGn3F0RozrRyc+6/KL3r/ebeVqE8dFpdaemh2odDM3tVCmElNpbgPmdhT86pQjI8Q4yrD1RPs3bSS@vger.kernel.org
X-Gm-Message-State: AOJu0YzVlnju/5lZpPmvbR7Syxwn+LS4jqWEfu7CAQiAQA3Dn76EbYZE
	ANMdpF6nmFM1xvv7v69tqbJo54cw0ozlSd6+4UkrPQpuNyIwLV8XZVdSd2vBRcoH+6eG0/oGQ0T
	kaEdEhS4X8NuCGlqMtqAJZVTS/D28jok=
X-Gm-Gg: AY/fxX5SZX0K7vkdS1yoYEwMqrbc+trfm/B20EcoE2xB1oXZDXzkF1C63QxyJjM5jpH
	lVSsdNZ3zI32zNZ06aLYhw3Ar0bEa58hEeXR608aed0UsYvD427uQUG08sr/zS3LkYfpeFKGzQW
	qMP7OSeLZaeisJzkRqgk5KW+7shsgQRWJ9Kw1slNrKKmB0kawddepbrljrt6sJWpxc9W28vHYU0
	R7G8snPZOUYKPQ8aTdfeakzoSJ8TI5J9A+NLT9hyoxMFCIK2YJylyLgdcPTtrUXwN9pKJdFz2g6
	+8hMTQ4gjzF8NXnTWjFdQGEPn6eFQC9pQ0Q9Ofac+7sAd6qURXZD9x+Qa7WVTqohpJwLFjk=
X-Google-Smtp-Source: AGHT+IHlPuya5XxFCIacLim6C0qvemXQbDYDqpsLQy22eM8mkwhyfdPV4OBLHXC+RJZypPmgB+jXgwZaKZXIUhZqDms=
X-Received: by 2002:a17:906:4fc7:b0:b70:4f7d:24f8 with SMTP id
 a640c23a62f3a-b873597460bmr126372766b.22.1768287284759; Mon, 12 Jan 2026
 22:54:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260113040242.19156-1-email@sirat.me>
In-Reply-To: <20260113040242.19156-1-email@sirat.me>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 13 Jan 2026 08:54:08 +0200
X-Gm-Features: AZwV_QhlpP6GGDH3Y9_OKspa55FSa-0_GajtPJLOYt8n6pBC7Pdcmyr51iOriqo
Message-ID: <CAHp75VemUUq6jU3CB9P9O=8tSJhbruKkJw0T_LDTXXBo3gLDAg@mail.gmail.com>
Subject: Re: [PATCH 0/4] auxdisplay: Add support for TM1637 7-segment display driver
To: Siratul Islam <email@sirat.me>, =?UTF-8?Q?Jean=2DFran=C3=A7ois_Lessard?= <jefflessard3@gmail.com>
Cc: andy@kernel.org, geert@linux-m68k.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 13, 2026 at 6:03=E2=80=AFAM Siratul Islam <email@sirat.me> wrot=
e:
>
> This series adds a driver for the Titan Micro TM1637 7-segment display
> controller.
>
> The TM1637 uses a custom two-wire protocol (CLK/DIO) that resembles I2C
> but lacks a slave address, requiring a bit-banging implementation.
>
> The driver exposes standard sysfs attributes for 'message' (text) and
> 'brightness'. It handles standard ASCII-to-7-segment mapping using the
> kernel's map_to_7segment utility.
>
> Note on implementation:
> This driver is implemented as a standalone platform driver rather than
> using the auxiliary display 'linedisp' framework. The TM1637 protocol
> requires manual handling of the decimal point (merging it with the
> previous digit), which is difficult to achieve cleanly with the current
> linedisp character buffer abstraction.

Wait, what happens to
https://lore.kernel.org/lkml/20251121145911.176033-1-jefflessard3@gmail.com=
/
?

--=20
With Best Regards,
Andy Shevchenko

