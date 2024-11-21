Return-Path: <devicetree+bounces-123556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 063309D51AA
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 18:23:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2DC21F220F9
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 17:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 544591ABEC9;
	Thu, 21 Nov 2024 17:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nCE6hxrE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3751AB51B
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 17:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732209824; cv=none; b=DQa7tOJ+Vplp8cIe0s43OGCVDmz9b2YiYOsiuiM1NJIxNIgo5xnyBZdOiDsrkwZGUAhtmWfnJSorgeFDcSzW6PWvQj+4AjwYnT5Eocl8jAINBFs42h9szs7mzrJCDd4412GJ4kLbxJ7TeFosU/KCfGDr8QzFNOjiunE3SgtK1B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732209824; c=relaxed/simple;
	bh=iBNhjFCDpKRTQH2Pa9QqQQCjVzMOzhs91G1qfusImRM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uWhwdGLrZ3WIFbeX3Pt3VRQjlJs4eTtef2AuEScNxTj4Kidpel0K8z/pMoDIHtaRHEELCb0BgQIQ2Y/SD44ZnJ/bmvDv1DQF6AOBEFGSn4TEuD8CPr7lCFgGRxkFNVEGsukm0OPfPmiNNEr/BLG6C28WY0jIx7jouyJ8zj7MoX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nCE6hxrE; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-539f76a6f0dso1126511e87.1
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 09:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732209820; x=1732814620; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2Bx9m0NYVTC3ArzZdszszzOV9nbuxX3SN1ILoUcGqLA=;
        b=nCE6hxrEJW4ie8c/ZuhZa5GIS/1hxxZrH+bKbAJjAc3BDDJYVnRiissYoR8D5SDZbq
         it/VywnN7lhMZ7IZiXdueCC36ezFM2jeHmekn84i9PnaxIi+2MSceJ1b6Heh50LrYNi8
         pb9awfTx0bbcGGGlaiqTvEKku2NkNW87BaC3fM4qraMjs+mELm4T8RfUtvmd2TNAJjAA
         uhtNSuN5dyjTwE8nqU0+naj3+LLfUoDVX0GwWRQIcHjYYY2JN3nOv5n6sRqPDRExNTd+
         pw2+/aKimCAH42Aw4uHZiaeUZsnrqS3LcTS5/Qss8hO43Yg/Jycd/BW4Z/fxPrIrv1nb
         oQ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732209820; x=1732814620;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Bx9m0NYVTC3ArzZdszszzOV9nbuxX3SN1ILoUcGqLA=;
        b=jZtT30zSwZVRS9rIf0xkiJ1c3ky4VyL6u8WX3XYXcdPCVn5FF1X3fMtTRGmNgY0+/6
         tmhq+H7pdjaj9et9o/xzEu65Hu5xv06VJrxQ3SbxgF4Ka3gUEIIiJdfnobPItrSJOIU4
         FDb1uY5E75SDGdCPxnGGqbdZd3GkBReEcM6ECuGfZcWUF8KSNWpy/SqbhghEa0R8Skum
         1TZsMRQ8nre4+FhS5OMCfmeJYQlWKfNe7G4S/1VeI/O7y78fefcR8aAzH2DXsN7bXT0l
         I/oyQNn5YjUzc//V10ks/2xRlN9v1bRHj8rjpXAQAM4zX8/OgauYVvisMYic5j+3LdAg
         RQ7g==
X-Forwarded-Encrypted: i=1; AJvYcCU5gHNF1Gc/gioQ5XnR7OjyjHl6+cWzOaZfITbOqcb5HmMcOQzvgIhr5TxYfYmDdonBh3R0As0xYKXk@vger.kernel.org
X-Gm-Message-State: AOJu0YzjfjpCHS9vKbKvcS/QTo1lMEOq+sB1HvaS7bQEszk8DL/JQKFf
	wGSfIGdC9nv3ndemlZsuqjvjnNNL5SAAwykfPbZhKhUCMNecuVv5zgsWInrqRCU=
X-Gm-Gg: ASbGncvse/O8XyA1eKvDzLcwkudlGAP4YsjBDairmAemTT8LfZOIeIKKEImzJWm8TXc
	0fZ0eiLUqDc0KShdM3fP+og+O3NLuDZI4o6zDtJXtbGXYw992VaeTYG6FiHD8VFO30LI7ktTTo7
	mZboBV8b/ksfjEHR4mjgacjqJeP8hJqZQPLIpNzzzIYQTlcZXBUM7u11Cjh0QYOzKOUfRRBWkVm
	a/5DBqgtXxypwZ7rDvDnku7uXKQijV343b8uwliEj+QwS4vI08Cag0NJn3GZ9r36wSks/l7+r9A
	XhaUtv1qMhqFFpPJB/w0Lk/PX7ZG1Q==
X-Google-Smtp-Source: AGHT+IH/XSj++10aoySNlzzQLcgiL+7za6dnX0DKLcp3Sj+liy95mgnkIbfDUPV9rEtzoScDC0W0JQ==
X-Received: by 2002:ac2:4c38:0:b0:536:53a9:96d5 with SMTP id 2adb3069b0e04-53dc132df6dmr3274397e87.17.1732209820394;
        Thu, 21 Nov 2024 09:23:40 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2497f04sm20981e87.254.2024.11.21.09.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 09:23:40 -0800 (PST)
Date: Thu, 21 Nov 2024 19:23:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Enable Primary USB controller
 on QCS615 Ride
Message-ID: <nt366bsajm4vci6p76qj5bdzcfyutykc5yykkifajzpqnsucwb@lpotlu2ihocc>
References: <20241121063007.2737908-1-quic_kriskura@quicinc.com>
 <20241121063007.2737908-3-quic_kriskura@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241121063007.2737908-3-quic_kriskura@quicinc.com>

On Thu, Nov 21, 2024 at 12:00:07PM +0530, Krishna Kurapati wrote:
> Enable primary USB controller on QCS615 Ride platform. The primary USB
> controller is made "peripheral", as this is intended to be connected to
> a host for debugging use cases.
> 
> For using the controller in host mode, changing the dr_mode and adding
> appropriate pinctrl nodes to provide vbus would be sufficient.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

-- 
With best wishes
Dmitry

