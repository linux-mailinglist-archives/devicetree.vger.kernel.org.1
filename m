Return-Path: <devicetree+bounces-123699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4AD9D5BD6
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:22:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB152B25764
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 09:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF4221DB55C;
	Fri, 22 Nov 2024 09:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nOeLJ2//"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0E81DE2AB
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 09:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732267273; cv=none; b=MWo8pq94X/wAjN2tYkTS/fQk59+vE1ZX9atmZrXyqQiCZWH4fW1rthJQocazLijM2+AkfBzchdD94Gy+o+RJsigG7WHw0wRnwHPtBi1RWFh76MFY+5T0DLFQKGkQ5j0T94+YHhXgrO/A7cnSrbXuYbqrGG3YQlj09Ib9S/76FG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732267273; c=relaxed/simple;
	bh=8IUG6DVp0PjEdVVCknLo6uAG7WB+jRYI+u1RP3EHnrQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FvI6VMiwGoFjC5szCokgAU24RdZaLeqSyBJBJ5wzR+uCuKiMj/9IHp5cR14SVuPQH5MNMyYGMUrmnfRmlfbXHW7758qS3Zm+byQvY6quSQGXhJiG4IeNbx132gOBMNf/Ev65aowboq7c8qOaNSa17IhNci7Eo6BPhLZ35YTh1IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nOeLJ2//; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53dd59a2bc1so374397e87.2
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 01:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732267270; x=1732872070; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LO/T9KKXXkkfpYB9cAxNeBeflDg4LqQIxBh3rr4lV2o=;
        b=nOeLJ2//WZxMYdHM2cmGewpPmrU3KmGpmacTWY8oSD+lAVCrYDoBG/qD/e2J5bBN9x
         ElrtFGfGeb9QoUesogo6XRt+2lbTK3s1FbdmVKt1Vz5HkxJztKVCpJw7QwjPhOP4/lWa
         yffqnzdX5wdK8GzyCBR4Q+DXK8O8ScKwhXSbsunU3TgmuO7pm+S2N3K6MkqVCA6mowQ2
         SI6ck18SsFbhcwsguZ0Kbdgrhn5GGcCv11oWCh+G5CXkGIoAsAA0dPQMYGcLcfwWLk3d
         NPcuMlQfhB60JV8R6dxqfTGGBpexn1Ifd6jC7HIKsyjo46Fyr4vzI0t0FhDoksHQ+U87
         islA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732267270; x=1732872070;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LO/T9KKXXkkfpYB9cAxNeBeflDg4LqQIxBh3rr4lV2o=;
        b=OfpN+0UsxatSFdzZ5NCbAfzqL/smOThkds1nDSXUVflZOorwvGU3AGXrjGqpWQHJk0
         sxUBXmBj7nhi4as2tWdtQ6qAMy44to+kCW6FyQcBF60vpoiQHsuSE5NlRqMVpGbeMU7s
         Pb2hZMmzOjqjAY0oum2ASsbXPRTCmm90glBQGQiaI5V0Iahqf5mZUjlBjsEqDHxB+ZtJ
         jfFN/PoQ+wcIjch3b3Zt3f7zB8t/yb6EaX5084LnDQpAvfFW6aZ1g4jC8G/2gO/IpDep
         WmCyPd8Ug4cp4uK6kskPl8IVVw9ix9gysiuPXE/lLVPHGHFqfZStOrWG/cSfgtMq9KF/
         PSyw==
X-Forwarded-Encrypted: i=1; AJvYcCUAEwsI2OQCQGE1sVKafyPH4Pf2GQVCfpeHY0YBKU6SnfGsGq6zxJvXh+vI+jbnEiXMGopRCFuV94Kc@vger.kernel.org
X-Gm-Message-State: AOJu0YxnITtxxF/dmPK8iV1tgxz/fgr+O8yuGrDC5W+2C9vVi5GfXRvf
	Ek66VYrHnH8G16OtOPsqDd14hf3q8NRvb/mN0X4vaxLXEt0AQrWq9zNui+sXf+0=
X-Gm-Gg: ASbGncstx48U4bnIje8QL0Ac+GS4jdVX/A06Ohf8GzPTWBwtRl+BmW9m9Ga4j5rrR6n
	2sa5WDI/ct0vjfCAqBTBoYaBZG8maeLJ2RXms1E9lV8m4bZdolYHGHaMLw6WuCBBhVt1ICoqxU7
	Un2VR8uzSPWe8xYQHosjrMi2e1tB7Fp4RgZhNXIJ0vH6Md7eixlybwApb8STn+GBnFj1zIG2SP+
	zI0JfV4Vj3NuwhD/BurCCGTN0TDYv0D1RfdXbu7qJn3uVMHL6sXLAgA1MR/niRtfPYB1P9Q+qVo
	swREEIEYVPFTID3MXtI386mHAT7uvg==
X-Google-Smtp-Source: AGHT+IFFTnawBn5hQYvJKNcfaecxBmcU/11dXb9HtL1BCFqTi+wvt7hCbGfqNPY2ydrBRo9pZXh1SQ==
X-Received: by 2002:a05:6512:1247:b0:536:56d8:24b4 with SMTP id 2adb3069b0e04-53dd35a4f22mr926317e87.5.1732267270110;
        Fri, 22 Nov 2024 01:21:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2497df2sm299121e87.245.2024.11.22.01.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 01:21:08 -0800 (PST)
Date: Fri, 22 Nov 2024 11:21:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_tsoni@quicinc.com, 
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: Re: [PATCH v2 2/6] phy: qcom: qmp: Add phy register and clk setting
 for QCS615 PCIe
Message-ID: <xhcly5e5efbarmlfkczyq2qz3ektfggop4qz6qe2oip4cfeiig@5n2uyndasn6v>
References: <20241122023314.1616353-1-quic_ziyuzhan@quicinc.com>
 <20241122023314.1616353-3-quic_ziyuzhan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241122023314.1616353-3-quic_ziyuzhan@quicinc.com>

On Fri, Nov 22, 2024 at 10:33:10AM +0800, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add support for GEN3 x1 PCIe PHY found on Qualcomm QCS615 platform.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c   | 105 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h |   1 +
>  2 files changed, 106 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

