Return-Path: <devicetree+bounces-86131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D2F93296F
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 16:44:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0E8EAB226F2
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 14:44:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBAE719DF52;
	Tue, 16 Jul 2024 14:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="tzzx+Xar"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9CB1B947
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 14:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721140458; cv=none; b=k+Dc9gqjgFNdlD0/GNQ3g259m++DiMohBvyIh49hIginrcOn6ked5rmhrKVAsj953oaXpiea7Y8jthb/7gnowkH+iEDXdv5+e4cfvCm5NVTnh1rG9CA2Q6JxAj1smleiLSkpfNQgvnO7hhMtbzrggkPXly9l8RsgkB1RN4M2Ui0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721140458; c=relaxed/simple;
	bh=780Gj9ipFL7MZVR7yMgxIX1qeCbWfI9+hl3JZKSOJJg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ezjs/UU26DFDIuf0zea9cPPhFtSb30vLvkpg2oJYM6cPRrlw4YKbt5l5r7LHD/Vq0vDVnpdAcBnf2+mQcL1Y81sQQVKcu/KcwlZWoo0wv9x3MO9jhJsIN4YeebrpkpXHIlJeevqvsyrl8i+jjadmsHxIw7BlcR+Zxr3SEmwfUaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=tzzx+Xar; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-427aeebaecdso15089535e9.1
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 07:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1721140453; x=1721745253; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BAVkx3EkWzVPbDhyx+broZi2jeHwnQ+TpjnD/Y0qoIw=;
        b=tzzx+XarEuZrUcj+WFl2VlKv7/RQu8BSNJs15F2KzWEq1rzaU1IBZAbKm1h4XzLq1Z
         6Z0ApTS+yQL8I7bJIzCvmxo6uCorv4vyqcJMJyOrAg0z1fIg7BkKLsC6y7f4+HbOaO+5
         /qrOfHNkNpc8F/CKf81eLUDQivZvry61t3k/+qbog9Nz2xAR7xWR0qe9Lh7bxZTPTdGn
         +0rHOt9AcR7tzvYSNd/PKMFlSmAGQVPYGkUScY5+CqGago1QRotC1obHl4ooGZXuKxxr
         DS8Qoah6+MUBwSJAg45UId1+oORNfqV6bTv+R+6F6Y61LjLEC5aGg5h0y1UI69SNcEpH
         fLeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721140453; x=1721745253;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BAVkx3EkWzVPbDhyx+broZi2jeHwnQ+TpjnD/Y0qoIw=;
        b=PxnhksoBH42qHPKRXmZAy4tg2Lp+r480VdyG7H8SHiA7Gi+JOfMxg+gjZdaft2DmV2
         Wc13PtrJlu27o7b97+A7Y46ISvasJAydEh4TKvE3qadTggmR3CLQxnVAM9gRLqqXbzdY
         LMsfq0bIpX7u0+HhuPtQdqRezOjtC+QYPfunMTQueLeghhreVkNq2/SgzP9WAkZThqUu
         RX4MRFGo0gOxIpPOAlX/xooh+8sy/r+eIKeASZSs3CkREZqf/sG6satznJRbIQ+h3aPn
         LOflr7tp+wl2nziw8b2lW7jnLalxhNneOoDmHlWDJD8lXV9qYKvL/DacrFCPItOJXWwu
         UYdw==
X-Forwarded-Encrypted: i=1; AJvYcCVhoHwvg2+pr9p4vnYIbbFChnIMPJ0axZbztZ6/p0lRaCiNmZ3dD23BZuNzgrEHV9z5aXtoNMrS3uYtftYR7SQhIh0PiClqMkUVBQ==
X-Gm-Message-State: AOJu0YztfXUDa3IUSjdeLMgEWiPKXcS4M+mza3SQaKPw9F5/sQoJ5HAP
	iZ/oLVtHv0AiDxsfWRAjAByIV8cIAtCT95tCYJRg0f5o5W0A/VyhKiM7K4QOW/0=
X-Google-Smtp-Source: AGHT+IEbL3+rGfLtHK1BYT56NOm8qHwhQGVKOUnQvEVJuXEUOqXILPQU0WPNo6DwBmoJFxBi5izxOw==
X-Received: by 2002:adf:e8c6:0:b0:367:96b5:7852 with SMTP id ffacd0b85a97d-36826314363mr1600419f8f.55.1721140453270;
        Tue, 16 Jul 2024 07:34:13 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680daccb7bsm9198261f8f.55.2024.07.16.07.34.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jul 2024 07:34:13 -0700 (PDT)
Message-ID: <b6f6c845-6094-44ce-8ad0-ed4f6d353cec@freebox.fr>
Date: Tue, 16 Jul 2024 16:34:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
References: <20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr>
 <20240627-hdmi-tx-v5-4-355d5c1fbc3c@freebox.fr>
 <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/07/2024 15:11, Konrad Dybcio wrote:

> On 27.06.2024 5:54 PM, Marc Gonzalez wrote:
>
>>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 100 +++++++++++++++++++++++++++++++++-
>>  1 file changed, 99 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
>> index ba5e873f0f35f..417c12534823f 100644
>> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
>> @@ -2785,7 +2785,7 @@ mmcc: clock-controller@c8c0000 {
>>  				 <&mdss_dsi0_phy 0>,
>>  				 <&mdss_dsi1_phy 1>,
>>  				 <&mdss_dsi1_phy 0>,
>> -				 <0>,
>> +				 <&hdmi_phy 0>,
>>  				 <0>,
>>  				 <0>,
>>  				 <&gcc GCC_MMSS_GPLL0_DIV_CLK>;
>> @@ -2890,6 +2890,14 @@ dpu_intf2_out: endpoint {
>>  							remote-endpoint = <&mdss_dsi1_in>;
>>  						};
>>  					};
>> +
>> +					port@2 {
>> +						reg = <2>;
>> +
>> +						dpu_intf3_out: endpoint {
>> +							remote-endpoint = <&hdmi_in>;
>> +						};
>> +					};
>>  				};
>>  			};
>>  
>> @@ -3045,6 +3053,96 @@ mdss_dsi1_phy: phy@c996400 {
>>  
>>  				status = "disabled";
>>  			};
>> +
>> +			hdmi: hdmi-tx@c9a0000 {
> 
> Please prefix the labels (hdmi: and hdmi_phy:) with mdss_
> 
> Otherwise, this looks good
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> 
> One thing I noticed (testing on the 8998 MTP), enabling MDSS (not necessarily
> HDMI, mdss and mdp is enough) results in SMMU lockups about 30% of the time..
> 
> [    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.913412] platform c901000.display-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
> [    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.930647] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/display-controller@c901000
> [    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.952338] msm_hdmi_phy c9a0600.hdmi-phy: supply vddio not found, using dummy regulator
> [    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.967917] msm_hdmi_phy c9a0600.hdmi-phy: supply vcca not found, using dummy regulator
> [    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.984122] Bluetooth: hci0: setting up wcn399x
> [    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]

Interesting. I don't think I've noticed any lock-ups
across multiple reboots.

FWIW, I get similar warnings about "Fixed dependency cycle(s)" on my custom DT.

[    0.055349] platform 1da4000.ufshc: Fixed dependency cycle(s) with /soc@0/phy@1da7000
[    0.055525] platform 1da4000.ufshc: Fixed dependency cycle(s) with /soc@0/phy@1da7000
[    0.055584] platform 1da7000.phy: Fixed dependency cycle(s) with /soc@0/ufshc@1da4000
[    0.060279] platform c8c0000.clock-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-phy@c9a0600
[    0.060494] platform c900000.display-subsystem: Fixed dependency cycle(s) with /soc@0/clock-controller@c8c0000
[    0.062432] platform hdmi-out: Fixed dependency cycle(s) with /soc@0/i2c@c1b5000/tdp158@5e
...
[   18.534346] adreno 5000000.gpu: Adding to iommu group 2
[   18.540215] msm-mdss c900000.display-subsystem: Adding to iommu group 3
[   18.544695] platform c901000.display-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
[   18.551239] platform c901000.display-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
[   18.562685] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/i2c@c1b5000/tdp158@5e
[   18.574122] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/display-controller@c901000
[   18.617640] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/i2c@c1b5000/tdp158@5e
[   18.618885] i2c 2-005e: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
[   18.627768] tdp158-bridge 2-005e: supply vcc not found, using dummy regulator
[   18.636853] tdp158-bridge 2-005e: supply vdd not found, using dummy regulator

It looks like some of these warnings were pre-existing,
but some might have been added by my patches?

Do they need looking into?
I'm slightly confused.

Regards


