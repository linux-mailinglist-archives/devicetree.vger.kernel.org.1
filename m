Return-Path: <devicetree+bounces-221429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C69B9F8C5
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:24:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0B003B0127
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CF1E25A63D;
	Thu, 25 Sep 2025 13:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vPnSa8j3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5CC255240
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758806402; cv=none; b=DQWmgdkpro6OsULiyUD9XyomKoZqYf9idvKCIh9s/th8r2OeEmXMvi/zqkHGePuEHatvOwOc83LlyueVCcX77raPosxRaSXfGRe+ZOtrd9gmxhP4rj0Gk2yJxliAARgu+0pynuo1z2k23gsv/Clcf1OvAK7pa1ADHZoEPWUgb0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758806402; c=relaxed/simple;
	bh=YyK2lvbOXbBGryOpMQux96Q1vt+QrwWAbOiyxK6RAs4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DrrxsNW0zIyqzdZasEaNkgRwLvvnKMh/IbxF+c9xEq1LLkbjZLDP3Y4XvTlGYhXu6XTEonV8V+5jlYKpg7wbWmG7qnmYntOA/fFCWFkTbxMQPlkYEtpbmzn7oZzgdmnC37v3NtuxCnHA4qJ+/yi0B9Q1Pw77NpNuJXFwgk8PnO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vPnSa8j3; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b0787fa12e2so133246366b.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758806398; x=1759411198; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EYsaOKNHwZcLmxeqQOplLWeI/iDmclk0EIqTKGLRVqU=;
        b=vPnSa8j3DmSaHYV50awVO1R/1Yo/oMdeY4VrK2XwhOp8vOgeL9P4jqjOlcKIjD8jfo
         WgiyMuthdBSgXDYbwbjZts39Bx4VVf5j84z/TBXSNLjlx2y7guzc1qCebppuyy17B+ih
         tjwycIuEhz08O47/Pgor2dxEMwr8C72Kx8YYsi1ALBGL1oo9sEm5Ri7YQeJRZtoNEc0A
         Jzqp1iR4gWZ+MQQ0I6WgfVh5J42Ip80iWOsjG44HaIhQddxUnmOqcGi1ZCieMYBBRRd6
         OR5DPyEmp5HozgTclZcSjQCfXuCB+IyYpOEpP2PRRY6PIToLg37/K6EZ5XhqSj7+Hq/l
         KC6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758806398; x=1759411198;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EYsaOKNHwZcLmxeqQOplLWeI/iDmclk0EIqTKGLRVqU=;
        b=tasbQw226wtZ+vJJhImFlB59iIl7TebdNIEZaswV03k1vomSkvFu977RzdopaVMAMt
         +qQ6fRXR49/qJx3m6lxxVxBQhy+9NSR8qzVyQjBtuV9Ln4acxGG/Hw6Z1sTd0w/LtToZ
         0uuyEiGL7xGKIBRFcsEpOrx6tBrr0ALLlWhSXjL4qobDnU2SI0fKzWbX5J0xhuQfUgTc
         kvYohJRnjLaxfLM60/TAw9D0V8YV/fbuG2gpmSp05p5eC7slDoo93L7pY+qPjZ015hFk
         5ygpgZOG5p07XIX643LVAv0QT/rznDF/lVlxImGmJ7GH4cdX4x674fTOk29YptUjXjIK
         Sy5A==
X-Forwarded-Encrypted: i=1; AJvYcCUXKMMEt9ovb0uUr5L6z/CYN6Yhlh1g4M8CV4ZbDB+jFu6EZhSsHHHpaHtTPUIatAIPfUs/M+HjMpz9@vger.kernel.org
X-Gm-Message-State: AOJu0YwlTalklHZOddsOUn7qfTVJtRMj/xm5TATEB8/d86Bv1Xsyq4jk
	AE+D9G8N1WE1BnjBjsU8Ry/6qORQvBG0W/Nvm5NGrOl4zFPwJfLXmIKAtf7qv4b0D3k3p4zrism
	bRud5
X-Gm-Gg: ASbGncuGZPPmL6r0oCfK+9J1oWBuMER+iMdJwn3U6mC1B4QsZRzNZi3/EWd4niePcnk
	ObptLEun2AUjITfwNXpqq5dBwXnpUokuR4X5b57BfmodrhTElONqRwilMCZn2rLJlZh1oDgYRMr
	zSXDUmqBK/quKrSAp4dHVBevWHu+nQ2Wq91AYP/zHV+KFihj1gYcMvABIrLrvZsS/opiTxGYODE
	/rtL/YWB2/oBifYrnQdTwO1k9PXDi6sB+a7OZ5TYc6eXzn2sWCcK5bDpN4cPzOmSAhqvirrk9/r
	w2FufabEFuVCrujYCsdoPRUQ865qzJbcynxEtg4B+zmsLlnfJL5LASEq4wti9OPgaeEW32ZsOKI
	nL/QqQFRrw5KZT5BWrWtpbA==
X-Google-Smtp-Source: AGHT+IFGtxnVGv2ecu+++ctEtD2PwGh7olmiTWEA5Nd06S1qPZFvTUSBjy6wSrM3gBYU98dPW2fqdg==
X-Received: by 2002:a17:907:7211:b0:af1:f259:254d with SMTP id a640c23a62f3a-b34b79c7aa0mr338206166b.8.1758806397729;
        Thu, 25 Sep 2025 06:19:57 -0700 (PDT)
Received: from linaro.org ([86.121.170.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353efa4c35sm165745666b.26.2025.09.25.06.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 06:19:56 -0700 (PDT)
Date: Thu, 25 Sep 2025 16:19:55 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: Re: [PATCH 23/24] arm64: dts: qcom: glymur: Add USB support
Message-ID: <wabocts3sscn2bvpgxamzpjmw3ivkbw2bo33aapospkmj7xtna@ynf2cwpw3fbw>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-23-24b601bbecc0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-v3_glymur_introduction-v1-23-24b601bbecc0@oss.qualcomm.com>

On 25-09-25 12:02:31, Pankaj Patil wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> The Glymur USB system contains 3 USB type C ports, and 1 USB multiport
> controller.  This encompasses 5 SS USB QMP PHYs (3 combo and 2 uni) and 5
> M31 eUSB2 PHYs.  The controllers are SNPS DWC3 based, and will use the
> flattened DWC3 QCOM design.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 243 ++++++++++++++
>  arch/arm64/boot/dts/qcom/glymur.dtsi    | 569 ++++++++++++++++++++++++++++++++
>  2 files changed, 812 insertions(+)
> 

[...]

> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index 8a563d55bdd4902222039946dd75eaf4d3a4895b..c48d3a70820e551822c5322761528159da127ca6 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -2417,6 +2417,231 @@ &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
>  			};
>  		};
>  

Also, as part of this patch, you need to attach the pipe clocks of the
PHY to the GCC.


