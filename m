Return-Path: <devicetree+bounces-142259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82800A24A4D
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 17:23:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 099B916383E
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 16:23:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3418B1C5D62;
	Sat,  1 Feb 2025 16:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OX/rt15I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB2B1C5D4D
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 16:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738426978; cv=none; b=dr5d81G2kMdWFEPGqVjjqDp1+HXknS9ypm2r7luL6aja29DxAT0mmc/UKIOLiNdpw2Q23LgpQPCh1xwkVDQi2wHAn/5vvbG8radPCzUAPYqiUm2kgfsW9VVU+CS8j2xbIOUDnTefPuo0T5qx/vURYoQztcGSbim53kVYCKlc15E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738426978; c=relaxed/simple;
	bh=LbDVqPMvfAWfXJowInDbnFGLIDjIttLqtOOQlAS8pGw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XMz+8zaYfZyi8o9/Ndpe4n9sPCsvrhM+choWj0tmtBjygMcO9A4HQu9MhiCSX5WV39x70sUvccByfxsi/yhINrXq749UGMZq/ga2PlNXj+iNPvbNJPJEgE7RkUoTO1TG1OQYuLoV7IG71U2treWipMjQpzF3QT5C4NbAweYfD5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OX/rt15I; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54020b0dcd2so4396429e87.1
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 08:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738426974; x=1739031774; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SB7/q7mnWnKXhmf35fp13ZHl7rRS7BiN5dapcuwGPeA=;
        b=OX/rt15IW29OL+xjayqZh64v6p5R/Z2FGsLEiF4rqPoYksyoTEWzNQ+Qq6WiiqF2R0
         EHocATq1sS7RWNCdaruf7V+3iZieQETslEWNFmvfFbanAPSPeSKc3Tmc3vDfDa7iBkt1
         IOPj5XHSf2Ty0Nt9ql9ekAeFlThafllissmGTWvDmKHdrwvYhk5eYyh5OlpxuHjKzH4K
         6dsQxMUOJMCXYWzs7bFKFfbuyarA2y4okFowqPS8i6PgshBHX3oCX9CAqNKb59dO2uOH
         4AuzQKGkYbK5VxcSKnQIhj9LXEJ3V8vKzM9PVDrx36Nl5bghAuvzJtt51wC8DGpEoJGs
         ytww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738426974; x=1739031774;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SB7/q7mnWnKXhmf35fp13ZHl7rRS7BiN5dapcuwGPeA=;
        b=J2apPqxoFCgY6MbgZo5WA2JOCdNOxa7Ihz2cpD0L3BcImDND7JbefZAZm1Nx/bIMMp
         XgsLOn9W7LxdK7dd4xG9lGmDpdSdWvrH5AYcagYtga0mem5l3PJm/mGW2tpSaM6oyMbL
         GsmJjcgr1A9lrxO7xa748ysWutlZMcR32uZCbyiC/mF3bAPjH2lQQO27ujAlmpUwyfk9
         KgIpMTjYW3bdbzV8NBuFn+pQjtXO3C0INavIe7UKJNV/lb5TEvqO7hlKtbjaXg/Hdj96
         DwQKVI6nelGyf4a24D9Oj/IkVCZplv82O2FuNLf7KkmsQxfiz001C/umVoK4xMewLUYL
         i1ZA==
X-Forwarded-Encrypted: i=1; AJvYcCUjSOiZW661nOUb5KrY8pdQhNXDWrDm2HHx3gTFf9XAinTnI00CfzgBAdlHJpv3Rfjw1OZZna3046w9@vger.kernel.org
X-Gm-Message-State: AOJu0YwHKb0SibA1yqR2dozssuINzDEazQOu4dV1Sbz3QPzwvWEVXGfk
	aVzVhXQgLBTlUhg+jP6Ii8xSC+5oisjyQPHTwlhXmBunhSDMF5sRW8yHu6iohao=
X-Gm-Gg: ASbGncvusarjH6O/NMESHT2Pcn5otbzN+ehHcGcgLIDQoxuYaR9KqgK4UHw661/amiS
	bnSXBstJMrAOacL22RUz/C6aztA7aw2SpL+HQgl3j7pcRz6H3gHIBnLYnRMoUD0dFFKmUsWtFyZ
	1+wwE1OohC0Aa3lvpaWFUO85DI//HBTgTxCi+J/YeyL+Mx3adKnYvu6Yc+9XTRB6qsAKBw/Xy+M
	yMiWu1LGu5M+RLTDKwO0BxEZfqcpmMaI8bK620G5Ybl8TnqYudOti1U5P8Qb/jP0V547PG6FmM8
	iXIy4dKnwY/ji+Caok5KIuBecZwrvXFo3UXJBOD6Iyl7FzKYAo4IN2CDo1CJ/uMtB8VsxUw=
X-Google-Smtp-Source: AGHT+IFY/QJCu1OV6j/yI8VCFmTa4eC9LGUKAVzD6ktYAmvjnDqZxme+ljXVZ2YnCurb6YGeEXAzfQ==
X-Received: by 2002:a05:6512:684:b0:542:21f8:d6bd with SMTP id 2adb3069b0e04-543f0f30d1cmr2521222e87.22.1738426974213;
        Sat, 01 Feb 2025 08:22:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebebef3fsm765925e87.257.2025.02.01.08.22.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 08:22:52 -0800 (PST)
Date: Sat, 1 Feb 2025 18:22:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: qcm2290: add UART3 device
Message-ID: <jc5lpkfhlrz3wwfyl4zrsrgsnwiowrxr6dadqf2vsjedxcn55k@yijjjvteuowy>
References: <20250201-rb1-bt-v1-0-ae896c4923d8@linaro.org>
 <20250201-rb1-bt-v1-3-ae896c4923d8@linaro.org>
 <55195890-b7d2-4df8-b8c5-fa2768e90094@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55195890-b7d2-4df8-b8c5-fa2768e90094@oss.qualcomm.com>

On Sat, Feb 01, 2025 at 04:19:01PM +0100, Konrad Dybcio wrote:
> On 1.02.2025 10:18 AM, Dmitry Baryshkov wrote:
> > On QCM2290-based devices the SE3 is used for the Bluetooth chips. Add
> > corresponding device node.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > index f0746123e594d5ce5cc314c956eaca11556a9211..5f92eb16482a0ea5f8436cfa7e55849f171ebd24 100644
> > --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > @@ -1239,6 +1239,21 @@ &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
> >  				status = "disabled";
> >  			};
> >  
> > +			uart3: serial@4a8c000 {
> > +				compatible = "qcom,geni-uart";
> > +				reg = <0x0 0x04a8c000 0x0 0x4000>;
> > +				interrupts = <GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>;
> > +				clocks = <&gcc GCC_QUPV3_WRAP0_S3_CLK>;
> > +				clock-names = "se";
> > +				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
> > +						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
> > +						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
> > +						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
> 
> This path doesn't look quite right.. there'MASTER_APPSS_PROC is only
> on one of these.

Hmm. I should check my c&p source then.

> 
> + RPM_ACTIVE_TAG
> 
> Konrad

-- 
With best wishes
Dmitry

