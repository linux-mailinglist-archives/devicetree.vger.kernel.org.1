Return-Path: <devicetree+bounces-144262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40548A2D9A8
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 00:23:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3313D1665A5
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 23:23:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C4F21AF0D7;
	Sat,  8 Feb 2025 23:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dLWrlf9L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0BB243391
	for <devicetree@vger.kernel.org>; Sat,  8 Feb 2025 23:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739056992; cv=none; b=gt7XXB/BK/ftpjGaJ+atzE8a4Bh93oi/lVc738rRQBJEEN9WB+fPPNBe8K0Y9kIzIGAEfFDW5TndsMI44wJqNt+Y7ulDjFlS473ErkgEUS9WeLtPazdDsvT0ap0vheXoNlxgQwF8ewyHaaN57sVBVNjMY4S6duOFKvnGxGBzyco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739056992; c=relaxed/simple;
	bh=PLIDnn6usldfw2RsFfecIxrGar99FFVUikArP3YZaB0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q0glXcEkapF7NmgcJ97IIN0pq5J1Jy3NThRC/8MBGEV3uUyYspIRCMSkv8yfzscCSrqK4xrSdp4/q97veJwWeOj47QreZsy/h+ap0UAebWuSKkjrKga7nW8pFGUr8VewcChpCOtmaLLsGdmTMnjhOLOSDa/m58b1PHbh+hTPddA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dLWrlf9L; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-544ff74be6eso1249164e87.0
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 15:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739056987; x=1739661787; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ykULb9cEiyiSRjZuTpehkeQRCkbvvsFyEn2UQm5iuoU=;
        b=dLWrlf9L1hapsR/1s3qGIvbFzn4oC3YtDwu6JRxxFoCShgjyghBlaRf1zh1dnyyCi8
         1nUdut8ebY7q0JreqanLP2l1PDUgeVkpqfd3qNTYcr/tg8TStYhfKAI1snD7mwyk+jnb
         jhTpU0QYImElTigR7GvdEfcC6eTuSyPPPTkhDzO2INI4tStktGdz7glxteO0Ml0f0SLI
         5sbO2bca5GNYKqucDAOWFGIp4lYgZ/92K8zOHdieWJX2aZ7qwwwJWuRrAv0zd2VYyjZQ
         dM9y3gJhnCbkT5kVx7FTupxtcZK9EUal84A7xwpDig3Y2UhLJsBX6ruvgThHOE/zYM5O
         fBUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739056987; x=1739661787;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ykULb9cEiyiSRjZuTpehkeQRCkbvvsFyEn2UQm5iuoU=;
        b=UgskPjAQcIGvnVexYbGmznxKPnpLULFGK7ttP8o8MQwoQts1cBU+1BXQF/56DYPBIX
         b3FaKTKQS6Ohu0aZDPvc2/EPgJnfSll8cNb41nuRBcB4LvhJI2i8Fm+Uha1Lxi0iXQ+t
         nu487/K3AbdL9S86voCxrUL01O4dTp9qsAG8AlOztM52R/Xeewt64v6hSxVL2K2ZnIe7
         irUNA9aYM6JiJg2XghAt6p8NFYY8sBMnWRPEXwWSKhqWefJTj98QlO0ibUVYEPTJF3jx
         goSsOE9vSxf023fEU7/fPiD/H9Clu2+cCMd4cgHRnFkdqArnSopGtxaT0VCKTl57TKDE
         +F2g==
X-Forwarded-Encrypted: i=1; AJvYcCXKgbggUi+Pd7Ug1IcMsuCdcQI4yTmvfbpgmDJDiL+gsYdOAj8yJrCYCkpvdy0IhlDiOLfAG7nVkv1b@vger.kernel.org
X-Gm-Message-State: AOJu0YyA18L7sG5ie10psBE01XxNbjX0tpobydOY733hKxKK3BnIQlyZ
	6wK4gFMqEszFhk7UlzX6q2MI3GoVE1vsLIHCUrrPNown7zkgSrdEM81RjQE7Yhc=
X-Gm-Gg: ASbGncvTrmfk1ghTkke5wAn6NY76v+/Fim2GX5oxeco8EBSOeFrieunxKzSND2EEJHP
	4dF59sTPru4XnLAQpDZuyhk7en3kur6fInxzzRaw+grbDX5ZLP5GtRq81lyuU6H5MBNfCxrLl3Z
	MQXnul+SbLF43WWW868frpMngMv6Q0tSajSDXmHibWGUMmIaASJ4B9rkeiLLtuuIquox6y7sk7d
	45zpW8+Rkm+SWkhmmleM3Z6HgX6mMyjX3k+uoEcMi0vMTvZY993mSxj0lpeHDBBaEI/UcGAp/4W
	vWtIR9rGDNyU1jleAmb5of1z61XBLfCKRX74jAMpaIHPlv3Y9oaMQ9DfWg+Vb2c4aWu3Omc=
X-Google-Smtp-Source: AGHT+IF/JBvJkuagJqa26itTPE8jU8/kvFQIMKuDm05aOsyGHWAPDELu87GWmNGqjraF7sL+Cp5yWg==
X-Received: by 2002:a05:6512:3a85:b0:53d:e3a6:ae8b with SMTP id 2adb3069b0e04-54414aa80f7mr2528489e87.26.1739056987259;
        Sat, 08 Feb 2025 15:23:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-544105f2f31sm832127e87.165.2025.02.08.15.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 15:23:05 -0800 (PST)
Date: Sun, 9 Feb 2025 01:23:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vikram Sharma <quic_vikramsa@quicinc.com>
Cc: rfoss@kernel.org, todor.too@gmail.com, bryan.odonoghue@linaro.org, 
	mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl, 
	cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v14 0/2] media: qcom: camss: Add sc7280 support
Message-ID: <dv6ccohw33gnc42fhjmxaofg5lyip6jked2u26rwkxykcwt6sx@vlgjyjkn7wva>
References: <20250208225143.2868279-1-quic_vikramsa@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250208225143.2868279-1-quic_vikramsa@quicinc.com>

On Sun, Feb 09, 2025 at 04:21:41AM +0530, Vikram Sharma wrote:
> SC7280 is a Qualcomm SoC. This series adds support to bring up the CSIPHY,
> CSID, VFE/RDI interfaces in SC7280.
> 
> SC7280 provides
> - 3 x VFE, 3 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE
> - 3 x CSID
> - 2 x CSID Lite
> - 5 x CSI PHY
> 
> We have tested this on qcs6490-rb3gen2-vision-mezzanine board having IMX577
> sensor.
> 
> Used following tools for the sanity check of these changes.
> 
> - make CHECK_DTBS=y W=1 DT_SCHEMA_FILES=media/qcom,sc7280-camss.yaml
> qcom/qcs6490-rb3gen2-vision-mezzanine.dtb
> - make DT_CHECKER_FLAGS=-m W=1
> DT_SCHEMA_FILES=media/qcom,sc7280-camss.yaml dt_binding_check
> - make -j32 W=1
> - ./scripts/checkpatch.pl
>  
> Changes in V14:
> - Updated commit text for [PATCH v13 2/2] - Dmitry
> - Removed duplicate Reviewed-by tag for [PATCH v13 1/2] - Dmitry
> - Link to v13:
>   https://lore.kernel.org/linux-arm-msm/20250208165232.2371889-1-quic_vikramsa@quicinc.com/

For the series:

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

