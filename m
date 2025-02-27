Return-Path: <devicetree+bounces-152134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BF00FA48274
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 16:07:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 298CC1888989
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 15:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69C2725F960;
	Thu, 27 Feb 2025 15:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XkNV8E44"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8809F25F7AE
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 15:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740668411; cv=none; b=tBlD4SjJztdz3wf90QyhPs3PUhAcj+d9vMb8KaP5DGAFMn1JZMf+oPe930/BG1GAuYEBOnXfyiArDmwT38gHrykJG0bbtkqdjyL+u+vFZvRKig3T3XJpyGQB7dsE1koYspIHh5Snrvdu6Fz/6ykw0zW+vQ+JkAG8MYE5eEmrbos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740668411; c=relaxed/simple;
	bh=1udrqKC1/+GEKiLZEz1K9OnQVpo4M0STOjNoCVi1WDk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DNriBEHKT/uqezvHNy+iHqC0hc79xtuH33bDAjxcJilBF3ScCZ+FmkBEaCFKrGECHQaoBp4ElNLgVGipe4Lw3EYrcZC/zivBCIJpNldKTHk4h5CaIHU6X87hW5vjAoc0O9D+5bWEcsgGbsZXis4ybITU7glGqxrapw3hPRJfsPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XkNV8E44; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-543e4bbcd86so1062339e87.1
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 07:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740668408; x=1741273208; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Lf0guquy2kJmRTRFoq5f3uQIwNfA74nT4112GGyUx8g=;
        b=XkNV8E44l5P3sUM0FR8kTv1XZNpSZAOKs5jZQLUrSkGzDiMxApZmZW9k7b6cQAI7DB
         rnFvQKbH1pQP8MyhXjR7mgmvr7WxSG5T2zaw6mCeW2RRLGFWndi0sxGgcVW4U//qvwQu
         CO239rSyOZnvQpT2c6BMo++70KL3Ht1678A+1fFtv/kteqF8AbrOn663H0ouCcfSsBX1
         vSmGHf2yzAkPDM/NXpGYDYKbR5k3lDxGisOPnTTYuQWEJEpdfAanmQWIscEM/AfFBXqf
         qrlmPFy5qji/35h+PEUy26DCykR9TUYbbb8WV+eKL7oe/+ZNGYtwA2qpB3hcg9rOyZ0C
         I8oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740668408; x=1741273208;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lf0guquy2kJmRTRFoq5f3uQIwNfA74nT4112GGyUx8g=;
        b=uSJ/cGmRRK/FVS+iHe3M+HqbcP9tNZd8Jj2FOPc2lb8SKdOyXS9dh6XMhxr78cQxql
         vfvAeee7PjnbrZJnUvM3c7fatHEXSd40YeBZT6RauCmtFsWa6CtYJheEzmvp+6ZUcn94
         kHEQPstiyaUE/xxsX6MpOqYRjgqAPeKwHG1oMDcCmfFJ3s9Pb54+X6Iys/7BgmeXL66L
         eqIi9qvwUrxIIRHOKV06xCJUFDu6nLpdDnF781v2Q6gfkddnV8fGhOKptDF+Tbyvji8O
         wzY/wRZ6RfisaA2HesIiNI3VxZ0+Ie6L5oUuB/eeZA+5TRhR5XDriztmgJO3DjPPtgfa
         jcYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVY27WWqMZT+BqvbAvtPV3KVuPJlAxkwjf8S7e79GwFAA66yNxdqscjvWFC4EhT16EyF+jnjWzSMbrH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+rj+nqZtP03s8jcJFZcsmze0LSLEK02y3MgnAedkYzxjMO7Ip
	yXeed7MtpwoKX0Iaeaonxvkw54dQJ15+hoBLIyAHfyWUJ69BNZBitJbdDqSTPbo=
X-Gm-Gg: ASbGncvdFnhGrbTIWnbhqFM73QG9GXHjD17uhh4kVDmP3RXWQ7KOSlpwTfG8DAOFQvj
	pNAp5xqO6QoK7f/alO0+Qu6KGKNdVLJj005ZYt3lTYtZmRRlX6ex7DPYSCX9Vf/yFIMY7wlkwFr
	AJUlikgKb1CxcrkFHFA5wn4ZXCt8gZFYrvx+T2A4MnUztbEQA7ngHzFFg+GrxsX90o/OdMD7lp1
	kL1j3PMxaq3w/1WNxMGiInRH1p/iOXIJowKborSPVvjew7vu6KgBLBQQ/LvGEmltkBcH7eNA0kU
	JwOjZxJywF5OZgwm95edHl588rEjCf4qlVoZN8k4Sm6k/k1v7EOyS/WkOrdlAmhRx+W6ldyknIs
	KOcDUEw==
X-Google-Smtp-Source: AGHT+IGUjggKBMb1Hh6o8thGEop2TdpTiQXVoGUQDCp92ZepD6hbnLakfFvfDGiSDs39LhULvbKvng==
X-Received: by 2002:a05:6512:1282:b0:545:22ec:8b6c with SMTP id 2adb3069b0e04-5493c5c0f14mr5043742e87.35.1740668407636;
        Thu, 27 Feb 2025 07:00:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549443b1270sm184575e87.149.2025.02.27.07.00.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 07:00:07 -0800 (PST)
Date: Thu, 27 Feb 2025 17:00:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, daniel.lezcano@linaro.org, rafael@kernel.org, amitk@kernel.org, 
	thara.gopinath@gmail.com, robh@kernel.org, krzk+dt@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v8 4/5] thermal: qcom: tsens: Add support for IPQ5018
 tsens
Message-ID: <kctrauhx7xghobtnhz4u26d2i7sv7qda3qmqfwd7ik3vobnofy@whnzokvoq24m>
References: <20250227110423.8418-1-george.moussalem@outlook.com>
 <DS7PR19MB8883FE68B807D651C1AF41C39DCD2@DS7PR19MB8883.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS7PR19MB8883FE68B807D651C1AF41C39DCD2@DS7PR19MB8883.namprd19.prod.outlook.com>

On Thu, Feb 27, 2025 at 02:56:42PM +0400, George Moussalem wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> IPQ5018 has tsens IP V1.0, 5 sensors of which 4 are in use and 1
> interrupt. The IP does not have a RPM, hence use init routine for
> tsens v1.0 without RPM which does not early enable.
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  drivers/thermal/qcom/tsens-v1.c | 14 ++++++++++++++
>  drivers/thermal/qcom/tsens.c    |  3 +++
>  drivers/thermal/qcom/tsens.h    |  3 +++
>  3 files changed, 20 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

