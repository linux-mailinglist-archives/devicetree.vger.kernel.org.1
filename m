Return-Path: <devicetree+bounces-85780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5889315FF
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 15:43:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE3B1283006
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 13:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE3DD18E756;
	Mon, 15 Jul 2024 13:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bmpFt9Bs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6441918E75B
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 13:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721051006; cv=none; b=b241Rz0lc5XajqMFHxpdkvPh37aEYL5GIt00wC2xc01sdKgWLtklfA1mgA8Vl/rFaxY8S9+uLikDfKyqIn5NFqDLh/P5U77akZRU0446jqdQrs0jD7elHaaTisyRLtgtGUwF/ro6jdxa0K92djCWlvAyObfJMMiT1zaAqRRM5AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721051006; c=relaxed/simple;
	bh=M8zigsqNJE+phkpqp1gyoQZJLxt+QNapc75xhNmetU4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KxSEQWc/Co2Zg8rsw43ZzMDt8e3x2fDBg2l5wwsymDBKvKMVkqcY/lJPZLJBKEgnlSbucKbdiRUUH8mGkWb56vxrIoqPGh1qLNFAa8np/07eIu07MFXPCe5TP7tEaJElaOL7BaZAarA9kvPzRg5wKzYr4ZinX9zSvFb/UafNMTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bmpFt9Bs; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-79f19f19059so274020485a.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 06:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721051000; x=1721655800; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aeGvR/8lk6Nll/J3UVT9i6hjcln5jvzV7Bpthcn/O4s=;
        b=bmpFt9BstdyV4kcpMMeKdFxVkI/eFpmI0e1bKI8XxPmOtzoUa/Y/+PFgt07aEyqviV
         mlsTbDYj4uuye+0m5PuaGSjHuKuSrZRTEpC48/xhdxYOHePZLPQE/VmhmC9m5ialI5/q
         uflaPJGV0R2Kz4Lst07abcv0C8Nmfazrd5QKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721051000; x=1721655800;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aeGvR/8lk6Nll/J3UVT9i6hjcln5jvzV7Bpthcn/O4s=;
        b=Q3KQq4uqY7NZn0uYA3W/ylgpoOXr760Dyt0+Yb87LGFNjfgi0JtHD0hUVfe1cY1ICk
         Sl/2h1z64PXUeEX/IHBjVOmGzDWPaXQg0HWAvKx5U/SE1F/nIhRB89Fe1/flhYx28pis
         dNFmzjrDR8lORGfZPxQOsAwM2ES9pcK6+3QhEW2OpPSxEm4AjvtfvkKKD5eyiUZ/KlHC
         4rKNpPzPDHB1FCv8qPjYQTFyByyMnUpfSVjeQ2xVa6/aF9nXdf5TKwoeZVa+xxgfbP4P
         Wx8EX6PLbUfJmfow1vn6HNaVsnwgAVkGyoXY1MS9LStrVd2pRbGbrLPOAa3A5Rh0wqsB
         T1yQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJWHVaQHRfbreBQ+2lt2rztyUP88E3eGjiOQ2dBNDZ4jInkftLKAlu7lagSG9ZzvQhHXXW6tyQTha//L40OFVDqxZcINHJVbC9yQ==
X-Gm-Message-State: AOJu0YwE0RBw8pOjh2hCRqfAUAPM+4b6IEUDy/rovdPBWgWlOgXi48K5
	MwHn+hqYiVkdtjRwmAciOJ/mWmjyUbxGktRM8v7FmJzNouh+XMmoPhj5fEcGuQBNvHVvN3bHWqI
	=
X-Google-Smtp-Source: AGHT+IEMvllZBu3ioQKcnYgXPsJR3Q4fz9wbMnrL3DgNEttTtETVXAu5SirqFz0EdVqJha3gIPE85w==
X-Received: by 2002:a05:620a:4d0:b0:79f:1828:4279 with SMTP id af79cd13be357-79f19a53689mr1926843585a.4.1721051000515;
        Mon, 15 Jul 2024 06:43:20 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a160c633fasm199376085a.89.2024.07.15.06.43.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jul 2024 06:43:16 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-447df43324fso489471cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 06:43:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX2R53xbpSjw1pKu+M6m2GvOUKSdK3RLQXFf2fjcB8U2cy3bQt3ZK4KXjFISpaUefZGWvNq0SM7bRqnyLKvJpnnS66h/3TBJodk+Q==
X-Received: by 2002:a05:622a:2446:b0:446:64ad:ee91 with SMTP id
 d75a77b69052e-44f5a31ec80mr5833341cf.20.1721050996122; Mon, 15 Jul 2024
 06:43:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240715-x1e80100-crd-backlight-v2-0-31b7f2f658a3@linaro.org> <20240715-x1e80100-crd-backlight-v2-4-31b7f2f658a3@linaro.org>
In-Reply-To: <20240715-x1e80100-crd-backlight-v2-4-31b7f2f658a3@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 15 Jul 2024 06:43:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WLFohKUUFqsPrpRGCer_TPugoM8_Du6=7YcDywFfUkVg@mail.gmail.com>
Message-ID: <CAD=FV=WLFohKUUFqsPrpRGCer_TPugoM8_Du6=7YcDywFfUkVg@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: defconfig: Add CONFIG_DRM_PANEL_SAMSUNG_ATNA33XC20
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 15, 2024 at 5:16=E2=80=AFAM Stephan Gerhold
<stephan.gerhold@linaro.org> wrote:
>
> This is needed for the display panel to work on the Qualcomm
> sc7180-trogdor-homestar and x1e80100-crd.
>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)

I'd assume that this will go through the Qualcomm tree.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

