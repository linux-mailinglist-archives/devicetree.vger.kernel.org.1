Return-Path: <devicetree+bounces-247803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F1812CCBB36
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 13:00:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A2163010A81
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 12:00:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC3E232AACE;
	Thu, 18 Dec 2025 12:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZI585Jer"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4155532A3CC
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 12:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766059215; cv=none; b=KNjtsG7pAe88wjH6mEXOzLbfcvHlk3WV+G+j0OEYMBMqVmlOPvYWp1MdmSxn+yshTNG233G5BcPvHMtPlpJatL/TJHrh00XQcUp44nCYorkI9mpR1z/3LQ5Dp8RH71wBuBefS6GWB8PlqBbxDS68mirKbNP95hXL/c0Xx9nBqcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766059215; c=relaxed/simple;
	bh=+pyjz2GF0gIC4uQXtGEL07yHCNXCChhlOIDqBuuupYc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bccgOXqulT5/bKVtLHHsJIRoXirbQmr5mQgqMAP3QfENCIOHvMJFQyyIvOIlI3ayO8pqmprIZe7oeWhq8ghA2073Vnsb9D08Z3EjRvod+7VhvNvC7hkATJP3DDe+MI8OWDwc39jwbsTU81uOIgaJf169UUxghoK8gVl0Lq62tuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZI585Jer; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a0d06ffa2aso6172195ad.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 04:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766059213; x=1766664013; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+pyjz2GF0gIC4uQXtGEL07yHCNXCChhlOIDqBuuupYc=;
        b=ZI585JerJbAF121FfMIVNAmh+JM+R415wPiDFWM19ca8IzJCx/2n323GJUN6HA4opY
         EBvdy9e9fy50+LmkR6ShVvmq4jAq5D0kRH8oRu56ffA6Z/UsNXGW4Sk07j+/LcYHdPQw
         STLWhcl7OlLTj/24kKw15vkUV79MsiQlHoeQLPx1fzamCUgnRErGYfJT1WPy8zPLQaI2
         t+7qsqOygiCcJWMsrYKTfAzEmbaY1qUIsiXG2Jv711MF2pFFJ9HHtA8Epm+2j67RJrJP
         WwZguldEXbeIonq/EyQ06WvBdGaiXTQJq0FUAtqY0eMzBiEJNry9atKXYaZcckQkoIa7
         1IJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766059213; x=1766664013;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+pyjz2GF0gIC4uQXtGEL07yHCNXCChhlOIDqBuuupYc=;
        b=X93+fP5xSOUuKh9mml99i9BUMuWY/N2/osl1iqccXZKYQl7QWG6/Pl6IpjT9jUj5ZR
         nriILdJC6jcy01433RQLcjFhkZXo8zOO00wJm/zfHsemdnX34Wlw9nnPUPvN546E3JEm
         WjilWv81DwS69SUfsjMEeG8v2uXFtC0KSKYXMCxTav/0c7tQmdf6Ur5OoJQFrDXlcORz
         4eyLoyFKcN0GI27OUxDsXM3PgeqepEg2sAj/WLmfktPlQrn6e5uK/ipai5sf62hm5SnU
         x1Ax5sPl3is7IVIVF5a0xCqMxxYhf+VQnDZDHPDirnzk+eq6PVqW+Njod09YSVJDjdrm
         SVKg==
X-Forwarded-Encrypted: i=1; AJvYcCVDquir75BrEzMdt5+/KwRU090aVxAHY+9gXvZ0HtxW4LdOs/30oPZW1SK9DKErj1VEvaOpdr78y9qr@vger.kernel.org
X-Gm-Message-State: AOJu0Yynn+c3LcAHjNDMyJTBZEO96jY/bn5whg4CRVOp8hP76VjO+qbp
	UaQAFAn/k3s3I3P0i8bpbonSHi+xS7VLLEHOGAUK1BPNH/RCRZ9ajKhQB2EOcvjMJ5wam/WGsSa
	ig15rK4uGluJAKgGCUqmXz4NX6ZnfCB0=
X-Gm-Gg: AY/fxX5Huc2vJaTSvmbopEreXavTjfPa65ob+mer9kplJ8qx7xeVVRLjZpF0GBLYzLz
	sEPZAsfwdqkkrYB2POAfSgB/OWJrXehy+yw3Y0Qo+acF8eB38FFl8G2N29XrbqkRGWeTr8VsTVM
	NqrTrlGIa0VIsEzlVYLhm8vS2OEOMI8T9/8VrFTXL8NGMmdsKZnicirp6Hl4CRK8yRXxPYO2nUq
	YQbjR9gWWu+hPKsrCxvbXFYoOvJVTLyxBGWhCGmuetJG9yE9EloNGosLeAJcolb5ew1PVK/Z4uz
	9IJ6YrsV3yDZS72iA6Y7GYN0em042v9p5/q0Xh+ZjwgYjE2UujzhtxvNuevTRDuH6QPO/zUEyrd
	GdJ1xtSS6Lg==
X-Google-Smtp-Source: AGHT+IEqWe0Zix6Wkx51aIrnFSEkKHboocpxYspchquQYx//DGOWwsW+frZeJB4zp9WuH8FDmKf/6mzb08jXJSiJAa8=
X-Received: by 2002:a05:7022:f503:b0:119:e56b:c75b with SMTP id
 a92af1059eb24-11f34c2625amr13522584c88.32.1766059213253; Thu, 18 Dec 2025
 04:00:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217-127-v2-0-67cb12e56242@nxp.com> <20251217-127-v2-1-67cb12e56242@nxp.com>
In-Reply-To: <20251217-127-v2-1-67cb12e56242@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 18 Dec 2025 14:02:47 +0200
X-Gm-Features: AQt7F2rewN69JeRyCZdhBrwoHoID47vaOG2C7EKvdgft_btnuRWlqaA7S7bTuoA
Message-ID: <CAEnQRZCNm+8qRNCxW5v2FcEgKPRUvOa6UcQPrZWgC-ijN5+34Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: fsl: Add compatible for i.MX95
 15x15 FRDM board
To: Lei Xu <lei.xu@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, justin.jiang@nxp.com, 
	qijian.guo@nxp.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 18, 2025 at 7:57=E2=80=AFAM Lei Xu <lei.xu@nxp.com> wrote:
>
> Introduce a new DT compatible string for the NXP i.MX95 15x15 FRDM
> development board, a compact and cost-effective platform based on
> the i.MX95 applications processor.
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Lei Xu <lei.xu@nxp.com>


Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

