Return-Path: <devicetree+bounces-182992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18628ACEC69
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 10:56:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D67E0177FA6
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 08:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7464020B7FC;
	Thu,  5 Jun 2025 08:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foundries.io header.i=@foundries.io header.b="S4wVXBiU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E052036FE
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 08:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749113804; cv=none; b=B/xWRZkOzVhv7+GCStu8APnmkBVbtmjDTLj6GnZ0B668R+Sycww4ihY/BIui3vtWiLKO1LQ9p8PvwNSfEqSmoC1ul+V0TbePjaxHW0Wb4D/rGpYOLGSKMfBedUD7QD0fc2rC2D+JihrlD3hoEkyek9SPQBnL1mRqVn5iTi0B7IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749113804; c=relaxed/simple;
	bh=HZzpiwdDOiE5Yz9hjtHxpuCTZ1QFZs+k4sCFU0dN0Rc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IXdu5DHKHMTTkrAzyKMuWCPLr+m1iY44ijN+ZMf2n9kyzFvIBzae3n9SV/XSXNWuXMJy1tFIaehWthFzo/UIZB1afT7LX+ofGyE4XUHHcMYMomy8a95LmtSFRDLGUtHiO4u3hX985KHJ0RJDuCsZXaJy0fZyw8bbTyu4ep3kiQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=foundries.io; spf=pass smtp.mailfrom=foundries.io; dkim=pass (2048-bit key) header.d=foundries.io header.i=@foundries.io header.b=S4wVXBiU; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=foundries.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foundries.io
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-6060a70ba80so386398eaf.2
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 01:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=foundries.io; s=google; t=1749113800; x=1749718600; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VXO/BSPvcKdKi8LzY3iQkSuLgTjUSqLbfLK33KnraBY=;
        b=S4wVXBiUlLRutazK5hifcJw2D5JNzzElL0eqRbO6PHGP7Tki+17W7B1wXLBigVkP7+
         wamFU+thHI0/1OL1mbL8V3WoxgClpvZBtisGhTDrK+MnsmZBEcjCVfusA3mbsSfiJRKr
         Tj8jjxF3iGChAGz9Ruf/qY1CdtxjyfQpTjbwxX+f8dA/66p7CgO++ccEVYLOCUnxZC68
         ma794OTnM5lN1bIl6/P8rCd61tL9ptxkcMm6nXVbLAvjKpZeFCsf+VI3NwFqUGiim9Lv
         kdnO35YvSgnmLIm1ao71LF+3810YJ4ssqAsg9SBVAH9+o0dpDkZHjgBDbTsmIbjd6GxV
         /zVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749113800; x=1749718600;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VXO/BSPvcKdKi8LzY3iQkSuLgTjUSqLbfLK33KnraBY=;
        b=i1mFTDJQ5VJTnAldS7abhHWGWWZ4watr9qCqocsPqq2B5zdX2ZFOs8kFWrqSvzPh27
         7/R73gRjCja2MXDUpPZJ81XaXxQyL7vjSe3ZKl/LHhfJKye4a20Cg4N5gv9eNRVZNv4Q
         fbxLLqtPCJKV224FArjvzIiYoqpag8yhS3C52GsFbWztD1CyeJCT38fpYDXzbuKVFLdb
         E0la5lJdMLMIeLqPhGGjsZJ7hXusZQAfIhZ1e+IXy1H4dr4GE0LPaD0RmM1WK36PDMPQ
         mF9VBY/PoPRN1WNgkzfypwxAt1b+cd9vlFyemiBNcpmJIdCsltrXJnr7UfLlWFBEHjzx
         KrHg==
X-Forwarded-Encrypted: i=1; AJvYcCXZClnjntb1jOvaZmrzOLaQFhB77tvuvRIOrVNWb1bh2bYFtXXE2yC2TdDaXBtnhlhdGUM7NwYJzd2R@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9PByOyNtoUUymnW9LiaXs7rP22GIRgAEbgo9uWzdfJrP1iimd
	x2f7869wg6Ym46nQ3I69A4jaVvaDD1IZiJgaZwwGUFxd5VZmExRruqI+ZdT1H4hYFw/9y7u3RBq
	MwHLBB1FSG/zlwmmKZvZPuqkAg6PyH0Vt7+aaWgeNWg==
X-Gm-Gg: ASbGnctN7tbkB+62f0M3DW76L2JE6C9cSAySdK5ykQOYRaZvolfrgBmWLRm06Yf7mu+
	9yX4uQ4tU1MyVuzTFdSldBeQM36wGzsghzcUd1stiv+NEUArJFXxAcRO7RS8GH8uCNr5lySJuPW
	GIvOt5aderWNhf81ImA7A5ViKeh5LdVymh9w==
X-Google-Smtp-Source: AGHT+IF8W9Kgqr3UhuTzE8rUUoqG6pf4kyDG1m5TVs7MD/SkPuEv6xmyR4osr5A3wZxLQrDAEbWseicelzibxl5/PPo=
X-Received: by 2002:a05:6820:1804:b0:60f:3442:96b9 with SMTP id
 006d021491bc7-60f344298acmr473284eaf.3.1749113800444; Thu, 05 Jun 2025
 01:56:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250605075434.412580-1-mitltlatltl@gmail.com>
In-Reply-To: <20250605075434.412580-1-mitltlatltl@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@foundries.io>
Date: Thu, 5 Jun 2025 11:56:29 +0300
X-Gm-Features: AX0GCFsbvH6NQZycfznXDqSOLQq8s8pahdhgC2jk-Poorbr8RsI9U3sRbkZzVbg
Message-ID: <CAFbDVTBGR2ke2Uak+GrsJTVG6ujMfVymRsM_rGu9PwHDE+bGtA@mail.gmail.com>
Subject: Re: [PATCH RESEND 0/3] arm64: dts: qcom: Enable GPI DMA for sc8280xp
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 5, 2025 at 10:55=E2=80=AFAM Pengyu Luo <mitltlatltl@gmail.com> =
wrote:
>
> This series adds GPI DMA support for sc8280xp platform and related device=
s.
>
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
> Changes in resend:
> - document dt-bindings (Dmitry)
> - enable it for sc8280xp based devices
> - Link to v1: https://lore.kernel.org/linux-arm-msm/20250605054208.402581=
-1-mitltlatltl@gmail.com

If there are changes, it's a v2 rather than a resend.

>
> ---
> Pengyu Luo (3):
>   dt-bindings: dma: qcom,gpi: Document the sc8280xp GPI DMA engine
>   arm64: dts: qcom: sc8280xp: Add GPI DMA configuration
>   arm64: dts: qcom: sc8280xp: Enable GPI DMA
>
>  .../devicetree/bindings/dma/qcom,gpi.yaml     |   1 +
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     |  12 +
>  .../boot/dts/qcom/sc8280xp-huawei-gaokun3.dts |  12 +
>  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  12 +
>  .../dts/qcom/sc8280xp-microsoft-arcata.dts    |  12 +
>  .../dts/qcom/sc8280xp-microsoft-blackrock.dts |  12 +
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 368 ++++++++++++++++++
>  7 files changed, 429 insertions(+)
>
> --
> 2.49.0
>


--=20
With best wishes
Dmitry

