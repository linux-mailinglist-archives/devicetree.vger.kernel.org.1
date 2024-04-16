Return-Path: <devicetree+bounces-59700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 071F78A6B45
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 14:39:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B5F51F22316
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 12:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C512912BF02;
	Tue, 16 Apr 2024 12:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OEEv3x+l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB30811F1
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 12:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713271158; cv=none; b=lcpaITjDLflkya15jUBZOzw3qYrwOCxT6J1S5R7c5stToSvvYv2PstNQyqcBvPdo/hgsm1bpIzhAQmGS9R90/vU8YjM+ASlq+L/YM2nfQP5jIaOHKFwKFczE6RWGvyUVbQeB7C8vZyDh1PioVpWzSNL6pzb0YsLYqToCZDOwi/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713271158; c=relaxed/simple;
	bh=INkgGkw3lfof6ttOSzX5lzwufaDoB7uPeJ1nhpgVeBU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kO/5hg6LLvmK5Vvo1MJqwhQGhs32gefMxAgGikaU+Go8VLq+eTp+CjGwB1w2D4FQv0DkmZntAtlenL9iiAERawVp64q+OaCKm85ihI+SJ6RogdQc0KhwzOvxafNG5kDPl7Y35Gd6KJyQIKy7RRmhHy5QprhjmNmfjS5tP1HyEfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OEEv3x+l; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dcc80d6006aso4218079276.0
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 05:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713271156; x=1713875956; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=L5+AVlKX0UKLNpDnTXG4nLDmpjGwbimLrrB82xXakLA=;
        b=OEEv3x+lS4XGYlyWSp1K2umbJiSxK1HR5BAJqWRb7JWbFXnppyecl/uUENSFWXMFbq
         qLXMKHxWIhle0EEqFiC+cQCOR/X9NRJq8ly1QR11M34bmL2MyXLLDpkIHlQv+qdPQVAn
         F+tt/AVs/OsgJTdbkBGI865zapaZjRQkignR+Xql8iIhYqY5+d+yrpV2HKQIYE39r1ra
         kvTgR+QdZOZAAf+D2Ez8dvPKGXSV3NrqiPPOT8PXchYEWEF+deYJJNl6iov52XIVjTee
         GEghGjHAztoO8k1qhjzk5BJhxH1knZry+GUDSAqPGRS7f1bY3vVt7Wsyj1hFgp7O61CS
         xAuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713271156; x=1713875956;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L5+AVlKX0UKLNpDnTXG4nLDmpjGwbimLrrB82xXakLA=;
        b=WU0JdUJXHcNETbhS0znj+lhTfb51GVPRZk4uAJBJR8JK84pKTozAACzD6rsyIq5uzh
         UPe4HeZ5OwTlOolEwFiPXKA5el23O2+PZc6x0vIIQbC/EzdWeqJc/I37O42FThrLKlSP
         WY/4fDankkmDeB/Xy213e/dwbxLYOEIGQYX9kCJgwPUn85zg11ZAyuu+WqpCzjP6ttcL
         vrQsERPolP/0TMM2EMZCfj++U4zNB+jvo92l/nelRuUYUwiYlzCot9i2wNLqT2uSYQj7
         YERK+xavnT1PUPnA5YlfB1zXnuCmpD2sTJkF7O1x8uyQZzqo6OftR5hMeiO4qJhfXDcF
         K9nQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVIX89PNhsKd51gowy+K23eyiTmuheVBOsRFanWLYawH9+IxzKst3ZXxwsfAN+py7muNJA/UINAsNjt6gHIdYH0G66Bvq2DdI0OQ==
X-Gm-Message-State: AOJu0YwHzTBsns1D8F0weRseluANjG7YmCDoVT7bGOINvn6rfU2j9RCA
	0nzHgC7cO4HgYP0G3yBRAw+PG3ulQSIQsPQYVXk0CNQGKE9qSqzChcqUzJZEUPRCBxoQlzVGvCl
	IWKDKbHwFa4+Ks7gKeajx0jiF7y+ysqXC7df/yw==
X-Google-Smtp-Source: AGHT+IEwQ0Ngh3qKjVVX87FYrtRCF4iosRKAkJdiG4FLgPF1wzvvHbh6c2T/y9yAEHN+DSCC8BOhOKXji/M+uyanmTc=
X-Received: by 2002:a25:dc92:0:b0:dc2:2041:fc49 with SMTP id
 y140-20020a25dc92000000b00dc22041fc49mr12430917ybe.5.1713271156421; Tue, 16
 Apr 2024 05:39:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240416-pm8xxx-vibrator-new-design-v11-0-7b1c951e1515@quicinc.com>
 <20240416-pm8xxx-vibrator-new-design-v11-3-7b1c951e1515@quicinc.com>
In-Reply-To: <20240416-pm8xxx-vibrator-new-design-v11-3-7b1c951e1515@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Apr 2024 15:39:05 +0300
Message-ID: <CAA8EJpp9Td4ttqQN-hU72bEcRxMk0Wug92cTjvOKxfCaJb0Smw@mail.gmail.com>
Subject: Re: [PATCH v11 3/3] input: pm8xxx-vibrator: add new SPMI vibrator support
To: quic_fenglinw@quicinc.com
Cc: kernel@quicinc.com, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Apr 2024 at 05:44, Fenglin Wu via B4 Relay
<devnull+quic_fenglinw.quicinc.com@kernel.org> wrote:
>
> From: Fenglin Wu <quic_fenglinw@quicinc.com>
>
> Add support for a new SPMI vibrator module which is very similar
> to the vibrator module inside PM8916 but has a finer drive voltage
> step and different output voltage range, its drive level control
> is expanded across 2 registers. The vibrator module can be found
> in following Qualcomm PMICs: PMI632, PM7250B, PM7325B, PM7550BA.
>
> Signed-off-by: Fenglin Wu <quic_fenglinw@quicinc.com>
> ---
>  drivers/input/misc/pm8xxx-vibrator.c | 52 +++++++++++++++++++++++++++++-------
>  1 file changed, 43 insertions(+), 9 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

