Return-Path: <devicetree+bounces-153658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DD4A4D694
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 09:36:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78CA63A8F78
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 08:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E337D1FBC89;
	Tue,  4 Mar 2025 08:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WcmcSOmx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFCF13C67C
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 08:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741077381; cv=none; b=nsAYHg8QYUbPZ35ln5Yb/XyGjy7xOf/kUq6rc9fj4mf1mp4WeMa36T+jBg15aMT95cF429NhwX9fSd4Vy0va99zVouAlbqDT5zm6gE0BsbSW0fqT10YDbxrrubMRRkhZR7QQuVnrjVUZ3vDnuTUb8e+EczLNe+muM3GT1OMgiys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741077381; c=relaxed/simple;
	bh=9FtHf39x70lKRiD2UA/8apbncV3WIJqKGKLBjqsPYAE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j8RLoUORMsUhKNOJtQJ6Er2bfIblRxpqXPevp2udVsS4mH4NmTyzTKhBczuvoMoyalPVgq6eKfTOgwQg2cnABb2RTFxk5ogS5f6RAxsqxKK51EFIKMtXQ/Gowa9XxUAk2MzkYRCbyzI6B7lEupGTVkK/HhEDVvKfhVdigOnyw2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WcmcSOmx; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-6f679788fd1so38439557b3.2
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 00:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741077379; x=1741682179; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9FtHf39x70lKRiD2UA/8apbncV3WIJqKGKLBjqsPYAE=;
        b=WcmcSOmxfFaz0jhgIOyW/QMA4RJ8uAbcBt/0ILAge8F0EdMtYP2PH8s4QcB3O/qf6k
         cmCUzSYbOnQXuTJ1aiFPdZSZhu5w/biXwizZm18W4YvGBopLZBnLAwlrz+BC2yumyOwz
         Bkp/24skJbOVB8oc4ZRgYNRkc7q16fuAzAFfiV3/adAFLkjTw9Kk9sAr9NV6/69fr2D9
         DGwAEG+/BQyJ7biePSGJj9GfoDwEkVBTnMHi1bBLNR+KVjmIAofeT11MDcqeaTGCKzGf
         nLsNkJO1JZNk/Q+gEguLF5n1NXHasqup5swq+NeQQidGLUfzCtbZJgtOEM84SBfBQniB
         7enA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741077379; x=1741682179;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9FtHf39x70lKRiD2UA/8apbncV3WIJqKGKLBjqsPYAE=;
        b=VUxHDPzVVtkqScovbxwyUl9ZBCm7NnwrNwGJS/8bp0PbN4F74zFK0a241v+OwyBjDB
         IltF6MfLfw3DTakdssja0oX4k6O06Uu27c6Eo7JWpq4NageRwAEj3VaLVzSBCTWBoqZR
         WZh/C8q7k8HXGp5bNE8c9VjSdeqMdGGfYqEtRNJWkWzlXJc3V638HDzTVs3YnjuNAKjw
         cPyq1CoEC7/Ig7DHAiQf5i+8Y9lpprY8YFjjlXXlX/uSirE484bCVN9X7i+bjXZxuw7a
         4iph2BqR0zJKXGNB8gIagHAULbdHoyhZKyrr9vclT3d1ATGiPBQ9rVz1NyTa1Q7sZXIt
         TOww==
X-Forwarded-Encrypted: i=1; AJvYcCXUCJYDb4XgZbhcZVq1hG7ky23lRl4PO+XIUFGV76xDV+I2ObcL2uk0CfPAMVtBgnQijB497tY/hM9T@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe+gbvAMDs+NDCrvfHQN7XG38AWu77ArUoUuScCwKaJSkiujOA
	Pg2B6gndlrz+yj4FuByYQCP/1O/AV+xM8/UUTvF1n2ObFDqgEKL2LnVWUDYagVnOvYsEzOPMY0G
	HJlq1062WGkUIMc+Qiu/aR/eSVZdNNNRYe4lgXA==
X-Gm-Gg: ASbGncuPAZ9rpDbjRGf3ZYOcXk5dTp0j1LvMBxyNAtJrrA2ik/1cRHf9IWD217/zPsJ
	9rjKeM/nJ2PR1cQZUJbS4plzj3zdhG5HN0dQ5wZx5L4It0OpB9RqJLSxBMY3hBP0n0Dd1hAQDqv
	VGPjFjGqVVRioCCGaw27qgnxwCPg==
X-Google-Smtp-Source: AGHT+IH7KErXBPsgkVX3+USvVKOeRbWqfmwhdjHw8SbiG+Mnf6KFFaGyDDjVlc9kwM/1WPTfhMqzFN7oiRITfnPOUO0=
X-Received: by 2002:a05:690c:7305:b0:6fd:4849:62ec with SMTP id
 00721157ae682-6fd49fd1b18mr211377327b3.12.1741077379237; Tue, 04 Mar 2025
 00:36:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250303074552.3335186-1-zhoubinbin@loongson.cn>
In-Reply-To: <20250303074552.3335186-1-zhoubinbin@loongson.cn>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Mar 2025 09:36:06 +0100
X-Gm-Features: AQ5f1JqYjcpUf71HiV3Xuo2BjX3Q_Ei7GefWpdiAzOwYlortd9elEfLSi9brZQk
Message-ID: <CACRpkdbrOC1ONZKFetvWQACmSKYopabgpCkip1ub_14XdrP0hA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpio: loongson: Add new loongson gpio
 chip compatible
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Yinbo Zhu <zhuyinbo@loongson.cn>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 3, 2025 at 8:46=E2=80=AFAM Binbin Zhou <zhoubinbin@loongson.cn>=
 wrote:

> Add the devicetree compatibles for Loongson-7A2000 and Loongson-3A6000
> gpio chip.
>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

