Return-Path: <devicetree+bounces-144086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B564AA2CD91
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:08:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AF78F7A4CE3
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0015419F11B;
	Fri,  7 Feb 2025 20:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ES4u4wzD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0403819DFB4
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738958893; cv=none; b=ASiDAvAflNwHyNT3QiphFIG1MxBNVP35PgEI5u8MvOYrnqoSfGsoGJA4574PqWpAS6BNxjgb+8uJVVsRk5Xb9DBrWlpqziIXohQ9ZwcdTevrupta5TmdyRUhRrS7ITjhbp51vuFjKc9dknVTMsRpBDKmIQ078S7zwVSiw22beoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738958893; c=relaxed/simple;
	bh=MbgpBNIaAwKh0Xwyh/rwjugty583wceU/kSTCQjjAxc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MKzA01oyTLFYZgafltgdV7b6hEyHHJZGd50UKB5K3aqfQyka+wu+rzGqHQnFAiB3GBBOzoQ4knBoSpRtmHT63pRqPsiZv+TZHzURR2OT8aD1vmpYSNuSWS6Wc+/twd4ak3qpJ/pJqjRTNCJjURTAATwxPy+qlz7OKGlhlk2JLKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ES4u4wzD; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5440efe97baso2773167e87.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738958890; x=1739563690; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FYkob5dL+kHvl3z2XknwVDlIEJTWdgOpBDOpHuAAwH4=;
        b=ES4u4wzD3i1AfhAf4zsU3Tgng2eIO+MJWHAmz2vcOs813Rf1QmNu3SjLtvNSRQHCYC
         bMWqLuc4XqB0XovKItI4BfjJuDRlFEJrMp2h8RmVAD49nOnVxb9sW4CxS6OKyGyJtEcz
         YFRyA4X4o3jlTsdnzwRDS+qcUGZuVPXuCzIg8cElMpQfrpwU82o3QUSU5HmAKGpUV9I6
         zqq0y7wx/ddQB3cO3FLEqdLUm1hxGVygu6DIVjRrAsKuL/6EutgD5omBkXABA6ncLcEt
         rNf7oaNB7QM8hOIiAxSw3UzvmynyHXCIP0J6sFCglIlj5FxjSCzRpYHeq7UfF/aY8TFx
         IRLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738958890; x=1739563690;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FYkob5dL+kHvl3z2XknwVDlIEJTWdgOpBDOpHuAAwH4=;
        b=m4io9CYm+1RJJG1E+E32rv1QboWthYuljLhUqzlHC5UtuTX8e/AEt64lhbcTky6hid
         hhLPq5WXeUciEF0Iau85zxYf46lDNqg/U7rF/LPR8hrebQP3DeIoORKn4IUzoj0b/OZH
         A64vJWCQjnfiI42jxYwsGJXkoE4iW6RlGcfZolECy9i1/ZduBFxm6xIzdvx6FBgK7P7O
         KC9LuRoP6GSoxaLtuWVOqtOK1aihtZhPypGruJP3US4yM6LVorcG7f74AS3BSesPLPFg
         Yb/NKZP1jhaEfn+kq9YSv/VIh8xy0N5RUM1nunWkSZbmxgKPCTiL7UUtJR54nGyF+xwZ
         EZIA==
X-Forwarded-Encrypted: i=1; AJvYcCXkgaiKTNGqdkmz4WS3wODhOc2gQF62HrS+BQVJzeKK0I05s6eAScyyny2xSuSlOhQlp3lzt8jgz4ff@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3+Zp1Fk5VZUBHH8PLUlO0j5IdfEdz8F7FSETsPbGKoRwmYKkQ
	yDRVxF9ii2ILTc1aVbwZjfpvRLsQ8NvYevd5Y1Q/Sa7S279nh/9HDsv/g7wn8ig=
X-Gm-Gg: ASbGnct2lDpc1waJtdfZW/e1qPkK1DBYQOscT33qT/zkiK2AkMsaEIjx9yr+JOl9nyr
	VxcLyKDUI1vBn4j5E4rXCIEElhBvc/AhuVFWF/XXJ4mH9nvZBGPn2jQ2+LjWas/N9Cnm8+HgIY+
	xsa9gRuLWyzggvUd9j/P2Wa4TA/maEwYaLwTyH1RhN0YX9Do8j+zigFVRjBNv4dwoVAlIYCOVBo
	4TMAPUK88bg03jbshx34bD9cJr2wiSk4/XsQLlIeipCuFukxDok/JommFueVD9a+jJBTj4p1h+n
	3jgbBFXSVV57iVsSG2jn6xblR/IyPVFtRInEOCfAUSWY5Nu7AK9B5r/cG2HpKQ+wiflSbnw=
X-Google-Smtp-Source: AGHT+IG7/wH8lvWcq5WTdfj8YtPxXYAdI23+8Xf0vHDGS3N8knZZCrXym+bOiezQMN/DqbfaTNAu4w==
X-Received: by 2002:a05:6512:a8f:b0:544:f77:1fbc with SMTP id 2adb3069b0e04-54414aa811bmr1516524e87.28.1738958890042;
        Fri, 07 Feb 2025 12:08:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5441053ecb6sm546134e87.6.2025.02.07.12.08.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 12:08:08 -0800 (PST)
Date: Fri, 7 Feb 2025 22:08:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vikram Sharma <quic_vikramsa@quicinc.com>
Cc: rfoss@kernel.org, todor.too@gmail.com, bryan.odonoghue@linaro.org, 
	mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	akapatra@quicinc.com, hariramp@quicinc.com, andersson@kernel.org, 
	konradybcio@kernel.org, hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org, 
	catalin.marinas@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH v12 2/2] arm64: dts: qcom:
 qcs6490-rb3gen2-vision-mezzanine: Add vision mezzanine
Message-ID: <slpvv4gvncgnpexu3lc6ujbyvhfne66kmwau3ch7i7sqraogc3@enc2jhll6kid>
References: <20250207090422.1609260-1-quic_vikramsa@quicinc.com>
 <20250207090422.1609260-3-quic_vikramsa@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250207090422.1609260-3-quic_vikramsa@quicinc.com>

On Fri, Feb 07, 2025 at 02:34:22PM +0530, Vikram Sharma wrote:
> The Vision Mezzanine for the RB3 ships with an imx577 camera sensor.

No, RB3 uses a different sensor. RB3 != RB3 Gen2.

> Enable the IMX577 on the vision mezzanine.
> 
> An example media-ctl pipeline for the imx577 is:
> 
> media-ctl --reset
> media-ctl -v -V '"imx577 '17-001a'":0[fmt:SRGGB10/4056x3040 field:none]'
> media-ctl -V '"msm_csiphy3":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_csid0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_vfe0_rdi0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -l '"msm_csiphy3":1->"msm_csid0":0[1]'
> media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
> 
> yavta -B capture-mplane -c -I -n 5 -f SRGGB10P -s 4056x3040 -F /dev/video0
> 

-- 
With best wishes
Dmitry

