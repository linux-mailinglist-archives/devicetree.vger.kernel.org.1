Return-Path: <devicetree+bounces-64832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E02CC8BB0F3
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 18:30:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CE801C2263F
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 16:30:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74B18155396;
	Fri,  3 May 2024 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="FSr2ZLmH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D61218E01
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 16:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714753834; cv=none; b=Be5IiyGl+u5gSEKgTxIldg5qMzRM0j7MawFiZRGtprgVXAbPXt7hH2GRnMCWSkKZkT6CppPIpUExXguj9iSUSzzf3BSiQJAGsXaYTHEch0Yytq0M9wIP+uy2gYqgenNiE6rAfXD9P7467TQLd4BjPSvftowofh2TxsOXkG0Ov50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714753834; c=relaxed/simple;
	bh=WPVcs1TOpK/zIamQ+wtUWsaV9d+WzS0scr8FdFX/12Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eLXq66kQS1xzpEcxo+B2EfjnTZ6YXq/3dianBIPyvtBYZyDH663xHZRymIhyIPDhYt0OnJKpmtkSZJWdYi0hqK2CFVP4x9YGW7VeVkR/fXbu46RTFWFwWFBK+5dltyIYfR1Vmf96L9AZHS1CMWJn/s20DDE3BckhYK9+X6hcA0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=FSr2ZLmH; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2e09138a2b1so72074461fa.3
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 09:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714753831; x=1715358631; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WPVcs1TOpK/zIamQ+wtUWsaV9d+WzS0scr8FdFX/12Q=;
        b=FSr2ZLmH5u81pj8YyV/fFO6Yk3pWm8h06ua+SE9TTcWl2Nr9xrcYgGPf3GDrcURo5q
         zet2haQI/ccg/TGlbBo52xghSTT2l5+d8fc1D04teiQLgQ71RpmmuXAFrgRl9GVDZ3+/
         6VEssdQW/sYW1G0OeEqFJPyNi+QXpOuwd3NjR8cCIGpwfTWpxOeLBdMGs7Ya4+B6RbyN
         qIjVU5LcG7n2eC4YR2/c/9mfmq1+n6ltIS5D0iMKqqhZfNEcmQRKwg5Uwy0KIyDDJwqX
         cxqg2fMNm6QQy8qOpwjMrvTF39zBBpxbwvWKlS6Dqyj/86CJmhZb5B0HtmLGRamowh+P
         P+0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714753831; x=1715358631;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WPVcs1TOpK/zIamQ+wtUWsaV9d+WzS0scr8FdFX/12Q=;
        b=F3ShHqkRu96YzgoTYPpIQfV9RsXmxBxtiKmzDu/N/xU/tWG9EeRnD93Mg7ICBPXtWD
         zVo9wFnkm1PZOX9k4HaI01XmLbaup8zrFTDc1YSQFc0L14jjmviFzcRtmuop2KwYCk/9
         66UOvhYf5NIdlfHvXf4uNb0S0o2qs+plpf/s7mDvcUZQmsXH8Z64XopGL5Nz4qZoAdmN
         3g7x/zmWl6nlfLZwhcnQLaqTJ5S1IHo8teBER1fZ1Yrf3Y4w+KtUKzDZwctIwrjEcs5l
         UTEvmxBOLA7dCUfw8dDS2JSr5lAcJHa1tCjGb2TT7ktGb/1Wv00T4kSo32s4hLrlgKM8
         11sw==
X-Forwarded-Encrypted: i=1; AJvYcCVC5NfiCqLa7nGQoiM4klznLIMmQUxnPFlJAoPJCE1em2ptI7jduIsZI7ZoLGI/9WAT3jUxJ96t+oEE7ten+T79owKtUlOA+VVvAQ==
X-Gm-Message-State: AOJu0YwPJUyp8UtzjHiyKgN1oHVwKYrnm8v4mPWPqdlQ89pSR84mv845
	TwuQt7up6Ofv/YsUfmSjVgZvXkveGndaJHlVeGM2yU+k3CI/6V5j3Y27gXVwINSFsq689mfpYqz
	L7PtdZ+Bea9ok/SoKyZ1slgUJjxkZY/6eC18JXg==
X-Google-Smtp-Source: AGHT+IGE7xxu21b/33CNpShSktw1p7c14hONSdRe5GLkslIarmkQXZLYgc3VeAksgpSpBEPHVsKNhmZwLeEcUDNOhGw=
X-Received: by 2002:a2e:9310:0:b0:2e2:72a7:843c with SMTP id
 e16-20020a2e9310000000b002e272a7843cmr1041621ljh.36.1714753831332; Fri, 03
 May 2024 09:30:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240502-dev-charlie-support_thead_vector_6_9-v5-0-d1b5c013a966@rivosinc.com>
 <20240502-dev-charlie-support_thead_vector_6_9-v5-15-d1b5c013a966@rivosinc.com>
In-Reply-To: <20240502-dev-charlie-support_thead_vector_6_9-v5-15-d1b5c013a966@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Fri, 3 May 2024 09:29:55 -0700
Message-ID: <CALs-HssJRSZjuDQjeDiSRYCyEnUDBKQRNCsEVPmLrCKfz_H4Ug@mail.gmail.com>
Subject: Re: [PATCH v5 15/17] riscv: hwprobe: Document thead vendor extensions
 and xtheadvector extension
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Conor Dooley <conor.dooley@microchip.com>, =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Palmer Dabbelt <palmer@rivosinc.com>, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-doc@vger.kernel.org, 
	linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 2, 2024 at 9:47=E2=80=AFPM Charlie Jenkins <charlie@rivosinc.co=
m> wrote:
>
> Document support for thead vendor extensions using the key
> RISCV_HWPROBE_KEY_VENDOR_EXT_THEAD_0 and xtheadvector extension using
> the key RISCV_HWPROBE_VENDOR_EXT_XTHEADVECTOR.
>
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>

Reviewed-by: Evan Green <evan@rivosinc.com>

