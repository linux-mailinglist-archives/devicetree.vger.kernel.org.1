Return-Path: <devicetree+bounces-144743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 174A9A2F200
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:46:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 937BA16204C
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 15:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 022C11DE2C4;
	Mon, 10 Feb 2025 15:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GbAnRKqz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCB21DF24F
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 15:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739202400; cv=none; b=BrqdeUksSKqc7suTeEmyJEWkLMIi1FG8Qe0wjNaMcNX5uovqdUwsUM2z7sgiw9eYVaWNlJ7mQnSrRZccj2rM1IKXW4Qm0Iz6SykOvsHDlzp1lzAZF3AIhIrEdopfxfyIzuchd7kBRF25tsiEeHUiCox+gBiek7zbFPzsALRtBu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739202400; c=relaxed/simple;
	bh=31dsJw93MaH4qxfFDYt4j6u/IB/UidAtq1PUMNs/scs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fGX9Aomu6ByHtTjrwN5GvOPrXDX4jeccP4b4Fl1hkpjVmC8/XehQmIxDBaWzQvhbgRSOm8d5Rry2Daqsvqm78RWG269xQYoFF11BO0RnAGV0808DAsKhqOUpAHMtn8gcDEXymLQ74prmm2kzd2C6kzNbLKWE71H5EaMJ9X9gi9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=GbAnRKqz; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5450cf3ebc2so1123562e87.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 07:46:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1739202396; x=1739807196; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8rx7DL2mRJJgqnbpzuR2yiwWaIRwibqF7+lfnuzIg90=;
        b=GbAnRKqzxKnwoMZ0vnZ/dM/7O5wghQpj8TAcCFjTAnX8SZ+TAMBwyipOMmqgNN7W2e
         UFDq7DNpYDEhynxSOyv+kY2Wk39F8U7uJPd43PJDwk3glXrOvx7YJttQ45ADKYbEHzyj
         Pp6O9Ylbh4d+3r21GimUnoyg1V0GS6Bq95Kw8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739202396; x=1739807196;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8rx7DL2mRJJgqnbpzuR2yiwWaIRwibqF7+lfnuzIg90=;
        b=pg0/Jvc3E/pypqzS35aeEzyLG6QCTLOl3aa11Ao9433An/BIPPxs9FtAK16nQo9A+A
         iiNXOGq2xJMlteRspCF+iVCIvXhuoBo7Pov6GqAK68LDkcUq3RrLUFxlTjsWUTmmEdLA
         FH00PLid3B6jvKgSNdbutMFpF0qOxxbyS0aji2NNMm9pf6Woe1FGb34OM93geoJEHLb2
         RlH8hEApvUw7DRTsIx+vQBrlQKfM3Hm2y6ZAfoTCxTHA+ya6lcePY5u3s2TetzNCOLb+
         B3lSV4019U3FqdWVWOkodUCYMGTJ9dTit6FjreM5FE/Hk9Naz4zkIPOS7SeEfuiaHqGm
         pNRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKfSYlTssSmxAbZvtcqgA2zBjTmJOKWSvQCHsZ0aXBNhtcKcipXPIkJUnER0haN1OyznkK+tLrh/8I@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ+PLKbKb9Yp9SLs8/hQ6nqixO0GaSfY4S6TmOZWzYzx6uDYe8
	+nySvFgwRLsbREviu1KV4ttKKaZLn/iM1E8ui3SN2wRQhLavRgep5nJ9Sg6HLfj/3bls4sDVweK
	DZA==
X-Gm-Gg: ASbGncsJfGeG47DnnRrx83k/gDFEhegAbv1XYe5/2BreMSTu4VdsVAEgWo5XVI0Zaa8
	pKG4S8SOoyn92+PnG+MpqaVU6lKq5fensUixW5AxH1fHnukFKrxOSCqXeeh72xKhIy2PTzU/gih
	Ksi3c2kGGpOD/8jOCx/GaBO3rRv+DMxmpOUr6nUilskAiQaUuB4RccNAVDt7E8CNoFhezsp8qCc
	DE6hiDk2W94cBRLYxiSF2cUExodB5ISDKqi91XKGDFcnckdrSKK6nCmy4lRB1JyJwysGIqnQOuV
	ed2wIBVsPXgn0VExMY2l2Aog/wvMdWNlok4Gc2GcYdvxgDiSKGDTy8U=
X-Google-Smtp-Source: AGHT+IHKFwssnV2N5KYFYu7qglk6QuEdPLFjI7G6xm0osh5U3Bc+GWEM23n1sh3BziLAN3axM69BtA==
X-Received: by 2002:a05:6512:794:b0:545:f90:274e with SMTP id 2adb3069b0e04-5450f90283cmr644792e87.19.1739202394777;
        Mon, 10 Feb 2025 07:46:34 -0800 (PST)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com. [209.85.167.51])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5450c544a56sm366889e87.125.2025.02.10.07.46.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 07:46:32 -0800 (PST)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5439e331cceso5118497e87.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 07:46:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWE9iDRC1K6VTlTTd8mYPiNd4TdT1stG1JouAMRhIbuXeaIKoeLVygHKVRQtyVJgiFiSuQyfEE8F3f8@vger.kernel.org
X-Received: by 2002:a05:651c:893:b0:307:2aea:5594 with SMTP id
 38308e7fff4ca-307e57f2535mr53532361fa.18.1739202028559; Mon, 10 Feb 2025
 07:40:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250208105326.3850358-1-yelangyan@huaqin.corp-partner.google.com>
 <20250208105326.3850358-4-yelangyan@huaqin.corp-partner.google.com> <CAD=FV=UNaOrZVnhmj3cNfJoSj9fc2g5p8w+cfk6XwV1Bcz+a8A@mail.gmail.com>
In-Reply-To: <CAD=FV=UNaOrZVnhmj3cNfJoSj9fc2g5p8w+cfk6XwV1Bcz+a8A@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 10 Feb 2025 07:40:16 -0800
X-Gmail-Original-Message-ID: <CAD=FV=X2q2J_43Ree-cLQ-RCwXzxE7cODES+AmViyYBR-hXQRA@mail.gmail.com>
X-Gm-Features: AWEUYZkSR7Z9h_YcNYa44xtc55wxfsCFbVFhQKoqztzeXbjM-amo7wQcXqSqImE
Message-ID: <CAD=FV=X2q2J_43Ree-cLQ-RCwXzxE7cODES+AmViyYBR-hXQRA@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] drm/panel: panel-himax-hx83102: support for
 starry-2082109qfh040022-50e MIPI-DSI panel
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Feb 8, 2025 at 12:25=E2=80=AFPM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Sat, Feb 8, 2025 at 2:53=E2=80=AFAM Langyan Ye
> <yelangyan@huaqin.corp-partner.google.com> wrote:
> >
> > The starry-2082109qfh040022-50e is a 10.95" TFT panel. The MIPI control=
ler
> > on this panel is the same as the other panels here, so add this panel t=
o
> > this driver.
> >
> > Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> > ---
> >  drivers/gpu/drm/panel/panel-himax-hx83102.c | 142 ++++++++++++++++++++
> >  1 file changed, 142 insertions(+)
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Pushed to drm-misc-next:

[3/3] drm/panel: panel-himax-hx83102: support for
starry-2082109qfh040022-50e MIPI-DSI panel
      commit: 1b80b2101d7b433718a21a9e7d413e066bf8aec6

