Return-Path: <devicetree+bounces-235149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 364D0C34DD6
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 10:33:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D6B6B34D58C
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 09:33:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1942FE05B;
	Wed,  5 Nov 2025 09:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D5xyrd2t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849672FFF86
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 09:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762335234; cv=none; b=AYtptlmaxPNRgSdAFNA+tD5zw3bb4DnFYoleIJBHaATKrnCYRwxt3eJToP1YFlgIqf7YgoKL8CVSyOQppUMVT14Fp+FR0XjNDXgkA4HVnQsPqk+Qlr7J8U27+oqNIszFVqlbJBP1/ax68niR9QIYXJ/Gqja7Hwr1PbM4199e4f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762335234; c=relaxed/simple;
	bh=xVz41K+WHW2r1NR5xRjnxTEmTL3ZEN3/EUCpmw5NHe8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UFdOnWn6vKKqGhHP4L/PjOxjyv2Yowgg3L6ifz3zNxnLcjnGi8dmLNtDbVLUxITd1+oYYOUYcYt2anDS9K2hyFRSCH2458MuJl+YSwdLrL8nuPYDzjgsCgaX8stZuVQcuK85opA9p0msm6SUZLS2QLoUWTg93zY36Vfuf1v38us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D5xyrd2t; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b98a619f020so3552702a12.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 01:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762335232; x=1762940032; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xVz41K+WHW2r1NR5xRjnxTEmTL3ZEN3/EUCpmw5NHe8=;
        b=D5xyrd2tWg/Oh5hwcEHSeLOjURl5et+LBeg7W+NnAvM06/fVKs/aXlU5p3JmAT3maF
         rIR9DxyQFDcC06WG/+L8tbwWOObZKP2d9eZ45/UgUiv3rOOx0z94ltOaahtRhLLSaTVO
         tMUSf9ZQU4Yp3B8/4EQPq1siLJMAX3ogfnUsoWh0/BywrDaW8St8CAnJhrJ/k10KT8TP
         114g+MPMKjdUa5+dH3VTWB1OLD2qp+eOPkzLNaqVjKdcuHXSGReDRamvn21fD1nM7xz5
         fnp+qvDqnvtOAQUj3lehIngY6mIUnLTGsmQK4x1UDaNcY62fnIu/2K4R6zwTB7ykuuw1
         7M2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762335232; x=1762940032;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xVz41K+WHW2r1NR5xRjnxTEmTL3ZEN3/EUCpmw5NHe8=;
        b=NypavFt42BPq0y5DeC6N/9ncdGk/2ArRGe/fCaH46VKEuAuYRvQVuYbM+7j6pWxKgE
         fIgQhsJO9JkMO5cp4TlWkqDYmdKlpVxP5NTQtafVHRY/IWy9/Pq4+K1sa52UJWSWQzi1
         jIWa8OzCzT39XU1cAn3CD45zQMGXfUiviimErDacxA8/f7YNZvA0goiMiuubLlb/y9rq
         quv2m1kIKO3bAPG3Hzb2zT9QiimG2wNKlngsUlkbL7Go0ANcboanOT9xlGdubQpgl+7r
         e2FRHVp2zlbEuLfn11oFtlT8mCebMB4ioAnP++UsG1WY1IpBYVk1NADp9C8YJdc7Yri4
         gRpg==
X-Forwarded-Encrypted: i=1; AJvYcCXo6cOPvu7RH2kiEnV12GfOH9Ct7U96i0zhInPjqNhrcbzGkR7T8XcpSGJVGSYkPj6JBWYBUCeogVkP@vger.kernel.org
X-Gm-Message-State: AOJu0YwOF0OJAKAp5Eos8435koB3wL+a6Bc+F8Bu70eTTbUlZ+8UUlZB
	Unly65IKlEUtfj5z4c5ZsFywA7nAr97H2EfGUQhtkjHuV0vDN23A1hjWEaGu3/Fm9+2Ny9vZ3Yf
	2mKfDZdbysrTpu7h0Upf4qoC35mNUomw=
X-Gm-Gg: ASbGncvYEnz1griq5J72nPf77Y7zrrcDSZJxauCXBjmIj8GjS3BNJ40qg4BkxGffwdJ
	FYbZJ3tvnqQ9W88YdzwLqv44vjOJ6pCkDMhg6KF0unQ/D237KY69P1HQRqZn+pX/XwfDDFX8que
	chgPXaev50o8ifkvTxa+MQzJvdRYNBVkw1od1doNqh4NkfGeC+0nr3wzooTLXmY5q8JmQ+aMRhf
	3ezJGRJzXhd+V1BMIu62SNigmf4Mmt2mjCZT1t7ZCj6tHoPUSGbVGjRhw==
X-Google-Smtp-Source: AGHT+IFGxIq2XgduSb+stuaocak2phBxCIezkzwd+AAubIHJ9Z+vhmNDyViyBoMY0DIaLUkKe02kAuU0EhMWtzwP5ig=
X-Received: by 2002:a05:6a20:6a04:b0:350:5b75:6959 with SMTP id
 adf61e73a8af0-3505b756d29mr452994637.32.1762335231830; Wed, 05 Nov 2025
 01:33:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251104120301.913-1-laurentiumihalcea111@gmail.com> <20251104120301.913-4-laurentiumihalcea111@gmail.com>
In-Reply-To: <20251104120301.913-4-laurentiumihalcea111@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 5 Nov 2025 11:36:19 +0200
X-Gm-Features: AWmQ_bnL9LXcRTfkqLXg0rjUqS39MT0GLWaNx8agMRC1jfxbVmtMKne3NHlmeiE
Message-ID: <CAEnQRZBENqUOTbdubTsNsivGtfKOqFqqTadr-jKkMGEwBvvnAQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/8] clk: imx: add driver for imx8ulp's sim lpav
To: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
Cc: Abel Vesa <abelvesa@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Daniel Baluta <daniel.baluta@nxp.com>, Shengjiu Wang <shengjiu.wang@nxp.com>, 
	Frank Li <Frank.Li@nxp.com>, linux-clk@vger.kernel.org, imx@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 4, 2025 at 2:05=E2=80=AFPM Laurentiu Mihalcea
<laurentiumihalcea111@gmail.com> wrote:
>
> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>
> The i.MX8ULP System Integration Module (SIM) LPAV module is a block
> control module found inside the LPAV subsystem, which offers some clock
> gating options and reset line assertion/de-assertion capabilities.
>
> Therefore, the clock gate management is supported by registering the
> module's driver as a clock provider, while the reset capabilities are
> managed via the auxiliary device API to allow the DT node to act as a
> reset and clock provider.
>
> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

