Return-Path: <devicetree+bounces-62703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8448B20B8
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 13:50:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0FE9286A66
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 11:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97F5B12AAE7;
	Thu, 25 Apr 2024 11:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kyi2H011"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECCB012AAD5
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 11:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714045825; cv=none; b=SMi6pjgaTb825F89/VHRVMZP7Lm3V/c4r6JtHuSU+Ow1Nyu1zUtzVBTCdx76k1D9uCn3iaI3jSNNOJIWA/3CWll0brnCYvH2tsyUHTAUKXDnTVPk2eAJGx77Ru6dwWgLHTG/EFCSzJ467VU0SFRw79cuzovhlaSrh8JFduQuIoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714045825; c=relaxed/simple;
	bh=6X90SrMENmPj2F8E+j2MRnzGgHoMOcwnFY9jZAuri3U=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=XZiXdkNAg5ea4seq5iSSYS0AB1MXec7S0pgcwFiBsF/Ze5zLNPyJMmtYG0xcWuhHsgdur0AGoC/gS2Rqwj7Qk8uw+4dux5+Yf/3dG8SwigulFDtyXZMTJHDlkOq/dY3c96dQc5/A0ris91UZvAGrNouPUzFMDeOEYwHi7fFl8gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kyi2H011; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-34af8b880e8so560289f8f.0
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 04:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714045822; x=1714650622; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6X90SrMENmPj2F8E+j2MRnzGgHoMOcwnFY9jZAuri3U=;
        b=Kyi2H0117xIsE8cvv7in4YmWqDUx33JTPlWpOsXzJ7clB2o8iFYfwTBa64+ZJKmIS6
         kAYT1YvUKsWbZT7K9k48W8dDGAFDDC7Dm8aWJek+6nmIVLwfrH32pkTNSEnKHHBgb/Xm
         LBFpet4OqALHQefnHOd1hCx0XLSxnJXC0WsDhy9W8Y+ByveTjcwgnf6WbDrm/Ecqszf1
         lBo9dCOSr+/X4WxieS/r+RG0cls+B7e7yGU1h83p3tMgGtR51zA4JH1GK/9OaIoTqALY
         Mzr85czlf/JGYe1HAtgnVrZMl4Nm0HDxpR1o5+5Xbw7OvMpt6EkWv6yfm9+Ys1T47UbR
         IGUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714045822; x=1714650622;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6X90SrMENmPj2F8E+j2MRnzGgHoMOcwnFY9jZAuri3U=;
        b=GY5E1oRxq4mXDKzl9YLLZEEQHQCInWMk4eSstq+o7G6N5MdythFgWcUkAUTPa8kcOA
         7w4ZuGcdFml73k5NKjjOhjeWRMOgldORKhQqMP1qpX9ZcPIFT4mQOrbqAVingdUrCIiH
         BjIHy9nVO8MiHyttVg0ZzLnGvQ0vD2oZNyinD64tTI7fLYcu8qzT3hae+3OKMCUdZCkf
         HQPCUQ5tzQpLcgdg/KOODKUxU3KYUjmYRzqgJYqJO7del6a2N7q+QSiF9Eu2JMeiahn5
         lcdaRYqXiazzzarXiJ4wEEU2btfNb/1IWDg6vF7sJDSIQi9JTBMZ4+S1obkvcmkHk/2/
         6ixQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvJ20s2M6Cd+6oKPmXMcmQ60RR/kCxsM1PX87L+XhKijksGSrfQS7mj6aFaxFX+C+VHmA4e1MtUaKR6dg7QcSPmiUWyeE1FMackQ==
X-Gm-Message-State: AOJu0YwfYtx7vMHRK+BE3eio7ldN3qzmdAXVRKwPo0N3uPhDZvIaZPsK
	jhgdI7mh38+vJh5rw4lyQAGjf0p7+yTs4AVLxbBqYgouWhZYPoo+NyQo1gzmNrY=
X-Google-Smtp-Source: AGHT+IFd3IUrl2RhAWqNwz+jhkozMToyJuHkmRsv7L8RtAZdqq/rmyIrab8etOh0MMSjsigMRTo70g==
X-Received: by 2002:a05:6000:789:b0:349:bb17:6e60 with SMTP id bu9-20020a056000078900b00349bb176e60mr2805121wrb.2.1714045822352;
        Thu, 25 Apr 2024 04:50:22 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id he5-20020a05600c540500b00418e3c5bc8esm26152587wmb.18.2024.04.25.04.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 04:50:22 -0700 (PDT)
Message-ID: <db857c14d2463f643dc602012329b75df8146c0b.camel@linaro.org>
Subject: Re: [PATCH v2 05/14] arm64: dts: exynos: gs101: Add the hsi2 sysreg
 node
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com, 
 James.Bottomley@HansenPartnership.com, ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Thu, 25 Apr 2024 12:50:20 +0100
In-Reply-To: <20240423205006.1785138-6-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
	 <20240423205006.1785138-6-peter.griffin@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2024-04-23 at 21:49 +0100, Peter Griffin wrote:
> This has some configuration bits such as sharability that
> are required by UFS.
>=20
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

