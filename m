Return-Path: <devicetree+bounces-197386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0C3B08F98
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 16:36:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BE691884EF0
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A7DA2F6FB5;
	Thu, 17 Jul 2025 14:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="RDacqTM1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C903C2EBDC6
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752762972; cv=none; b=XW6RiUn4LnWifKcMQiR0Fh3AAIh5Op4QCQiNvlmQ1I+klYewkl4TARJLvlz0YbGWohmmD+i4OjDS1LlSM0Q4D0W4WOAKPG2+t541hBCEJxyk+JzU7sQz0CTXtI1sofqRxxY6BnZQ8Kj16rubIEzp65zjl3LwWNE/KPusHdn1NI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752762972; c=relaxed/simple;
	bh=ny1BxpwJ+gAFLsYDwALEIo5Wv2OZBJ0SHB8Cu6cHY60=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZGuJgKZ6Zqy8Z6JOLtwhyUkYXtfy+iiwIJsUu2uuXKhnJ6u5PGLSPHKHM0c8CsY61vJVx4B2PXGO0DtkPapSDmRMZoZcaCD9wzrm+cbdFsCLXBkbiRFXg28tsB1PJOjDaGLWtug/WTw5SVLtcavetzv3hlS5NDUve0r0K/VrM8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=RDacqTM1; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5561d41fc96so1219957e87.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 07:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752762969; x=1753367769; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ny1BxpwJ+gAFLsYDwALEIo5Wv2OZBJ0SHB8Cu6cHY60=;
        b=RDacqTM156otUAtjNJ6NoWDczXDxYnMU+CJ/w7Q+kpxdQLhHey+klzTxyabRC+WUEz
         h7t2UhBJhjtIsBeLzTCw08DOXTmm01nyULxJFmBrl84oRLx7ZGh44NmlxiUsYhv6Orn9
         Otgwkmm5J0Y3rTNgBpEXkjMlxrwjH6TV5W1hTahmZfs6U8kESbxTMbWvnlmBaY9d8pPz
         vS6TC5KS7qd6+fjxThpW5Uvs7J3ngNKrnCW7ubeck/uySKE6H0mXKOrHbCjW49HOYFXG
         V+ilQFXKoRBpvj5r2jmE7kuZs2tGJNygSaTc02Zt4aZS0qKtEjWeaNjH95L7o4ZpFVe7
         mj6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752762969; x=1753367769;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ny1BxpwJ+gAFLsYDwALEIo5Wv2OZBJ0SHB8Cu6cHY60=;
        b=jwDvNQQK0Q82nb6XZ+YRUleqVbVsH9Y2UTxTAkSRKINOO02X7TFATmsZmFAf3sdMRB
         LfrmX6tP6LgzGqNNXsO9H/NCaaQnFS0zxuPrZKDRqTinZKv14oqYX5YlttIE7AD0T/a0
         MhJItPxNzEK33rZ5eRA1J9EPR8JHTGrrjjkiNOndVxCLme80nzCm3in48+fK+yT/LPrU
         DWcv5wgGLBQSssxmq50SQF4xK5Vr+x6xctVF/MDwycTfOzYMPwhhhoDil0/No2k/luKf
         JfZ9UNxjMyPThyT6SKQwHEACyh775ibAQliuLGoMCCfM3MLGsnqbRVoxI7RfJqBMhqGg
         FnUA==
X-Forwarded-Encrypted: i=1; AJvYcCUtLdJGAWaKyrmZU6EDa7Cljg9JTuIUiHjUQ+7ZM3vF1sVumA0smc4A7Xw4aYWUMxJiZ3nkitb3KHWx@vger.kernel.org
X-Gm-Message-State: AOJu0YxjhWnIds+9kX5FdOIoSuXSl83oQIHilBASEnQfW5G+3qgb0+kU
	C16GstvO4m6QOLq2UbgKLfSVrTxK9oc1C4Lpu0yBR1MHWLrC62gRY6j4W8arLwdAaHTMRqcV0tc
	66nlVYcLJfaAirMgr83W5asvQcMkONKHj25kI5/z94A==
X-Gm-Gg: ASbGncvkHxf6WbVxHtMiyGeKKqMKI+rRWYMWU8VV4mVauENCJfRagnQ1tzPRw2VPaPG
	qYJ16CR3+VGwJrEAW8VuaunLEYGqcIJ31LCigGOAv0EfDqy+K311P1O7e4YytSrpwB2WGjCJ8gk
	ivrRorp85GLqb1BadUUybyHCGnmDe1PNTb5toxHV0IOPfXbB3bV4Mm1PZsgVlaF89ABYUIOZjMT
	XeA9y99yVymI97oR3zj8BXRoU1K7elBEzRqp9Q=
X-Google-Smtp-Source: AGHT+IGjl+IjWtSow0sNLT+eDGz2anPMKy3xAT4nehVSKgzWbZzJ9LXLTECN4HkXrMGqD1WGIZl2+8KPUCZyseARbVg=
X-Received: by 2002:a05:6512:b98:b0:553:a60d:68a3 with SMTP id
 2adb3069b0e04-55a23f0b81bmr1812465e87.2.1752762968763; Thu, 17 Jul 2025
 07:36:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250717-fix-rpmhpd-abi-v1-0-4c82e25e3280@oss.qualcomm.com> <20250717-fix-rpmhpd-abi-v1-1-4c82e25e3280@oss.qualcomm.com>
In-Reply-To: <20250717-fix-rpmhpd-abi-v1-1-4c82e25e3280@oss.qualcomm.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 17 Jul 2025 16:35:57 +0200
X-Gm-Features: Ac12FXw22vD-hbFh-u0btfg0jHk5nii8D4KA4wahfweHWkbcoH7xxCz4FWUk7vY
Message-ID: <CAMRc=Mff5Yczwq=LTPNYkFAxh6D-Zt6Za9y3eLkVXfhoKdxkKg@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sa8775p: fix RPMh power domain indices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Ling Xu <quic_lxu5@quicinc.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Tengfei Fan <quic_tengfan@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 17, 2025 at 2:51=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On SA8775P power domains device doesn't use unufied (RPMHPD_foo) ABI,
> but it uses SoC-specific indices (SA8775P_foo). Consequently, all DSP on
> that platform are referencing random PDs instead of the expected ones.
>
> Correct indices used for that platform.
>
> Fixes: df54dcb34ff2 ("arm64: dts: qcom: sa8775p: add ADSP, CDSP and GPDSP=
 nodes")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

