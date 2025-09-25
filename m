Return-Path: <devicetree+bounces-221322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D3FB9E7D6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:48:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A12583A5ABB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6139259C92;
	Thu, 25 Sep 2025 09:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m7eaxLLd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BFB21A92F
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758793722; cv=none; b=a+OBF5MhlHPN1tR2eVLnPVCKDae05HAXIEUVzYH8Rfkx+yIxOhoOQB3h6izQL+Ak4LadwMTLLzHSJsFdmAktGLJZNmrJW82hV3Mb3ikDm3U7zY08XcqlLu5rEbCYv9HmfbpqejqtoM2WI3/h3QySCBJlDA+yNSOgDGT2vWaT50c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758793722; c=relaxed/simple;
	bh=fwqz9ukGkSB7nQ6RVe6CRYI/1cDROkzR8BkzCK6xgws=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tfEYBBxmXsEyQoE5D33ux70ZL1ZSuHLyAYsaMXhOFniVGG7JrVnIsPKfxjd6MC+j9tIyipTwLJpQ5DcRiA8xhmtsm+pvhsJhl+GXAy3/xNDH2nw7W8ejHq55c516+H9mM6kPD8Cj6UWbMB4bUrYwKtsekKTmbvT99PZme6+DA6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m7eaxLLd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0lAsX020897
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:48:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GR4aDHZmhZBwmaG12GtJDL8oCuro3wUhp6sGrSaguaI=; b=m7eaxLLdH1g46xFg
	urwnknI2nzrjPOU3i6E8gVZkG0nasuC09LhubfNqUUJ+mHaEkX//gcFJyHIbI1Mk
	mZy80NDu/Z8HDb38x9bmmdZKjtna8AzNFr/ZYb/pz5YwwcpPKmZzqIPlxU+LjOM2
	HLb5Jragn4FDyQ9FloYcEDFG8UZAwVmc1RWn+vHKG00aALvpIC78bifXOtJIc4TV
	K87KAtgPp3x2pB//y++UN2XJ6N3gjc/jmU/QiU/rqoUbdSlu3OVOddTuFWY7klgl
	fjArjnHzq70UCbqqtnJquEE2+VZUPiSsBg0q/QVMCDASLH5YTAyM/7v/8s97EqGH
	uSqxMw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpe0v16-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:48:40 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-80de0415155so535826d6.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:48:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758793719; x=1759398519;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GR4aDHZmhZBwmaG12GtJDL8oCuro3wUhp6sGrSaguaI=;
        b=ppywDRYkeTN/eJeo7BXwe1IH8BNCt9lX47z7pAseFW1YhjZHN6eX4CndDQIm1W5AyU
         Yx2ujewunXzxGbnpne8UfLbmzRuoKIns6kmWDLf+Ckvp1HLHG9xcsT5qPzN/94cneFgE
         BO5MgO3VrEZT/La1AR7ohQ+HN053dFNKT/n00lscprr5Cn0nLF/80YeBC3Ky/n/xl7uK
         YSXs1jvDD6jitMjK5bkttxElj3WxAsz0J/bqz8hDXbwxspwCzSxBWcCAQ0Ktm0RZ4WYs
         mL50lkAacqBESJvRcedcxVXe9z5KDRF6S04cLPBS95yWaItFSrBPfvolxC3HQjUBRP7r
         Z1NQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCli1cB6Gvka5yyaWaL0v7NjsQ9R2CRG0jsWppBVVxvyyXfkcqxExE/0S846+0jHvroTPFIKFlIJpJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyrlyfow+qr9rxGATOrC0ClZD5glWygLNS4UrRTBqwgTj9+hFSh
	mEnOCwfGblQjPOhAwr5aUILkzYb3yOrlb8rHLbCB31nm8hOk0FczQg3cx6zU6jGlHblIXklnw+X
	Dd+U9fc9KNWY9uiUDFPITp3Eo1j8UxCPSbX97BJlNUOwmZL+K1lvw343JI62aM/Ph
X-Gm-Gg: ASbGncsRcyCECxCy0nZ2wYPeQZpznT0O/PN9Urqey2HI29DzXM7SWLcJljOo3iBJFNg
	Nggwalmv1t9MrvOE4+L14offLWRPPvSVShYzxf6+ZIu2UNoMCP7AnQq6YIQJ6eyqWqd0Haf60/G
	kFlnoAbgUP9tE1ytgkPF208GfVwaUhAh6p3iWBTI+7JOtvhypEny+9ehnb41El3P4Ch3aWGYcT8
	PTZBy59AOkY5Xcz2gqHxNAbSesEaptuW4B8666dycXX4p1S8uo2mylBkrVXy8pQA1n6HsiQ06fE
	Jaxr3UHdOCaKy3GSv67OEMFn0HNgDTKbEsOBolssoNV1vX5zzzr1I4Sj2biRqLBKqTzbaBSy7By
	Z1XeEsSlADZVP+d5vXpyI/Q==
X-Received: by 2002:a05:6214:f2a:b0:70d:e7e1:840f with SMTP id 6a1803df08f44-7fc39460be1mr21832746d6.3.1758793719119;
        Thu, 25 Sep 2025 02:48:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENwkiAkwLrvqAp2PIFN0hMMx4wQy6rf7aMEP/NqMglaCPy/Vd/ggqXiqJ+HQHH8XZj9B8+Yg==
X-Received: by 2002:a05:6214:f2a:b0:70d:e7e1:840f with SMTP id 6a1803df08f44-7fc39460be1mr21832636d6.3.1758793718628;
        Thu, 25 Sep 2025 02:48:38 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3af5483sm910511a12.42.2025.09.25.02.48.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 02:48:38 -0700 (PDT)
Message-ID: <26467336-3322-40fc-8dcb-efc06934162e@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:48:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/20] arm64: dts: qcom: kaanapali-mtp: Enable more
 features
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-14-3fdbc4b9e1b1@oss.qualcomm.com>
 <ejcchgc3isc5f6tmiqbxqihmk5efmbcyhv3ehuoerb5ulkd5an@g7a2wc422l6n>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ejcchgc3isc5f6tmiqbxqihmk5efmbcyhv3ehuoerb5ulkd5an@g7a2wc422l6n>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: COC8ENDSIPME4i8HgHn03YSNdMUatxaO
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d50ff8 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=8xtE-M9Tj1n2mnedfNEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=5XHQ0vS7sDUA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: COC8ENDSIPME4i8HgHn03YSNdMUatxaO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX7jsFOfxs5KVD
 lgu+HUaOpzbK417CdrmX+JsFToAiTLD3ZMs9kk62pHmNkKnf4bLoxqs42u1HHgJzkySd8BIZ0Jh
 IMqgw0HjqRF5jd5C9vRODwQN8kJ42kGukkjUL5czJfmJHM3ohQZIqsVAdm0Mf8fqSkjNPFeTV5l
 2hj4pLeI0VzKV5xOvP3NRT90CKUYPH3US5BeQng/HKTi0WSAvM4rutxF16NbbNYXVOaVifiIZ5x
 ABiXIHDEJtknOUQ5BIffRbASoWw2k7ati+ZQaG8Gl7tkWLOM6Mr4Dflq4lBACYRtA9oWPZAR2nV
 Ua8JfadDpdCLTzh+LDE3YCQ+I/hGTHkFpACrykLbwvC4Bhyf9EWvrhV3kkqV7e26KcMJWdzoFRX
 M/lsFjwd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

On 9/25/25 4:09 AM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 05:17:31PM -0700, Jingyi Wang wrote:
>> Enable more features on Kaanapali MTP boards including PMIC peripherals,
>> bus, SDHCI, remoteprocs, USB, PCIE, WLAN and Bluetooth.
>>
>> Written with help from Jyothi Kumar Seerapu(added bus), Ronak Raheja
>> (added USB), Manish Pandey(added SDHCI), Jishnu Prakash(added PMIC),
>> Qiang Yu(added PCIE), Yijie Yang(Added WLAN) and Zijun Hu(Added Bluetooth).
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---

[...]


>> +&tlmm {
>> +	wlan_en: wlan-en-state {
>> +		pins = "gpio16";
>> +		function = "gpio";
>> +		drive-strength = <8>;
>> +		bias-pull-down;
>> +	};
> 
> Why are the TLMM pin entries sorted?

https://docs.kernel.org/devicetree/bindings/dts-coding-style.html#order-of-nodes

"""
For a few node types, they can be ordered by the main property, e.g.
pin configuration states ordered by value of “pins” property.
"""

Konrad

