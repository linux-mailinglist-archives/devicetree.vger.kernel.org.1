Return-Path: <devicetree+bounces-175287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C14AB05E9
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 00:20:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 466251B60D37
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 22:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91D0B224B01;
	Thu,  8 May 2025 22:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XTZR0Nfg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF67821FF3C
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 22:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746742814; cv=none; b=BsBaYIjYxzhlnFNVbOL2zQ/lcESt8tMseeEdDAZIvdQMN1kadIQjz+1spy+LhDvneafERXVmzsJ8tTBE5gd5hBnSlFG5TFeGP6QXuJj4/eFmo+JrKVi4hKd+g2zbQAAOm3Im5HMiRq4US3tiomh6YmxN+B/kyTlhTnjnkPCvXog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746742814; c=relaxed/simple;
	bh=8jVG2Y4+gQ8pZk3n45eHG1gfNLG0R+Q+iYY7hvNL6OU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Tm2e5xxKlTB6PR5ibvsbD1SCzZ+ZSv0zxfDrXQi6VqcRSuCVM4d9hmU5Zh1TBJP38RQQnSd5rbNDBvC6+UuysSuUzilnwYZ/+SA99Q9AIXzaI6Sh9V7tbCdmW1K8kNXryG6o08DxCg+5p48LXX83Kg5dGWCvIlKlZNBr/zhr+rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XTZR0Nfg; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so11445525e9.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 15:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746742811; x=1747347611; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9qeTG18LlcwANY+r6vVAi8oKprRlbWWzGEVKGSZnnmg=;
        b=XTZR0NfgNFLjNDLO4QHqQWcluIGl5H+DYsSAEyl42rFy4WG6o/upybvrWyltHh6Ved
         Mw02/x3HaQEk9oZQohtddVqT5p0lz4uTJW531LYoDYGWPQhRAVveAZp1J0TZZtoAtb+E
         r5jsrrjsSz41juDr4KqurtA2NP2RdwrVo/WnoOysRekbE6+yQ6yjZb4IBOdUqllA0msJ
         Wmslh41RGg0d6rn6D7IbcyGxEG6AoNAcPwRft+zQItpzf13Hv33zzA29faNAjRrIhWB9
         BeHnpn8h8ORf2jO3+vTC0/Yq6/10A8RosLj2k+YsLV6tZTE4B6sZLEUW7IfPJlQXoKrP
         yELg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746742811; x=1747347611;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9qeTG18LlcwANY+r6vVAi8oKprRlbWWzGEVKGSZnnmg=;
        b=eboifm1meS6raDU6OaDQMGTaF6GaLLWSvmoNWHYGnWb2GQP6oczJha96i9vl4Z+IgX
         P83QtGOcKcL7R0igGwPZCFV1wwAokxXf0SzfRCZItFI40/ue+OZvqsuaxgdWrRtygIO4
         bmYr/fiyZWAsiiuJzk1XROm+WHFk/4VFJZG7Iz6EexIAgp41h5Fx1C2LG8a2QZMK8ARS
         DDiBpsNceAGolWOVm9hoLJAkPv57u9w0RdaeROsxeaLE1Q3HN8LWQeq7gcmIl1180No4
         040QvhxXmX23SbNOciBQrnqXoR65vHNuN6LeH2cI3/afz2mnsLL7lJgy+g8P6cPq5k8r
         FIMA==
X-Forwarded-Encrypted: i=1; AJvYcCV9+1RPMgdZtv2M1G4ZHBaRh3SR9q8EmT57MVxvkumKsPCHxDmcMVQidn2uFT/GnIFHquYRtiGG2/xx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg0MQ/5CwDq4ZS+2sgaNDCi9PjAYdU5DFY6rgPVRNQmdJmuTy7
	ORzfraD672F9P1YyC7Bljc37OQMjLI7ow1/2Y1nQzj4/4Rv5JdsDY+o3FJNjvWI=
X-Gm-Gg: ASbGncsmY+fZPbZXrwqKMbjf9nen7rOLGgczOR17GcwbsDHjqAo00UfjUiyWUGl7HXc
	Cm7ZG8noqP9yXWwE3zS+0YFWjFnCAaogrNy/trqDLGyn+AG/XrAkJNCUEYCnPI165T79dycSCX0
	hla/9onwIioPsR0xpDXOCDCa0ObgB5f/eywmOpRmCeWw6PYBWKtpMTtw0aqNiAM56oYks0i1njr
	aheBWI+q6AG064i5Ny2ruAYkbboUrukveLdGJf67J2RKBRcSGLj+kbaYSzebDNssl3t2G9+FBWl
	LXrhtBz9te5dbTaPaLn1Sdb6FJI/PPW2vcj+NGHN
X-Google-Smtp-Source: AGHT+IFNJ7Gi970i7bPc0iWkD5GHmhHRZeXN9OkzflaFGz8KLIOBP4AoxOK+OI9a1TIMzF17BR9SKQ==
X-Received: by 2002:a05:600c:609a:b0:43c:eeee:b706 with SMTP id 5b1f17b1804b1-442d6dd246dmr8546325e9.24.1746742811044;
        Thu, 08 May 2025 15:20:11 -0700 (PDT)
Received: from localhost ([2.216.7.124])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442cd34bd79sm50210065e9.23.2025.05.08.15.20.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 15:20:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 08 May 2025 23:20:08 +0100
Message-Id: <D9R4NCKH46WP.14C8F7W4M58ZQ@linaro.org>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <srini@kernel.org>, <quic_ekangupt@quicinc.com>,
 <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add adsp fastrpc support
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>,
 <andersson@kernel.org>, <konradybcio@kernel.org>,
 <linux-arm-msm@vger.kernel.org>
X-Mailer: aerc 0.20.0
References: <20250502011539.739937-1-alexey.klimov@linaro.org>
 <10f69da3-6f94-4249-a8f3-459dc48fa5e1@oss.qualcomm.com>
In-Reply-To: <10f69da3-6f94-4249-a8f3-459dc48fa5e1@oss.qualcomm.com>

On Fri May 2, 2025 at 10:38 AM BST, Konrad Dybcio wrote:
> On 5/2/25 3:15 AM, Alexey Klimov wrote:
>> While at this, also add required memory region for fastrpc.
>>=20
>> Tested on sm8750-mtp device with adsprpdcd.
>>=20
>> Cc: Ekansh Gupta <quic_ekangupt@quicinc.com>
>> Cc: Srinivas Kandagatla <srini@kernel.org>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> ---
>>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 70 ++++++++++++++++++++++++++++
>>  1 file changed, 70 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/=
qcom/sm8750.dtsi
>> index 149d2ed17641..48ee66125a89 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> @@ -7,6 +7,7 @@
>>  #include <dt-bindings/clock/qcom,sm8750-gcc.h>
>>  #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
>>  #include <dt-bindings/dma/qcom-gpi.h>
>> +#include <dt-bindings/firmware/qcom,scm.h>
>>  #include <dt-bindings/interconnect/qcom,icc.h>
>>  #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>> @@ -523,6 +524,14 @@ llcc_lpi_mem: llcc-lpi@ff800000 {
>>  			reg =3D <0x0 0xff800000 0x0 0x800000>;
>>  			no-map;
>>  		};
>> +
>> +		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
>> +			compatible =3D "shared-dma-pool";
>> +			alloc-ranges =3D <0x0 0x00000000 0x0 0xffffffff>;
>> +			alignment =3D <0x0 0x400000>;
>> +			size =3D <0x0 0xc00000>;
>> +			reusable;
>> +		};
>>  	};
>> =20
>>  	smp2p-adsp {
>> @@ -2237,6 +2246,67 @@ q6prmcc: clock-controller {
>>  						};
>>  					};
>>  				};
>> +
>> +				fastrpc {
>> +					compatible =3D "qcom,fastrpc";
>> +					qcom,glink-channels =3D "fastrpcglink-apps-dsp";
>> +					label =3D "adsp";
>> +					memory-region =3D <&adsp_rpc_remote_heap_mem>;
>
> IIUC the driver only considers this on the sensor DSP

Memory region is required for audio protection domain + adsprpdcd as far as=
 I know.

Thanks,
Alexey

