Return-Path: <devicetree+bounces-175622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD82AB14DE
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:22:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EEEC11C46D74
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:20:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B674293B7D;
	Fri,  9 May 2025 13:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gl9Ntu17"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D92293B76
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 13:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746796575; cv=none; b=hgGGfDxW+C3PFQEcyZdlx8DZyizKEwxfEe6H99+Gfb4z/trxh2Bg16eMKUto0Tpxi20pagv8hyalh/ZhsQfnEhvW0ktA++moOXrwkJ1Y7uqHBVtn8+nGmExyrkqiQ7CisZlyEmf7vF3yATyjKJItagI79e62lMdh4SvvMC+QFCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746796575; c=relaxed/simple;
	bh=nE1sJO6bMmV950ItAbVKzV+JgkjWCGTAhZok68459nI=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=CIWh/yr4B43PtW3EG/PnEWdd+yTPjmznlPUp5iTMJ3JLafBnuzntVarLjYRn2XwZbsF5atjA8XKb59Efx2tCo8Op4oEF0obLN4Wr7FjAO2oxiaoB6Y+Cg2xoYnH9llJXdFgPgfpxVc5nrrmig1NJGAJ9NdmhJ1BO+dRbmaRGAas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gl9Ntu17; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-442ccf0e1b3so22269575e9.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 06:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746796572; x=1747401372; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t5Ch2Ix3jCa2oxbXfzb8ACl1u50kIZHwmzKlROnIIFE=;
        b=Gl9Ntu17YAnXr3HaSGwMx/F5QNJYX11JP4CJEo2lo8nMLJhoZyRVkiCY0/4cZmDX+5
         eMKpPxVm0UwFZB2277T2Z24/NMCbc+273qaR9mROnxHCPiShrn00XR0GC9bRDNBq3yxf
         9HAcoPtkrd/7UbtmVVtE0UNCkre61O1BoYaZRAFSIU902FqHsnw1e8f6Ex5VzBR51SvQ
         xz9zEN6F2/4S5SJa/BRvKI4GXkNOHaKoj00U+ZswqzLQUrHOQHLa4UXsnv/KULSA74r1
         emSK6F7i0gH2u26/z9DRVpCd+z5bmJxpoTfoZM0eyhq9wz0Thb05heM2d5nE/tY+60bQ
         UMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746796572; x=1747401372;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t5Ch2Ix3jCa2oxbXfzb8ACl1u50kIZHwmzKlROnIIFE=;
        b=XkByVPCkwrpfNzEJRZBZzklwXBPmKlUKQsEbmpUd3lYym/IEGyjH1O74Muo2lFq9F9
         Yuog+gRUPCMRZHkeN8cl74mZivWMWxUyOKbXk/vikcZ4/rYnXCrR6peBuhnx2ThKWEj0
         PQkGiNM8fjvCjeJHvilbXTIPAHJXlBSQVDgn9oRspfvN3m13ecz2pGnK588Zk1+ThDC+
         iEYf97XS+WImAI8ZJO2ZmYo4PIOvftb08aRDQlsX0cOH4W221m84cGYMxBMPrI5GjRUP
         a+OK29sxxVMuSDqRzLh2xOCvP37mcHixADAmkQp0fZwM10ryRR362C8X03TRCouFUU4q
         LL0g==
X-Forwarded-Encrypted: i=1; AJvYcCUbR3UzO+BR9/U97IibTvESL9u0JIxOkqlHN1w1VWjS8N16VZT0WiGhUOAIqB48CfktPwbpnUZipIUQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwyU/jkcjXrmVWaXUK6/lCxW5itXuYerGAxeP/Ae5Hw/0BLI+e/
	BD+z5ESmDIrA3R2ojzTVLxLc7wAuEFOQqqnu+nl5HmK8UNbI16620WLsTixoYrw=
X-Gm-Gg: ASbGncuMcSi6pfX6WAS9+oMx8qK9ZzYug+g6Prk9Lfv4AJ9I9O+lO203XWlPoq7MZha
	3aeU0NBZNZlsroS8TfyRb6d0PJQBzWsnFLWQCNeJ5nQAGUlK6TfHskSze0jecWEzyGSQ4kXF4Xb
	/QPrw0Rxf29z/l2DO5dMpWOlEQf9SAR6icJttPr4+TUhr/5fipkb4QdTfOQ/4WNETdpA3DrX8Yb
	x+d57NyYb0v52nc3Kwvm6IQn8zhZzF2UXC/FyVXRFkOAXcr5jU56psi115E+nVq1wFBeBaTXpCL
	z7td2P7B89BbnRwZUXVLf+Vaq0uau9WetC/02aCNo8Pyeg==
X-Google-Smtp-Source: AGHT+IHOeVl956z9ZA+/rmH/CqsgSIc1EBvEUzZVkZ1heuJiPGNSlBg/CUUO2b7r81RCL0ma+aBi9Q==
X-Received: by 2002:a05:600c:6308:b0:43c:fe15:41c9 with SMTP id 5b1f17b1804b1-442d6d3e6d9mr30377825e9.9.1746796572001;
        Fri, 09 May 2025 06:16:12 -0700 (PDT)
Received: from localhost ([2a00:2381:fd67:101:6c39:59e6:b76d:825])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442cd3b7dd5sm71167815e9.35.2025.05.09.06.16.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 06:16:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 09 May 2025 14:16:10 +0100
Message-Id: <D9RNPEB01S78.24ONMK7M7HHSK@linaro.org>
Cc: <andersson@kernel.org>, <konradybcio@kernel.org>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <srini@kernel.org>,
 <quic_ekangupt@quicinc.com>, <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add adsp fastrpc support
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Srinivas Kandagatla" <srinivas.kandagatla@oss.qualcomm.com>,
 <ekansh.gupta@oss.qualcomm.com>, <linux-arm-msm@vger.kernel.org>
X-Mailer: aerc 0.20.0
References: <20250502011539.739937-1-alexey.klimov@linaro.org>
 <bf9291e1-bdad-4b4d-b527-b21963970902@oss.qualcomm.com>
In-Reply-To: <bf9291e1-bdad-4b4d-b527-b21963970902@oss.qualcomm.com>

On Fri May 2, 2025 at 11:51 AM BST, Srinivas Kandagatla wrote:
> On 5/2/25 02:15, Alexey Klimov wrote:
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
>> +					qcom,vmids =3D <QCOM_SCM_VMID_LPASS
>> +						      QCOM_SCM_VMID_ADSP_HEAP>;
>> +					qcom,non-secure-domain;
>
> Any reason why we what to mark adsp as non-secure domain by default?

No particular reason. That's what we went with on other platforms, so this =
just follows
the same. If we need to update this flag to secure then most likely that sh=
ould be done
for some other platforms as well.
The only thing I know that adsprpcd + audio pd works with non-secure flag.
I can try to re-test with secure flag.

Ekansh, do we have any preference here regarding this?

Best regards,
Alexey

