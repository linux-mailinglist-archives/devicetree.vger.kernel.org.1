Return-Path: <devicetree+bounces-131402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3259F3122
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 14:06:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 718447A15D7
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A247A20551E;
	Mon, 16 Dec 2024 13:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fooishbar.org header.i=@fooishbar.org header.b="dDLeIh0i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC9B148FF2
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 13:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734354381; cv=none; b=DG5vabLPGem5Nw4d5oeikNCz+mL/AGHwNdfk0E8izNU0L9JGLF8KWIuDlWHB1M2SM6KJvo9oPwBnxxh0uapudfktojs/vgVmVYfn21jHfqEgb5KioLRuMGlqEcEGJLxIUZgdh/fp3N9ySe4st6Krl5Oc0IPj66wgtVM4k8fHsCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734354381; c=relaxed/simple;
	bh=wfiIlfNISL7LxmEo4PkSBvNVf6zI03QBaUXQpOsHzBk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tG6lROL0hrMDnE1skMY3ELFUcMopj4vPGSsmPu8J5WGs/3dh5oyPFgMhCy0rbTLKMKTvC2vkCM5f2qmJ3qtCzwIpEWtuR1pYBDNkvjm857fM5zWE/MQVpWGFL+Ta4kpimC9ijSVOd7WK+FTl66yDTIb9OS3/tFmUM2W5HLz+j+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org; spf=pass smtp.mailfrom=fooishbar.org; dkim=pass (2048-bit key) header.d=fooishbar.org header.i=@fooishbar.org header.b=dDLeIh0i; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fooishbar.org
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4679eacf2c5so39326201cf.0
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 05:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1734354379; x=1734959179; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wfiIlfNISL7LxmEo4PkSBvNVf6zI03QBaUXQpOsHzBk=;
        b=dDLeIh0i8JWrVenF79eFfBdZEZakYyAm/YgV9LMHPHvl/j4WnYi+LuyxVDStdySviR
         NmQaucMdXd2+YuKjynVEgoqiwTBDV8YnJKkcqezRLdVbhJrR1IAltaj1YGM8l1xejWkt
         X8SpYc+U7vnIe/9FoConM9rXc4zDExs9EyMlmN9/pwiO7lEdGwXuVKtMxUAB8v2cr1qZ
         3YEJVeWhJbFj7p5Tv8mY/Zv+7nw5lO0QDoCnZuHbDRR6SWX483mYBxyNGeyqHhhjkjEe
         VdlfkX0yh69VXbiyD94pmoR/Z3AttfazI3+Qvisq/XJZaCwUehjOG0SdXj1pQXpCbIXn
         t8EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734354379; x=1734959179;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wfiIlfNISL7LxmEo4PkSBvNVf6zI03QBaUXQpOsHzBk=;
        b=sZKE40g+manAHgvI3OCBG066Eh+WonLz1piWqUeBZlJm3SUvViSm+oRI2fGBhH6s3v
         eL1tNX7Yfgj/RsqK0xHMFfE8smSA87NwLcG45U0N4HF05lBFPpZsX35eSKzhnqdGGS39
         mU/o36+CwQvAa8mBeYudPG5FznFzymuMncPyX4Cy7LN7cLteYCsWm04e/gIsdwnvUV0v
         EKCDy71aKYy/0FtXXgv47tEx1PfKYSwMmgBTy3iiNHbdgy/I6dJQG3WAoVofnXomfhT4
         8amq9BWEOVc2hCPldW1zDpLZFgB/2FQg7UjXi8PivtMeRXBOxyn93GbX40Ttpq1RxhC8
         JNZA==
X-Forwarded-Encrypted: i=1; AJvYcCUfsAmgFHRDz/IqM/LBbhf+Bc3WEBNeItzL05RfsuIa08XaY1KbPB/OEv5wWlG6aqayAVbi2m2rFoLo@vger.kernel.org
X-Gm-Message-State: AOJu0YzhnO2ITRLTyMOst08CVfytqMVISKJ+aFtlwWQQnXIlgbQN2992
	HfthI3tUQW6BdY6Au3O20deWjQ/Rb4UlqhZ3aCq47jFgQexAjRPp7b65DKphZVnLMQLi2L1PYH/
	OMd01zElPj2MQJqI2HAbXXTmp5VdycuPQv2P+7w==
X-Gm-Gg: ASbGncvcc1Vike3YA7KmgYuJPrZf/17x3Iqkj6ngRQgqaBU+gMRSO9BHGqZkqo+5RSy
	WG08JHr+G4/xY60+pm6EkkUUAiLjMbGv94yM2
X-Google-Smtp-Source: AGHT+IE9Cnqk1RFA303SJ/sEM1uxY2IdUkOrI2lN1tMljvUXQswUAevS43+NhsG6LahpLoL3T6y4Oj0/rJaBAzD6y9Y=
X-Received: by 2002:a05:622a:454:b0:467:45b7:c498 with SMTP id
 d75a77b69052e-467a577b4c5mr198761341cf.20.1734354378718; Mon, 16 Dec 2024
 05:06:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241214081719.3330518-1-andyshrk@163.com> <20241214081719.3330518-9-andyshrk@163.com>
In-Reply-To: <20241214081719.3330518-9-andyshrk@163.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 16 Dec 2024 13:06:07 +0000
Message-ID: <CAPj87rOjqZdyht2y8MK7gVyk_eqEzk1Sy0DcxFtQRuhrHQ_oxA@mail.gmail.com>
Subject: Re: [PATCH v6 08/16] drm/rockchip: vop2: Support 32x8 superblock afbc
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	s.hauer@pengutronix.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	derek.foreman@collabora.com, detlev.casanova@collabora.com, 
	Andy Yan <andy.yan@rock-chips.com>, Michael Riesch <michael.riesch@wolfvision.net>
Content-Type: text/plain; charset="UTF-8"

Hi Andy,

On Sat, 14 Dec 2024 at 08:18, Andy Yan <andyshrk@163.com> wrote:
> This is the only afbc format supported by the upcoming
> VOP for rk3576.
>
> Add support for it.

Out of interest, how was this tested? There is no 32x8 modifier in the
format list in format_modifiers_afbc[], so it seems like it shouldn't
be possible to get a 32x8 buffer on a plane at all.

You can use the drm_info utility from
https://gitlab.freedesktop.org/emersion/drm_info to validate that the
list of supported formats/modifiers for each plane matches your
expectation.

Cheers,
Daniel

