Return-Path: <devicetree+bounces-127614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A139E5CD2
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DB651884A74
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3636D229B15;
	Thu,  5 Dec 2024 17:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KwiSCTz5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B82227B80
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733418952; cv=none; b=HzLDriSBEzyN5DXWPWaktL03qp8ZySR1FIhRhCsZ06lni3U6pgSPv4ww+5vl+Xlq9lHpiAGlO765B12qVFAk0duCV8VrBDr9CPVBdHY7pE4843K4F8jEF6Efcl/lpEdVImmKjKBsHk2AmMN3nc/yglPlz/CcTtKOSb3cWX1VO0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733418952; c=relaxed/simple;
	bh=rVxdCXnF53bGePiz+b207A98CTZ+XHwr6WSiDwdMXYI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eZqdCVs2fTy8I7beUeQw6Ot2ijyPrA+gBwQFESz7JTd7K2336eLcIodFLCd9hmuD5dTdeT9yIXD28/0wV5PIyNCJWZ7BOBf908yUO5M4fDNI2SwxQD0nzJUkJ947Z6n7FG7JO5FGN+0n+Bg0FzWHiCzBTDXSCCyekjqjxEPr9VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KwiSCTz5; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53e1f673ca8so1335295e87.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733418948; x=1734023748; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oNxP0LFln0zgtOWEPbGccnsmPf7gfq1YwGA1WaBfZX8=;
        b=KwiSCTz5+jhTr+qli+iLMFBa3N49VrXaD6ykqTTnpCT9ZdyEqMO/N4X/sY93zPUbN/
         p6X16lTOsHKhsyaNhMJzky4I1CvJXca7YF02+vVMdp1OnuH9LbUp7ZQfBPauwKM+aiuh
         YfuAgb+k+JRErL3tLad3Erhlu33sV7RHxhMR2o5XPe/gFd3yCVrWsa+ZQXc9pkoVIdGO
         oyGCPYVXAqilVFV4gggXigzldt36KQEGNw0XeWXPVMvHB4bRrkbFFWfEL8z6NZbL+UPQ
         D7eryEcAchTYkvUG9sKx3KMpEujwpTojI0GlO9Vz55Uiin8dOYxucMRmlzQQd/c3ixuw
         KpNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733418948; x=1734023748;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNxP0LFln0zgtOWEPbGccnsmPf7gfq1YwGA1WaBfZX8=;
        b=LNjkb7YP6v8f5ZtE6x9aBzLmX2Vrt6ulRvpt9+XJYqemHLFCzcneA/Q3xVR6GuiK/1
         k3Jei42nDz6qbN8k1PpUANSqbIe3liOoGHdvR3kQjRyfR3xYUko0P6i8I2iDrhFNSwoe
         gWOTacDge7ajK9LeXOIu+IMPxwA92tSJr6UTTuX157awkMXCvC1dDrImPAY/66uidz61
         ouvut4atWRlIc/wgVQNyNfGZY2Ld4fLBEgdPBbxTIBRMESxjfbnL18VucTgrUH9LPdUW
         qbzS1KfcjapRGissnQ0R0dOczJwaIOVWhrAp7V3CnaAc8jHfkWcHYVWQ6wNjUCPsBz+E
         KJUg==
X-Forwarded-Encrypted: i=1; AJvYcCURdyA+X9Jt0ArLngDmRbuUMV07zZBtYVxfboTpT0tmn2SmHtZBMJFzuePsJ2gsIDToRcwyu01cKnJm@vger.kernel.org
X-Gm-Message-State: AOJu0YzucV/1K0f24gogKBOZ1e+N8ilXIguysGAaRp5Kp5+N6WZcr0mc
	aATOU8S+vjxctZfXiGhvTB1UoBdyNx9BtyWJBP4kM2X/NL6CmMjjpPd/mrScnJ4=
X-Gm-Gg: ASbGnctjUy5KoHziieTL463ah4nm0L+mVCAoYLwEpa0uKt2FosqcrS0NDsHK0RIFgRG
	zwUbrU8YCyEZvXwxBWjZ6kGL6isaeHsjxkkxTyFF9XNaqR7bCuGSJ+mEidMfTfxiR77pnwN0HE6
	LDyEJJecMRocR1pDwuDVfOyk30Vj6gyJYXpQxXM5uDUvN6fmJyW+Hwcnn6xQH9eQ2S4U+/m7EFq
	9YbSsJTru++AZpu6h1f4oMJg7ABHPcmu/5s7FaR6pjP5ji8T2upqImTCLCNvfZ7gzjpGst6z3Ol
	RoSQLLGjNxyS6BN/zqIprfADw/KI2w==
X-Google-Smtp-Source: AGHT+IEyfN0BrcIPh71fjjX8E4/Bx32mFLWHQVrIs1Vx7rUsYWJpnXHHPExUIEGLfLu7e/b8DQpJFA==
X-Received: by 2002:a05:6512:3087:b0:53d:ed89:d78d with SMTP id 2adb3069b0e04-53e1b8785eamr3514553e87.5.1733418948210;
        Thu, 05 Dec 2024 09:15:48 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e22947384sm293663e87.45.2024.12.05.09.15.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 09:15:46 -0800 (PST)
Date: Thu, 5 Dec 2024 19:15:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Jishnu Prakash <quic_jprakash@quicinc.com>
Subject: Re: [PATCH v3 2/7] arm64: dts: qcom: Add PMD8028 PMIC
Message-ID: <jnqgccc6penjqmkhursdlbc46xctikvovfa26vlsvttxwqo5zv@uwh7fhixrmrz>
References: <20241204-sm8750_master_dt-v3-0-4d5a8269950b@quicinc.com>
 <20241204-sm8750_master_dt-v3-2-4d5a8269950b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204-sm8750_master_dt-v3-2-4d5a8269950b@quicinc.com>

On Wed, Dec 04, 2024 at 03:18:02PM -0800, Melody Olvera wrote:
> Add descriptions of PMD8028 PMIC used on SM8750 platforms.
> 
> Signed-off-by: Jishnu Prakash <quic_jprakash@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/pmd8028.dtsi | 62 +++++++++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

-- 
With best wishes
Dmitry

