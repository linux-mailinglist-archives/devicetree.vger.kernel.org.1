Return-Path: <devicetree+bounces-71594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 781E38D75CA
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 15:49:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 320412826A5
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 13:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E10B3EA7B;
	Sun,  2 Jun 2024 13:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DJZkcZ7S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DED73BB50
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 13:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717336184; cv=none; b=ttgUZZzXRNVoSSyOe0FC1eWMf9VyehJqofgKR4ZqnltaHBZboOdRtxOdsrVnM55OfSwoR5RLruNDCntIfO5faD7b7hK1iAZVO9OsfZ0BTYy4rPic2q2xOxKJFcPmdUMnnE0wZyZBhLCAoMssGwfkMwrepNo3SyU7IRUpYBHjS1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717336184; c=relaxed/simple;
	bh=OFBLy/93aDcasO+7L2Af/xULO+GOP6Ah177EDibhun0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=caZ+78hc8ZsMKdNbDvYsMVa3UZjlvYDSgU00K8qnznSSJk1hH9narMRDdlBvN1LPqa1bby2coSNrcnwFP3/ev5yE02JCAYNLNIVAtQ3bbL3n8Om0uBdRKwMetzPNqtn1+TKnNNTzyvAr/yLe2H7IpgdClouEEUnctXYm1b04WR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DJZkcZ7S; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52b82d57963so3352486e87.2
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 06:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717336181; x=1717940981; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RK+gSspnDvIjQ8g7XKh+hwU9n45tiCyCGsEgB2oOglo=;
        b=DJZkcZ7Sm6lhFbZuijXrmAMiglgDkxjK1EfZwRrHqtxDp1UEFthy1j4kmn9mVFA0Qw
         kC8PibGNY5GTTaDSNebfY0erzDkBj5ri+bRAt/gRxtEohXlq8E+F9cjkGLDCZD/lMRRf
         G3dDNTkvKpBG9Igw6d2nM8pgFnTYPsgQ+oB3g5nDXSiWvhWoIUCINF9DghPQ9i2n2iPw
         SBEHmtHzDAFJ7NL9+SH5zeRDdxLI6P2Yue02KgIe+33CJTpRztvGol3dJHaJ8tGjRg/T
         jdUKuQqtIQZR1te6FQR9qOvsYk4IbUA4p69OVgpDxnQrorqpUIXleeOCDKjnNQSVVmoZ
         3snQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717336181; x=1717940981;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RK+gSspnDvIjQ8g7XKh+hwU9n45tiCyCGsEgB2oOglo=;
        b=lT0xzBBJD1w1XThoWIVlMzZTX+hWQQ9RMzpYKESO5ZJUguoHrrcrp6TLXnMZAt4E2+
         M+erjyJPcWvCLWL3MPc6yunPgU3/4yXQi50VowCAbwxRTNwpRl3jpzMXL7iRs+2x4zTc
         EubZtGpG1XG+OwOznTvCSuy9PUykCnEIJcHvTTgvJeRPxkzuY6A6Ef1OEBybccTDLlwX
         j60H7M0lWx60ckZaWaaKJlhK9mWyoXxUHnC+H/jhhAwcLY3VrB/TrNZpipgdGLlExsU+
         aLuZrExDKW3juXB+OeOJY896g4nn2LN3r1p9pW8UAU34kHNL9VyKqvd3DyoS7McM/k9J
         eyRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfDSS3k27nX3sgSwbkGM4G7wKyqHgXs0S6e12bRaoD0nIObi/O2mJXGZNiIF9GAai1D7xeoeqDPtSl77TkBJ/LEVJjwaKWEV5mpw==
X-Gm-Message-State: AOJu0Yzzmgwp9IciSjivHWwH4tj2AHDBr7/VAINI32R901aCK0xqh1Ol
	7p5XxNrxXB6KDKEeJ1NFZMp5Yr1Xig+zusBpI0/c/kum6JGyPpaByf6hX/+L3AIfcmm8DIo4Cfc
	7
X-Google-Smtp-Source: AGHT+IFHtYW/9mmf4mBFaBwKb2/rlrKnB1nEhfK0SBxsg0mk+z6IYwfe5eM8PmYnq+8HBzEZeU9iBA==
X-Received: by 2002:ac2:4246:0:b0:521:6c38:6949 with SMTP id 2adb3069b0e04-52b896dab8cmr4494872e87.45.1717336180547;
        Sun, 02 Jun 2024 06:49:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d8e557sm956327e87.297.2024.06.02.06.49.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 06:49:39 -0700 (PDT)
Date: Sun, 2 Jun 2024 16:49:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Taniya Das <quic_tdas@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>
Subject: Re: [PATCH V4 8/8] arm64: dts: qcom: sm8650: Add video and camera
 clock controllers
Message-ID: <fxh3urdpdugkdgqureddxurgusqrexomi2v4h77enm5ncvoa52@nkh2p7e6dsto>
References: <20240602114439.1611-1-quic_jkona@quicinc.com>
 <20240602114439.1611-9-quic_jkona@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240602114439.1611-9-quic_jkona@quicinc.com>

On Sun, Jun 02, 2024 at 05:14:39PM +0530, Jagadeesh Kona wrote:
> Add device nodes for video and camera clock controllers on Qualcomm
> SM8650 platform.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

