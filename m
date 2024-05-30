Return-Path: <devicetree+bounces-70863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2E18D4CCC
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 15:31:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A4DB1F22D63
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 13:31:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8955917107B;
	Thu, 30 May 2024 13:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="TBKBEiiV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBC317C23E
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 13:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717075891; cv=none; b=EsLuu5qkrgk1gMFfWeTdBBUqjlL3cMWh5P5/Sc0f14OUWrJvJU/Yan8QEGEvaTNyjxZsGujWAra2Fgrkgo/AGKPqN5J8aZfe+zSLGTzAaX5XiiAYIYUkDMKYBaoJDEuHPN9gpSCurhiS0KYGcoXN1VA9FXqWfxZjZ6h+KgXvWDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717075891; c=relaxed/simple;
	bh=za8s+s2uJbZOSdj13C3IhHmUpLzEjcZ7OcoTUDKC288=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MgoRdxlVKyN5scMEsq2j3qAQvEDhXxw3lzP1Uk5PP61RmSEbBbLWF+looIMzBzw2Ud6J+CMhlzQzZRNikBiMUKEUGIaUhZyVvvGCT5cQ2IgtBOdGMXd8aUk9jKWvCdzIXBTz2GzLVnwT9xL/5zMHNBkBqS2bl8U1VP4ivoMV/f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=TBKBEiiV; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-43dfe020675so342421cf.0
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 06:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1717075889; x=1717680689; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9b/VYjIxK8D43eybKKjV+I+zdKvJjn3UjDADVprzxpY=;
        b=TBKBEiiVbrkEn1fE85S6Xaf1w0FhpRnOlci/6k1xmpfH22Za921ytuXSnVmtfNxXAs
         sL3UbGTFOodZlqPD6IcOmUQBL+Bb9LtGhXBHXNYSki6jF1mVOuN9vhu48GJHv09RLNt2
         JZNugeNIeHcBrnwEiebDtVbRrlzYuP22MMZoAk3VoGfbeD1Q6FdykdfdUqgx688RE+Ub
         JIXzlPQUaM2tI6GKLGte/UJnlLEHQBWn9gAhSl7dclezAkPiz7dQrvvVXtEGpf3vWTM+
         nBQ5k4bbJMKvQagYT6NHYKkA41x7m+/ka0cRoCVcO/KELXNVtnyk3RLXe5R7qdFrMeVX
         L0BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717075889; x=1717680689;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9b/VYjIxK8D43eybKKjV+I+zdKvJjn3UjDADVprzxpY=;
        b=Y04dOxVdYCY8hN1g7dk4dh5nlliaNDLWLQTgIUPL27FUHkBr3dkmS20Ugc37LCuNWq
         NUQ5oe5fbWDoKIy9NnrR7rFowC1w5GB/HgP0wOAMoLiEk2ZVgFKPVHvmYALrsOg8U3Rv
         T6+rZmy8RXmhF3aF+dTF9NNaGf4Y2ctyLfIiLZhfQhGEm+urdXocrhQPQ6lvlKUK3Uj7
         gWmizJ1fBzivFY2uUkDWjQKrsXVDoHiplmOnItzf9tqY3P/zCNLTA2M1GO5YsNUCY0Uy
         v7v4dGKlu63FKtChX4RZVrz8fa1mf0wQpvD8UwZ/ncrtlrmPk5ryC/Fgd8dq4M/otLF2
         0fSg==
X-Forwarded-Encrypted: i=1; AJvYcCXqcrcVO0BBU8Qmej/DX+59WQ5Qn2NtGY3c6OcAG+5XRfLN24q4wNkQOvAl2rL3N7j2nrnyIuJt7D5E1YbzZEXvdKe8bfs62cZk7w==
X-Gm-Message-State: AOJu0YwsbflovVFLTw/yNfpmLGshUlY12cJo5U80Bwc/7Gr/nUL00RUC
	GiD4K11R/7Vrw8ci9HFaZDphnKMrTkVrpU1l/l52CbNAXMk57+MGZs4FO2nOdh0F1Pj8EfAQRuo
	utYp5CvhCvD+gYW4ZKAqwNiX7sVGTN99sVTgM
X-Google-Smtp-Source: AGHT+IEVljc/WNG1/2DxI5ja4dVMaBKAFoMh5+9eC9gGh7kw60wj1iEuNd/k/FrPaC+845BlBleYXcCYvwumc81T37Q=
X-Received: by 2002:a05:622a:4d4b:b0:43f:bb44:bbb7 with SMTP id
 d75a77b69052e-43fe8e3bf56mr3679761cf.8.1717075888864; Thu, 30 May 2024
 06:31:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240530082556.2960148-1-quic_kriskura@quicinc.com> <20240530082556.2960148-3-quic_kriskura@quicinc.com>
In-Reply-To: <20240530082556.2960148-3-quic_kriskura@quicinc.com>
From: Doug Anderson <dianders@google.com>
Date: Thu, 30 May 2024 06:31:17 -0700
Message-ID: <CAD=FV=X8kicS0Y0r=eNwLGvkzVqCPMmjRdjqjxEy33-k5hQk7A@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7280: Disable SS instances in
 park mode
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Matthias Kaehlcke <mka@chromium.org>, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, quic_ppratap@quicinc.com, quic_jackp@quicinc.com, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 30, 2024 at 1:26=E2=80=AFAM Krishna Kurapati
<quic_kriskura@quicinc.com> wrote:
>
> On SC7280, in host mode, it is observed that stressing out controller
> in host mode results in HC died error and only restarting the host
> mode fixes it. Disable SS instances in park mode for these targets to
> avoid host controller being dead.
>
> Reported-by: Doug Anderson <dianders@google.com>
> Cc: <stable@vger.kernel.org>
> Fixes: bb9efa59c665 ("arm64: dts: qcom: sc7280: Add USB related nodes")
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

