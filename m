Return-Path: <devicetree+bounces-257955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEBdGmvVcGkOaAAAu9opvQ
	(envelope-from <devicetree+bounces-257955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:32:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EE157904
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:32:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E48F960714E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3B3347DD53;
	Wed, 21 Jan 2026 13:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XBZ4KHir";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a0xipVJO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C157346ACE
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 13:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769001024; cv=none; b=bO6DQW76hid0rkE9m8Ijt+c6U/jiTCkCxMAFgVYXRGVz7GktiZ6ya05B7+26KQveN1c0R02h9+SBbccNpj6GvJGXuRviwJkxnOrUlpR79VrtSVrUb4/eM8+m2LSbNMXE52BYQBb/++NLKPn2SfQD0U7eqwTgcfMFoLyVuZ9hJuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769001024; c=relaxed/simple;
	bh=AExPUgA+kfyEloWztCVuPwhHBoSNay2yRm2EIzVGO58=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mVeZu1o5sghvlN08Cz1XNACzH5mhqnjLdF8YUhd//aL8nf8Yq39uq+eHToWTy4zvN+jPeir/YGob7VqGmC5H/m/wvFqlWzX/lC+dNhI5inKMlgH5Cb4YJutB0DX+4i3sL+8mcEo2WexI9EN9upy5SlAXHpCAEUonuYtijBUqHZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XBZ4KHir; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a0xipVJO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9h1283991357
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 13:10:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2jv6pNjbuzDS4zyQJwNw488Y6x5pVD2hTGd30mcVqJQ=; b=XBZ4KHirwYeL98EL
	hXEgK5NqNNUWtMtb7iAKIZmoNmLqlR1MgC+7ECBwHdWFT54a8KQ7jyynjyAfApoY
	XTSb+dPc1BTPKcDatkUjiFKto4rrKCMhClv9hxEsO1A0TVEKaORSRugj/LSJvp2Z
	4n5vr4J/3ilfvVKcB+gXt2flEl/n+LtSTqTPCYS230s79XUN0I3gSZGPmKnZnHJh
	zBeDnPsuu6ldKqOmEwU14lZoekouLoYBmalHBDTkOKTphoRjqK2zWPiZ/jqVqX2l
	KFONfX6P5PdMOJXRUlbfm3y2IEWSvRhLP5Tq4qTpSccZh3B96KJ2HwFHso1zbX4u
	1tRpXw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btpm42912-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 13:10:22 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c48a76e75so5826938a91.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769001021; x=1769605821; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2jv6pNjbuzDS4zyQJwNw488Y6x5pVD2hTGd30mcVqJQ=;
        b=a0xipVJOrPaLIVzDDbdV2qyum//HXMe3IQvI4EIle84kfGpHeumErYCJGFpj3I7E+l
         Dht2lu5z5QI3ooKl9CjnJE1ThAwl63O9TCTb7sKLbIhIxbHRBSro+8FvE2woy8HI8zFu
         s5HD/KokrBsyjtJLkMjBvWVtTQaV4YnouPX9fLXw1vnti9XIsIs7uxyONzZf1Ho3Nq/e
         +bP0z1+P8gspNDXBkekVCOMe2Ipo1aWM1iaEF2JV9FEJgu1IPs5lnz87c0DdVrbn5mA8
         Xt+P0/qLKp5Z6RJxUeXBk/IGCyk6+eAD6YzfkRl5C2ytJaXmBhIoCn1BGjZi7xnHcOCx
         MalQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769001021; x=1769605821;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2jv6pNjbuzDS4zyQJwNw488Y6x5pVD2hTGd30mcVqJQ=;
        b=VA54w9sDq/Dqh5N6VcS11sIHDyyOWDfsufhnVUJD16hy/g1GSkWpffN7bgmWDk2qRr
         4O76IIMW53yhcSnIrWzAOfAThdBbFz7a/89sXNlf71KzlgIdzwX0n778/Z79xeI0rRYF
         ptAL6fBPmBKPxuXViUH9Yz2kAgHWCgcYYnr2eQehz1LSe+UVy0BKfyV8u3AdFJoSVpWD
         jMLvs/cHS65ZMZzvxd8geXE0T1qXanXAsA+eq7q/jzP127F3lWRV82ChXsuu/GZ1aQ0w
         UAC6Tx1uoXKUGTykz/4vKil700yk/C+bY5+ubVDk1xnx/0hcjPhkRSGaUOHJNDYmRlpn
         9Mpg==
X-Forwarded-Encrypted: i=1; AJvYcCX+3hH/fpcTScPKI4lrtzo0xgFQiiBXbXe/Ts7R4/H0DQ3KG/kr2BgGH1NAxMgsM7qf9Plmi1rhdMZa@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv051VKqGoq+IqisFAqN37bhiypkueUC7b6GvufyDOaN1KkmqV
	zoLq3c2RuRhi4yBFmQTW685CxZvSMYfxjGyvSIVBv24FzPm5ePLcBRsVgE9bsPgjx0hfqP3H7fg
	kSWr+n2M2sMuTNuBIV2WVdeLoDMZGWXTYGIkxRgmRLnzRWLjI4uiajMuYvOYcEFQw
X-Gm-Gg: AZuq6aKjRWgTMVhZs8uJPV/A4llpZvj/rwt0VHDIcohv3zAL+bDFNwDyG68R+3dqJ4O
	zS1bjE+Va8LpcLdO2obzPZow1waKEIu31o6WF2gZ57/GTghcWHE8lppFEDN/f4mSEWiGbIFPQKy
	l5QG1kaCNCjDPqcy7/eiTPyOPhYRFGw93exaIgdrG/UFbOdN2HW9a8cjwdzhcKsYp+yR0/wms+c
	A9T1WSlvuKfp7k7e8PS6sEqDLTLYMyv4aMmgxihv8+lUUucGW8c/O8cu7AN5qfqLpp3PfQndSSK
	RJs4h0RjYo3eZQIH6ivgFfdQsplIHuZS0ADf+b+BAEU+miPF1Q9y/x94OEHU5M0p0b50DDgcxoQ
	rU+PtNJrCyZiWpNWU7hxiwx7IMPhh964bmfCLbRgyUew=
X-Received: by 2002:a17:90b:1c8f:b0:34a:b8e0:dd64 with SMTP id 98e67ed59e1d1-35272ef882fmr14420933a91.1.1769001021483;
        Wed, 21 Jan 2026 05:10:21 -0800 (PST)
X-Received: by 2002:a17:90b:1c8f:b0:34a:b8e0:dd64 with SMTP id 98e67ed59e1d1-35272ef882fmr14420896a91.1.1769001020941;
        Wed, 21 Jan 2026 05:10:20 -0800 (PST)
Received: from [10.204.101.164] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35273102119sm14990030a91.10.2026.01.21.05.10.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 05:10:20 -0800 (PST)
Message-ID: <96c23434-cd3a-4fca-a3ae-45be6ff850c5@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 18:40:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: Add PURWA-IOT-SOM platform
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        YijieYang <yijie.yang@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Wangao Wang <wangao.wang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Renjiang Han <renjiang.han@oss.qualcomm.com>
References: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
 <20260113102822.590677-3-yijie.yang@oss.qualcomm.com>
 <nfhjbfqflsrye7hqbtgwr5hwkwdtq5z4tbvnta7lk7p7jtvhl4@zbttn6coc7br>
 <7050d5e6-ddcc-4ccf-99b6-0888318c5d7f@oss.qualcomm.com>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <7050d5e6-ddcc-4ccf-99b6-0888318c5d7f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Jv38bc4C c=1 sm=1 tr=0 ts=6970d03e cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=NRcXyhW6an_44wZncaoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: VV2Qn18ekIMo9jcckCctnVIrBadKIgVt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDExMCBTYWx0ZWRfX4xnjD7ac7s1N
 Apgi5P9oxdqkp72sDrBU6Pm7umKR1a8MzkASBBOXjmR/jhFIJFBhBRPwsIvNdKpo8NDorWc4CJR
 OaC5VWoKNUU3IDrza7WFLOGXlGzwLzYu/aIDRQrVM+EB6W+buIWhvyX00VqHuAJNveVqYEWo5PH
 2mU9h5C8BPKx6eKlaJc5fkyqLInud2tfIcyND2H6TnSSaGQioPxQBHWBUmXIBdpeyuyrp/LfRKv
 ItwMkGwDbdym14dtabsRKQxkWQ4eZCOV9I8syKXu0fQcXVDCW1pFDJN9bmjtKKaC7Sw1cbVtrdG
 0iVZ7lgOy9Ln5mOiqbvj1Avx2hFpy4dGnilFEWlwtCS1nd3NxLG3s0d7uiQc/kxu8pDTOpUPCyr
 X7CjTeTCwSVkTipot1ziZJ9P4FIa1WaFL0gveaOY7RJ+sHc1QWc6cnI5gCwyPNBKDXmtkXoXzeb
 aXpWF6aNHGISYBlSRcw==
X-Proofpoint-ORIG-GUID: VV2Qn18ekIMo9jcckCctnVIrBadKIgVt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210110
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-257955-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 09EE157904
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 1/13/2026 4:59 PM, Konrad Dybcio wrote:
> On 1/13/26 11:47 AM, Dmitry Baryshkov wrote:
>> On Tue, Jan 13, 2026 at 06:28:15PM +0800, YijieYang wrote:
>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>
>>> The PURWA-IOT-SOM is a compact computing module that integrates a System
>>> on Chip (SoC) — specifically the x1p42100 — along with essential
>>> components optimized for IoT applications. It is designed to be mounted on
>>> carrier boards, enabling the development of complete embedded systems.
>>>
>>> Make the following peripherals on the SOM enabled:
>>> - Regulators on the SOM
>>> - Reserved memory regions
>>> - PCIe3, PCIe4, PCIe5, PCIe6a
>>> - USB0 through USB6 and their PHYs
>>> - ADSP, CDSP
>>> - Graphic
>>>
>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>> ---
>>>   .../qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi}   | 11 +++++------
>>>   1 file changed, 5 insertions(+), 6 deletions(-)
>>>   copy arch/arm64/boot/dts/qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi} (99%)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
>>> similarity index 99%
>>> copy from arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
>>> copy to arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
>>> index b8e3e04a6fbd..fb90beb1096f 100644
>>> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
>>> @@ -3,11 +3,14 @@
>>>    * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>>    */
>>>   
>>> -#include "hamoa.dtsi"
>>> +#include "purwa.dtsi"
>>>   #include "hamoa-pmics.dtsi"
>>>   #include <dt-bindings/gpio/gpio.h>
>>>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>>   
>>> +/delete-node/ &pmc8380_6;
>>> +/delete-node/ &pmc8380_6_thermal;
>>> +
>>>   / {
>>>   	reserved-memory {
>>>   		linux,cma {
>>> @@ -378,16 +381,12 @@ vreg_l3j_0p8: ldo3 {
>>>   	};
>>>   };
>>>   
>>> -&iris {
>>> -	status = "okay";
>>> -};
>>
>> Why?
> 
> Purwa has a slightly different Iris hw version (8.1.2 on Hamoa, 8.1.11 on Purwa)
> which I would assume is slighly weaker, plus there's probably a freqtbl change
> 
> Let's take this as-is and enable it later
> 
> +Vikash, Dikshita this seems like a really low-hanging fruit, could you take
> a look at Purwa support in Iris?

video should leverage most from hamoa, infact Wangao have validated iris 
on purwa very recently.

+Wangao to list the changes he made to bring it up

> 
> Konrad


