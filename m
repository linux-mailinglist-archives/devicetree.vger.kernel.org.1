Return-Path: <devicetree+bounces-149038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB48A3E05B
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 17:21:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBCFE189B785
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 16:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A6B22080CE;
	Thu, 20 Feb 2025 16:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AM+bYgeN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E1D200BA8
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 16:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740068358; cv=none; b=eymPFkgGTHc5+GoS42GegTjewgDeyuSGX8M7pdfMrCwqm+6TZb+h4xqBYDzfBi3UGrXGwUZ0fye7gJMS6wjyYEBP79MB1ea4PpQ08vq5jNV1kdbPD7PfIxF9YgGhWIopZ8KoqJBkuerOxSjsW7Wg/nkXPA3wrFKz8VG8rileElo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740068358; c=relaxed/simple;
	bh=/B922pkbs/U6oOvx+Im8KE0wQFfockKMJbcW42nwAlc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a18A03IXcj/rth//7jHFIB+Fv/MOu8ujbzdeJgxX+PNweqFsyZxlzBUDInANLkNBdjR4RNSCXScCYK6sFmFUb/93q4b20hXzFzyOTT7rZNfvbd0DwaH4DbQ7c0qSODtcmP5VqEnJ0bHnMMp2vMZdOWhTFsreu4zN+1rxyxbfwvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AM+bYgeN; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-547bcef2f96so532983e87.1
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 08:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740068355; x=1740673155; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FbLGtpaYb7GP8BUC9A3SVhEyUFy/pRikzTZLrMMHtrI=;
        b=AM+bYgeN4SwhHPFPi0pcnUOuqkooYXpe4KyS4TKkc2Y9wtMNfQsmedAey1C9a1rkPv
         5Aq+D7N8zYCLLUMIl53fuzp44OYcZ05TrkIVBGqt+DdaSW9UiwmiOlbOiiMfMn1PfQ1P
         yiG3X6vumX52Oqvzcx3TlCYnCLL7rRokCRMU77NrgKRvHtWoNyja6AA9TBgdZsDmRABD
         nw2K+v/jq+ygCkvd9FlcvbxQ97S4JCy0nGUNL2THdm22syx3IcdX1aG2+9uWKOZbyHOi
         +Bs9+Ygt3oHe4xuu+3tF3+Owq9j4S7RpC2yfV2nh/dYlmBlLAqNqSu6R7Js1/EFeqTMh
         VAdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740068355; x=1740673155;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FbLGtpaYb7GP8BUC9A3SVhEyUFy/pRikzTZLrMMHtrI=;
        b=lAdSpQjOXwxLlQWNRY510fvrwFzYSmad5vrtmvLg/sufpEAxTOs1QUvPnz18boV9xO
         aX48fuI33operadVNB/TJaXFsSyX2khWnpSt7D3u9UK+d8E11oY4LY3vN8KSmYkikjWD
         oCSkIvULti78Yx5UAE7+9SiNMdp3tJUZ8rOtcK6PRFTOO65saZnQFm8pkwnAkVZFoJ9g
         01A8gMSjBJ5dSyEZOUoWFBoNUJP35tFVrtcPFHUU5aj2jQDEE/S12qduDO42FoN5GAKn
         Zqt2WWVXexk0BoVlzAPSC9aLLadtIbF9+ksKmrNyw5LgBzFq6qof/b8bUQhGFID9Nw+n
         +UKg==
X-Forwarded-Encrypted: i=1; AJvYcCUOPPNjVUvUP//GRO/FWzKiwg2M+kiqRivM0uLEAZ9LwHKbEtGR/AOQxyt0SDBKyzoSENFiBuRVl0NF@vger.kernel.org
X-Gm-Message-State: AOJu0YzxMtX0p86ZxYge5ZIPLWmbUhHlCPSd9nfYjqbuEsmIOFVrLQ6s
	I00yZKOqEUNSztvKB7I05P0Y5IxGvlavljFRIQI3DWlHbC41KVbadX1f2Du1TYk=
X-Gm-Gg: ASbGncv2geL5iTZJT4iX8zbENwqR3xQWR8wDrLwCEOqpRm8OwQfZIfYaPP7jxykH8Aq
	4nzseY+zQ2SQ46jO+huqhS8KO8tH4IAicHjR09nt9hQNEyiNEts0N/320H1leKrHPXPqcMqmJBh
	rao9b4i/UC35zguXpGxPOfjOBMrR9YvCXPIAcqVbgQslljVDKYWjLh1gFbJTwngqerfmLxIFf4a
	OnSL8iMg9TezUE4y0bHWaSa3jYaDpLvB9fQo6COCN5RqMgFVcO6d7fHm6ohCnqd7sjkN7sK/tYN
	FIqqtnxVHodJo8avscTT7uVMDgXG8mOT0CbFDkGroHJpd93RD0iC3FUFfCAc2V8GeU37ibY=
X-Google-Smtp-Source: AGHT+IGXy8UPjP+6V4rWOhniIYo8XO01HbjN5gyUL77WHLsu40hdggfhlw5BeDY+CUVIKw0g6aq+Vw==
X-Received: by 2002:a05:6512:128b:b0:545:60b:f38b with SMTP id 2adb3069b0e04-54723e04635mr1484163e87.8.1740068354786;
        Thu, 20 Feb 2025 08:19:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5461d1d8fcbsm1473583e87.83.2025.02.20.08.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 08:19:13 -0800 (PST)
Date: Thu, 20 Feb 2025 18:19:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sm8750-mtp: Enable CDSP and
 mention MPSS
Message-ID: <dihnqsdjqxq7uhomceeiejey7dezfyvhpnyc3zyzhyuyfdjtec@d4ruo5xbxid3>
References: <20250220-b4-sm8750-cdsp-v2-0-a70dd2d04419@linaro.org>
 <20250220-b4-sm8750-cdsp-v2-3-a70dd2d04419@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220-b4-sm8750-cdsp-v2-3-a70dd2d04419@linaro.org>

On Thu, Feb 20, 2025 at 04:44:13PM +0100, Krzysztof Kozlowski wrote:
> Enable the CDSP on MPT8750 board and add firmware for the modem, however
> keep it as failed because modem crashes after booting for unknown
> reasons.

So the modem crashes on MTP, but does not on QRD?

> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index 8eeed7f2f7766326cfc7830002768087e9783b9b..72f081a890dfe49bfbee5e91b9e51da53b9d8baf 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -791,6 +791,21 @@ &remoteproc_adsp {
>  	status = "okay";
>  };
>  
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/sm8750/cdsp.mbn",
> +			"qcom/sm8750/cdsp_dtb.mbn";
> +
> +	status = "okay";
> +};
> +
> +&remoteproc_mpss {
> +	firmware-name = "qcom/sm8750/modem.mbn",
> +			"qcom/sm8750/modem_dtb.mbn";
> +
> +	/* Modem crashes after some time with "DOG detects stalled initialization" */
> +	status = "fail";
> +};
> +
>  &tlmm {
>  	/* reserved for secure world */
>  	gpio-reserved-ranges = <36 4>, <74 1>;
> 
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

