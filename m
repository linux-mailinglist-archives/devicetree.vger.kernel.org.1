Return-Path: <devicetree+bounces-104541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F3797EAF6
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 13:45:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C2711F21F8B
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 11:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46FE4198A35;
	Mon, 23 Sep 2024 11:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fMnyzQq1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822BB82C60
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 11:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727091931; cv=none; b=DguOTqvvmO9HOa61Kj5ryhGZ0YhNOlmGUwatgHhHbOP9XS44Vu+lPaXiYmUR3eDDMyqAAoPeZ5g6+GdLLxCizB+RmsCFjlSPb6zhEyDxpMy/aG9ccV8UwVExybAGyNkr2T1eOtOJ3+sQT4BfutS0cyKLgTcr60l9VPQome6f1Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727091931; c=relaxed/simple;
	bh=aUq/hEJy5beIUpqN45toKBNilWOEc/UNHjuq4CMJ/GE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sazo92xOn2aO+ZlkKqOh5DIgnnontQzvWMR2bede2ciabrjb93UQVJicTlBI48DYMKzMhnbSKkEqfB6ZSWdLVpmPnDhBiIYJQS2K+SSHt7TTvivTvPZRxNXoK1PglXZVMNHj3hsQsjjUKTEzovxxD0S3BO/zbiJ7Vay67qoeR08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fMnyzQq1; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-537a399e06dso633976e87.1
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 04:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727091928; x=1727696728; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JMwbFcxKHdbftumcznblxJfBpPC8ptWVXFa2dH4Buk8=;
        b=fMnyzQq1FvctjaTPFMBllLNAHST34nrti32OW+lndfosdVi+yw2ZugfuzicphetgEu
         f0Cd3nVFVrFYWL12wrfFcJHG6HRquWCGMLD0uTZo27NtWBzG/5mFGhmpn/ukP6y3v5LZ
         ujJRfO8FaueAmPbruWzWXuTnOU5K2UNsiAG/sRaUdq5tuiUc+qDPcvTcTlwJ/hWUe6cc
         NWJkFnlWsAaO+Ae7Sb98XjwFFOYRmS6BzmwAcjPlplBpwdFtnxN/BHX0pOc7KvxhRcAu
         VBGPKuiavqUX6PTzCD4M5+GMaRJohs8xq6yByR6foCvoVV3lc1K6aV8a9vmtzffh/2lS
         2P0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727091928; x=1727696728;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JMwbFcxKHdbftumcznblxJfBpPC8ptWVXFa2dH4Buk8=;
        b=Md+xav1TF9fK8JU5/jZAQpbqDVGydgYYxEzNT4MePZ7npH5pGStVNRft5zfc9shvCU
         6Bx0wlL2YeilI6tG/I32GNzBlY+59Q9Ey307815DAwN8Qc8n+vPGCZZ4dlSFS4wVK12y
         bmikQZuIQ1PUbVGldLwSkLWWPNiz5ewQLXPZF6aqMMdHm3TV7fIKTECisH83ddpUidv/
         /q4dNdFAyweZ9rAiNBiG1/MchN7jeuhqXPmXUw6FgvS4xPuSxrw2P9ifmvlFT7ealJkH
         krANqmS7nR+WRObWbIUZy5yk4GvQRMqCuanEcMH353XXz/YFm7TGz7YrLoBpou8jXIkD
         ayWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHITmAGIQd8E568Gymom5773MsXjx91vHo2r5mGIul1Cjk0Bk+AbvwYA24GRDe+Lp78gRwWEyuVaJB@vger.kernel.org
X-Gm-Message-State: AOJu0YyxDW5ukc9j0H9ItZDbJsekQ5wYSYjjh8h7EqgwbNgsi6Yb4mZd
	zKoKe7ClcZDht8GvOCQGqxGd659to+XlgcFjjYYRVrmmLHdWVH+UplHkjdXjk/0=
X-Google-Smtp-Source: AGHT+IFCh2GD/YYaddP7TMIDd36YLwXyayl1/jc49hpm9pk1zAYcHwo3MqpSbCp+ZxyRhnbKUPJIcw==
X-Received: by 2002:a05:6512:3b27:b0:52e:9b68:d2d4 with SMTP id 2adb3069b0e04-536ac33b18emr4731956e87.56.1727091927618;
        Mon, 23 Sep 2024 04:45:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536a6959582sm1674291e87.22.2024.09.23.04.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 04:45:27 -0700 (PDT)
Date: Mon, 23 Sep 2024 14:45:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org, 
	andersson@kernel.org, simona@ffwll.ch, abel.vesa@linaro.org, robdclark@gmail.com, 
	quic_abhinavk@quicinc.com, sean@poorly.run, marijn.suijten@somainline.org, 
	airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, quic_khsieh@quicinc.com, konrad.dybcio@linaro.org, 
	quic_parellan@quicinc.com, quic_bjorande@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com
Subject: Re: [PATCH v3 3/5] phy: qcom: edp: Add support for eDP PHY on SA8775P
Message-ID: <mrx2flabzgzsfyenqowgslb5654wcai6q3oclkc2i3em3iqusr@ed3af2qdx7vb>
References: <20240923113150.24711-1-quic_mukhopad@quicinc.com>
 <20240923113150.24711-4-quic_mukhopad@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240923113150.24711-4-quic_mukhopad@quicinc.com>

On Mon, Sep 23, 2024 at 05:01:48PM GMT, Soutrik Mukhopadhyay wrote:
> Add support for eDP PHY v5 found on the Qualcomm SA8775P platform.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
> v2: Fixed review comments from Dmitry
> 	- Reused edp_swing_hbr_rbr and edp_swing_hbr2_hbr3 for v5.
> 
> v3: No change
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

