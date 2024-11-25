Return-Path: <devicetree+bounces-124404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A8C9D8A95
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 17:45:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D790286554
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 16:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AB751B6CE3;
	Mon, 25 Nov 2024 16:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jNiTBHsZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD81D268
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 16:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732553148; cv=none; b=A4hvKvt9+rw4MH0M/pfPtpEgJe7Kn20WIvyh4KZ/YG97jC56QE04gIt21NkkicoIQqhQiwdHLAkXYFLmDWAp1w3Qog/PogW3cTKs0IifClasp5xcMUSF7hP0fPgdRUDiPgKF11wClByyZAf5+uadWAu5h/mHjv4fS7Y9plhBhLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732553148; c=relaxed/simple;
	bh=pntte1+Z8hWk6WRTFB8PfobjrAF8mnuCEH1yqjlijng=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qFr+Q6BHvA1bIK0NjuzhL4INADxgwSsPjbvo6xsPO/7228WbeEOfnRpxs9B6wF4uIHysVs/CNB0pVJ8aCyZufMZe7ISJS2ytgB0hSCE0yXg3XlPBOCvqDbXdsqTcrOwbOQ2eJVeIpkb7lhvN96aAFZx3JYCX/2hr1baIDETjno4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jNiTBHsZ; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53dde4f0f23so1808335e87.3
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 08:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732553144; x=1733157944; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fIAgeAhmCn372flnwJB0OBUFPTeilzavFF36VaP2Itg=;
        b=jNiTBHsZi11Abuz2rbREBYuGJjFunTAO8IigJ9bFMKVIXl+jycz7Dkzs8xvHLr1+VG
         dC4EOmOYOgQ+CGUS6xNhpFU+z2YzvEeuvxT5R1PNlTUm0a+n2KUIHmuHuq8QO1Lfn7z+
         XOuBh4zGrmPcexBLp0m9O/AcKtWkTty7aoPLkxzgK+31XgCzXP09yHjMg+o45nHvZp42
         aEgQUqHDTw+iscjh0IxZiolHqdkqytI0XKEd2rPpCniOKMmYo/XTN/1QvbNkXW0kHuy6
         Ryd87jwcm4KNGsxbtflR1f1C7D7tnliChul1lYYqZBpk6+JPKtlszFU9gQJIyDhDbum5
         nCsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732553144; x=1733157944;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fIAgeAhmCn372flnwJB0OBUFPTeilzavFF36VaP2Itg=;
        b=ESOR0DA0M+A/8gLfQ1DBDU+Y7krpSFcv0V0k+SKk66UmpNPtg4/Wl6vTbdE8w7Fhno
         QTTYsHC7+Fe5BRDqqrKXj4r6tzXoS3pwA//AqTjUhFjsq0HeAqenvMpoFP0jNK+k3JLT
         PlxCDmsuWZhjEJlzU8BS9Waf9Nw25LH4Bvi5Trj1V1xwPA04Octd50kbM7yZb+onwbzH
         S2dxzJl4Z65OdIyg4Io7hHz9YKWjHP++uaADScWnN4lYnAc5Rwu3G+Eib9VRv+BeLuRk
         ehRnH9HRglrS4SuATOKZqJGnssX44tzQuJMtCsQmaYUFLArIwifUOlCv6tduObiP2zeY
         egHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJJZiY8rfexJKQN6WfyIDw7YL3TM3kszhDlAWc9za1O6BtYEVMu7gbWlQQYycSjQOFjNuzaLC5bN5f@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu71OMM8Y6D7M3oknsvp2BoZleFnab3HE4pRd4kyg5GZ23DL4M
	+PslJ3cMbEdJzoifCHZzhW7yA1ReZKbLNTlrT+zDv5vxImod2VG7yzObu8Y9vKU=
X-Gm-Gg: ASbGnctdNhQdWyGDiD35o6M8p75Jq9WxIiNqF36TRhJBkjH32JvAhY043pnRnEfgiJZ
	xvpvZnAH0ge7+SjqS9UNk3UlWau4gwbz4hVlv7OxP6usRj+LoDQTKZNCH8qQDjFDH/Y0BUWTE+W
	+7jmoWoVENeXw+MTuPep1L9oFv3dNp2EpMWmtA021wiz9UTsuqv+5s7RW9RtMvq6BfDFbBM+Z7l
	TAYUWiB2IOxZ6MHccX+Nb0WGVVcdA5rigXAS/dj6LIpHzqSP1hZk4/sgnT8h3jseQQcyQPIfwl3
	WoqjRd0PTf37Jmuw2RHC9Zrsp0BMAg==
X-Google-Smtp-Source: AGHT+IF6AynL9UpDhBawUpEwDkQ2c3G14CtiWofl68FeWiQ6izt6omfKnKNwyR4f3DSsQ0mgBCkCPg==
X-Received: by 2002:a05:6512:ea4:b0:53d:de12:ef26 with SMTP id 2adb3069b0e04-53dde12efbfmr3507612e87.4.1732553143652;
        Mon, 25 Nov 2024 08:45:43 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53ddd09737csm1089610e87.156.2024.11.25.08.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 08:45:42 -0800 (PST)
Date: Mon, 25 Nov 2024 18:45:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xin Liu <quic_liuxin@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@quicinc.com, quic_jiegan@quicinc.com, quic_aiquny@quicinc.com, 
	quic_tingweiz@quicinc.com
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: qcs8300-ride: Add watchdog node
Message-ID: <wty3opxcapeesat2bnai6ntbk4utwxk2hf56w4hymwjxj57ora@6f7f2lwtdcpo>
References: <20241125093503.1162412-1-quic_liuxin@quicinc.com>
 <20241125093503.1162412-4-quic_liuxin@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241125093503.1162412-4-quic_liuxin@quicinc.com>

On Mon, Nov 25, 2024 at 05:35:03PM +0800, Xin Liu wrote:
> Add watchdog clock on the Qualcomm QCS8300 Ride platform.
> 
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index 7eed19a694c3..d4e4c7a8b453 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -265,3 +265,7 @@ &ufs_mem_phy {
>  	vdda-pll-supply = <&vreg_l5a>;
>  	status = "okay";
>  };
> +
> +&watchdog {
> +    clocks = <&sleep_clk>;
> +};

I'd really prefer to have this in the SoC dtsi. It's not a part that can
change between boards.

-- 
With best wishes
Dmitry

