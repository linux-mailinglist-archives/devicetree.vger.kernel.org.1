Return-Path: <devicetree+bounces-226015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A9CBD2F83
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:30:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB22D3C54D2
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:30:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A612228504D;
	Mon, 13 Oct 2025 12:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WuHyV48c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B67271443
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760358604; cv=none; b=qGZcykaWkoCnF9O8yVrQlwS7HQ/FOZF1eUR6wqf9gpxzCvlleZF/pfN0s3YmF96U6PTW3Rz6FCITiZ4U2pn0X1E8bsw7B17mkUNWRrcoaMbJBfj7JExEQ+F4kAc/NY5wtE7yoVbpTe3wK0myHX/1ppRhYmJlmTyGIuy7e0bk1s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760358604; c=relaxed/simple;
	bh=1MOmeyqog4OM7BYJL2ULZOdWEH0/3arI6omm4yBQqNE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZLbfOO3uSxhbvG4/cRIYXcJggq897xhnOLcWk1hEEtzdIXw1F/dxlu33HnadQHgVZ6A/ZGgt5W6n4Zv/aEIPFreSxnYD59/MUU4stKi11b1EirMPEeKfXq3UdX7vt05tDnHJY79kaDHKka1bii5xWr/VA6Kbj45OOBt2VIkKqRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WuHyV48c; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-59093250a7bso2646293e87.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760358600; x=1760963400; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1MOmeyqog4OM7BYJL2ULZOdWEH0/3arI6omm4yBQqNE=;
        b=WuHyV48cutS3BFuIeIUDZMPcLa6tMnyBbtcxK3rif3mfMAQ8/KPy23tjOczWdZwsOA
         pM7W7HYN7Is3DwRnSLIdWGYpbyL6yYwOoSTyHH4ty5cMcpkR4O3R1fFSfhY6ProapXL0
         c0YnntQczYeTnH6jS3oG4RUimeMHmcLW2HbYOmM9HXqNY5fSv+DmH12+vmzJ62E+/4uJ
         QPPGCDpNAZ2BHfBnyyqq4XppsF6skzr0cUoZzM2Nh0iQGnu0TVH5rhnO3S9kT9E+gKw/
         NExo/fyCqnnOezgrh+c0EREEKaZtYThXFgCuHGwnx6DciKiin7I7JfuFwJpXjUOGxFuU
         ZKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760358600; x=1760963400;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1MOmeyqog4OM7BYJL2ULZOdWEH0/3arI6omm4yBQqNE=;
        b=RpM3Zh741V15gujmOwoXAoA0iHMmWzK9AXSwz2D5C1FuuTGDw/50qYxiyWTcF3wNXr
         WABVw9PK9TvO6tt/grh/1OKPT3LUTN0O7FvZlhEdKNaZhLCYcyXF0q627Axbegsry2Zj
         kOvwJRyNaxYa8E8WqMredtgc+mhXLksKdqU1jR/sEhYDypQ4l+oRnQrO95MGHQPr61tk
         COdNZIletT8JtSMfz1qh6DQk3W3DaJG9Iwrd5oZW85BIvkZIevQYEIUnRKS1brpo+GKW
         wLOS03xa/97opFgNoSiOQd9cWyuMIHNVukayhbqMK9RlRzSP8TEkaiQvIlJoJZYtPV9p
         nJVw==
X-Forwarded-Encrypted: i=1; AJvYcCU18EHop9km8WJZ1QzuIrNZLzCBFk0AL1eXktF6PYz/Mgc83124SYei1YsuMH0set/yoTvAjIOsM+uB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4pcJQ8IyQyoz4mrcQGs8MV8yv3/bKPp/LOFQknhPgQIMtaVCR
	OED9EIwAR5EtTWRKQ65wYFgVqHwWs4sqGlfDSStAIyGDHcbHXXFRk0aavR9VS4Z9QC/BDogTURG
	e/3A/expcnbWa6PQdQs64/2FEmyFXFLOYANwVXK9f3jKWMjaI6Xri
X-Gm-Gg: ASbGncsX95TzeTt+Q+Z6d7c4n1TW+JAJCuWe+XpNpnCNd87xccYg4JHtXITx5sCKOUV
	LMFlXfT6vEqPzcdtcbpeOMSP6uSViatJT/JnqNE1I3n1tQ0g4wSjCknL89KuA+/2gwKUiR71t+8
	Jp4sbbXzWqqPEOwD+SBemT4Iqz1jZeo/d1fxsVc+b+K2oU38HI7D+2MHPyvPUiBUfSLkVr654jR
	uzMtzXJUtrEuOm4e2McbOE/swrIWd7pKMHn6U7a
X-Google-Smtp-Source: AGHT+IHDziq/3pEjSE34Vb9xc10xnYDJuQK7aFT0KnwS0eJY8GRc+vGU1CYOsUeevL8U5VlYG6e//6jV5rAnbmRrIB8=
X-Received: by 2002:a2e:bd0d:0:b0:336:5d33:c394 with SMTP id
 38308e7fff4ca-37609ea5185mr56779601fa.33.1760358599989; Mon, 13 Oct 2025
 05:29:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007-rb1_hdmi_audio-v2-0-821b6a705e4c@linaro.org> <20251007-rb1_hdmi_audio-v2-1-821b6a705e4c@linaro.org>
In-Reply-To: <20251007-rb1_hdmi_audio-v2-1-821b6a705e4c@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Oct 2025 14:29:48 +0200
X-Gm-Features: AS18NWAyQHOstCpKlOfzZTMdQhypcq3gyuY9Qq5Lmp_pCYAjRMed25BVKMqEClM
Message-ID: <CACRpkdapDastXAED4YhKAXQ9byvMH6SHqt3zHHniGRJzuXhDRQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: pinctrl: qcom,sm6115-lpass-lpi: add
 QCM2290 compatible
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Srinivas Kandagatla <srini@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 7, 2025 at 4:03=E2=80=AFAM Alexey Klimov <alexey.klimov@linaro.=
org> wrote:

> Add a compatible for the LPASS LPI pin controller on QCM2290. It seems
> to be compatible with sm6115 LPASS pinctrl.
>
> Cc: Konrad Dybcio <konradybcio@kernel.org>
> Cc: Srinivas Kandagatla <srini@kernel.org>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>

This patch 1/4 applied to the pinctrl tree,
please funnel the rest through the SoC tree.

Yours,
Linus Walleij

