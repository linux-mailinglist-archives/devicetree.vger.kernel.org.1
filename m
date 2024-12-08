Return-Path: <devicetree+bounces-128285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E432E9E84DE
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 12:58:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3F9C1884B15
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 11:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BD9F1459F6;
	Sun,  8 Dec 2024 11:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rcPkmu+x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A9514600D
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 11:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733659118; cv=none; b=cdC8ALC1Wrj2mUZWWQzZ74CIxsUemT469CCNOG4AIFD6VF+iKhs2KL49NjS8RbPH9v61gF48rBR2/HmusXicAnYeCyBYbRspfUMrTuV7q9kudqVS4rMaOxGg+JrP7VcBczxOixsrICRcN4ApJl83MPkPsnW5CE8wuDVFC/sVSWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733659118; c=relaxed/simple;
	bh=rnrobeummKXtlx5e1Mp8vjRMRR3hpHjznnrPkWV9jqA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U2JwZGcga9XkDQFPkpeN+XoWsocPBsnnqki/caAXeVqtz0gdl2y2Ngr4xp4k3hIP0/HoQAc0S9S4e/ysNyj1M0IRV7cyMoBsYOcugz5iDTw2iGYfZgmHmGJ8uzYZiTauw4eS9t8OApKLqzkVJv42h4xkHsb/VX29Lc7qvbEkxMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rcPkmu+x; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ffc7a2c5d5so34752631fa.1
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 03:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733659115; x=1734263915; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CysgqJSoA6The5y4gGxS6RuFPaDLlk4I3KIup58ZBcs=;
        b=rcPkmu+x17qESYbWHj6lCGcqLOsCQq8Uo2bgX9yfcZZBLEBMq0EKW/E04qbKko9K93
         oX8uOhL12WPfqJiVGE6In9ZPiWlupNR2rRDCIl0qivzxGvnGMKwwajXFx64t3EKR6z2N
         5X3Ixo0boz42hvSfJV66i4QvAoWT2O27Q46UWrZW8L+rGnHaMjIsdUK9NtoYttHywfHv
         5BakHRX3DdnSKS/V9ByuGNtt8zQNPeEf3Cy1jKLIXpXO12AmVSMQ7eJsl113mnyrMB3E
         YKa2MEc6L51R136ZyLXadps521qwDNOvYn3fTWd5rPorPIbN97aVhrPGfYmFFg4XJE8o
         owsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733659115; x=1734263915;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CysgqJSoA6The5y4gGxS6RuFPaDLlk4I3KIup58ZBcs=;
        b=jA6MEi/hQ1C7A2KV4Ury1R2GgYsZP32LPZyIGf1KBWhoxLyG7huTNKgbFAj6txhl9E
         hY5EtOIVlmocP+dzDA8DjdkXl/IEfvMqMILx213Wz1yZQ+BquOPhSdhhBiosy73wTLEW
         4/Q5Z2N3J1YnF4bgwdkvWVoss/HcnAS3FNrRhCvydH0R45oD1Oc67XnoIwVVSLgV5ToF
         tvlG/UMzfPi1fQND8ii7L8uVOgrGKZdDSsYrNW3tbzUw0Q+8SfozrxUk/jKiQmDfRX83
         l77CIBWNZTjQt2iG0XZ2/mgWt9ZJvgwvkVQAqkoyXVzCSmQ5SiGdytOl7Wp3FKtsf3y1
         m0lQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiFRhInDHFIuoc0cytWAIoQkB7kt+CG19SgH+DLUJ5rxySSHO0aM+SBtkgQslNggvgfGLjSwBowQPI@vger.kernel.org
X-Gm-Message-State: AOJu0YyycQZU6eC9t2vwNQEFUairbmxYR88yGpJu5kiMDzstrEZffCVG
	WqPZUAElxsmYz9KWw2phtz3GXthf4p/XNADGwLdZ2WeDVskY6T59k3j0LDifcYQ=
X-Gm-Gg: ASbGncugNBREVRcQAV0NejNIHOJAwJtk0MIPKWcqzfSd0XQMf01Dggu1+U7oiLbMTIN
	D3yjLUOwSO3TuoHHaKbjnOB0r8zjjlCM1losn1zjMxD726LQpw1W2HeluQj+GIl7LIKK6UPVIVr
	bvlRhwZEDnhbADOiGtFsHWL+GAg/fdDDdQl9d9MdBzcNrkU1m2F7+Swqqx6IjEAfZCg4qfbErYu
	v0AGCE6qPG9zCWbm+GTja7ugT7XV0kOwBc91OkzW7dC+m+9RlJgfkNi7svy6FFSHzTpWRc6Okvo
	deNQNXzZKC4t4r8IxXd/aWk7X+e69w==
X-Google-Smtp-Source: AGHT+IFMxzujaEusISBpEqUr26OQV2IrA+gNY14wgz09Z76uRnfMuKHilK9vldlA5zCo+wLBFIB44w==
X-Received: by 2002:a05:6512:3d07:b0:53e:3a7d:a1df with SMTP id 2adb3069b0e04-53e3a7da2cdmr1577018e87.45.1733659115464;
        Sun, 08 Dec 2024 03:58:35 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e94f77f3fsm424275e87.217.2024.12.08.03.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 03:58:35 -0800 (PST)
Date: Sun, 8 Dec 2024 13:58:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Stephen Boyd <swboyd@chromium.org>, 
	Chandan Uddaraju <chandanu@codeaurora.org>, Guenter Roeck <groeck@chromium.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vara Reddy <quic_varar@quicinc.com>, Rob Clark <robdclark@chromium.org>, 
	Tanmay Shah <tanmay@codeaurora.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 42/45] drm/msm/dp: mark ST_DISCONNECTED only if all
 streams are disabled
Message-ID: <blxp4p56inbzlwmnsj2mw3pllioemgwmyxmu6eqo2oicl5dbth@exdch2z3kk6a>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-42-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-42-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:32:13PM -0800, Abhinav Kumar wrote:
> HPD state machine assumes only one active stream. Fix it to account
> for both while marking the state of the hpd as disconnected.
> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

