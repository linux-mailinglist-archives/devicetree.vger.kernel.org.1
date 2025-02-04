Return-Path: <devicetree+bounces-142808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 09715A2691E
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 01:54:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CAF7B1885280
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 00:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B85373451;
	Tue,  4 Feb 2025 00:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="orOXQtII"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BA17083C
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 00:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738630465; cv=none; b=rQN3EvgXs9bk5Y+A055imyifbi0F//Uu4zsGSy1q0s30vOptHc5mVyIqhWqNagtGecTfrzYt0ZABYtBZkQyqNZb9WnKRBJaEME688JTJSsC6uGLQzffhO/HfFWLIa7atg/T1zvKoI8kcJMv0egLJTyyvbWBoUZm41ZMEho7SDTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738630465; c=relaxed/simple;
	bh=nPbR6iXugTkhP3muYc+3Ub+Xk0LkHCzD/XNpZsn6oT0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LTy2jUlHv9h8z18QrO+byyXQ32wtPMKIDYNpIct92KHysmqA1syLcWSj+r6oWs8Y9XguhzZz8rWhpJSvUgFPjzireac0V+e11ERK+sIPzszoSWPLTMoBObogEZykJYm6myyYj6jHGJHRCMRpw/FNP4XvPmE3Pk/7O3HYoTE2GzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=orOXQtII; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54024aa9febso5023990e87.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 16:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738630460; x=1739235260; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R6ZjpLJztPd/z6CugDEiLqKFmhAhr9ILcbNmlBzFygY=;
        b=orOXQtIIUlAaQ/nrdmSATf5ThuBMNmH4YAd/5cGR/gjHjCaodX9velYohGtHMz98YC
         rGVGN8jjzP2ZfEOXgkXPflSc3cetGmzCLkZPlSB6AZKw+ab3K7GjzfsIF6Y7R2IQEILH
         pj6e5A8YLgLtcEvxjjjR89N6UNLc46Kn+vWk8ssIz0s94sNw3/AXyvrnNtEtEYht/S/i
         1wLgd9ZrNNBnm/RRF3UPFUwug2teaGpSvzt6fuIzWdtwLS19Kpf6+JEVakHUU49r6RnK
         FJtBjn5PWFohto5oGyPBvd3/dPX+ySijX/cGHMn8YmiZQFRPOo8r8UdXtf95RySQupQv
         necA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738630460; x=1739235260;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R6ZjpLJztPd/z6CugDEiLqKFmhAhr9ILcbNmlBzFygY=;
        b=ww4v1qcwZTLt7Hz+B0Wolerj8ox1yvFq8u8M+Mn43fym3yAPZwKG7/f69SpQ1cKvtX
         Qf1A8QhLJyK6ZhgCPw8GEnUbVDd8+nBiGDLk+TPiZveEDT2AaT1x4VNFVfaY4usZwDZr
         6mGuwqWfNZau19WAEDvdPjklRpQcieuIrTaM8X0iO6tEVV3iNB4v6Hy4PXmSV7JZDB+L
         II4Ip4hf3Gm9Yu1vwo8aMxEN4tse8ar9K5ZPKVFJ6F3aQiD7m3aDk9G2Yjsw2p2wD3nh
         lTb5sKPN+UV4mfBfPXPvdTTFRFgWtIEhZI5PCTMBhQjKP6nXkqv72hDsTYpkgUzC2NG9
         WIGA==
X-Forwarded-Encrypted: i=1; AJvYcCXFj0fPX+xiqidZnh3dn6/nUk6cNEtzkiw10fjlg7cgZTcrv+/ZiL9gwnOT2IZ1QhJsQIvRBUQbUx1U@vger.kernel.org
X-Gm-Message-State: AOJu0YzHkznzr+j7xCc6vpWMI2j8kWBEmzYJOhB6yG8177kHSfJ41dGj
	RGD7E2sR8kwPLYkiKSjSo25itidrtnSVWnXbasxD58sTBy5QXiBdhcaEErHABESYCE6cMLIHfoI
	r1Kk=
X-Gm-Gg: ASbGnctEB0VCNYUUiy6FaMZZes62wlxGs5jgKGTQ/277ajLoj6+/TaY7IBd2i+Gl0mw
	AFJLsvdERJGc9JUKrUXC6ffLBFCfY+jN6ciUuoASUnEhmYa01BUkz5osGhMZl+Fu6mCS59JVl1z
	ET/g2lPenDHg19KnjGFyz5iEjd3DnIRS5BFgYhxZqZ6IzYkqSIAffhwXYya3Bs0P85mQOuu8P/3
	83Whh3tKRw35Y/3OYB2XiWKIEiBtMGFejhGsxBmTLfV5MgP4Z5stjDHYHZwj7JbSDDZp2fJItTf
	M9CpG2i9+TZ4rhsO6yfxXzD2jX38vBzWG4MzTEliD00RlwXxI5UJYCWCs2jyGQ7ypmww0Sc=
X-Google-Smtp-Source: AGHT+IEpldiWweSia7SrDMC4AL51hi5zwa3/J31Z8ScFto8ds9fwqjC4+DaQa3FfHKj/Zkntym0SuA==
X-Received: by 2002:a05:6512:3e0e:b0:542:1137:611a with SMTP id 2adb3069b0e04-543e4beab45mr7511819e87.17.1738630459976;
        Mon, 03 Feb 2025 16:54:19 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebdf0ff7sm1435755e87.8.2025.02.03.16.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 16:54:18 -0800 (PST)
Date: Tue, 4 Feb 2025 02:54:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andersson@kernel.org, konradybcio@kernel.org, robdclark@gmail.com, 
	quic_abhinavk@quicinc.com, sean@poorly.run, marijn.suijten@somainline.org, 
	jonathan@marek.ca, jun.nie@linaro.org, fekz115@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, linux@mainlining.org, 
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 3/4] drm/msm/dsi: Allow all bpc values
Message-ID: <adm72vocbbl5n75eaf7kjosv37xxv42esnosnhshabznmqnsz7@mumtmgopeoxk>
References: <20250203181436.87785-1-danila@jiaxyga.com>
 <20250203181436.87785-4-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250203181436.87785-4-danila@jiaxyga.com>

On Mon, Feb 03, 2025 at 09:14:26PM +0300, Danila Tikhonov wrote:
> From: Eugene Lepshy <fekz115@gmail.com>
> 
> DRM DSC helper has parameters for various bpc values ​​other than 8:
> (8/10/12/14/16).
> 
> Remove this guard.
> 
> Signed-off-by: Eugene Lepshy <fekz115@gmail.com>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  drivers/gpu/drm/msm/dsi/dsi_host.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

