Return-Path: <devicetree+bounces-153661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3257A4D69C
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 09:36:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27F6B174BEA
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 08:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2563B1FC0FE;
	Tue,  4 Mar 2025 08:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tLYZtpGY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724A41FC0FC
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 08:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741077401; cv=none; b=oOCK0VGX+F+WKOHcVS5B0qxQEUDd+KAaglg7XcBU9kAGM9auAHnTnMa9gfJ4BLSFZJZ/RNYSVkaPkOOBPp7Nx90DOVbN7MqykvOyLl9LwdQQv6N7ds5pjOIALOZd1guOEgwCmqhr6fpus8adcuNdoHYNt2rX0MUBwuqLJdVaXAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741077401; c=relaxed/simple;
	bh=PYi+aVmBO+zhGv+v/pvUe+DSBs6vIh9tAtsRQ3oiTZ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uZ3G/dAvwWIk+W7S+aC8H/iF21n4G2t/YdPHFPStVRC4xhLXk7R9hWLhBl3baTLSAerux9KaHDOx/1l7y1OQDQQmOpIa6guqO86kHdtkKFzHXsREPXBQ21qp9NeTLQToy57keu7s7Dq8KiGILKQsJ5fXSB7vNKqX6reJ0zWanMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tLYZtpGY; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6fbaa0582a6so43760617b3.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 00:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741077398; x=1741682198; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PYi+aVmBO+zhGv+v/pvUe+DSBs6vIh9tAtsRQ3oiTZ8=;
        b=tLYZtpGYXiB+1wQeRtn31gXlBOubn6w45L+AC0Up169flYr+OMuhDHA14xIZSU2nsA
         kAkPfX9BacHdt5T+LTjrCbI+j1BdSNWoZ4SCEA7xU7IeOly++QjCYpAWXQdaT4bpVAQi
         N1CiQtT4r7C5TDSN4hXmYfKu1DffkW+HoyChElMK00PSfLYE6dAA9H080T2q4W5bLs65
         GwZq1F2Ipq0XfxB9aER6r+/lWNJWfjNiX7THFV53llU7lFVSHXccezX8lxjKBVex6Vc8
         uyzCkXZhGXWFG7ZhLRQlXDlitbMoVdTXmHJG6N46guLnXWQeL/Y5sidlamNJhnLDpzh9
         YAIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741077398; x=1741682198;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PYi+aVmBO+zhGv+v/pvUe+DSBs6vIh9tAtsRQ3oiTZ8=;
        b=I6cZ3ja87YdmltMxL6tpBEFHngEZzcPsaWewVi1iEH2qd280NJoWHv9954y5WKNYU/
         6yUKvE0BFiK+fXUYvIuc3faJwLOYclIto/RBXmnxK1FDQD7UXJIx6uOrDOtWwyuI3pTM
         FftPsTA095iu/ISdA+3PSPXUZxRatF/6ac8u+yHPEE2zUQ2CrOeEV6oYLLqRhL/6Nkn4
         CoNFycafHmAUeImoIfz6PYd82DRbDyvglLc8jy+HbJwMqKBRUKQYvI/zK6QRbPKBhVuH
         Z7WK9ATQW1Cer4NXFbIKl82+P4pZq93ygBvU7kSeihtP+qnbvU/jLwiP6xOMdzktPXkP
         pNUA==
X-Forwarded-Encrypted: i=1; AJvYcCVNtFfZZ12b8fpHmjoLvo7eh7TF9dvNW/rAb34l6GZMk597Bs3rH5j1QAZLwJATHBt9699+4Ha+U0um@vger.kernel.org
X-Gm-Message-State: AOJu0YzkEol8q/zb588lcTjfySJs/SL5UHIr+wpXA99ekGLPvcLHVGXC
	jETFxMCG0QmLj86IQJU28xigjV1tmBHoCtAOTHlOqWt2ESzunSyf9Tu+ZmPrhSbgsjEi4+AEHr8
	yJ1/RYhCV/pU+U5ey2Hz8y/2clin6PnqYc95V8Q==
X-Gm-Gg: ASbGncvqXnJhUYacfeC/nOmuC3PDJqM5vBuT/96GdR3amom/rWDSJRPrJ5Vn2j4UQak
	tlBCd0os96nmADPLC4xeFw7xbmv6bs49bLiruVIz5PzY7H3dCxIJoTHsSK8fkcvb4VVGNziEEVj
	X8fr8qXkaFn8ib6riCWCjnhd8DfA==
X-Google-Smtp-Source: AGHT+IHR2MkY/z6C2jBmZBfQewGfI+Eb8/l9yNKzCoQfpdxku3Ye0SXQO8FUr9fZFn2sj43MtQPg4KYYYIWWDusRG60=
X-Received: by 2002:a05:690c:6185:b0:6fb:904c:d9c1 with SMTP id
 00721157ae682-6fd94179d28mr27614577b3.12.1741077398395; Tue, 04 Mar 2025
 00:36:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250303074552.3335186-1-zhoubinbin@loongson.cn> <20250303074552.3335186-2-zhoubinbin@loongson.cn>
In-Reply-To: <20250303074552.3335186-2-zhoubinbin@loongson.cn>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Mar 2025 09:36:25 +0100
X-Gm-Features: AQ5f1Jr_LhSmVKNX86GmREr8zrN54IehJSNXf5UoHh8lLJUYfrOwtfNtAAa89Y0
Message-ID: <CACRpkdage9PLDURkh5A3Zqi_BN6POva5yNdSRbf5u8p5q0qnHQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: loongson-64bit: Add more gpio chip support
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

> The Loongson-7A2000 and Loongson-3A6000 share the same gpio chip model.
> Just add them through driver_data.
>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

