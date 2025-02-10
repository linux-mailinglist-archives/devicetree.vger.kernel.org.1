Return-Path: <devicetree+bounces-144741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2A0A2F1E9
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:40:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24A40188823C
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 15:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A91723ED7F;
	Mon, 10 Feb 2025 15:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RFURzyE3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DEF324BCE2
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 15:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739202023; cv=none; b=hYeVLQ/dN3zmE9eGxxdOsCAJfaYM5+COl5o95mo3q67KdyanPcyl2dBjZ7Lo05mbkOLI0/gJHRxbfOsrXuJ6obZOhA0UT8scnCYOKaYXvSJ49ikzfkwH9HdN65sM5dvTy99Pyu0C6TYpcOdjtKX0EtCbUjn0ctipJgIoMI05Ojw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739202023; c=relaxed/simple;
	bh=yU8x0uMQkwOyuIKMuCjX2VjkJdt8anEcfyjZSVUfDQA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pKyRSubiKts8m+WhjsdVWqTr47KAAxR8okhN/iLUOPr7RKxuqRky6qk9N5L8HdKhhTD9gMELT0nezK4vZb5Tv0DBB6Bw+3uDgj7nGyviHb0/rfBHQyVyIbcG8H+AlmNzuVoHiOEmZuFmEhW1p1zXSi4sc9pk2QJ10ZbsOgYfnSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RFURzyE3; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30762598511so44683331fa.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 07:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1739202019; x=1739806819; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xZz7wBdHRx1Y/NJmXMgTjFcJ/vA2swa3TSGqQIhUusI=;
        b=RFURzyE3nBp142UJH81LCYcqxD+TC4edGz+CK8UENPEk5bZFIZetjidUJ1GHGIs++d
         2Kw8zxpaYHrCCPv3gqRbqJOZMKkGR1A56SjAHCU7pLchWloGJewbaQa5IyaQbKrlEi+6
         9nqhCWilAtj6WMcfo7qyEamTpOnpfXq2PsqlY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739202019; x=1739806819;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xZz7wBdHRx1Y/NJmXMgTjFcJ/vA2swa3TSGqQIhUusI=;
        b=UwUoO1xaOUnnzXpakj2jGdgPjt5x9IzfrEdQh97X36k71nZpMsHIcXNLA8mKHv6i6H
         z8cy/C0wf7HMwTUg9PH86kb/MuNlR8kOivkSUrCwXi3wLRmHSAxejlQH/O7zPbnvRVHa
         Z8xsxrt1TIzPHwFtCGmysJ/EoKGwEMww3S/lIlrpqOD93+9X0gkEMiEzRdU08gC6T4B8
         O5/Y0T++SV8ITAmdyHAyQEi/aJY3t40KhSs9BwNa6u/0vO9AqOLIkutl5fbTbjRrIHD1
         iQxcFu+C2xVXSmYt67PIFPf96Nsd/oAdWDVR4CAJ/88OI7G9AQ6rzJoHbG9lCb/Wa9bV
         /6Fg==
X-Forwarded-Encrypted: i=1; AJvYcCVo5fTnbfFbqucINPRMBL9R3g7CjaVSIZ8L5WivYifw9EmSR6f+qgj7JPGUW0MObnYG1T0/68n92R4g@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi50Rfsdt4Dle1m9VGpFZymV8MzMzp1Z+Cmkj1y9Da1YeuWTkz
	1NZDDzAUneUwTnkbeK0w0tDhkvbMyiwKf+1ZHDiB0gVaSGurNhVm6cl3P4vGSnjP0kXWo2lB5I+
	DIw==
X-Gm-Gg: ASbGncs5jYzB125leHkxYz93l2bJ91OZON836Ir88lipKTL+kVkExHWgIreTybMv8HR
	4soMQ0GfUvA7qCUOmqmuTVt5ErOLSi2IfmPEq76JFvJc+LKLVxXWh926WyzKVXWVB61oJMWhvbR
	zwNaE9+IDErPOzHY3i+zn6l4nPHwzBMVRQ/XXxE8RpvHZ9w4Gf8eDoPgHqLruIaV4Ysyguzy2vp
	QxcBeAEmFrc59+Alyn9KEji2ZNY1jEFK3nG9p3fHK4pDBvo8kit6JUvtWPLJQ5xKCmApKUBSVoj
	qZpgr6+kyxbkYnGP7o9IzQxHjFPIq45piDStbn4WXroVsMVo9cFuUqTtHwE=
X-Google-Smtp-Source: AGHT+IFk1iNh8RlCUEtnJj21OjE+nJRCR1dnY2ECLfCk8pKr5pK9QinBcKXPcPyIclXgCHWrRbecSQ==
X-Received: by 2002:a05:651c:150e:b0:308:f4cc:9519 with SMTP id 38308e7fff4ca-308f4cc98e0mr9339631fa.5.1739202019635;
        Mon, 10 Feb 2025 07:40:19 -0800 (PST)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com. [209.85.208.173])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de2d8f1esm12830651fa.90.2025.02.10.07.40.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 07:40:18 -0800 (PST)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30613802a6bso49500831fa.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 07:40:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXGjlbciHRFHq4RixiIkQD0kPozBQCMyPIErHcUVKbnNx26GlJcDJAD81idh5H7qJTWMrcIubuhjBqK@vger.kernel.org
X-Received: by 2002:a05:651c:198a:b0:308:f580:72a4 with SMTP id
 38308e7fff4ca-308f580765amr6925791fa.1.1739202017277; Mon, 10 Feb 2025
 07:40:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250208105326.3850358-1-yelangyan@huaqin.corp-partner.google.com>
 <20250208105326.3850358-2-yelangyan@huaqin.corp-partner.google.com> <20250210-rampant-uncovered-buzzard-c96e31@krzk-bin>
In-Reply-To: <20250210-rampant-uncovered-buzzard-c96e31@krzk-bin>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 10 Feb 2025 07:40:05 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VPW=0eA-0VqNb+=75Q9dB2TCaJstcAhKEevk7Bhx7J9g@mail.gmail.com>
X-Gm-Features: AWEUYZmeIn_U_nhTSVtFx4mkzD6jTp93vru0sCx3dywqhcvaZxLtwogVx1qWx-8
Message-ID: <CAD=FV=VPW=0eA-0VqNb+=75Q9dB2TCaJstcAhKEevk7Bhx7J9g@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: display: panel: Add a new compatible
 for the panels KD110N11-51IE and 2082109QFH040022-50E
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>, neil.armstrong@linaro.org, 
	quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	thierry.reding@gmail.com, sam@ravnborg.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Feb 10, 2025 at 2:16=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Sat, Feb 08, 2025 at 06:53:24PM +0800, Langyan Ye wrote:
> > Add a new compatible for the panels KINGDISPLAY KD110N11-51IE and
> > STARRY 2082109QFH040022-50E. Both panels use the HX83102 IC, so
> > add the compatible to the hx83102 bindings file.
>
> Your subject does not fit at all at any reasonable limit. Keep it
> simple:
> Add KD110N11-51IE and 2082109QFH040022-50E
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Adjusted the subject line and pushed to drm-misc-next:

[1/3] dt-bindings: display: panel: Add KD110N11-51IE and 2082109QFH040022-5=
0E
     commit: a8505237066d054cd6ad63b52e7219ce41731753

