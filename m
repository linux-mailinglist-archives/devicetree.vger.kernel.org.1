Return-Path: <devicetree+bounces-51592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD3F87FC62
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 11:57:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6220F283DC2
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B12F7E583;
	Tue, 19 Mar 2024 10:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mi6hao1V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BFC35B1EA
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 10:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710845774; cv=none; b=dVGIb9qxMIspzJ34jfGHVIYFvq7F+3i07jmlg5sa3jDYpkj+rUx0s5SKD7LBsjUi8T99t2y8MKL3+MV6hu5Xai2RTuAxfZJDOruclykxyqiNeq4aPDrORpCvc/LPn1ThwQYZN8SoRXRtAHFx+x6KpAwD+2w2en1YjnWW40a42Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710845774; c=relaxed/simple;
	bh=udZJLAwRH6Wy2tl08TPal556uYz31Xye+SC2LIJakJ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iwSNOV8IfGtR1ocm2YwT32K77U3g+cnAXIYyfLdcqlwIErBnvxmnuVnTyjxi6sZMz5cWXV+YKfr7HJI1xS3kpMOrSto3SZ4hA5+ACq9VGCOP3bUqCW+1e3ThY5kdqzFzmuAZfuO08GUgTfbxNPcHNOGm/cpSWtuZttBb7jUPjiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mi6hao1V; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-60a0579a955so63896847b3.3
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 03:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845770; x=1711450570; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WHVb8syaGtNBn+LKrTDraLMPvcXg2wUKJP4+OyMiNcQ=;
        b=mi6hao1VuhmgnJxt3iPZ9jegxrDvvimHww2uzDsVGMa8wnzmlc/TFWpr/w4/4Vm9kI
         2cl/AAyk7WvgodCuTlT+VpjhN32tcBd58duKFqvGNB14RuFiQoFWQF/rFi2Rq14JnxIq
         +DJaRi4VEkwPEvJI/VGn6PXo5r0CYBjZ7oTLDiQUPN40WLxS0DnovxGOeEVkVMDZ/a6P
         kJRZJXYQMyE/88lD9ZPjml7ih0s1iB7lkFdZkgYUetv2o5iS7u8El1tPBjmSKeVtTZ1p
         EWwJ7lSfd7QohHHZjradHnXCKetjtSgfg+qy3jlg76hTWbJs4pcBXQ0F24/DdiiE9wx/
         w4Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845770; x=1711450570;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WHVb8syaGtNBn+LKrTDraLMPvcXg2wUKJP4+OyMiNcQ=;
        b=rSgJoaI6M9/gXYRrNhJT+e1T6B4M+zMULJvwgeqA9qLLMtJaoSRc2PE/xbqmddeJLi
         xobGOYgfqJepn3dt350tsNwyBMHzs4huk7SdBc3F4NOyKVvtZcHP/kSQQPIP3WiTkIzA
         n4PYyN00rWcgrVzkJo6g8xEXs/vumMedjLt3kM0AnzbIKCpV+mXCBcRRDfcrPFXDCv8E
         IoVEsKqo5v0jCUbXKS+4wm8pbdUnfDayX8r1UYsB8VE/A3VCbUSB63d+zNnwiaC2J+7a
         t/J95v30HYEOYx8QiPJh1pvl71ai8JFHKv8Q625ChIRB2uyBTLop5IfvTKpYn8IPLjqd
         Rc/w==
X-Forwarded-Encrypted: i=1; AJvYcCWmK+0NiaBQhUson6Kel2p21rEgPn2JPFdAkuXFxgVkKE3ndsFgiSFBiEL+pSmRYJusBnhP7cm6hrCGQW+i1ditKQ4+aZY3gvWwJg==
X-Gm-Message-State: AOJu0Yypl4grtK6djO3GPNYrPqUtrsXDYj4R/q/KGcqeSGSTFoJ1F0ws
	86pUzBgrJh34qjA4n2Ho6eZVfXvcMSAtcoFS1jIuMCqtc9VnzfffaYTvd2yJmHuQE/J75rTEtuF
	o5xa7A2wT0XxrmiUEBjls37cchmc/OIFTVTub+g==
X-Google-Smtp-Source: AGHT+IGEpAdekNoCA0IOiJWhAboleUYp0ur74P3WOj1ZFPMOtJEw3FcSNRu7tO+3SXdvsuHb5u48wzuwf2gWrLakSNM=
X-Received: by 2002:a0d:fb87:0:b0:609:fdf7:b443 with SMTP id
 l129-20020a0dfb87000000b00609fdf7b443mr2105842ywf.52.1710845770674; Tue, 19
 Mar 2024 03:56:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-5-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-5-926d7a4ccd80@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 12:55:59 +0200
Message-ID: <CAA8EJpqra0q+iBD+AbM-EZcyT6w0uco0w-cYtUL40f=udwRUPw@mail.gmail.com>
Subject: Re: [PATCH 5/7] arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 19 Mar 2024 at 12:46, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
> provided QMP_PCIE_PHY_AUX_CLK.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

