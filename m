Return-Path: <devicetree+bounces-122149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D27F59CEDE0
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 16:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D94F0B2754B
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 14:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38221CEEB4;
	Fri, 15 Nov 2024 14:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zo5j7Pcb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9941CEAD8
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 14:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731681918; cv=none; b=IO8CS64dbTSZpbH2nxeUZp7tkFd1+4tgDrcvZBKRrGtTsSx9Xtcnm8BccPt//LJQRmkeVWPDLAzJB4ccfzZwf9GFzdBn6kc2dmazgRbR42a9Xm/W4ePvTgV6VJ8SybvsMIBzEDXDTpUOpW/un55RJJQzFOEQm1DonUVSAjlrbt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731681918; c=relaxed/simple;
	bh=/oDXbwttOuykfRaL+9wm3l68yf7AN2jFgg8NQhGn84o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GoeE/NNp+PX11LabcbCNUcD+9RlkCdkux/uw2dTYlgs1LbtsmnEiUWAzex4s7V/suhO1QwZFN/GOkTXuS4levcAdS3KsKoPnqYgDg+L7hfkxcLD3lWpWbI2IqiFAd1ef2hMBGIfmvbMKpnYtg4xNHhPxoIEIdIiPW2JpC6Lbar0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zo5j7Pcb; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53da6801c6dso691362e87.0
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 06:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731681915; x=1732286715; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BYYrJ3QMaKeBeww6Qr4YMvDYI5JLF5jZeKTgnHSYPoI=;
        b=Zo5j7PcbWznEbCnSc02yhezLcn2igKBoyRQdE1JJ7MvUlKKnKt1iRpFQuis1RfEcnf
         RT4DAUx0+nqXnD3iHWq/qSyiqyBbZE+GPEmuJ/px7WGXn6d2GLF3Nm5oUFkfaqk95X57
         5S3SwKKTzhMvKbwvfB+gY8l6MKw6ytn/eY835jtpqZ3h3rmaq9gW9v+qe7VG6Un7BScp
         G8B0t99M/vC2B8oh2W6Q77jhC6vJudykijgRLO8EsmO9Qeq0TUbwCEJDT1tH1/xa4AUq
         tNytfogo2hW/y7DFhV9WA31y2Vlt7mBs0Y4eCLavQ4q03QR+dNfsMROKE7agZ+xwXPBe
         qVZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731681915; x=1732286715;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BYYrJ3QMaKeBeww6Qr4YMvDYI5JLF5jZeKTgnHSYPoI=;
        b=eNR56Pb1mV4s94GmMkcuyyEg6kK2hx1Dgg41jeYwcxhb8UhUSldMdUHq/UFb6hJ2KQ
         g0Y5AdKW+GrPenJotaso0kRmUBNQwJ4Cnwg72Y/XAqLPy67cicmWRHXP1RoOMU9AbqSz
         bXkUviKBYcdfePAyHppWFzwkJlyWGnjhpHoHAW7twkUEvp6ODLBmDtlbQI4McSraqMRz
         HOBvjSGGpE7l2Qyn2Gc3GO+9v8iOAZz4bWMcUFohShYsrfX5I3rmTl4KiqVJIhG+7Nt8
         W6MvyxuIAQfWFk+aGaynzUkVBjdApcgv31SvPsCCo2IkYFO67RUrmroI6pdqGAJ1JPoJ
         jwsQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3GXU8W4y1ZYHQNvkyeOkcCpjTeWoRTyyWHTJ5hr+H9gJZPOqDDmzklxkC6FLWLzLNGo4lJZTYrw4q@vger.kernel.org
X-Gm-Message-State: AOJu0Yzcce7LfaOltVOSnjLx9OcMI0ZIyMEsYK8YMuXPM/us3xAiJ4FD
	FJlxSar8c6ffH8vg6FpDAgyplfkx/g3jk29Zee0P2ijnHPSR/xJZrpl/uf0fkXA=
X-Google-Smtp-Source: AGHT+IH4WWbJnLsxZmJMUOm27aAhqJLobkNJkGiDlPVWvRUcFG8GD58Yh8wTqXHxrAKbB2ce88gyuA==
X-Received: by 2002:ac2:4e14:0:b0:530:ae4a:58d0 with SMTP id 2adb3069b0e04-53dab295eefmr1607819e87.8.1731681914884;
        Fri, 15 Nov 2024 06:45:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da6530b70sm593063e87.114.2024.11.15.06.45.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 06:45:13 -0800 (PST)
Date: Fri, 15 Nov 2024 16:45:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ekansh Gupta <quic_ekangupt@quicinc.com>, 
	Luca Weiss <luca.weiss@fairphone.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, cros-qcom-dts-watchers@chromium.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	srinivas.kandagatla@linaro.org, quic_bkumar@quicinc.com, quic_chennak@quicinc.com
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7280: Make ADSP a secure fastrpc
 domain
Message-ID: <7grzazq7tfv3kixnevia2fkebe6o352372g3gpdinqeihmuavl@6qxd6vvwcwgt>
References: <20241113050042.181028-1-quic_ekangupt@quicinc.com>
 <5oqzxppquoeppt6xnjfm2rdwm23hbui5k3caz5v5ffqzizepob@dz5ikvzgbd4x>
 <c1f0e56b-b489-4370-99e3-0973641410b8@quicinc.com>
 <CAA8EJprDTz7b4rNtR4e9A-=j9_z-aJGBg3+g5is8Bmy=cgTM1Q@mail.gmail.com>
 <b8a9a8f5-1f36-4eea-925b-84578e71838d@quicinc.com>
 <sbkm5wvhtjoluhz7mi7f2wyc4t5znhazcxra52cd5yev5iksbi@yqielk6i7bpe>
 <9b16f4d8-56ea-4ef6-9cb5-35750af871e9@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9b16f4d8-56ea-4ef6-9cb5-35750af871e9@quicinc.com>

On Fri, Nov 15, 2024 at 05:40:23PM +0530, Ekansh Gupta wrote:
> 
> 
> On 11/14/2024 5:30 PM, Dmitry Baryshkov wrote:
> > On Thu, Nov 14, 2024 at 10:49:52AM +0530, Ekansh Gupta wrote:
> >>
> >> On 11/13/2024 5:20 PM, Dmitry Baryshkov wrote:
> >>> On Wed, 13 Nov 2024 at 08:18, Ekansh Gupta <quic_ekangupt@quicinc.com> wrote:
> >>>>
> >>>> On 11/13/2024 11:13 AM, Dmitry Baryshkov wrote:
> >>>>> On Wed, Nov 13, 2024 at 10:30:42AM +0530, Ekansh Gupta wrote:

[...]

> >>>>>>
> >>>>>> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >>>>>> index 3d8410683402..c633926c0f33 100644
> >>>>>> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >>>>>> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >>>>>> @@ -3852,7 +3852,6 @@ fastrpc {
> >>>>>>                                      compatible = "qcom,fastrpc";
> >>>>>>                                      qcom,glink-channels = "fastrpcglink-apps-dsp";
> >>>>>>                                      label = "adsp";
> >>>>>> -                                    qcom,non-secure-domain;
> > - Are there other platforms which have this flag set for ADSP?
> Yes, there are a few platforms where this property is added for ADSP.

Please clean up all of them to reduce a possible chance of different behaviour or further c&p errors.

> > - Granted that sc7280 was targeting ChromeOS devices, might it be that
> >   there is a CrOS-specific userspace for that?
> FastRPC nodes were recently added to this devicetree recently. Looks like this property is just getting copied.
> It might be that fastrpc was recently tried on ChromeOS device or it might be added to support some other devices
> that uses fastrpc(qcm6490-idp etc.).

Indeed.

Luca, could you possibly comment, as you've added ADSP / FastRPC nodes?

-- 
With best wishes
Dmitry

