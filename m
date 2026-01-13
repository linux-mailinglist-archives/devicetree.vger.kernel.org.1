Return-Path: <devicetree+bounces-254380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E4749D179CA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:28:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C5F55302E34A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 218A138A714;
	Tue, 13 Jan 2026 09:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dRW2bO/8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A9qASAvw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81A7438A9A5
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768296074; cv=none; b=c9U8N/RtYgh2sfoud6y42QXIoBBH6yXFynNIP3LBbEChJ4pJJaQEMx4p4tGw2ksChNRpqSPuXONkRvoSkLpP2xQ4WEhXKf6yRFOR6DTsXyCTFLuqMlIrKPEyjDsi5Z3fWZf1Ki2bfQdibsonOY/GoVcZ+6lN4kBKTdkOuDBiCEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768296074; c=relaxed/simple;
	bh=Rlr7mwtBcyRz8AkxKQslsvs/sH2b9falE/D2Iy0kM+k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YYQFMjuWw9moDJtMgxOboRwdA2hTnPA7r2PuNQsxW1vnN8pIv00HSYmWgd16EjWJkmOIDK55pNM+4HzLQKSRcbabS7GwJV8QfNk4XKcDwGIjWiLqh0NXqs4jtjRktp1kWSf4C7+YzTbOxR9W7IDUrqX+xQPF2cQhlzajJyVBcPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dRW2bO/8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A9qASAvw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D5TXBk3870136
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:21:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	31iZECsNCqRxKyUF60JhJXKKA5LmDwD9E8aM+9WSyhw=; b=dRW2bO/8s05UmtjR
	OYxMOjjRBu6n7jyCQG9i01cM3IpVTtmbwGOpGM48h3TDAXOoCV/SM75zNhBnUIDG
	umESGNQc8aiPzoXl8TSEQOcQV4Tn4Z+ShGffjKbV+Qywi/BEACAU27mwh+5CLR68
	VsPq28xd601r6BMC9DTf478YxsiLqm7jW+j6iymjuKya0//hNuGaBYrfFzyTBEZy
	LzaS5bL8I61p2RvxMxXMIBqey3Fsukc21kdItvb6rX8zRhn5h3B1ZAnsOTjckU5H
	4TSahgKEaZ7mY9aKwBgBwMXX/GIkJTqRfYdDZttX8B9iia3KdmrL5ZpSXwWDejnS
	FEOzAw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfxk8na0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:21:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2ea2b51cfso166842985a.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768296062; x=1768900862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=31iZECsNCqRxKyUF60JhJXKKA5LmDwD9E8aM+9WSyhw=;
        b=A9qASAvwAog5Oza0MRI6YJhAlHQJwbCvNMhN/yY3BNS/fmKTJLFG/EhyYaITT+gYx8
         VCaNGnJgKOf3KELFQ7RJJIlVaEtcopFzPehbjTFghOjjh1zeKM4m5x8LNVSzS6WkYfLA
         ukF3rrBMqT1S42SCIoU31rOoBNhS1zWPqhBxrCdc58Il6ziaX5K/QAdyJwPk3L/s+xZX
         rrn3WCn8rITCbzTHO7qONTf0wNeHINpK2OnfTKj/hYhcTgkkAcCpwdg6mpCCQOsMIMzD
         xoNLCC+NrMyEbHvQMLGjE4KfdJI6t5wzx/mArqwZwQW1u7iSAvv3RRUsKEVZPXxXcbi0
         Ofbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768296062; x=1768900862;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=31iZECsNCqRxKyUF60JhJXKKA5LmDwD9E8aM+9WSyhw=;
        b=dpxiqk0qE1fdT0nti0robFQEDqC5qC5lBzn7VzzaaR09y4iZpF97xZnWHqvYSQWMF0
         MZKssDdR5A5WJo1sNEtoAPbRBaFydxGiUsFOtaplV7WYeTmlG3oMAqWG4A8e9KHRainE
         ZM8db9sWATuflDz13SdPmUBmEjoHpSnZ0rKNMKuMEzfznoyh508JHyakmnzFIq+bXQAa
         1kVRji33JJIZ8Vs30G+rB0Vpy2Tr2PLnxZLteZK/OgMuEAOBBUd8/ox1rH2kXDQWy9ni
         ZABFLe/hhvbpzckCLoqHSZRTNlEe+WrfK91BJaTzWd+lg05jbxtc9KWg4dZ3BaAqvNvp
         z+Kw==
X-Gm-Message-State: AOJu0Yyl2ALK05zS1Z3K7+5wboaLuRmLPBvFStovlNcO+7Pi/Anzj1AU
	2Tnci+eaywkORYut65Nt78F1cW9jabXQIuem9twAlAbmEmKFyYeh7/Lo6ueHRheOJ6pbmOVlM9O
	r048i31aU813loxKKyWQMrpTeVeuqCE3ScT0IAGqPxXgCYeYzYv6YR2lAy4TnnDec
X-Gm-Gg: AY/fxX6r0Rs85xvYvpQxh6W/jVqylyaw5XEkraS1F1uO/+Vt9vlaF+ieNWTpUASWXWU
	7WN1M5EuEW5y+bY/MWmkXd/z4FrRoZwU5SWXMyDP4IiLXXCTn8TTElL2odSDvWPhdxVYEnvDV7b
	yVa0J9wO1yvdFb6dMTMsMAmSIx/7CYonWQwvLx29aibE4inU2ZC1YqGntq16IknswXXz7g0TkN+
	7DHrXZ+1DFwczbsZSrzc+KJIfuA6TBOjiWprWSH1b6Wd/tnT6WAeaQuHijMlG2//LxFgUwlDz3B
	N4wvFMjvEkTLE/VT69huT9/vTt+nbNUUfkN2s4zuB6II6qQEJbD8uqCaOh8nLOqAs5oqgF/7icZ
	ar0PAS32E9/oMghFZ0tL0OFb3D/f/27ivYMxegURUtZxl6B5M2S0VfQc0mWwEtd7QHkY=
X-Received: by 2002:a05:620a:40c2:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c3893a11a8mr2125837885a.5.1768296061999;
        Tue, 13 Jan 2026 01:21:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4OnuSeA6QbV367W40dl4Ix9iFHMALktInIMXZY6erSj9Muhf4uN+sZ1f+zqQ5eVe104M4Vg==
X-Received: by 2002:a05:620a:40c2:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c3893a11a8mr2125835185a.5.1768296061436;
        Tue, 13 Jan 2026 01:21:01 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b8c4479sm19863659a12.1.2026.01.13.01.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 01:21:00 -0800 (PST)
Message-ID: <cca646c3-5e74-47cf-9dfa-49a888db0414@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 10:20:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Enable download mode register
 write
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260112151725.2308971-1-mukesh.ojha@oss.qualcomm.com>
 <433fc01b-0e59-49bf-afdc-a23e815cc563@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <433fc01b-0e59-49bf-afdc-a23e815cc563@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 2-h8c0_1umVDMTUvakvXJNumQ2yVrhMG
X-Proofpoint-GUID: 2-h8c0_1umVDMTUvakvXJNumQ2yVrhMG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3OCBTYWx0ZWRfX+QqnSWJ7niSe
 1nP/eF7D6psekjgPnzOgb446uwbyZp0wgz2voanDj1ki5s78adlbLqp0qxT/xo3/P+3t2PhZwRV
 idKBTEJjnav/XTrr4LHpTyskspsrvJ0Fed/lCn/VlVUGmUYKxYyZOMqVxhU0Yl9BfMmrs1o+Kcp
 updd8qu2QhEBEslnVhN3j5eD17hvhrX6BetNgACmYSXTpPwC8SSiMPG4lkfGmkYngU/k3Xj102u
 IEIusRbdQ0WIFibdt+r99pkRBzHiJTisD82TD239URBUTSLHDfR6VQuW49Qhx+S/jUOeee42E4/
 b6tKtiFf0DGteC0m0w4pnthbXfvIN+fQxefN7QFxRpE8p5fDlcnwFlo1ZIj64VCEon3Rfz0XZUz
 1BQPMaBdYrCpxPIJYzAeOWYtHtQTdrx6OH+RnnEpXb2sa2XmMIg1RFm3GzCTwP9ZMu+Xd8hz6cb
 Tos+0LF2ZpHv6GPUnQw==
X-Authority-Analysis: v=2.4 cv=PvSergM3 c=1 sm=1 tr=0 ts=69660e7e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_yhzRq-LgXqgePbigCEA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130078

On 1/13/26 10:16 AM, Konrad Dybcio wrote:
> On 1/12/26 4:17 PM, Mukesh Ojha wrote:
>> Enable download mode setting for sm8750 which can help collect
>> ramdump for this SoC.
>>
>> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Actually no, we have a mess to undo..

There's already this node:

tcsrcc: clock-controller@f204008 {
        compatible = "qcom,sm8750-tcsr", "syscon";
        reg = <0x0 0x0f204008 0x0 0x3004>;

        clocks = <&rpmhcc RPMH_CXO_CLK>;

        #clock-cells = <1>;
        #reset-cells = <1>;
};

That's located at the rear end of TLMM (someone had a funny idea to
move registers around when designing this specific SoC)

Problem is, those registers aren't actually "TCSRCC", not even "TCSR"
Physically, they belong to the TLMM register window (which starts at
the base it promises under the TLMM node today and is 0xf0_0000-long.

What we should have done for a fairer representation is make TLMM a
clock provider on this specific platform

qcom,sm8750-tcsr binds the tcsrcc driver, so we can't describe the
actual TCSR (as in this patch).. we'll have to break something..

Konrad

