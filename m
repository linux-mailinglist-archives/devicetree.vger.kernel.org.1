Return-Path: <devicetree+bounces-42611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F9D857E1E
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 14:54:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA5191F25B2D
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 13:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C22D12BF17;
	Fri, 16 Feb 2024 13:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HDGLgv9h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0808312BEBB
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 13:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708091675; cv=none; b=I4cBqQvXAQQYXkArK3phx/hN2MfEMu1mtz1p8JoJ3xs3ndj+9zr3avfzSjeQj3YeKy+zXZglkcp3zYLx8eqlscXe/V4FXnOdEWYII6kwjfFbvcBD8+2sxq5/4wcRS3CFX/w4hly+Wg7UilwKYZhCEGHiYJWDqQMxplNGXPMleQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708091675; c=relaxed/simple;
	bh=NhmCUNDgsWt5+ADVtF0uTbpvzwT1bgHvCHWDDbqVurE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q+SIy0nfZQMbgyXm8jT5EwboamUDr+sJZLbyqDFLemCZbVHKaxAtGMf3SIbmw+EwqCg3ZQSTva95PhwbGpqoYdjG3pf41aQc9URiFTpcy97QD9EHxJt1UHMJ2OMfpCI/O3AooJcxXYvkCzvA9orNxNc75wq/HnSTBIbuAbSrOis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HDGLgv9h; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1d911c2103aso13466545ad.0
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 05:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708091673; x=1708696473; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WZ1AXsb/8YISAA45nMnA+ELNn4c9qOzlfcLWF36QQ1Q=;
        b=HDGLgv9h9RMuL5A5VDizsU7+Ezvh0+umtj+FZVTNCpGMXas+R/puAOb7P/GSCI5yfw
         QHdca3v08zziz9k6ss3Le0wUGKC6J30Fg8Fl/4fwXj+FXmpVW2RnjD5Wlj9Tj/uPi2Ip
         VDNFjgRraPHHQJ4Xgb+gMpMixj9rmlUX6orPeg06Ehg+GbNDTa2d3Gbc/gHZUSGY4EiF
         QtqQlpXfjuaklCXddNA0WUuPVyfgBhxvkOjScQYHwBBUMv0pmoR6fYL5mPVmThGKfLQm
         E43DenKim0dmkk69tlrC88vrmbqZKjZvqIJgHmSxLszn5XDHAKXQ9qvTfut4d1vKHtsU
         KvHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708091673; x=1708696473;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WZ1AXsb/8YISAA45nMnA+ELNn4c9qOzlfcLWF36QQ1Q=;
        b=UvdScSIiHAzYb4pfV+zq4jQWxPUuY/wCzaAzxn0tdZ+vCLaWgnCa0xuZ6Kqztrs0qM
         Rx+NaSlul/iC1kol7WfHiT2Bl4ujC7HCwr2o+HRoQ3wublhM/j/bI4LSJ5XwU5hlEuQ8
         Lk2khflWJzwKfRQR8m07K5atqIJKi/bU9djxL3KmqiwzSlR/bFPbxEAb0p+bhaLHNBcn
         ns4qWy1ibxWM74FSqI5LYdcq4gv6EE+eRWJiVubbsKkztpdpnw1Hv935sNPhDu56qB5p
         8x51HORtf30e7n5cdTMvpis2sUDnZh/MKa/yRAH+1/h4/DTQ3XRVIiKvOE6ym5gRCmAt
         j4eg==
X-Forwarded-Encrypted: i=1; AJvYcCV+Tx5x4TabYpWWQ3coLlmcDVusOBeRhRT5sQ4+0wEYgaaHlrPcwEh9g0Uam2X+zffDABIyow3UVDMONd33eRB1IT6WZG12ctsZIQ==
X-Gm-Message-State: AOJu0Yy8I2nUZ2kjbspSAeq08VWa+HSYIBLsFJtTwLzyfqQTfRAWK5EK
	rtb/npRuc5tYiz2v53OF6wFmRIrUmBuk4uuKfP9Eis3fXa2haXUiRixdno+pww==
X-Google-Smtp-Source: AGHT+IG6Br18asjjyc6sQxw6JVym7Z2OCTsKAUJJzmDUZu4MebY4OOdpdvTZcZyMkQSZ2OYVxRzpSw==
X-Received: by 2002:a17:902:f681:b0:1d9:bf07:7e64 with SMTP id l1-20020a170902f68100b001d9bf077e64mr6398835plg.59.1708091673171;
        Fri, 16 Feb 2024 05:54:33 -0800 (PST)
Received: from thinkpad ([120.138.12.48])
        by smtp.gmail.com with ESMTPSA id l12-20020a170903120c00b001db53ace011sm3010714plh.220.2024.02.16.05.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 05:54:32 -0800 (PST)
Date: Fri, 16 Feb 2024 19:24:27 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Nitin Rawat <quic_nitirawa@quicinc.com>,
	Can Guo <quic_cang@quicinc.com>,
	Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-scsi@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/6] arm64: dts: qcom: msm8996: unbreak UFS HCD support
Message-ID: <20240216135427.GJ2559@thinkpad>
References: <20240213-msm8996-fix-ufs-v2-0-650758c26458@linaro.org>
 <20240213-msm8996-fix-ufs-v2-2-650758c26458@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240213-msm8996-fix-ufs-v2-2-650758c26458@linaro.org>

On Tue, Feb 13, 2024 at 01:22:18PM +0200, Dmitry Baryshkov wrote:
> Since the commit b4e13e1ae95e ("scsi: ufs: qcom: Add multiple frequency
> support for MAX_CORE_CLK_1US_CYCLES") the Qualcomm UFS driver uses
> core_clk_unipro values from frequency table to calculate cycles_in_1us.
> The DT file for MSM8996  passed 0 HZ frequencies there, resulting in
> broken UFS support on that platform. Fix the corresponding clock values
> in the frequency table.
> 
> Suggested-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Fixes: 57fc67ef0d35 ("arm64: dts: qcom: msm8996: Add ufs related nodes")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> index f6b6fdc12f44..80d83e01bb4d 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -2077,7 +2077,7 @@ ufshc: ufshc@624000 {
>  				<0 0>,
>  				<0 0>,
>  				<150000000 300000000>,
> -				<0 0>,
> +				<75000000 150000000>,
>  				<0 0>,
>  				<0 0>,
>  				<0 0>,
> 
> -- 
> 2.39.2
> 

-- 
மணிவண்ணன் சதாசிவம்

