Return-Path: <devicetree+bounces-136322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C93F3A04C7B
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 23:36:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2CCC53A55AF
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 22:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97EB51B07AE;
	Tue,  7 Jan 2025 22:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wFoHTiGV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94A86199FC9
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 22:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736289385; cv=none; b=LOiBEJbV7+5VT2MnlYe1pvFpuBT3nZFSy5da2E20I7PUBya2TRQLhG5SCN7C8Iw9sC8IiRvVBiveJjarGdP08JukPL2/DBTgHYhvYiZDz/Yf8Vt+ug160y1jW6KD00dMp8hlBLVX6AVkYCLfth+uVq1dx+uq/qS0YB5LPpPj/j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736289385; c=relaxed/simple;
	bh=lOGBi/dp0P/iXOekSeQaqINO0H2TAMk7HjUz1XdtwTI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e57GgUHZU/biWP+6Tm9CSAsv8Z2rEGSTrwpFsmLhYUi1boFwExvgwHlh8yJewLk344uoNM72zQno6PJaHmUiSASongGCuHOJXR5/df8OdSe6LSnlNKCGc3egpXzGxgB4i9+MtONMr9XdGULUBNF/J3NB1lMLtVw7aCxioNET2Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wFoHTiGV; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-54026562221so17127149e87.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 14:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736289382; x=1736894182; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vMISyp8hjXFa2TqyuFC9YGrFh0SxgMd4glaeVKBHUSo=;
        b=wFoHTiGVj1032UVSbfPVOEdd5zSaeSp2Tzohd2TF/W+zZX+ra5rm7ftmSJyIjoCUIz
         6uvNtbnEncQJ6ZtQUxpZOqk/IrGg3TXOH9NAjqzh64ppcFbrdq8cQGpLFK1+AfyS5QTa
         xo4hBqxUZAVjlIzgaOgGdIjcuUdTlc4xh3mMtTV7NTpudu08GtJ1UFydUhSlFevZTzo3
         3AJ2QjGE4Fdd1nPpvv88jRAJppCOSd48s6KAa6Zqwn17PgLco/texi9To9aNTNRn9M3+
         UpLctht60AC742gP+i/k5fZ+IxNpm5dDiiQg7i2aGjCtsAeNyKvi3wGXPY/orDRvyMok
         uhqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736289382; x=1736894182;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vMISyp8hjXFa2TqyuFC9YGrFh0SxgMd4glaeVKBHUSo=;
        b=a+9k8GuI6C/gzun2Fk89cMpBJ6FX/EQlZG8iVz/fnBccjFbqkUxnjXkXdW8XRKoEy4
         ykKY3sHoC68gIBz9m87MIdqCa2eWeU9v1JAgL+tNBtZ1uOkikxfDf7JAOn7a2Je6fjKW
         SYJtZ8VpJIdmwL3XCedpIvIzWZdRDdHg7iu+0TLWbwCQMq+Sr5hyqcxSHtrwXiieDBj9
         3RFqEZnVvqY77id1x3n645FfIod7BEPjCccA483/+zmufHt4p1Usa6AvhFcBbYMvZp7S
         B+TOxPn4zWxtukGzgWiPoB7mLFcnRxX3ySVlW6s12xtqXZFBjZm8AQZMFQTyl4/lAtn9
         9/1w==
X-Forwarded-Encrypted: i=1; AJvYcCVWlh7ObFn1LrkmGNRqJZ1LxrJXVqvwG/i1iLqR16U29C+GP47FzrLtP/4/KBq7G7TkvNftNjvndo8E@vger.kernel.org
X-Gm-Message-State: AOJu0YwcEKP5WWx9H/u6tubPQYFeF5FaHdVnvlNoMkP9ga1tySz1+HSC
	9h5tw2qU8bukqXde5pAJVYSuhSBIuwcAHP9aIxM3wXYK4YVNeaHjNbwu0q98EngbMBGg1LnCLOJ
	l
X-Gm-Gg: ASbGnct/DHEKEIsblrifImCZcUjvcYrXgeb3oP9SUxL5jqvzjQVhplDqZVd2m7Eo+m+
	7CrCf+8Y5By+OSiZuFtEs+2PKU2ZSRVYnNJjclj61yf2s6SfHw+xkw/5nsn+cgSEDvKOXsuBBVa
	ILUODd5sr3T5e78JhtcHNa4t6H0Tt1/UWcVh6i8Flf8tH0iX3LVRuB7JFzyLazLqRw7ODSkZ9Vp
	C6rnoYNphAocEWnRbq3sLo08Degc3Wyun7448Yju08HJE00UH5QDO+G1+1VnR4Zx3k9vNgrh0E7
	UEadSN5WwJgDl3LVcoORyLS63fLB3hfI/ahR
X-Google-Smtp-Source: AGHT+IGl8271bjARGx+9WnI8XCLW5vsddlIYolMsA//DxW2vDKnbu+pgC7EKJfmOJ60v2ZvZiNOvQg==
X-Received: by 2002:a05:6512:3b90:b0:542:214c:533 with SMTP id 2adb3069b0e04-54284559eefmr143332e87.30.1736289380867;
        Tue, 07 Jan 2025 14:36:20 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832c26sm5339629e87.279.2025.01.07.14.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 14:36:19 -0800 (PST)
Date: Wed, 8 Jan 2025 00:36:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vedang Nagar <quic_vnagar@quicinc.com>
Cc: Luca Weiss <luca.weiss@fairphone.com>, 
	cros-qcom-dts-watchers@chromium.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	"Vikash Garodia (QUIC)" <quic_vgarodia@quicinc.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: enable venus node
Message-ID: <vzafzur7ci4klp6cup5jpbhw2adjtgew2dlcogucganmpvsqmz@axdhktuypzlg>
References: <20241004-venus_sc7280-v1-1-4d7d8fd7e95b@quicinc.com>
 <kezh3lmysij56g2tjwwuas5r26ro5i777yxxitsdcjeg7zp67v@oknrdbkzison>
 <78e6ff6b-efe1-496c-a1fb-c9a0a4aba2d2@quicinc.com>
 <CAA8EJpqqZL7xybcbJMsbTQB+ht5-A+ocNs+Sq30j=v1zM3JL9g@mail.gmail.com>
 <fbba794a-ba04-4790-b5e9-b4df3cba35b2@quicinc.com>
 <D5KAUZHYJHFS.1NXF5SVWYL03G@fairphone.com>
 <39206687-6fb3-434f-b2ba-a028cf6f8ed3@quicinc.com>
 <D5KW7A8BZG6K.2L7FEV6SWRZ2D@fairphone.com>
 <26b3aee7-5729-447b-983a-cfa5951595ba@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <26b3aee7-5729-447b-983a-cfa5951595ba@quicinc.com>

On Tue, Jan 07, 2025 at 09:41:56AM +0530, Vedang Nagar wrote:
> Hi Luca,
> 
> On 11/13/2024 1:33 PM, Luca Weiss wrote:
> > Hi Vedang,
> > 
> > On Wed Nov 13, 2024 at 8:01 AM CET, Vedang Nagar wrote:
> >> Hi Luca,
> >> On 11/12/2024 8:49 PM, Luca Weiss wrote:
> >>> Hi Vedang,
> >>>
> >>> On Tue Nov 12, 2024 at 3:39 PM CET, Vedang Nagar wrote:
> >>>>
> >>>>
> >>>> On 11/12/2024 6:43 PM, Dmitry Baryshkov wrote:
> >>>>> On Tue, 12 Nov 2024 at 08:17, Vedang Nagar <quic_vnagar@quicinc.com> wrote:
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>>> On 10/7/2024 1:20 AM, Dmitry Baryshkov wrote:
> >>>>>>> On Fri, Oct 04, 2024 at 04:22:31PM GMT, Vedang Nagar wrote:
> >>>>>>>> Enable the venus node on Qualcomm sc7280. It was made disabled
> >>>>>>>> earlier to avoid bootup crash, which is fixed now with [1].
> >>>>>>>
> >>>>>>> NAK, there might be other reasons to keep venus disabled, like the lack
> >>>>>>> of the vendor-signed firmware for the particular device.
> >>>>>> Can you pls elaborate more on this? Any device with sc7280 SOC can use
> >>>>>> venus.mbn which is already present in linux-firmware git.
> >>>>>
> >>>>> Can it though if the device is fused to use vendor keys and to check
> >>>>> the trust chain?
> >>>> Yes, infact the existing ones are signed and works with trustzone authentication.
> >>>
> >>> No, the venus firmware from linux-firmware does not work on a device
> >>> with secure boot on, like the (QCM6490) Fairphone 5 smartphone.
> >> Are you saying even after applying this [1] you are seeing the same ?
> >>
> >> [1]
> >> https://patchwork.kernel.org/project/linux-media/patch/20231201-sc7280-venus-pas-v3-2-bc132dc5fc30@fairphone.com/
> > 
> > That patch has been in mainline since v6.9 and my tree is newer, so yes.
> > 
> > See e.g. Qualcomm doc KBA-161204232438 for some details.
> > 
> > Regards
> > Luca
> > 
> >>>
> >>> $ rm /lib/firmware/qcom/qcm6490/fairphone5/venus.mbn
> >>> $ cp /lib/firmware/qcom/vpu-2.0/venus.mbn.zst /lib/firmware/qcom/qcm6490/fairphone5/venus.mbn.zst
> >>>
> >>> leads to
> >>>
> >>> [   10.848191] qcom-venus aa00000.video-codec: Adding to iommu group 13
> >>> [   10.863062] qcom-venus aa00000.video-codec: non legacy binding
> >>> [   10.909555] qcom-venus aa00000.video-codec: error -22 initializing firmware qcom/qcm6490/fairphone5/venus.mbn
> >>> [   10.910099] qcom-venus aa00000.video-codec: fail to load video firmware
> >>> [   10.910849] qcom-venus aa00000.video-codec: probe with driver qcom-venus failed with error -22
> >>>
> We have seen similar issue with older firmware present in
> linux-firmware git due to a bug in singing of the firmware image.
> 
> This issue seems to be resolved with below change:
> aeede7afb7a186b62f9e1f959c33fd5f2dea0f7a: qcom: update venus firmware file for SC7280
> 
> Can you pls give a try with latest firmware if you still see the same issue?
> We tried internally and do not see any such failure now.


Have you been trying it on the FP5 (or any other vendor-fused device) or
on the RB3gen2, fused to accept any CA key?

> 
> Regards,
> Vedang Nagar
> 
> >>> It's the same with e.g. adsp firmware, modem firmware, etc.
> >>>
> >>> With secure boot off, yes, the hardware will load any firmware
> >>> regardless of the signature.
> >>>
> >>> Regards
> >>> Luca
> >>>
> >>>>>
> >>>>>>
> >>>>>> Regards,
> >>>>>> Vedang Nagar
> >>>>>>>
> >>>>>>>>
> >>>>>>>> [1]
> >>>>>>>> https://lore.kernel.org/linux-media/20231201-sc7280-venus-pas-v3-2-bc132dc5fc30@fairphone.com/
> >>>>>>>>
> >>>>>>>> Signed-off-by: Vedang Nagar <quic_vnagar@quicinc.com>
> >>>>>>>> ---
> >>>>>>>>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 --
> >>>>>>>>  1 file changed, 2 deletions(-)
> >>>>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>
> 

-- 
With best wishes
Dmitry

