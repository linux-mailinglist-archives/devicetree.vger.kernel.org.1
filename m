Return-Path: <devicetree+bounces-186499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D17CDADC2A5
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 08:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BADB3B79B6
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 06:57:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 729B228B513;
	Tue, 17 Jun 2025 06:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GD/4xO0G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69592BEFF3
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 06:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750143468; cv=none; b=NrZrGKt1V55c/fX88JvfS7AP0dNXXny+BoGcf2+lxfcwIZ0vQIauaAa8CbkzesPHCNNlvvdsPnQUgx/nxMwnstHsp9EnoyWGnT/JqlOf5RTyPCDKswTUOwiaM/7QpAhPDO2pGRm8voCt72LT5vziye1NUXXjf8DH5hDKDILNh1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750143468; c=relaxed/simple;
	bh=fB1yAe/8YPxqkjKUXr0mBOSJPer8t+LsPmMwzFsmdis=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ERMJK6GFBRIeHI9eRw/fkJUZviHyB3UXswoXe7bKs7tJoWSLvTgvp8mx6rAl/LefazcMI45y+U2E7T59RRLZqEz7hob8SsZWTlCToajj2BQzbPn4NaDmNCDhhJcOnXG+EGRnN1wklsX6Yy/kbZSfFGmoRGq4D9d2Q2Z7PSK+x/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GD/4xO0G; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55H6f0BN010256
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 06:57:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eMIf4TRueEPEiBL2yiZsauUeNzH0pwxH/E1DOBzCHMM=; b=GD/4xO0GZRj0ZRzZ
	kG0S6iO9KC9Rdz6PP4/aS2qBgRmuWccwd+kFE528gPKCFAcwNcTP4qu00AGvIlM+
	X7e8ROemOsdgUihAfzMR49pszuSz4LxCrRMnOZMANIiufjYXe6BPZ0YoOveOiawy
	H9PN81H5hANEW/w8YV5+K7nfv2u9UPcBD5kPus4hr1lHzjRpljjpawTr13rrTFI2
	G0V3BftTMGpHMLbPSse0gv60H9Hi9KHI5NPbfMgJGu+gBqYYOadd03oGnG0OUJ04
	zR59duhpx2snyp6OzNRYpDBTbFHpAP5EjU9MbQrGTUN+rMxVYKRC/WTEijIHeStS
	BPex1g==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791f775db-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 06:57:45 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-747d143117eso4413348b3a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 23:57:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750143464; x=1750748264;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eMIf4TRueEPEiBL2yiZsauUeNzH0pwxH/E1DOBzCHMM=;
        b=k5ENB/GOU6wzz6Df0e5aa9eow0yAPF+YV5v9I0H8plLgvSjmha4foIO1boy70pXBd6
         kg4BoTq2LxLfarpASsRNG82riXVFgLvXWtMVE5w6ZjBXVgUgn2Nd/CMoFF1jX+FeqrAG
         oKOqzKVeKDuLcRNxaCCOFjjf4itw5cU5WbD+hS4eZZLWyzpm8kKcqti8xOxzFqfzt1+q
         hqIoglyo1RTD2h8DaV1EjRDvMyn89e2qxSsn8ogsxsLXi5Z7J1hQn1ayTh42ngHzDeDn
         wLVdE6RoWIorXrEoWC8aowDls4JNiICJMto9GoHZY2RWXiAXiyYpexl09jap78w2NqsU
         mciQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2LUeQVfiMtLQEkmW29KsiKbAZ2l995ORpCl9dd6MW9TBHKqttffj7wuvn2HJk7pXMeqA4b+15FI2i@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/AjnXegotVIFw0wjJ8RClSW2jiFS5hSfOprSDoE4y4DwJqwh/
	SGezXqlo57lNhQAtaCQdrdVRVDDGY6oLkCL6JT8MIHq1RuXuBclUgW8L7eOzxD+bc7n1TimUByT
	k0SxawYn95iVKc5CQZYLv8Pf9ZHBkDHIDGXjPV/zAjFGY1LdhkolZA2r0lf3ck2sp
X-Gm-Gg: ASbGncs2FHTBrsHpBHfhHzqgnGQAvL4yBImQYC99IVsA+q4ZLc8Ck2f3Xhr4HrYY8im
	vcE1HOywBJxGXkF3HtTmLf7mhGKVpF4uebU0n3ysbeMrceSsbTfsfijAEhgLrbDSv98L49fY1E2
	LihFQthZHbV42+Ep8s7j2qBdzPLxMUTQGQYjnPi1AFNsx7tiDHw+rw3z2YGfIEkrfcodkpltFW4
	Vcf0rttHKMO0vC+v7Hb/yhaCHqpxt8/cXggHF/N2WoM9u6B3ksimT+DfRrDvf+zYg1HWwxUuKHo
	mLcYSW7vyBn7MNtXlcme796dGY1srxT8p1sC4qNqM9BBuHPqdFg=
X-Received: by 2002:a05:6a00:4613:b0:740:b5f8:ac15 with SMTP id d2e1a72fcca58-7489ce46ea2mr14924345b3a.10.1750143464385;
        Mon, 16 Jun 2025 23:57:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqHC35uDfaFevhuxUS9cNRFZiz2K0P7SW247TESFvxZsqWNF7VvcGs2WjxAz66Giamg6SqJQ==
X-Received: by 2002:a05:6a00:4613:b0:740:b5f8:ac15 with SMTP id d2e1a72fcca58-7489ce46ea2mr14924319b3a.10.1750143463980;
        Mon, 16 Jun 2025 23:57:43 -0700 (PDT)
Received: from [10.217.217.109] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900d1ceesm8007163b3a.161.2025.06.16.23.57.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 23:57:43 -0700 (PDT)
Message-ID: <89536376-6619-49a5-a267-b5a6b98940d8@oss.qualcomm.com>
Date: Tue, 17 Jun 2025 12:27:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs615: Add CPU scaling clock
 node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250612-qcs615-mm-cpu-dt-v3-v3-0-721d5db70342@quicinc.com>
 <20250612-qcs615-mm-cpu-dt-v3-v3-2-721d5db70342@quicinc.com>
 <ezlboeao2mqdbyxw6orzcqla3xthbo5ppuuhugwyxs5t4njvsd@qyy5r2ksmrj2>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <ezlboeao2mqdbyxw6orzcqla3xthbo5ppuuhugwyxs5t4njvsd@qyy5r2ksmrj2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDA1NiBTYWx0ZWRfX9Yu4Dkvgam+6
 Qfq46psssgqdvbBKp8f787UGMwB7jK+Vs2dkmY6pQtiKfMoQLONHPEC/8i/Mm3TOLsYWLW45y1h
 s4KGm/xwFjGvF4Q+T9p8xOx1YmjMNSxl8Ce3gG7bDCqR8FsHCQfAJjhgbqHL8nk8C2dbgrHXKO1
 69NE4sV4cMScMrecviREnOIv2eLMhDQOLnVcX4CWwEk1qiL6iA7OGCR+6GEc+K61IXZIRqUO70h
 obErSmEHxDDEKIv5sc02PUpkCHcm/Y+buI3PI5MAXCr3nRHmt+Q2IA1L9x5D0bitBNp1hE65kPI
 o21m6kCYjqcD6fVTd1yadP2TI10WIoO4OHLpi4TRXVJo+B0dJsLK4w3+Wrd2O+md0Uyqg27kn+A
 ABZH09ogYwc2a3T72lMZTztms1Uhljw4rjC7bZCsnQJpz75EDrfZXfaptksyndU3WfSovuTh
X-Proofpoint-GUID: EO9xczSXWtjelQqMMHW2Gxce5Ne_unY_
X-Proofpoint-ORIG-GUID: EO9xczSXWtjelQqMMHW2Gxce5Ne_unY_
X-Authority-Analysis: v=2.4 cv=FrIF/3rq c=1 sm=1 tr=0 ts=685111e9 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=-8NblG57_WyjLwp19yIA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_02,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 suspectscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 mlxlogscore=937 bulkscore=0 impostorscore=0
 malwarescore=0 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506170056



On 6/13/2025 6:40 PM, Dmitry Baryshkov wrote:
> On Thu, Jun 12, 2025 at 03:47:21PM +0530, Taniya Das wrote:
>> Add cpufreq-hw node to support CPU frequency scaling.
>>
>> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
>> ---
>>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 29 +++++++++++++++++++++++++++++
>>  1 file changed, 29 insertions(+)
>>
>> +
>> +		cpufreq_hw: cpufreq@18323000 {
>> +			compatible = "qcom,sc7180-cpufreq-hw", qcom,cpufreq-hw";
> 
> This wasn't build-tested (or was edited after being compile-tested).

This is already tested on the QCS615.
> 
>> +			reg = <0 0x18323000 0 0x1400>, <0 0x18325800 0 0x1400>;
>> +			reg-names = "freq-domain0", "freq-domain1";
>> +
>> +			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GPLL0>;
>> +			clock-names = "xo", "alternate";
>> +
>> +			#freq-domain-cells = <1>;
>> +			#clock-cells = <1>;
>> +		};
>> +
>>  	};
>>  
>>  	arch_timer: timer {
>>
>> -- 
>> 2.34.1
>>
> 


