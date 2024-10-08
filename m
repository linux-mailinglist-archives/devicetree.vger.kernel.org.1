Return-Path: <devicetree+bounces-109008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF4B9948C9
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 14:17:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9971E286AD5
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 12:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC7E51DE898;
	Tue,  8 Oct 2024 12:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NwONeQnu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFCE1DE4DC
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 12:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728389789; cv=none; b=Q0MPxxBV6yjz6rL/8piO4wIRC3FcfO7snef876Fz/IFigdirZDM7Tw2BiZSh1gS02Wpy6WebY8Y5Gnm5vERGx8AQrFeGfbLfgojFQyrBAzah0+upMdDSUMGV2OzsheGOltJM3jU04p8fgJDqFe/32W4dtYwNjsVvbgqMCt/qbaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728389789; c=relaxed/simple;
	bh=9qdbXPjdWe23w9S7RSdDv46wCwkMvIHtm5Abkl88+L8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Am63Ze6JjA+hCrZVgubRdMWFEdrXR3awnU89/Q7kUvxUcaxcAHo6j3hIYwDlVzAVxUo5w48Hua5Egn34Kh8aqsa/eIowx+gxETDUW7qmSNoDZrS7u1vBhmglZNg+jThsf33thocK99BzNiD7p7wKyZGmh9uzw+owbPCEgK41++4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NwONeQnu; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5398e58ceebso4819399e87.0
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 05:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728389786; x=1728994586; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GV34hA4NMiiVjlE1ywZwQx4q5MVCQoXK1seYtWiTQLM=;
        b=NwONeQnu7JgdVfMZG1i+pIZv7TizsebSrCHcFIqxfx3ONJekEffUzYaz0KpOV2w7bP
         Sb2RVwn1H2puplv+H3kdDN4sgqd82yZHg42hFdg4aI+MZXPijdLKONlLVM0YYKUWdMKz
         K4mqbPZHs2zZothqjlgVjdIIwusFFJMAKtfM1Wh8Oy2o5GcqqZZVKLeIqh7jfB5/bA4a
         xqImGknJx2Eq8XGhmU6aaFnEoANne58fGhNkHp33GNWLg4zxrw/5BCHqwtkIq6AXvH7h
         6FtlgFDGT2Gl4j57wkFmZnPKPhIuDyFdF9+gfb+TP5Vvh5f1RJVOslacnW7MZk6+IDOq
         NgMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728389786; x=1728994586;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GV34hA4NMiiVjlE1ywZwQx4q5MVCQoXK1seYtWiTQLM=;
        b=noe5oQSlfh5s/KeeYZWvbxGDjUdfMKyFY0oLldccnrUKV0A/id5x+4jeYSGEsD/iCd
         Ji5DOIMuFY1b5QOnhj48PqKP2wy/n+vOtPAlGmnsKvB4Nrvv72mx5zVbbQgoFW7MiSZJ
         X6xJGFo2fOK2kTiTdfOZqKFiWu+fxrIRfiMxMOux9zn8NACL+1WfTQNAyJkUFIWPgGZu
         ++OPOt0Cq/0J/2v1Iaal+kPH6vTE/IDXjiAekfS0QGoOjg1loF5AlO3CA4jjMKd/6kFs
         9Nn2f4BSwfmjMZvhuni2z6j6F6+/O8EsM41Cyc/AzrjlNFOQ4QTZhJ0yCSDT59Q1uaBL
         7mpw==
X-Forwarded-Encrypted: i=1; AJvYcCUCff4MkIiHNNaQ8zKDCm+bgmeFBgGO71kjSNlup8IZT/JdcHWIDp+MZ9eqlo6jDsXb/qppyPwC3oX4@vger.kernel.org
X-Gm-Message-State: AOJu0YykAqdgXvCoE99s/NDnMlZ9bIFi4vacaOBtfN4Hg0bvHTeUdMwu
	pxf4aemkRIPW2QSZZluEtc1b2NQPK4zGZk0rHtR509gTMyTgYj2FByPLbIRuoZw=
X-Google-Smtp-Source: AGHT+IFvHDAEsgBpe049F7lJfpgVc4O9jmkr7Fdb6fqdQ4FjOhny5puCZaBdejKa4BjR/s68oO9hGA==
X-Received: by 2002:a05:6512:4019:b0:52e:9425:3cc8 with SMTP id 2adb3069b0e04-539bdaf1abcmr899904e87.19.1728389786257;
        Tue, 08 Oct 2024 05:16:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff23d89sm1182590e87.236.2024.10.08.05.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 05:16:25 -0700 (PDT)
Date: Tue, 8 Oct 2024 15:16:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com, quic_abhinavk@quicinc.com
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p-ride: Enable Display
 Port
Message-ID: <zluuezrywecffsh3f7yzrtvd2sa3nyzl52sk6bluvjch5icvuu@noecozosseko>
References: <20241008112516.17702-1-quic_mukhopad@quicinc.com>
 <20241008112516.17702-3-quic_mukhopad@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241008112516.17702-3-quic_mukhopad@quicinc.com>

On Tue, Oct 08, 2024 at 04:55:16PM GMT, Soutrik Mukhopadhyay wrote:
> Enable DPTX0 and DPTX1 along with their corresponding PHYs for
> sa8775p-ride platform.

What is connected to those DP lanes? If they are routed directly to the
DisplayPort connectors, please add corresponding devices (see
dp-connector).

> 
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 54 ++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> 

-- 
With best wishes
Dmitry

