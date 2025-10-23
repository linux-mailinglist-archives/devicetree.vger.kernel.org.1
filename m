Return-Path: <devicetree+bounces-230053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C05A2BFF460
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 07:49:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB2A43A9A8D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 05:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B435223AE9A;
	Thu, 23 Oct 2025 05:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="do5rqrOb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD252417C6
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761198527; cv=none; b=Le6Q+BDpPr4BQ3e/zdchr4leBvn8Yv5w78H+UMlOEux1ViJL4o6U9hra/vXOWoOF4R2+AbWsDF/hODWH4TDbK1babwic0WqddPMbLehRs1JofWNG+6PPBWWRMF+9GVUvtrs+eRS4IZ6I52+Ec/90ySEfaFs8Z8pG1Gp074Rf9Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761198527; c=relaxed/simple;
	bh=fFdc6396YV3qp8gHpYWiJRpX9oEEQS3+ZskvtYbqz7A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mk4qzvM3ebweVezKopBsQFzfXdFMLZQ2NBJciTu+sqnqRGthZxNjek+ORebt0J5OBJsLm43nvZPCi49wfRkrP22dciaPwlsTneWFSbw3zXRGwauKA5O09JY4k+73mJ3yfqyHmfBdaShbSS3olcT0iAstRDPd7ve9aJi5VPHPGEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=do5rqrOb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MIenWm028777
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:48:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JrAbvaR3kj71zFeYFeuk9mY4FfPnNJxO9jJ+OKKpEqg=; b=do5rqrOb1CS/5n9q
	KO2H2BnBuoSrvBwZSUxJ2vPi9PauQbZWra4+6/gsZ+zzB9Np+AbVJX2mmWMT8Qbg
	yU1EH+hhndsqLIlIFBFT0tjgUcE1asBe4Wd+QOgEHt6tG9Ww8oTUSHJS2YtaepEE
	2gskGzi37hajMK2p+cxbfWGWFSu8XYT3CkIb+ZqbuZ3zdLpunWuFciL/HudJvFd5
	3OWrj4o/vXIGSZDGnrQj77rOm9MMuHUc+lTn1Kdp8wQ/rir6SCEocAbgrJFmdIZL
	2YrGu+UbRskIQnd8Qty1nJTia66MLd/DhqaYoVBHrY1LebIhT4u+o+NvNJEGwCFb
	YTUYkg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49w08wctey-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:48:44 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-290c9724deeso3881075ad.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 22:48:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761198519; x=1761803319;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JrAbvaR3kj71zFeYFeuk9mY4FfPnNJxO9jJ+OKKpEqg=;
        b=DmJRUbQwQirA658mwCHsn/p46uV/EjRdCZJLZQZFuKadBlnLUHpmI02ikSxviX3BjN
         ZhAZfUIDYZLaoOhbOyUvQqqYSzlXhywpPsbVGVDhilyb1dFPKH5NFZJUC1wpbazt9sIW
         wNbokUSDEPs0+eLkA7KYD7YUyBFU8VCZH2RjxoagL69ZOjkp9ZvkdXLLSgLsgVpJY1fD
         ThgBZDyTUPcsoUg3W55cRIoiZ4EhZk3L2O3uvKPTjMMyoZzoV6tj3LxrJ4Wb2Rslsd3+
         0yOgoisHGW0D1WWR0NYU+h/mqnmGu9/+8ujKbSA28dgmqj/pdIaTlc3Yap80XnQM17zf
         XEhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVvP6j+i0fvNJQYMif6Lmosc3Nwp3fjKMczGcfU6mK5i+xcTNbVQ1QHKntlfvND0El+HJLSKWNB512@vger.kernel.org
X-Gm-Message-State: AOJu0YxSPaMHOfTrm/HIX13pQEP0uxQLGh+WBqrmxkGTrYmh+Cjo0xb/
	BxntY78DRn/QCmrj6aJJ7KuU+lMeP1gK0cFFRvoQ5sjKwpQqsyPy1Fo4h3Zbg45vLDS6FhH02L/
	t+Rv6DZvY1qEV6AHia9kRQvVuVvx9Q40cKYwuEkr0hZ3Jnt6pKnX8AcLCPkd+MCYrg2LoiuWH
X-Gm-Gg: ASbGncv8i0ij5LXpMyK6Mtx/fmjNE+1GluHaUx677JXntSBzrt/Sigk5vOgZP19yzh4
	GQ32CB1z1UlhErG7nfO1f+IbOBRppJFY7qgy8krTwCAd061/J0aeB8rSbKTkYpAxoJijN+MwP/K
	TiC3CVeCq32JySfJmKY6OkgmbWUS2j9HZwcQuNx619NQxo4Akw3jnHYNwT0YqSOCmDE1+U7QhLK
	40SbZnIYUotVQUPL9ipmzdhqSzRgq8nXg8MTDInPbxJWFoLdEhaMqfEKcrWHGX4lsMIxC+5A/Tp
	YlhEJFRB+4CpJYCSJVRlSCJJvWLYL4CrZfJloRfqxfhH7Dn3ALTamo97OMw950B67wQttPQACw9
	5qQQImukjF6VJz9VbnZ3c5l664MFNUkYjNk0=
X-Received: by 2002:a17:902:dac3:b0:293:b97:c335 with SMTP id d9443c01a7336-2930b97f30amr49641565ad.10.1761198519486;
        Wed, 22 Oct 2025 22:48:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE414ZuQeAjj1s8ukfHJGq4S1BByXgimfEW6LV09f/2szbaSY63uZ7cYGo3JUB6Biku9QiOkA==
X-Received: by 2002:a17:902:dac3:b0:293:b97:c335 with SMTP id d9443c01a7336-2930b97f30amr49641305ad.10.1761198519003;
        Wed, 22 Oct 2025 22:48:39 -0700 (PDT)
Received: from [192.168.1.3] ([136.185.198.247])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e1106d8sm10657515ad.92.2025.10.22.22.48.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 22:48:38 -0700 (PDT)
Message-ID: <64b3c6e8-b21d-46ff-a3ef-add249b99751@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 11:18:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/3] arm64: dts: qcom: sm8750: Add USB support to
 SM8750 SoCs
To: Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251022084052.218043-1-krishna.kurapati@oss.qualcomm.com>
 <20251022084052.218043-2-krishna.kurapati@oss.qualcomm.com>
 <pr64zyppjyk7zpfsscx2dt6weuskoxyot2ldkhnzkaxrbzgo64@ptvc627f5l5c>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <pr64zyppjyk7zpfsscx2dt6weuskoxyot2ldkhnzkaxrbzgo64@ptvc627f5l5c>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: lQE0jwT6VwNMt2FlO1Uh-9KQLKlvgMzX
X-Proofpoint-GUID: lQE0jwT6VwNMt2FlO1Uh-9KQLKlvgMzX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE5MDA5MCBTYWx0ZWRfX7PNgqHKqevFf
 7qKsDton2sFNzKwoXUMjyM3+1XQlYyn6ZZW9XHCagT6aTGSstxQPkN+za+5uL/r2M2SeTMqbk1m
 /nAgV4oqkWF683krWAG78IMbD7af0pCnubvO6ShP98zFI+raew4WdscB1ikVz7zdWN6xy7u7p7T
 pwsrSZe/KFjIJtLPDJPLMiwsur3dBoPIS8a+1CmB3zwb3uBU1/WSLKvxixmkprlplL6Tf2Ch0K5
 2VZHntWTRoPbDKSfmCk8l3f9Zlf3QE2UAUx/e+bMG2Y77BaynkY3Mexpj0PODsT5YJ+9USF+qci
 Yp7jmrUlaTuDqGI8KBzVWe+mlD4B2du8cjYon70R9BJce8HMl9+qAqqZ/ddYPooicntu5DuJ81c
 9n7qUeeioHTauP9XUeTw8Nvl4Veu/A==
X-Authority-Analysis: v=2.4 cv=V5NwEOni c=1 sm=1 tr=0 ts=68f9c1bc cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=sRLNwhOJ/yCBC+ZuepprkA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=g-qGA7akq0XnR0fS_kUA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510190090



On 10/23/2025 2:03 AM, Bjorn Andersson wrote:
> On Wed, Oct 22, 2025 at 02:10:50PM +0530, Krishna Kurapati wrote:
>> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>
>> Add the base USB devicetree definitions for SM8750 platforms.  The overall
> 
> Please start your commit message with the problem description and leave
> the description of the "solution" to later.
> 
> If you replace "overall" with "SM8750" the second sentence is a good
> start.
> 
>> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
>> (rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is the
> 
> "The major difference from previous SoCs is the..."
> 
>> transition to using the M31 eUSB2 PHY compared to previous SoCs.
>>
>> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
>> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> This means "Konrad suggested that I implement this patch".
> 
>> [Konrad: Suggestion to flatten DT]
> 
> This syntax is for "patch was originally authored by above, but "name"
> changed it in so-and-so way".
> 
> In other words, while the gesture of giving Konrad credit for his
> suggestion during review is nice, you should omit the Suggested-by and
> you should cover bigger things you changed since Wesley wrote the patch,
> i.e. say:
> 
> [krishna: Flattened dwc3 node]
> 

My bad.

Actually Wesley implemented the original patch.
Konrad provided a diff to flatten it.
I sent it.

Let me rephrase the [] block as follows:
[Konrad: Flattened the dwc3 node]

Hope that would be clear.

>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8750.dtsi | 158 +++++++++++++++++++++++++++
>>   1 file changed, 158 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> index a82d9867c7cb..d933c378bd8d 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> @@ -12,6 +12,7 @@
>>   #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
>>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>>   #include <dt-bindings/mailbox/qcom-ipcc.h>
>> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>>   #include <dt-bindings/power/qcom,rpmhpd.h>
>>   #include <dt-bindings/power/qcom-rpmpd.h>
>>   #include <dt-bindings/soc/qcom,gpr.h>
>> @@ -2581,6 +2582,163 @@ data-pins {
>>   			};
>>   		};
>>   
>> +		usb_1_hsphy: phy@88e3000 {
>> +			compatible = "qcom,sm8750-m31-eusb2-phy";
>> +			reg = <0x0 0x88e3000 0x0 0x29c>;
>> +
>> +			clocks = <&tcsrcc TCSR_USB2_CLKREF_EN>;
>> +			clock-names = "ref";
>> +
>> +			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
>> +
>> +			#phy-cells = <0>;
>> +
>> +			status = "disabled";
>> +		};
>> +
>> +		usb_dp_qmpphy: phy@88e8000 {
>> +			compatible = "qcom,sm8750-qmp-usb3-dp-phy";
>> +			reg = <0x0 0x088e8000 0x0 0x4000>;
>> +
>> +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
>> +				 <&tcsrcc TCSR_USB3_CLKREF_EN>,
>> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
>> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
>> +			clock-names = "aux",
>> +				      "ref",
>> +				      "com_aux",
>> +				      "usb3_pipe";
>> +
>> +			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
>> +				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
>> +			reset-names = "phy",
>> +				      "common";
>> +
>> +			power-domains = <&gcc GCC_USB3_PHY_GDSC>;
>> +
>> +			#clock-cells = <1>;
>> +			#phy-cells = <1>;
>> +
>> +			orientation-switch;
>> +
>> +			status = "disabled";
>> +
>> +			ports {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +
>> +				port@0 {
>> +					reg = <0>;
>> +
>> +					usb_dp_qmpphy_out: endpoint {
>> +					};
>> +				};
>> +
>> +				port@1 {
>> +					reg = <1>;
>> +
>> +					usb_dp_qmpphy_usb_ss_in: endpoint {
>> +						remote-endpoint = <&usb_1_dwc3_ss>;
>> +					};
>> +				};
>> +
>> +				port@2 {
>> +					reg = <2>;
>> +
>> +					usb_dp_qmpphy_dp_in: endpoint {
>> +					};
>> +				};
>> +			};
>> +		};
>> +
>> +		usb_1: usb@a600000 {
> 
> Commit message says there's a single USB controller, so why does it need
> a _1 suffix? (Same with usb_1_hsphy above)
> 

ACK.
Will use just "usb" as node name.

Regards,
Krishna,

