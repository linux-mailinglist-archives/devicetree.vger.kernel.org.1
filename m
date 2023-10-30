Return-Path: <devicetree+bounces-12992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1497DC22E
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 22:55:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A3818B20D12
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 21:55:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDBE91CFA6;
	Mon, 30 Oct 2023 21:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dMk1Btwn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A44B1CFA0
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 21:55:30 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE253FA
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 14:55:24 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-540fb78363bso8493664a12.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 14:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698702922; x=1699307722; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XqyNfPUEzQcC86GGtCQWWD8Oa22hZLdjLYhI8L84gmY=;
        b=dMk1BtwnX7P6IyJLxcVOkx+v70A4+3/OzvPCmrSJqQqA/IM6xPFYuqt7+egEFusnkH
         x4/LskbnkPnfO7UIJyW29vdumRf5T1OLkn++Pju2+evxBwCnrwqcaUn8KW73v6elGOfs
         xgTAFG6Jax6yQvllR9LyeLUjsGTQeINe7/Ado=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698702922; x=1699307722;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XqyNfPUEzQcC86GGtCQWWD8Oa22hZLdjLYhI8L84gmY=;
        b=qgIeID++mE4D+tSgTF9BrlIY1Jfio1LN3k/KOkevMOZ3mWX1svZqWwj+CA5QQZWs0+
         6taFrNLKKg1nwGUjidPOasG/gc9cxcNUTTQeQf7KKioQieWD4wmRvvwm5SN1xWgBGSMq
         K46SrNRBS7UyFxyr0yd3QNygxfYLhkgFWoSuiSH613O0T103EyvUMI9OXh+43i/Pcifo
         47bZWr74DiFaHyohpYV+lW+qG0abUxWA5oD2g7iu6+W5+sUEIc3G4d7+S9Y4seOmR4l3
         m+V9MI/DNihU6R/67l7M34EbB+/+S+7AKjK66uZ8R0Z1eJKsAv2TScmvE3mo+PEJ22Yr
         cVDw==
X-Gm-Message-State: AOJu0YyOa0det5Vik2vXGDVBNkIaqdSKu2VTSoh+92TImu1b+ptbiwUk
	mjgccmCIskr8EKnlheluuox1YC3xQBn/VQ9XajUbGYMf
X-Google-Smtp-Source: AGHT+IH0Gc0RFU5yAt3gHCo7dyHk51/TpyRiI12hDbjQs2NHmv1b7Rt8Hn6S8ALltx03hYd1i7E8UQ==
X-Received: by 2002:a17:907:9629:b0:9c2:a072:78ca with SMTP id gb41-20020a170907962900b009c2a07278camr10667850ejc.28.1698702921763;
        Mon, 30 Oct 2023 14:55:21 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com. [209.85.128.47])
        by smtp.gmail.com with ESMTPSA id kb23-20020a1709070f9700b009930042510csm6576272ejc.222.2023.10.30.14.55.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 14:55:21 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-408c6ec1fd1so6715e9.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 14:55:20 -0700 (PDT)
X-Received: by 2002:a05:600c:3c9b:b0:3f7:3e85:36a with SMTP id
 bg27-20020a05600c3c9b00b003f73e85036amr20721wmb.7.1698702920586; Mon, 30 Oct
 2023 14:55:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231027-aspire1-sound-v1-0-5ff3cf8b5701@trvn.ru>
 <20231027-aspire1-sound-v1-1-5ff3cf8b5701@trvn.ru> <d6b63a3c-d171-4b6b-b222-8c619d90f51b@linaro.org>
In-Reply-To: <d6b63a3c-d171-4b6b-b222-8c619d90f51b@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 30 Oct 2023 14:55:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UigovpD_s89j6V7MhCXOVHVVXLRtH3XGEHtcHKbwVgBA@mail.gmail.com>
Message-ID: <CAD=FV=UigovpD_s89j6V7MhCXOVHVVXLRtH3XGEHtcHKbwVgBA@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: acer-aspire1: Enable RTC
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Nikita Travkin <nikita@trvn.ru>, cros-qcom-dts-watchers@chromium.org, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 30, 2023 at 2:47=E2=80=AFPM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:
>
> On 27.10.2023 16:42, Nikita Travkin wrote:
> > pm6150 has a read-only RTC that can be used to keep the time with some
> > extra userspace tools. Enable it.
> >
> > Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> > ---
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>
> kinda unsure why it'd ever be disabled
>
> Konrad

FWIW we don't use the PMIC RTC in Chrome boards. I can't quite
remember why, but I _think_ that the power lines aren't hooked up to
the PMIC to keep power on for the board's lowest power states.
Instead we use the RTC that's on the EC (Embedded Controller).

-Doug

