Return-Path: <devicetree+bounces-123751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D92D9D5DAE
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 12:03:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 63B88285336
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 11:03:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0E6C1DED58;
	Fri, 22 Nov 2024 11:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OKm/vIOg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFFC01DE8B8
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 11:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732273254; cv=none; b=DLPejKAiEEYtyNMo2ev7ra+rnf1fH51UhFDmbdA0jTixOnQTIbOiGaT5Bs+4lAJmCTltETcWyoC7AHnWzydP5xlEFVyWsAUAXxVx+Mv8gS9GDjdP5LizmutmEwI7RnBZkgk5rms6uKvjLXT4p9PQQY7dpaEP1G8koLU+EidgFRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732273254; c=relaxed/simple;
	bh=esQkEv+bJkBiPxQO0jmazrQSqkgqrNZcKbFEDiYk7rw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ASjduHH+HXoU7dag+XgGTayi85VZQznerIW975qP6YV7y+9U7Muw/3lG29m5XwyclAX/N8mNk+ItDreTnTQ/NZDnMEZVfr9HeeCE1MKezoZnvU5wbguiqrfKPTDqWn2uugAx/Rt/j9fpoyNLwJ0a5DBLQ+QYWXWIV6Ph80R+7tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OKm/vIOg; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539f84907caso2151763e87.3
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 03:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732273251; x=1732878051; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AlkHc4CfnQoPn1A5gJ9s0BPlf2Z29rGqNglkoIekDGw=;
        b=OKm/vIOg4BlzkqHDJHW+9yr7BCvKPt0Ylt1uUzMiL/bhnc26chJvvppOWUsyh4+3gl
         sfH8MBJhxk68a0UaqKnJkcpDC6WP7yEXq6z1RbMW45rhydHKciv0mUitCVB50CI5ni0w
         xnBVLHa1BMVqB9BVpt9lJ+jIEptgQoFrEXNvx/6X1waZp1E3wT9BhwWhBX+gq/QXU+oi
         XLy9qSxnFu641XBIMGN1G04ijor5fTWF588mz9cFSGruCvd1qOc08YEIPNDVtTXXKKfk
         daHOypB7GjS9UVTUJLoB7l/aGTXUa3cJPV9zK8RCm++W0IDOI5fU3cxHLnMTyEehU0VM
         abEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732273251; x=1732878051;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AlkHc4CfnQoPn1A5gJ9s0BPlf2Z29rGqNglkoIekDGw=;
        b=HnPZHyAYMmNZD2E/DrOVUxM3HYxe1wH10lgQtfTXXbXeK6l1aR9L96Tu4V6Ts4uLHw
         VXfi30ZgFAQku1AmzP4vxTsvX0VV7Ap31KzQwW4ICh++Hhvwh82fQJYl/oyr+VFd2xAu
         Dh3nZkgmcPWbOK7VC+tcKFOnZxJHgFaH4eTD9I63rV/uUoLyEUVghRtwaHpufbElWRLw
         G0tL4y9faPNLd2YiAmvX17x2y4DowC/wxVRf13DwGrn/k08/hUv8tfE0hxRwFcR8Cf+o
         DSYt2cm68WbM9HzjmbDg2IoXJWf6aOkiN1SZeNQxydWpBxgCLO4sXER28LF72PEIqycc
         6H/w==
X-Forwarded-Encrypted: i=1; AJvYcCVTK8BYjLMfqu0i7/L5CpSbHDFNJRdHhj1dqEPFvnMTotPh5FoHc8Y9uKw8h6f3ZdFqjE2znX9d2IiJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyPOo4mELNaeHcmJU8VuZ7BmS+6PBNztelyQeHfxdOMSfOfyQcE
	r6X9f/GKt0Jlc/6aQxbOLM8O4wbzmMVP2CG+7WMWrTqRqZYA+frcl60kmEJnpJEcYCAigUJUiNM
	2
X-Gm-Gg: ASbGncvXHUFvRJ55dpEXYpQhybw54P54zTbFNHfv7MDRshcdQFfmQ0q1RiR+RXEIGdy
	YlEamYmkMtoWwXkUs/FnrA8oebhDuiB5EMo18jA6m/ybZ17Hla3uw7FF3xLkEV/nJGPVgwOE4jg
	P0A/+ys+CO6qDqztcfwJzbQHcJs50yHKwKs4d8h6PKZRbTOjafi7YiAPQkBlv4uoEJ9QxDUzlGO
	N9kOgbrpJRG1yq7KtxYLsRbIcApzun7aaWxsOKUlkQSUsn35jGH/BsjErrOPdOe7D1CUBDEiklV
	30l7Q5IiMgkfJoah8TBCdMlt3hfKig==
X-Google-Smtp-Source: AGHT+IHRcfY0IeVLi53bK8dwcq3XFuy2uo8jqF7yK68qsQJ+2p/GgmOCR9UBE7JD6UnJ50+els3Mjw==
X-Received: by 2002:a05:6512:3b8e:b0:53d:d0c5:4ca9 with SMTP id 2adb3069b0e04-53dd389cd1bmr937303e87.26.1732273250848;
        Fri, 22 Nov 2024 03:00:50 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24456b2sm327282e87.56.2024.11.22.03.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 03:00:49 -0800 (PST)
Date: Fri, 22 Nov 2024 13:00:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@quicinc.com, 
	quic_kotarake@quicinc.com, quic_kamalw@quicinc.com, quic_skakitap@quicinc.com, 
	quic_fenglinw@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: pmic: enable rtc
Message-ID: <4gwmrfnzqqlawgkgjd4fj3t4nkpulnxuzsc756v6uxz4dlq6mm@dhv2aqkdx7du>
References: <20240902104302.3959670-1-quic_tingguoc@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240902104302.3959670-1-quic_tingguoc@quicinc.com>

On Mon, Sep 02, 2024 at 06:43:02PM +0800, Tingguo Cheng wrote:
> Add RTC node, the RTC is controlled by PMIC device via spmi bus.
> 
> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

