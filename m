Return-Path: <devicetree+bounces-116162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1D79B1F70
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 18:44:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 532AE1F21366
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 17:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E271816EC1B;
	Sun, 27 Oct 2024 17:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ru1BjncU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFBA9155C8D
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 17:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730051058; cv=none; b=L2raLqHSfPBiD9Z9bxUD/Z8rYjVk8p2GshHJG2Lb94mpzCl5lTu6w7M1Spf0KD/WRUrXITAU52j5ZTCSLUapRLjURpHKeMingah7qxrkaxxYQluEIu47pSZooercSAE5ue3BmvHwozj16ODxdml4j34ty9GOnTb4mOwSO0TFsnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730051058; c=relaxed/simple;
	bh=MdunEshAHQ53TVlHzQQbbg3QFVE1V08Xf4kR7qvr/rg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DHPy9stVKHqJIGuXH6c0/ke5mwCiFE632atjzbYlULknQxVLlfVGxuPCA3vtZUkjAcSglEPcKwtn0Zd8rPxcN6B7DTR4RJGDrhYAbdjF4anS3ifDtMt5PVIhwPc8J7rm5iwbAUAx8hBgnd0u+7lm71osFtt+i9Hr2n1m6XhhRnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ru1BjncU; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539e7e73740so3000154e87.3
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 10:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730051055; x=1730655855; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N63/GxDEd0wfP94caNCMDYpxPCrMq7BQqlGivmRDQpI=;
        b=ru1BjncU7A48bGD0XCZS05ySvFPHgowOYhwlbBI4LKwI+jOLvfD8RuknPyxzsxFl38
         xP1VQD+JxI+vRj5/pk4Lr6PCj3j7ISNWtcMLFnHO3DcNRm7zZknKLi9OcZOaneRVPiDQ
         iLRbAIf3CmV4T5RJxP71NKMiO6cVhZmiuy8wz5IiflfmfoTQvn8mj6ohGzkO1IsGGFJX
         Td2CEWmYKJpMKfKEx+Ri1OEuJdgWhgtCbHdhZsHW6s4tlnQczLZv9Qgv+W+wY+QcV3EC
         05zLCpVGeUOfjRznntef7e+27z/yf6kV0dYrV2dn85R9lZmDaaGUDZqlaDhmVzvSxcHY
         QG6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730051055; x=1730655855;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N63/GxDEd0wfP94caNCMDYpxPCrMq7BQqlGivmRDQpI=;
        b=GysT9BTFkyJUkQtqd2RZwAMU2W2qfiN11k0XtDM/Tmwy5y0CIJzyKa9Sbd759W4hqc
         W7CjBAjUMWvw/CrHkkcqjxUAUl/rajXzz3XFW0nYElNRjiA4X+12SP47AVIxVgulP/vb
         sJkzEZgbe08a1JF08b5s5mbuF5i/QFAibSsTkHgEUD4espV+IARi8qAwDf2nu7pvRi2l
         99Su8GALr/HBX6UX/a7qGdQnpEIS1kv38jmXEWbAXzFFAVZ4n0nmWaMYnSH7MtqDN1vL
         kgR3F+P3ALgC/ALJsNmyi2l/I042MK8kGVEQu1ETRb1DdYBwO6iK6exPa+iZVMcjuzc2
         oFiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIE0PFuDB2ECEXo0aLEN/aDR1kzRFu/1MUsBbNTpSfmZD9JLCEW/CRJRJ6gSsfzbmaMAG8XIXxKz+B@vger.kernel.org
X-Gm-Message-State: AOJu0Yww1NuWeltfUA+nDzY0UO2PxlGDk1wol8X1baVgGk8mtG2Vo2Yx
	QzT8SsBynjwriii+cdTImZQSkkCe8VEc6mndsLvPGQSr/QhF6HU6Re2ttR+ikxQ=
X-Google-Smtp-Source: AGHT+IEi/BxS5gMf/iVtcnfxqJkFsy//exVzbziM/ENyiYlUaB6IIu+67ZYUw4eK0ffqLydC7BaiXQ==
X-Received: by 2002:a05:6512:3404:b0:53b:27ba:2d11 with SMTP id 2adb3069b0e04-53b348cb2cbmr2582585e87.16.1730051054730;
        Sun, 27 Oct 2024 10:44:14 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1f4322sm825710e87.297.2024.10.27.10.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2024 10:44:13 -0700 (PDT)
Date: Sun, 27 Oct 2024 19:44:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Enable USB controllers for
 QCS8300
Message-ID: <fhgw2re45vn63lqox7vikg3hcak3wjf4wududebw7ow2enrqiq@inajq4l5qqir>
References: <20241011074619.796580-1-quic_kriskura@quicinc.com>
 <20241011074619.796580-3-quic_kriskura@quicinc.com>
 <xijjs445fzeuzbj2bg3ziwlzenrk4wo5zlyze4j5mldb444oj7@73ynic4xqfdj>
 <720aa372-a04b-4b0f-b2da-3be37a319ec9@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <720aa372-a04b-4b0f-b2da-3be37a319ec9@quicinc.com>

On Sun, Oct 27, 2024 at 11:59:44AM +0530, Krishna Kurapati wrote:
> 
> 
> On 10/26/2024 11:06 PM, Dmitry Baryshkov wrote:
> > On Fri, Oct 11, 2024 at 01:16:19PM +0530, Krishna Kurapati wrote:
> > > Enable primary USB controller on QCS8300 Ride platform. The primary USB
> > > controller is made "peripheral", as this is intended to be connected to
> > > a host for debugging use cases.
> > > 
> > > Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 23 +++++++++++++++++++++++
> > >   1 file changed, 23 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > > index 7eed19a694c3..3e925228379c 100644
> > > --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > > +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > > @@ -265,3 +265,26 @@ &ufs_mem_phy {
> > >   	vdda-pll-supply = <&vreg_l5a>;
> > >   	status = "okay";
> > >   };
> > > +
> > > +&usb_1_hsphy {
> > > +	vdda-pll-supply = <&vreg_l7a>;
> > > +	vdda18-supply = <&vreg_l7c>;
> > > +	vdda33-supply = <&vreg_l9a>;
> > > +
> > > +	status = "okay";
> > > +};
> > > +
> > > +&usb_qmpphy {
> > > +	vdda-phy-supply = <&vreg_l7a>;
> > > +	vdda-pll-supply = <&vreg_l5a>;
> > > +
> > > +	status = "okay";
> > > +};
> > > +
> > > +&usb_1 {
> > > +	status = "okay";
> > > +};
> > > +
> > > +&usb_1_dwc3 {
> > > +	dr_mode = "peripheral";
> > > +};
> > 
> > So, can it be used as a USB host controller / connector? What needs to
> > be done in such a case?
> > 
> Adding vbus boost pinctrl and changing dr_mode to host must be enough for
> this case.

Could you please mention those either in the commie message or in the
comment before the board DT file?

-- 
With best wishes
Dmitry

