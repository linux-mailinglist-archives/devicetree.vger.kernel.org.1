Return-Path: <devicetree+bounces-242711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2D8C8E19D
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 12:49:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6DE0A3ABCE7
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 11:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 494B632D439;
	Thu, 27 Nov 2025 11:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CX1na+v/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11DC329E4A
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 11:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764244162; cv=none; b=sQuL7LNXpnoCFvj8qVN4xpJZW9dui1upgnq2SATD8Wl7QRnyXsK44yb5BGySGOC/L7wH3f2sflvD2oIwDlmwAjnxrL8ylopa/CllR36VXMHnNdhQjdRS33GidG0hbillzwnciUdr/vM6dTKMPFlgxvLHVF7PPiQOFTwfcQwqY9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764244162; c=relaxed/simple;
	bh=moj/Dka59d31TxPZYaejItVbxDZfvmAUi+Ss/nj15/8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uOznt6qf5C/q8dFoSry08+youPOSIeMrjU9q9nwVsGbGLFVrvFgqIwjycf68rbSux+JnhErHZV6j4Kr+8BBDXFSK3+WUhBsF41Wm4V9m1OdE0vL5+goibqAxBnGCEiH4za8iUnNPKKOiBwA0dgLqhYGiM5569Nxdfm6hgG/wxtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CX1na+v/; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4779a4fc95aso12707365e9.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 03:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764244158; x=1764848958; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=30sAr5fK4ldLNysljwG4Tsl3D/w6Hu1C/auM0jnzieU=;
        b=CX1na+v/UJ/Zd637VceMAA2asBJXcRttdLRWutmpY9dwwZ5DZCUpsEXe99JLRRJKpL
         1GAzem224jaFTFGTNTOfZ9N3Oe8PC8T0PqdejMGCqui/ISr+9HFuJ4AVmoVrf32h7hHX
         mMsYp9JRVyQvqh+9wU1F9uBG/wp3YRzY92lYVAEXhsQ07peWg92G9me87qL9o2RPAkyJ
         WgdOHL05zJwP9BCcVDa9GulccoMKVJTdsF0nAKeh9eTseD0GYPrhRdH2twzGX1GHflXs
         BLpP02UYDECVmrJoKxu0OEQMWFJU7CViwSRxTTSxAvu8KC9hW/yJtHoeK8kbgh95NC0d
         lLrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764244158; x=1764848958;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=30sAr5fK4ldLNysljwG4Tsl3D/w6Hu1C/auM0jnzieU=;
        b=Qlv9tYm4bGxwUwD1IWsmhP8w6Od7WAEHCrJGMrLbfZP6iQJmJ+ajXvKeFzBXASEj8+
         Fdq3zNuVHhyBK3VPBA1M0ngoozOX6uFuZ1PA4+ANL6g1LJR1N5wNzTG3kWDwtyK2e6Of
         N6xk5xEzbu3+C7YkUaFKZ/lEP7oKbrds6Q6vE8SSrcGQ8+VyI/L9LpgaHPxbjxr2AHOC
         RV98dJ6N5gv1pqgWaNnGLbtPdFbWOuPiV+8Zfqvw0ICdpq5GWBPNBMMGMf7Oc66XKM3Q
         yn2r3Y4FsAIEJuXKEqym5WUbKRzFcq14AG88DguIkfojiFg9Fc7ixZeFE7o+tJDmHSTE
         I7Aw==
X-Forwarded-Encrypted: i=1; AJvYcCWYVKo5FCMRExlXpyvZ9DeFIJmLEqCwJOiwystuZD64W1Zt6kJ+sNqWblxX8PPB3/x289De7YuW/6l8@vger.kernel.org
X-Gm-Message-State: AOJu0YwrsDOxmkjaYZG57zydERcDiWOiUtOowq8ieDZ1NVT29fQbyfZJ
	68mDgTLuV4/Rzq9zF9YDY0QCHQwT8bdNGLOi8yuwT2Ejcabs8ynluoTqOieNYQFJtlM=
X-Gm-Gg: ASbGncsIZkL4iC+xyN3dSAWzy0Fp6+B36zrGvGcayRYIZmb6V8UG/FY9ncK7IaFIYgA
	SyXnJOWZgka962RWPtaymOrCLW6toMI3Ei3xQKVPNoB/vQl3xcLBuOk67z5RO1sE6RWBP3WFPs0
	/CUOt2t1XZyr0Vg/7HwPMTwwe/wXgFPmbS4+qji/zuaEEKxo5LnOrKgtGx1rwAj8qgAb+G4ds5A
	bxfzmTAWk2ib0N241mjgy9tMbfpCOhSAL3aMaYM+ymjcn2T2giLn6P1bhJ7Km2EEyYTWlrVXBEo
	H5maxaou5l4RxJ/gYY8BT8xpQmPNZJZig3uh0ehSpeQV/Au/8K4ljGyiQKweGFq81qj5HTictug
	J9BvZZKWD1iK7S+PIHJ6n6h9AhmTkjaAcltuT/1yQF5Ko562bPvoRDQdsumTMrmvy46lWqhY5OD
	v+Nlq2M98=
X-Google-Smtp-Source: AGHT+IE1m+nQ54jIFYeRNZBBdmIrk3sobfn8Briv7MJVBw49u20S1jYw8ms5t6p+s+eYbpEZPMY35Q==
X-Received: by 2002:a5d:5f82:0:b0:42b:5448:7b34 with SMTP id ffacd0b85a97d-42cc1301cffmr27263237f8f.7.1764244158025;
        Thu, 27 Nov 2025 03:49:18 -0800 (PST)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3022sm3471942f8f.4.2025.11.27.03.49.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 03:49:17 -0800 (PST)
Date: Thu, 27 Nov 2025 13:49:15 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ajit Pandey <ajit.pandey@oss.qualcomm.com>, Imran Shaik <imran.shaik@oss.qualcomm.com>, 
	Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add videocc node for SM8750 SoC
Message-ID: <pkxzaibmvuzugcapgjvj64u35xbhjjk23k4d2qhnwv2ods63tk@ovlcxtphghsk>
References: <20251126-sm8750-videocc-dt-v1-1-a848fbfb257f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251126-sm8750-videocc-dt-v1-1-a848fbfb257f@oss.qualcomm.com>

On 25-11-26 23:39:29, Taniya Das wrote:
> Add device node for video clock controller on Qualcomm SM8750 SoC.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

