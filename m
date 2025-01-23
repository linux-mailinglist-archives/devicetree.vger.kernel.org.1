Return-Path: <devicetree+bounces-140520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1AAA1A1F0
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:35:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45C5916CE2D
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 10:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11C2A20D4F4;
	Thu, 23 Jan 2025 10:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MgfeuTP0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3190820127F
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 10:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737628509; cv=none; b=Ugp/iaoEr4LqXEtVNrrkYq8cqqfXM+wRpFrtJnKz080BVE6n22SBKbtvXnVh7iFv55Ah8/JlZyo9ZlkaAgPOqdnjY+qASF/kDmgShUTsIocChUfIClbpIhz9AOmp4atnWYKUpoBqc3UvgGncQ3dIcJkWQZ8UOrveTJNnuJeHEuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737628509; c=relaxed/simple;
	bh=iLB+JjUpCoXmMA12EBfv2ZbZt8yDWQew4pPxupt6HAk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aW+iEuOMxCtI/6cEMyx/SnWlc6jQ36abSnaHSuzr2Ze73C4O9Iid5/+hOwPU75M/MlMZMGopSyygttcdk8AWtpVPDeI+TfGBUo38tA7Pg/q3JcUACIkac+vzlwB9MBsMDxIq6miOUBXE+WJFrkNE58Qu9JqtnBeZWx+f5q7TRiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MgfeuTP0; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-30613802a6bso7376751fa.1
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 02:35:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737628505; x=1738233305; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=huyGMJi7HRKKQwc/ojDBQ9hmjZBlwNzUQYmYCGXuwpM=;
        b=MgfeuTP0PZm8FXwZsrRI5mITnrQR3i46OANVz2TV8KRTNpj5HbmG9XcF7VGpRHvs+r
         sL+r5PXticulGsaoK+rmojk8Y5fI/Zb8aubYyBsD2czDmP3kZqUKj6tpw2ClOcl6AIAR
         KOYZtn0Ik2kTlknvSksRBnTYaKxknfyVq9qIDg6li6Ar6ioS6kS6ohUhW5euXTV3+/iB
         2rY4vVNMh29bU15nJEzzTuJ7HFQb7Pnlu+vfZdeqds0lQKS7nhaCMGg2tpH/ig/9n+6V
         uZ8tU6T2SlmlgiidRDzza2KmRjaCM6S9MsQ1t1KmMaa2UNJPBy1CIkqeRAg+up3bGMZG
         ekWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737628505; x=1738233305;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=huyGMJi7HRKKQwc/ojDBQ9hmjZBlwNzUQYmYCGXuwpM=;
        b=nJFOibaIb8A+ARErBGeDaOblkzCFVSEuHpBQnf+0Vh0bFvNsmnrvMJTr1dkOjEhbEI
         h9C7q3rAXnyC6SZuM91wrKhxbVfFnisjyv5Tisnvd9sn6SDhqFA8pbkEqnEEe0v38gDB
         ehBPVAcP8ttsBTMk0hXcd+dWXa4Xlp+gQvcPlRJIaBusfYjiNP0Yf76SlnhJWYWAofMe
         2fEXtsSD7XLIBCdo0PDEYYlr0he4FLqzhlkhExUnhCJNhVzcQShnzRottUIZG6sfhsLj
         MxIaayGWJC4PUNGSbgjhCANgp+9sie8Gc41RQ3X3gMJ+TpqZLGM7dxlgZG9bOULW7cx3
         qFIw==
X-Forwarded-Encrypted: i=1; AJvYcCUpwpJsLltj8vjlY8z4uk2sst2DlTuHivRge1FchTDXtSKsZRp75F9N11rQLwfl02ud61rS2h4NiB4V@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyil4AF5Syf4OAVHpNEU0A3RwLqffZCOnYedMq5WzukGx5W1He
	gmZB8Bz7WO5cc07Xyt7o5S+7ojUsMUUdGuxQDwnpQUfnAcPOq0feim5IA/C7tVA=
X-Gm-Gg: ASbGnctDkkQJBWwjviWIu+oSP4rft1pCMF1yAq9X8O2MYBHn5jEx7gtwhYucGC1+mEW
	1plMjk+7ST01XzorBnc/MdoR/wdpPUP6eiBpOZ64GXSYVruxyhV6jPUrcOxmOD8eysfvTdGkHf1
	j7QKGV3/Oh6/DoNqoTL92xG9X8De0zdctRIVG2m3rzn82TDSTbUZYHZBYBgDfKSyHS61LbDqMke
	37MxsP/3FtmdVsj+omgKEf1XY+K7o8tnj4XwuDM4l2VGhI397mXYlSEIPwFTF6eePt50jkgHPdn
	XUgWEgcu6QPw1thSOEGniq5VQ+J8OBLjoVdiDKWh90Lg49FQkVPZ1l8WenOi
X-Google-Smtp-Source: AGHT+IEuIhZkNKWgXQ784d7amahcajkPqBrbTp4XI+gydjdtQJO8vLS4XEpwquC9SMwWHIjpxdB+hw==
X-Received: by 2002:a05:651c:317:b0:300:5c57:526b with SMTP id 38308e7fff4ca-3072ca89820mr72119061fa.11.1737628505277;
        Thu, 23 Jan 2025 02:35:05 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3072a330cdcsm30224001fa.11.2025.01.23.02.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 02:35:04 -0800 (PST)
Date: Thu, 23 Jan 2025 12:35:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_kuiw@quicinc.com, 
	quic_ekangupt@quicinc.com, quic_kartsana@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	stable@kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sa8775p: Remove extra entries
 from the iommus property
Message-ID: <we4flrm2kxfvc535ykkmvmfg4f7zkhbu44u7ipjmnc3lvlivrx@smvfuclrm75j>
References: <cover.1737615222.git.quic_lxu5@quicinc.com>
 <71aae0827ded718016c91e3d2b6445f0a0530041.1737615222.git.quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <71aae0827ded718016c91e3d2b6445f0a0530041.1737615222.git.quic_lxu5@quicinc.com>

On Thu, Jan 23, 2025 at 02:49:27PM +0530, Ling Xu wrote:
> There are some items come out to be same value if we do SID & ~MASK.
> Remove extra entries from the iommus property for sa8775p to simplify.
> 
> Fixes: f7b01bfb4b47 ("arm64: qcom: sa8775p: Add ADSP and CDSP0 fastrpc nodes")
> Cc: stable@kernel.org
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 240 +++-----------------------
>  1 file changed, 24 insertions(+), 216 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

