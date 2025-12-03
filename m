Return-Path: <devicetree+bounces-243946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EE2C9E978
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:52:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D70E34E1478
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89BDB2E0413;
	Wed,  3 Dec 2025 09:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BMkuXiIP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f50.google.com (mail-dl1-f50.google.com [74.125.82.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE0D2DFA5B
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764755527; cv=none; b=cHtLMSvLUlWDns/Y/142LTPdBFr3rJVERL1fLuaFqvAuGhgxl4qUiwx0IKL47uDsjyNH2ZYQl1DUz1EdegUWEL5l4P1+JwgtGBiYEOwCYiEI2qnFgwphlQLBRhettpv/w7pxAc8fcmKziWBnpLmyeMDXXDlrNddFYwxJvJehaYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764755527; c=relaxed/simple;
	bh=OWyCGwyyY5MwroYq5IC5e5Bk38tH2sQPpmiHCOl1mRc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MwsDmVUZ231/+QIMzSyu0Gr7XrGfRlk20PCA1oDMioHZKNR4jx7RD2lxtZVLu4ui03d0cUqTOWyzuSS/OUeq3IIssRGFP31EcBTNGkgOB0Kye2iN5t55MuBMNKWO0u/KFoR3jUULd9NqWLTKgSJRjIAzwvAgbSLO8BIoNFZ+iL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BMkuXiIP; arc=none smtp.client-ip=74.125.82.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f50.google.com with SMTP id a92af1059eb24-11b6bc976d6so939988c88.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 01:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764755524; x=1765360324; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OWyCGwyyY5MwroYq5IC5e5Bk38tH2sQPpmiHCOl1mRc=;
        b=BMkuXiIPmAVfsD954uUNkbSZG0CiYfvtasa+5cU55zOdnOUKoNC6GfX6BaC98OWnTA
         9CATT+Nd2K4CoLp8UuNCxyMh+aK/Toy+ZXlwIkgl86FUCzcLdbDFiUgxLXy93AMdjPZB
         tXh7LIpRluDtcXv6yekXa3iXFqugjLKQ8k/2gwJjG1PLx6UA241sTVjXGbCqxi6WzDPY
         Ng2wYQfjQQAfx/4yOSiXVN6UiCOLTvomeCXxrZvtmiUDlokpP1fM/x3Tr1qiYRn1E+++
         dWFGVu3PstWHZGe5p8B59Y66B5p9ZmCMJauILoaBBFD37/5JyqXA+zwI+QzPT7dMArIN
         /urg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764755524; x=1765360324;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OWyCGwyyY5MwroYq5IC5e5Bk38tH2sQPpmiHCOl1mRc=;
        b=L/008+STO/o+ZUscqHEt3JD++BMmYKmI7CQB3TT7aFycpu6yIguYNpk7XC8VdP3gD/
         7XXMgS9ZCGEKeq5t39I67w4yo1gYWP8ylRQpTaJ5F1dLJuSj+yrvu3aulOxyDQAPiffp
         FCW/+ch3EL8xYYbRaZNwOkIA6Bud3UY8U7+jFvrU74OKZ2hS9VmMUj1qU/Ky8II9qFz2
         ChoDq5wD3C5qoxdsJ10fKHFDQ9vLMJSK8vQj7mq9z4Y1Ngmi6ixvpe/ySkRi0v7XoYGh
         Iuqlf+0CMtvfKySDGQuyIiUhzCe81A8yq/r/O2IoFDwI/meNABQlVzo1dwuIHGNqgJhT
         iAzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDM6nwUGL5kmxfpL+F1QqQmqZC1l5IsOxRL2R5duvwmZY+Q+q1YDu/FSmfYn3pMV55DPA8F0muEDxN@vger.kernel.org
X-Gm-Message-State: AOJu0YxXx0yCttkhXjnpFKxJsyoFYQQLIxsmEM4rnNwXG5Jjvj2xtWAs
	fqewzNXIwH1UG/FKB4l1E/Qmiz7XVY3wv4qoxNS8CEBleMU60kZYTQoPexvdxQCs6/RT+jugO4E
	7jSX0DPbVNgslIYUmf474TiePqCJmfjk=
X-Gm-Gg: ASbGncubxSHjkzt7qRobBGSCXYJTt0bGVRWzAsaX6JVklxsVmTwuAwyHMkfLMC7fMst
	sgfegUfhgZ28QAT0rwg553GfvKg9J+BuFTtJNSXl8qqJITBne+up9GXWVaGyoIHJej02IHTWxo6
	koMHpRAunL5bcvLJ2aI/H/mf9Osy5PTc3aTuNc4FL5r1Md0ZYUB3KenaU/PwnXC2VGmTF5qJgsx
	i7C06HDv/qwqi3C8PuYqjK7UlpR7JoVIAYOj1zfZg9FIEutVkMKOI5nKfi0QwFZ36i7UnAKcg4Y
	YdSUsOfatOBeyfZ2yqU0myPTet3AisyxVf/u3Fruc7Bqimvta0Lyy7W7TvsFrWCLMmI8qr+viWC
	4ybYIrTaDJA==
X-Google-Smtp-Source: AGHT+IGQ/2C4miLe3zM/NhOU3VZpHjMuVGyUXrDEher3Gr5uOwYWVn++qjicdMlG7B6aJRjD2FHdhjLCtYHpU2OLJk0=
X-Received: by 2002:a05:7022:ff47:b0:11b:9386:a382 with SMTP id
 a92af1059eb24-11df0c5d685mr1322583c88.21.1764755524533; Wed, 03 Dec 2025
 01:52:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251203070605.1868821-1-chancel.liu@nxp.com> <20251203070605.1868821-2-chancel.liu@nxp.com>
In-Reply-To: <20251203070605.1868821-2-chancel.liu@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 3 Dec 2025 11:54:37 +0200
X-Gm-Features: AWmQ_bkG8GFRgAI4KsSzKwZsCVtdMd0KsoG-6Ph_fAU5WKTZEIqNOXxA-oOaB_g
Message-ID: <CAEnQRZDqX_-hB9mPT2s-mi99Ym_j2KVfwRykgS5W3hGJ8p_uJA@mail.gmail.com>
Subject: Re: [PATCH 1/5] arm64: dts: imx91-11x11-evk: Refine label and node
 name of WM8962
To: Chancel Liu <chancel.liu@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 3, 2025 at 9:06=E2=80=AFAM Chancel Liu <chancel.liu@nxp.com> wr=
ote:
>
> Refine label with "wm8962" and node name with "codec" to follow
> devicetree specification.
>
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

