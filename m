Return-Path: <devicetree+bounces-163366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFC9A7C975
	for <lists+devicetree@lfdr.de>; Sat,  5 Apr 2025 15:51:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 489193BA9C8
	for <lists+devicetree@lfdr.de>; Sat,  5 Apr 2025 13:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9171C1F03E6;
	Sat,  5 Apr 2025 13:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vzEeBrdL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B353C1EFF9D
	for <devicetree@vger.kernel.org>; Sat,  5 Apr 2025 13:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743861089; cv=none; b=C2c4iYrqjKRVzVcFWw2QYBO1X2fIGVws6wXES7jrfKnJtda9HBtlbEhHyzhM4kpC2rO0vpGrWQeQSwJL8IRwUdm0UDLsDyeUfaNB4/OWsa8FHAK+Mem8lMSDB20fPyshuqnC0GJxg3Zq6BZGWECeuuEF4U3Vl/995dq8TPWVt2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743861089; c=relaxed/simple;
	bh=JeyhOisvFTXUdAkk7e1xdxJ99H2lpRMgdiRUA+fOjh0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=OHOZVlWnvvuAdYHBCB3jLcuu4NXwlWEUGHyWu+f/yDV/5RZBs1DVKyQcU8GZyjRsfF+jkqaYeYE4+rSN3qnYYHXK0YpfdAGlPpTKIzBYNNIrV6hUUcoTmjfnImfgMiwi/ZTJZNo1t2BVDzn9LQ71X8je9ffvU9x/ngXpD6g6V3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vzEeBrdL; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43d0618746bso20442805e9.2
        for <devicetree@vger.kernel.org>; Sat, 05 Apr 2025 06:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743861086; x=1744465886; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JeyhOisvFTXUdAkk7e1xdxJ99H2lpRMgdiRUA+fOjh0=;
        b=vzEeBrdLdQoy4GXttK+LKOJe9OmaOsMCveq3Gp1n/idKT9ZlHNBw9/Ypr0VpC9M88Y
         Xx4qjePjuSUAlVC1cj7BZC226Tpg71c+20gzBspJb0lH3nzvRS23hTHxPLnJDOvg43H0
         hxLaEiskqiPqjgozm8dccQ8dfkLPfIwX0lzyYjLiH2ZM01ilDg8w6lvvqzyK71cvBGby
         J7G5LH1I93gBIz4qZB7628EsuLaD9prfRrOMVUZdbT97SB5s7mOU5iJwgArsfF5Jx49L
         igyHPn5Aw2C1nE9/VLk6w2QVdjUrBRHfSiHyGFKLv8KtDuIxAs1MGAijLav9f/EfENrn
         bUVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743861086; x=1744465886;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JeyhOisvFTXUdAkk7e1xdxJ99H2lpRMgdiRUA+fOjh0=;
        b=pDznOvIUGSCBUC3XQHe+cvqSUImNgyJMf8BQEwWBaMYBoMznfHWo05Odi7oRSck/Oy
         cM9F+PvedWn3gU9EIzpfirZ/hq9wwJVSjA8bwj9LhxHTxX1t28HRCZ4W95qKrfMtC0Mw
         +UE4E2PO05rUlol7pvg/nRjIVP05agB2FJl2Y1wUOimz8KrvAtewXNU6vgXEbPcoU35I
         D54CbdFfNQWZ0ZovB/bH3xTsWQv2gN55evyk8JGd0usbapgx6P0qIlH64RnPgVecUHv1
         LquxeX/5az+MxjXfESnsExRruJC/Q5U1jWYeTIoD981UTKVv1iSQl7013DD+EfP7gjU0
         Xi/g==
X-Forwarded-Encrypted: i=1; AJvYcCUEKHUAgFBKy47sTl4bvau6OrSPxpYEM8IkGlOs0/Wp5lbwrmEUPnxHwmFJ+//WW52rDzBrwX1YZ3QU@vger.kernel.org
X-Gm-Message-State: AOJu0Yzyd77diVxXDlAK2UZ01FMwxErc9FTGFPyD/ioqI3rxKy23h+qz
	NeGQq0wY1Yxpzzbd51apdkiHeNjYx+JCkJbhJpljmE6yCmSy/T+WFipSVMguxzA=
X-Gm-Gg: ASbGncuHNbolYBC5LhbmwsC3IM4ZF2tCcC/rxqramMnNU4ZxnPuar0ZGc9Vck7/e6hy
	KavdRMOIk46OQqghucB5idG1OmKhuZCzLAq1rbmj5vOktqXqbQkPfV1a99ookfsZHPfqVbL+08+
	nuCp9dmWJAqvPGKkrWEEowwYkt0y3riwFGD7YBe7lfoCQk8IWgZwXr5UbcceP3jVulwIQWMRf+Y
	pplmokJEDq9eaUZZ2bbO3CKWYpIJXu1WxM4rN6KJ44T/4TsFAXhTF/Cu+N4CfDh3Xvaz9d7mTk2
	zJj67S783mcpdUBRrcNH1m+LJ1jWFn6b4eie77hng6VRoisN
X-Google-Smtp-Source: AGHT+IE02LC/xEXo48knWnsG4VHZcnXuNsYnZ3C2c3XXP9CR527du7gAFHHDdb3MD7dDyrR4ZPrhVA==
X-Received: by 2002:a05:600c:224c:b0:43c:f61e:6ea8 with SMTP id 5b1f17b1804b1-43ed382b5d7mr37310605e9.2.1743861086018;
        Sat, 05 Apr 2025 06:51:26 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec364a0c7sm73335975e9.29.2025.04.05.06.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Apr 2025 06:51:25 -0700 (PDT)
Message-ID: <75f5948d8a34f20d70050c938bff5422b08e37c8.camel@linaro.org>
Subject: Re: [PATCH v3 00/32] Samsung S2MPG10 PMIC MFD-based drivers
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Lee Jones <lee@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sylwester Nawrocki
 <s.nawrocki@samsung.com>, Chanwoo Choi	 <cw00.choi@samsung.com>, Alim
 Akhtar <alim.akhtar@samsung.com>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Russell King	
 <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, Will
 Deacon	 <will@kernel.org>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker	
 <willmcvicker@google.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 05 Apr 2025 14:51:26 +0100
In-Reply-To: <20250404094354.GG43241@google.com>
References: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
	 <20250404094354.GG43241@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2025-04-04 at 10:43 +0100, Lee Jones wrote:
> On Thu, 03 Apr 2025, Andr=C3=A9 Draszik wrote:
>=20
> > This series adds initial support for the Samsung S2MPG10 PMIC using the
> > MFD framework. This is a PMIC for mobile applications and is used on
> > the Google Pixel 6 and 6 Pro (oriole / raven).
>=20
> Okay, review complete.
>=20
> If I didn't comment on a patch, it means I didn't see any issues with it.
>=20
> However, saying that, it doesn't mean I won't spot something next time.=
=C2=A0 :)

Thanks Lee, I appreciate the time you took to look at these!

Cheers,
Andre'


