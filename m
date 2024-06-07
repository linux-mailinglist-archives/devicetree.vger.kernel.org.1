Return-Path: <devicetree+bounces-73820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D2496900D70
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 23:20:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 85CE91F22BB0
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 21:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E50C15534D;
	Fri,  7 Jun 2024 21:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pTXtcCcx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CD015531E
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 21:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717795215; cv=none; b=SJDIvDlU81oaqhhSdQJsxoT/Rvfna+B/OBKtx/rKrP+zuaOaEkxuw6QCX2RVIqK/AY6nCxXT6OhYikjUDXFitfUW5WEto2boaGM/Pt5z0F9g+x6FsOJYOs29RHyDHvJ72oiGn1FonT1hybY10IJLyh1WNTtf0RGf1LUZA5LWw1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717795215; c=relaxed/simple;
	bh=aySmzvHUhmiKwaoVSzWZS0odDaTQuh3Nu0YMMxhK4Qs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J7KlnjV0azt1XC4wYDIKXGe7evTNwcqb+ezo/cpfF6esyyResyyKQJvoKkwSsZcW8oSU5IOQ/qYEUiurZyjHjLO+rd0HmO84VN5X/7EqCp1OYMCVvLLGhXiP276CSPHav2s9HYFATDwDeRH1gtBNU22si4L239FiFr69BGSfSfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pTXtcCcx; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52b8b7b8698so3203741e87.1
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 14:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717795211; x=1718400011; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Rwq0AzFMp187j2qLPSR1sd6fcqjrAziPfnu+JxNPz+M=;
        b=pTXtcCcxXJrhEWQD+gIZYQlkiZbvYlUk//nTyrb7kWalv1ZFvhu9ew98326TtbH1gA
         GPHhMR1HgbSyfKLeh2OtXabh+RgKRMESSKzzjW//3BkxtA8y9YLAwegIgT0JPeUq+55e
         550pMymtZEzp+yU0OzkO7w8+aM3fK/KDD5ApQOHiCexGQMNrneXw+S8DwcqEwUIYWTaM
         O5zSXjcKwFlg+8wUsJhlzIqZEPB5JzArcvsQXRgTh7DuJJw5pzFVEYlsZd51K/ByjRtE
         gwPH+J+aZgBEhOxWQXdxU1ONy51lXkY1s1ZxOWQxVU19rRgwrE3iXUNeqMmaRtWfUDUs
         qjNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717795211; x=1718400011;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rwq0AzFMp187j2qLPSR1sd6fcqjrAziPfnu+JxNPz+M=;
        b=uyrq/vAoGBK/8+7Tvu0VrDy3elYZJDG8QNlCORVMikNRLl5yhW/CunS8HUD3T5FIih
         BW71LsEmyX6YBDHBfSvuwmqgQTolH7wsipam3/XhU0H2yejZDaR9lTKQZ/FdzCFGUCzT
         Wpt3c0OafUnK9+Jje50aKVmqPszeod3vNuj8iFbJbkCS7IOAA1L5c5R1DOqLnGXZUyXG
         IPlV5rzE3ngsJA0ddQKLBnUVbkFXHH2V5bO7/Sx4UmHCUHRnGESx7nKm320topTtWAV4
         ltyr6zY6sKrjVjR/QKS4fDdG9krx2Pa+/bOci2DDT3wnedEU0zJxH2JV7iO90/CTT3zy
         Rdig==
X-Forwarded-Encrypted: i=1; AJvYcCWZj7EOZvOluLQ2LiQrbWH0KwZQS0vKa9l47BwunUjaUvDg6ytpr3R516TwhG90R9eqH2StAtSHIBt5H7BD3UqqfGWd4Yc9qNvwKw==
X-Gm-Message-State: AOJu0Ywab0io/j7dzXSaWLE/sNXKPM0CAGaBTviuLlAnK3uawS6NPQDF
	mfhSnH1Em3qmSK1OjrbvicnFLIjwdNe36qCvFTEW/BJVs4liKJhBNH9CJIMO8/M=
X-Google-Smtp-Source: AGHT+IHg41hxBpLHYAYNMwFJftF860pnNCsBHg11W4UZKkkhDoTgKxCKlCyb3fCQH0yW8Eo66fd8DA==
X-Received: by 2002:ac2:48b5:0:b0:52b:c089:4579 with SMTP id 2adb3069b0e04-52bc08945c6mr1446076e87.49.1717795211460;
        Fri, 07 Jun 2024 14:20:11 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52bb41e1a2esm653768e87.44.2024.06.07.14.20.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jun 2024 14:20:11 -0700 (PDT)
Date: Sat, 8 Jun 2024 00:20:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Odelu Kukatla <quic_okukatla@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kees Cook <keescook@chromium.org>, cros-qcom-dts-watchers@chromium.org, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, 
	quic_rlaggysh@quicinc.com, quic_mdtipton@quicinc.com
Subject: Re: [PATCH v5 0/4] Add support for QoS configuration
Message-ID: <bwy4zui54sai36osmcg6sd33xizupzmav54wdvqsl2jcqk2c3v@m4pvefn64pp2>
References: <20240607173927.26321-1-quic_okukatla@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240607173927.26321-1-quic_okukatla@quicinc.com>

On Fri, Jun 07, 2024 at 11:09:23PM +0530, Odelu Kukatla wrote:
> This series adds QoS support for QNOC type device which can be found on
> SC7280 platform. It adds support for programming priority,
> priority forward disable and urgency forwarding. This helps in
> priortizing the traffic originating from different interconnect masters
> at NOC (Network On Chip).
> 
> Changes in v5:
>  - Replaced platform_get_resource() and devm_ioremap_resource() with
>    devm_platform_ioremap_resource() API.
>  - Initialized the qosbox pointer in ICC node using compound literal.
>  - Added conditional check for clock property in dt-bindings to the 
>    providers which need clocks.

Please don't trim changelog from the previous revisions.

> 
> Odelu Kukatla (4):
>   interconnect: qcom: icc-rpmh: Add QoS configuration support
>   interconnect: qcom: sc7280: enable QoS configuration
>   dt-bindings: interconnect: add clock property to enable QOS on SC7280
>   arm64: dts: qcom: sc7280: Add clocks for QOS configuration
> 
>  .../interconnect/qcom,sc7280-rpmh.yaml        |  53 ++++
>  arch/arm64/boot/dts/qcom/sc7280.dtsi          |   3 +
>  drivers/interconnect/qcom/icc-rpmh.c          |  93 ++++++
>  drivers/interconnect/qcom/icc-rpmh.h          |  35 +++
>  drivers/interconnect/qcom/sc7280.c            | 274 ++++++++++++++++++
>  5 files changed, 458 insertions(+)
> 
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

