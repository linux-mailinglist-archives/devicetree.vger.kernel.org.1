Return-Path: <devicetree+bounces-104470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DFF97E865
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 11:17:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 386C12809DB
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 09:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 620C2194A5B;
	Mon, 23 Sep 2024 09:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P0aGWe7r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7163A1946A4
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 09:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727083036; cv=none; b=ZBfU8UfUr351Z0+kmWleosI5yp/0XAnskK5uBlHHLfb6xUtC97JXIC7KGhde+VJ9rpcptqiKVPj9Fh1Ys7ADHLI/YcDSsM8yZBi7/PnD2EVHDpe/PuKhc8wSroq4GwwlWT1j0DYR9g+gHyJ9vB+UJPI/R9fY1g5d1U+25LlGPPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727083036; c=relaxed/simple;
	bh=3Ng+sDg2QT5rzu61/aYwIfYlo9ljmcln0gZXWTADH4M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MQ/uZuQ56udSV7D/uoFJSUzLVL/zFOTpXovnbiy5ZR76iQDvTYdK++luQB0/I5EfTq2PDAkieAl3gX7Y4byR/MKwV0qHoXeXdbUiyJ8EESngK/JKuBa80TpuwC3eyaZhBDcuM97GK5/vwAXPjqDWUkkG4ujeuqEDuTjJgaCV4VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P0aGWe7r; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5365aec6fc1so4290504e87.3
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 02:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727083031; x=1727687831; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Ng+sDg2QT5rzu61/aYwIfYlo9ljmcln0gZXWTADH4M=;
        b=P0aGWe7rHFGm9kCI1S9U46WcSoZnr/TLZcYVXhROyGzOC13R7Y37SLKgHR4EhkHGpz
         9JMgP7g6GuEIhJKSD457CJp5uCWkCKAOn+NUjFWGOsD1NaSfFnMrNNC01rRwoKYfPlul
         mRF58XbluHOxJxFu7Psxz4SAATRZ45GQJGHvkoNkxQAtxauOQO4VdsIboPM9YXywt5mY
         OhZolKQ9prXBFp5u1UtLgxNx9240cOqz3UwDO49puuGgOjjcgVxsPp6w/PsTJDJGp/N+
         GdRFYMGLk40B5gVmCYIm8MN6I/JMMdH8f4ldxzNjf3siRSJKPvFkdlREVe12UaWAD2Qu
         yLtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727083031; x=1727687831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Ng+sDg2QT5rzu61/aYwIfYlo9ljmcln0gZXWTADH4M=;
        b=lfV6SH4uOsMTpsMA0S+LN3BtlAJNgT1JDeZYZ62iMDDF8T34GgjxgTTNbFvhE5AAaN
         e53pI6EmbWiLNMK18VJ+Aa393OcripdzLpUTzmFgL3Vn8zIGewPD6vjGVUTS7B8cEQHm
         Tk8ml8S4+c4xW5BQw+L3ITJmHBeu5YYJgsAKav6yRytJuiyYch9ZZOmMotjQd3we+FVF
         z02ofg9wZr9dmv2KmgAeP+mDi0d/Cea4Q/USGcOa6UyBN+bNfG6AbEI6oLyKWvczeTy2
         Ea1cy7VSM+Wou2JLJkwrSegQZib3f8xmtl0mMxLtDXVoeiQtxZsemPospduNJaylrRQE
         dG3A==
X-Forwarded-Encrypted: i=1; AJvYcCWNnk1zbrLvjyRQpBxE3YH8lk+sz9zPd7ghA7ap5BQfgQzgrnoqHux6kpKuVhO6lpRmYv8yepY8xsda@vger.kernel.org
X-Gm-Message-State: AOJu0YwBDCUNVkIZvrjP7b90O85MnjE9Rm9DMgfuIsyDfifF4qcJHg41
	X3DxRrrQ7rRAB2RHHhoc2vjpB/Dl9bhXQUdgNSQdX5lpWp2SUG3jofXPjb9Ct0nnEnFzQiWF1GC
	LX+BKvbBmWavAFs7Wg8mUj0mCWdHFsJmOgDNHsA==
X-Google-Smtp-Source: AGHT+IF5N65MAjSl2RI3rZ8tSubimfvrcMOGWwimT6ri/YlzByTwDzfSSqy/Vo/Rn2B5RVjXBogTTQ/dqeeiG1yGEoY=
X-Received: by 2002:a05:6512:e94:b0:536:52da:5183 with SMTP id
 2adb3069b0e04-536ac2e595emr5416859e87.18.1727083031495; Mon, 23 Sep 2024
 02:17:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240905200218.3810712-1-quic_nkela@quicinc.com>
In-Reply-To: <20240905200218.3810712-1-quic_nkela@quicinc.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 23 Sep 2024 11:17:00 +0200
Message-ID: <CACRpkdaKNyO9J265AQjDbta108V6Gw+89nDXscMRyvJN611VGQ@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: pinctrl: Add SA8255p TLMM
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: andersson@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@quicinc.com, quic_psodagud@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 5, 2024 at 10:02=E2=80=AFPM Nikunj Kela <quic_nkela@quicinc.com=
> wrote:

> Add compatible for TLMM block representing support on SA8255p.
>
> SA8255p uses the same TLMM block as SA8775p however the ownership
> of pins are split between Firmware VM and Linux VM on SA8255p. For
> example, pins used by UART are owned and configured by Firmware VM
> while pins used by ethernet are owned and configured by Linux VM.
> Therefore, adding a sa8255p specific compatible to mark the difference.
>
> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>

Patch applied!

Yours,
Linus Walleij

