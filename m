Return-Path: <devicetree+bounces-126142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 936209E0719
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:31:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 196B3B2C008
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:55:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 916D1205E03;
	Mon,  2 Dec 2024 14:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hb8RGcuY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862EE2040AA
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733150935; cv=none; b=UeyJG5CpNFmgWSiYe5gUYE1M0u1wXfzsLTWXVTAfXMLP5xaaBxZnLKFUwSmM47nZJ8QX45/UgIxNZzMITOjEWOjdRMn9JGXK//KKjYkcOtwDuFQuKtDQacv4L9ULq62IDkiwoYl9csy8Uci9yGLQzgT59y1ClehfySuL2po0bYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733150935; c=relaxed/simple;
	bh=XYknei693eTxY8aq2XA9wDND4yyWPBY7zhkDQopy7l0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OGEh+xk4V6/3Lo/o4nSzjqR6KtL9IXAz3WC3zV3d1jXfw8lx/21vncX6CNknkigClStIgG4tG2a6Yo2/FppAqKePDSrdzOTvPzBHXpgPfTSz451z4EWhfnIweBsJFaLP/C5SmVFsdwpPwweVN6qstVQgXwNWHxxDbpx1l1PzkcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hb8RGcuY; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2156e078563so12869705ad.2
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733150932; x=1733755732; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GpKDAl11fDGEFH2u0shHgW2aMBuMgZUzlcce2vSqOBc=;
        b=hb8RGcuYKhOi7tMJgRYG8tTJ7+Ab1PeCtAzgDmTXJ6D/Y4h3Mst9WscRTg8KST32h+
         omXakHLVSviaq8a0esaR+3lCm1fpoKXI2MVGKUeB5tsZ1X81ryefdMt1bEP7KsVNzl+G
         imr8yt+UmHPkOo4X4TSFccdPnIe/b8gK6+mLjknlrmTKKY8Y/KpjYmuIZul3xn6yTt0l
         xaUB3Z42AI/2FYZTjNy9M8dsxQXl/YA5AAyc9zerb7Q7fOHoE00uDgzPii0SN2L2p622
         JV55ClJOMxlUu9ZU2zDOCaMdlnVXLALXvKENiNyOR6gyeRVecZiBbNCBfgeRdI/qpa+7
         lT+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733150932; x=1733755732;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GpKDAl11fDGEFH2u0shHgW2aMBuMgZUzlcce2vSqOBc=;
        b=Mca5l2zXhCc82DK7y/kok9fLCiULOFySz28Xe3Hsfp8ebBAkRC94ICW9GMhle07lYI
         MlzXOsCNHi0NAP7CHUvWd2ECiO5mYu52RGOq+n4Iykpm6CuxladusxgjrG96j9s3gmWj
         60uhu5wTXB3E9jSAtg8U6+Se0OEg6HvBEgAgwLv8rJwx+LaXS5jYa6oEN613aCjIKSk/
         19XqjI4qqUCuDL+4V4mwXxVsbkzeCzD5ZGR2Fz5a6MDAE8Hbi3S4Pgn+PHgGjl0IkeyS
         dkVVMHaWQ26efpkErizaOuGvEA8bzNXDFWj5j/5tLLBziM4eGLklh5VUsEwgxj3ORvME
         w7Fg==
X-Forwarded-Encrypted: i=1; AJvYcCWbT3g/D+HZ41W7sv6QAavwxPSSldxxv9XMUvbL92orYD++F+IEDOfmhHMfVaHV8yPP4rIz8L875O7R@vger.kernel.org
X-Gm-Message-State: AOJu0YxX/5B17DDCHqCpAoADTqRD1tEpWkAT3vZA0gH9Z1IPf6HZeini
	74017xKEqCIvE2G5Zu6R3B9JaANv68C15mTMjQl2yoPrKhRehhEJFTdQLhZROw==
X-Gm-Gg: ASbGncsiALoz5v7ytM8WUE4V+U2a+H2kGrjSMiHg6Q2grUsS1tTvjV5ezuggQrLNGb7
	rjLuqxNv+fUm0/TVDDSuGK89UweTsJGAc2bKBVE5zFLfS2mX+wtniglKaBSEHZrUUdR/QP8pDXD
	OLZG/RQc49X/xnRpp3evveNEnFncAcg7i3xS+iCjgKkHTOxz89WDYpHQPWo6fzI4wU2EaZmx35U
	LoLkjAbdB30mouDwvKLOJiR5zWRU8hQCPzujWLCGHFzFZUlK13bG7Oib0lyuw==
X-Google-Smtp-Source: AGHT+IEqa+tt8+8vAVIq3UE9y4O1HQ9UBxGGwNoUbUmxwVoafsrUcqpH/ZT38yQrrxK6IssCIyvowg==
X-Received: by 2002:a17:902:f611:b0:215:3fc6:7994 with SMTP id d9443c01a7336-2153fc67ba5mr207835105ad.49.1733150931824;
        Mon, 02 Dec 2024 06:48:51 -0800 (PST)
Received: from thinkpad ([120.60.140.110])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2154704346asm57084655ad.18.2024.12.02.06.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 06:48:51 -0800 (PST)
Date: Mon, 2 Dec 2024 20:18:44 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Xin Liu <quic_liuxin@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	quic_jiegan@quicinc.com, quic_aiquny@quicinc.com,
	quic_tingweiz@quicinc.com, quic_sayalil@quicinc.com,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: qcs615-ride: Enable UFS node
Message-ID: <20241202144844.erqdn5ltsblyhy27@thinkpad>
References: <20241122064428.278752-1-quic_liuxin@quicinc.com>
 <20241122064428.278752-4-quic_liuxin@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241122064428.278752-4-quic_liuxin@quicinc.com>

On Fri, Nov 22, 2024 at 02:44:28PM +0800, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> 
> Enable UFS on the Qualcomm QCS615 Ride platform.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

One question below.

> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index ee6cab3924a6..79634646350b 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -214,6 +214,22 @@ &uart0 {
>  	status = "okay";
>  };
>  
> +&ufs_mem_hc {

No 'reset-gpios' to reset the UFS device?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

