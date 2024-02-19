Return-Path: <devicetree+bounces-43621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3A385AE5B
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 23:24:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A2FD1F22958
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 22:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D55354FA8;
	Mon, 19 Feb 2024 22:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RvjxIlcb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA2D54BEC
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 22:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708381452; cv=none; b=blVY71jTOep/L70562vBh/oTKQnJycH69ZrjbYZ1ZTWaGYuzxx5GN2Ok2GxgW21EL5muCkzBHXCoYae1mKyVqRmz2xNXF/xzc0nOIIwE6J8ayxY6aofxw/YsisLf9TAcwqg1MR2wJ2cxANhuqlYbaEZMZdC1xhh7FPoQdC1j1sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708381452; c=relaxed/simple;
	bh=v8eeW/Xl6iE0eK3Nh7U4mdIheXn5540a7a9a3m0uDqE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H40qzIY2cxMvLhFzLqiO3ifMt7zqYyjmUkdRHo+9uqtg+VJA6GpnUSHql55T0qQd7yNgTOCvFEsPNV883OEqlzxCEIA4mlMwrknrOi49A75jQrl6xvy3dbRbnzPzYPHXtQMrTYn3vyF0GEEDtRIJb+NGWfwDk5eYY3YHobNOhNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RvjxIlcb; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-dc6d24737d7so4145310276.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 14:24:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708381449; x=1708986249; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OzrnpRRkFvIZstOU4+rXZ++bwzZ4/ZEkkWA4xAuIZiQ=;
        b=RvjxIlcbjvtnvHHz3lOt8NnaxRz5yp+ISytKd/h5gtRzFrxoa+2de0HeyyxJQf/umr
         ziGFvW1wswHPX1aLn9Hs38Zl7Yj/gub+HYDzqGBNay1KS38YMs2bKh6VV6/77lK0CaON
         +Er+u8TSOODVeJoTPcnKb7n/FKoo/LG19esJFivd+/BEHembdMQpHrieLutHhDLcHsGg
         rBxTe8ALMIELmqPWAMKEj0lr5wYXun+Xq+rTk+9nALD6tcmNFdN23uD7fak8YYHx5iid
         rdwzBAbRYSTIJRVR7LmUz/dTOMeJSMiI1iAAaPFLD6Yv3B09ki9ADrwXQ6C3gB0+/JmI
         B8iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708381449; x=1708986249;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OzrnpRRkFvIZstOU4+rXZ++bwzZ4/ZEkkWA4xAuIZiQ=;
        b=J73IiofOHsO78jjI7pFFi8lbdCRSafup8fRhFe/9Y8tk22fR+SOjRkTFU2SOcX9nLa
         cyBmzxAXO1OJiakbQwEzPZ3/E22F2XcrxvJulQtk1t6WKngd4PxvFSpUHHiwePdLhwse
         SJ6IR8LtM4S9vyOtZW9Ke95I0ZeuoHFsv/E3wyzbMAfWhp3RhnPbYCWWnQ+vg04ssMRM
         1P8t0q4adXxthyo1PfXfBMEAu2kPTBe1Y5YlZOKEiZJ+H/gZvlbtTOigUAeTY07sbzVR
         HqFsxqzVK3yFUuU3ZdYgPLnSIFFl3TDGVJY4SlWtMkO74McWfm9CrG1dIUqeSyu99f6d
         6bzg==
X-Forwarded-Encrypted: i=1; AJvYcCWALm5YAtEy4zpqZGTimRscatHsH+cMFXinnZVgHHxGHRobkn7C4AG8ArQjg+1vAEmyNomySOD3MyO+0cndG5a/LbCwPmoc44WWhQ==
X-Gm-Message-State: AOJu0YxCWsKbUXZtBAPeuzLdnVtjrnk80hb92dgxsTdnompiLn/pSlo8
	h7Y0fmMiI8zBDO2FOG6kkAb/S86ywmwEGPgd3IwBGg6pV33eFxAH3GDyetKZb1e2w8S7vaip2Qe
	pxjoJdf2f/FDLm2im4lb19O1aEOerrQ1yIs/B6Q==
X-Google-Smtp-Source: AGHT+IGC2SHUpgIeiRanQrH9qLO1ovUw3m2HxObJFK2it7sg4bghpkXlhep6npR0xO7Xf+MsMOgjnP6VfQwj68oLYTw=
X-Received: by 2002:a25:adc9:0:b0:dcd:63f8:ba32 with SMTP id
 d9-20020a25adc9000000b00dcd63f8ba32mr11579688ybe.65.1708381449555; Mon, 19
 Feb 2024 14:24:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240130-wcn3990-firmware-path-v1-0-826b93202964@linaro.org> <08c312f4-f3d3-4980-b998-b28026b5180f@quicinc.com>
In-Reply-To: <08c312f4-f3d3-4980-b998-b28026b5180f@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 00:23:58 +0200
Message-ID: <CAA8EJprXguHxzYxC2W_HQ8u4MExSWs0o71Lyp6OhpWNYXWw79w@mail.gmail.com>
Subject: Re: [PATCH RFC 0/4] wifi: ath10k: support board-specific firmware overrides
To: Jeff Johnson <quic_jjohnson@quicinc.com>, Kalle Valo <kvalo@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	ath10k@lists.infradead.org, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 12 Feb 2024 at 22:56, Jeff Johnson <quic_jjohnson@quicinc.com> wrote:
>
> On 1/30/2024 8:38 AM, Dmitry Baryshkov wrote:
> > On WCN3990 platforms actual firmware, wlanmdsp.mbn, is sideloaded to the
> > modem DSP via the TQFTPserv. These MBN files are signed by the device
> > vendor, can only be used with the particular SoC or device.
> >
> > Unfortunately different firmware versions come with different features.
> > For example firmware for SDM845 doesn't use single-chan-info-per-channel
> > feature, while firmware for QRB2210 / QRB4210 requires that feature.
> >
> > Allow board DT files to override the subdir of the fw dir used to lookup
> > the firmware-N.bin file decribing corresponding WiFi firmware.
> > For example, adding firmware-name = "qrb4210" property will make the
> > driver look for the firmware-N.bin first in ath10k/WCN3990/hw1.0/qrb4210
> > directory and then fallback to the default ath10k/WCN3990/hw1.0 dir.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> > Dmitry Baryshkov (4):
> >       dt-bindings: net: wireless: ath10k: describe firmware-name property
> >       wifi: ath10k: support board-specific firmware overrides
> >       arm64: dts: qcom: qrb2210-rb1: add firmware-name qualifier to WiFi node
> >       arm64: dts: qcom: qrb4210-rb1: add firmware-name qualifier to WiFi node
> >
> >  .../devicetree/bindings/net/wireless/qcom,ath10k.yaml         |  6 ++++++
> >  arch/arm64/boot/dts/qcom/qrb2210-rb1.dts                      |  1 +
> >  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts                      |  1 +
> >  drivers/net/wireless/ath/ath10k/core.c                        | 11 ++++++++++-
> >  drivers/net/wireless/ath/ath10k/core.h                        |  2 ++
> >  drivers/net/wireless/ath/ath10k/snoc.c                        |  3 +++
> >  6 files changed, 23 insertions(+), 1 deletion(-)
> > ---
> > base-commit: 596764183be8ebb13352b281a442a1f1151c9b06
> > change-id: 20240130-wcn3990-firmware-path-7a05a0cf8107
> >
> > Best regards,
> This series looks OK to me, but would like Kalle to review as well

Kalle, gracious ping. This is my proposal to fix the issue that we
have discussed at some point, wlanmdsp.mbn for sdm845 and for qcm2290
/ sm6115 have different features, resulting in kernel log being
spammed on the RB1 / RB2 boards.

-- 
With best wishes
Dmitry

