Return-Path: <devicetree+bounces-83624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1234F929520
	for <lists+devicetree@lfdr.de>; Sat,  6 Jul 2024 21:39:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48BD62814E8
	for <lists+devicetree@lfdr.de>; Sat,  6 Jul 2024 19:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20A3A1C698;
	Sat,  6 Jul 2024 19:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xHRX5ROp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6028B1BDDB
	for <devicetree@vger.kernel.org>; Sat,  6 Jul 2024 19:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720294741; cv=none; b=fycn/0eMk3D8TjI/1XfSvSKrxsFvHFftuGEEgD4GbnMYrxLwMJmd7ohG9IsZJHKXkEg4WdjjxhO57na52lKZyrnjolY2CJWllPpGhKJzDAhiNiiS142SJt2DFPLvaMRnC6IQlEGyDRKG+mseNtO3bfJAQmjz8SF/Ykr57VziTdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720294741; c=relaxed/simple;
	bh=OPOWJ/PnTpzgX3IqYod6tuxMqbj4Er6k4H6BmWmpzjU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ocokoT4PvvsvsmHdYPASmJrBa52IHML2qegP3Uj/wnolLGd7mgkADyY+O6McAdGx6pyD5VYEL9lCVbP/TqxnwoRljqS4S+CdemPbnkbBFRUdPgMdZx/wcxFaOHjlKIP84iYU+fTviYzGZNkXqm7YD2NjfQi+oGuxsbzXkmRxPkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xHRX5ROp; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52e9a550e9fso3242872e87.0
        for <devicetree@vger.kernel.org>; Sat, 06 Jul 2024 12:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720294737; x=1720899537; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WatubwyZ/r4ukIgXZJDaq3woxYHO5AHxba4LxGQrhKM=;
        b=xHRX5ROp9GHxugUzeMmr9LoViKBs5YbVMeA3prfFFxML94dONZWrlxv9gcJksjuwdY
         eyPttGcMr7rCZX0fX7NZHs/Zsfn3YF6krGFd9b9U4CUEeTmi3/RC7HxWnBuWNQbGpqpT
         e/ugSYag+c9TWsRQ3lM6ZoDVPrYXpcN0iCXHMVEvqOiXN9FwsUXrISF1pDyft21STiTP
         ompH4vweYfsChCCS7orDeQxCiGABRX5QkuqCi7ST0FSKctHUpwTp/cN1W153CBgpfLWY
         0Os2uIBwyHQ4i4LecVvq1FoGHrWOlbb9KFHNWfMYzrcx7Z9+5d2egNJZPLglubJvtfy6
         4R7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720294737; x=1720899537;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WatubwyZ/r4ukIgXZJDaq3woxYHO5AHxba4LxGQrhKM=;
        b=owdAkINq3rVa+N5pmYFyRpLaeatbvb4OlHtDDOyUvvsggM0F/aV6p0Nc2A9ljddrRR
         Kk9mJD1Zk2NZyD5u9Dub6X2nQ3N6rScvomcd4xyqSjR1A26p+rSfcinXS6ctr+0pjSKi
         ZZ5Z9fW0z15Py7CxL0gLL5SwB6GTiryGX07+cCFCool9TXzQAEfRUbPBaN1KHFZKCxO/
         BDgN3tZ71Kz7n9twrvhyLWhn84Q0GvvpNQCG+RyOKR4DIsLEeziWxDBUSzngODyUxsxn
         U3NOVRB+lfQlGZjf95tOUE7JskGwjs2gmIBcl4Bv/y53L9rXxD7fM8TwEkPZKd4gv8Yk
         60Ew==
X-Forwarded-Encrypted: i=1; AJvYcCXUfAEadKZTbb9ZsCkPDFfsBPWLHDxflHb4tIvz4uZL27eTohUJKKTeNFCpudWFFumg7SZymdqZPfNEuUeHHfCcuFAz28m0sY8DeA==
X-Gm-Message-State: AOJu0Yzu8MntywjAaXjs9vUj2fiktOyP6aTKV66XPQien8GcOHNiDtSK
	ANAaWbxbJOho4JF5LsWnGZHi0qfl/YwWp0827IRHpfKfGBWmz7Wqi4rR6FrEg2c=
X-Google-Smtp-Source: AGHT+IEI75PJF0Zh9sV24P1N6y9M64LfJqDS6iL0646IwVtjJwYBfK5K3X//XTp3KQetTOwRwLOdGg==
X-Received: by 2002:a05:6512:2082:b0:52c:72b4:1b24 with SMTP id 2adb3069b0e04-52ea0de3c2emr2074775e87.12.1720294737361;
        Sat, 06 Jul 2024 12:38:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ea0aaeb16sm803258e87.309.2024.07.06.12.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jul 2024 12:38:56 -0700 (PDT)
Date: Sat, 6 Jul 2024 22:38:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Heidelberg <david@ixit.cz>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: qcom: apq8960: correct memory base
Message-ID: <mbiqysel6o4sedqdugo3rqjcys2bjwgspsixf2g237fkw55kge@lcebbrtnrwc5>
References: <20240706193415.218940-1-david@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240706193415.218940-1-david@ixit.cz>

On Sat, Jul 06, 2024 at 12:34:07PM GMT, David Heidelberg wrote:
> Bootloader will provide the information anyway to the kernel.
> 
> Ref: https://github.com/msm8916-mainline/lk2nd/blob/main/target/msm8960/rules.mk
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

