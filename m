Return-Path: <devicetree+bounces-264304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEwZKkwAi2nJPAAAu9opvQ
	(envelope-from <devicetree+bounces-264304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:54:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8551192F0
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:54:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D1E930CF899
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1277E34251E;
	Tue, 10 Feb 2026 09:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jm8GXbdV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GsN5VP/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F37632B9B9
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770716980; cv=none; b=VOfVe8qQy4Sg4lb9jPqHlkGUumR1xeBXBuzdslFH5EAjkt0Skh7kkqUpfOMCvHKtbCPHgdxBbAL8XPcSqHAZgo7t0i60Qljn5vi+bEPaq+ryiCuWhWTtKeNK7U8DW21WPibi/m3oRKZXpEbklPmNsjzWCaHYN2qK5GKXxqtpXrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770716980; c=relaxed/simple;
	bh=dRZnCPSAuagSRhTHulUEKZz3BsjQ2d3mxmnElhxe6mo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TgLy2HbrzmWbWVbgCvCe8QI7bP2XD/v/lQhY+s795nA6wMuGXP8vBurXFpU+5yNrm6tRHSO1/xmzpvgmq9lKHJpN74s71/KJjtxUoPSiSevaesTXSugoiSP0B1nNAJD3KuSM4B1W4cu9kBx5itJUJVSvNptX743mhbtxplUQmX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jm8GXbdV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GsN5VP/k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A40REV1171945
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:49:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WV92x37SdWX6i4XU/wGKmpKunYauVi2XV35DtT4MM74=; b=jm8GXbdV/fVAGWTz
	c6l1hlfKwOIgXXnTtL0EBIVijyQ+xiWUkgaQ58RR93BFJ9xQqOd+YNHkOKPhfYoC
	zXpdqsmECdqjWEhQ3fqL1w+6t1amM/r+CrgVKyoMh5/FBIkj0khHbF1N/44eC6Y6
	FF0Jmx1KNp8ZOjYYcfVx2a9sGkiI8+nN58TrF2M/zscLIlhCf+nC66oYgQdkV9/l
	DEyBmxSQ8z39OGSC3lo78t5ycoHHxHbx6luaZ9PcZv2X885OQg3tR2iONRhSqgYg
	AoaQ7Fo0bPDJxQNmyQ5zY+GrriuoJMQKw+prP5rtgN2XW06kYGxhsUeX1DTtzHhQ
	795i3Q==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7kftu246-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:49:37 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c337cde7e40so587347a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:49:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770716976; x=1771321776; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WV92x37SdWX6i4XU/wGKmpKunYauVi2XV35DtT4MM74=;
        b=GsN5VP/kHsxS8Ick9rI0Ay3Q9rPjnW6CeLVkBJCtNXX9X8q+YX1B2ezQYWMgtPSLFG
         8+OcKB9QyRx7mVrS1NHW2T8OFzOCC99gtqoYpcoAlOiA6+K2XMzaH+7svK60x0PYTZV+
         e403SmTnRNch47sBAVSo79XrVrxWjaXKKCSwN3cE3J76GdWK23+div48ea9uhLV3yNse
         aEIpQePDE2Ss8zIUDwv2B5O9mf/QwKOCJsVzKJ72FitMOF6Ut79cI+76nOOhI8MJsVT0
         WxqcK/xZamTJt6FOxoYAK1NnpL4wMAkQxOHkYwMTD0KsVpHNzZOoORHinO15ZO3eMsoU
         +t9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770716976; x=1771321776;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WV92x37SdWX6i4XU/wGKmpKunYauVi2XV35DtT4MM74=;
        b=LoLaGB9fxJZfwZTmS+c+KuMtvod9ldFonLbq5CGLKUS1vAWtSvXi234AlZx+ABr3Ty
         tDJCggcmNTVmjMJE2OPua+6fnpej1DR5YP6h50r6wcwSpdaNJCMd9298s+dxXT1H8u6c
         sg5R1q7M3E6KtprVOUMEAGEqFmOOwYK2RhQKx97usmyHeUCfTW/ESS8Ri/I7vxyWaLkL
         wnmyKmTfyXZAQI7Scispc9LCw3VN1I47k6Qo1H0HSgya04dBAFMNfvsoxIQR8TxYZi+o
         jwFy4Svlh0MJOLKLjYX9TV9VExsNHflEqDLJIhI4QxPACPPObE+KyJa3m+aHzivI/m7Q
         O2Gw==
X-Forwarded-Encrypted: i=1; AJvYcCXWHGP7ycicRIykPchB9d347miG8SDzaRNmgBNyX+QEu9nQT5Ncr2Dm1tEKgl3OZMIcTwmnuh2zQNBl@vger.kernel.org
X-Gm-Message-State: AOJu0Yxiwu5tXUXwLWNRgRNIJTwhOwaKwxg7Hecqd/EazM1cg5NWXgKS
	W0bKPLKoUWaKJ77GiWE6EWn3sc8nQiDBmcis2LwgbbwjATN0l1g+E0umnT726IWm5ctFG8SckFJ
	JXP0k0xQ5y2LY3vvhxh9iclbpGtIHbmvEhqZMIBAO+pVcqhAAfCugYdQgSLBJIg1o
X-Gm-Gg: AZuq6aI3vyt2Rl0w1FrJIJxP/XEMBZBYLyy7gweqPD/edO2fbetsnyQ5A9aJT1BE3Ho
	qxvIX+ffvev5IFciITT6V5QwXpTHk8ANHoJ8hg91i6ZANUJ0DNQn6NLDSQuJQ5cS1UfzKUlXYiH
	J4L67f0nBrn+Ms/jDWBBDmngHBH+/L8auUb06OKxP1txwI67/jLtGHi59aK+KdDxgmoZFSRdB/6
	lopzWNb/4y8roPLhyD4My3iRm5TsEFVUW68HXidr9Fhrb0QO06d7RU5vMuMnWwdJv8p/2Fe20qx
	9RXMnqje93US/S806wbs8PgQ47FaR1BU1Dd9optEvYD3wRdKsX5p6jhX8mVCcvG0wxN3eLFMrTi
	fYkO6teqVD3oT1LRfr0Tr+z9a7fpgzJc7z1bjNGzgOhOImm+/HWWk
X-Received: by 2002:a05:6a21:4cc7:b0:392:e51d:9915 with SMTP id adf61e73a8af0-393ad307569mr13746427637.43.1770716976139;
        Tue, 10 Feb 2026 01:49:36 -0800 (PST)
X-Received: by 2002:a05:6a21:4cc7:b0:392:e51d:9915 with SMTP id adf61e73a8af0-393ad307569mr13746401637.43.1770716975679;
        Tue, 10 Feb 2026 01:49:35 -0800 (PST)
Received: from [10.217.199.117] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82441884b75sm14284898b3a.39.2026.02.10.01.49.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 01:49:35 -0800 (PST)
Message-ID: <9d3960a6-0742-4ca6-bebd-3a486a510681@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 15:19:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100: Add '#cooling-cells' for
 CPU nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: mani@kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260210070321.17033-1-manivannan.sadhasivam@oss.qualcomm.com>
 <e90ff54c-0c4c-4097-af4f-7821e6c6dc2e@oss.qualcomm.com>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <e90ff54c-0c4c-4097-af4f-7821e6c6dc2e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4MSBTYWx0ZWRfXxxl0oh7pweA9
 qcPXHcbjQ0lsWApr5QjUYQ8SM/eRX7X67P50wnAduEHHB7e4gdOWdsQS57C1SAgbLD6u+EF/jL8
 b7NItRHt5I1E4n2tMK4bWD8zrj2k5CFt0x3eZeehMHX3SEU0ZfHZOyvf84oWukHjBrJF4exITbL
 V4i+p0VOELT0i9og5Vg+0VSdhYsIm4h/tSmd/wMYUCr5gXzCUd2vbMR61a/V7XgnVPoDMPlYXyY
 2hKNXccjimr3tstqY8/OuA+igvFy8IjBJ1Tg3FcIocCd8YbaXU7FOZrNhabdMoelNdRDIiQQsVS
 6foEut9cvCC1FbUVUOUp83Gg+6Xm59UKhS68cvAxkY6a6hxB0/3vAv8jKzaaEkVgXyw1SGef4uj
 6x9Wrblckd2JC+7D0R6LUjEZSOWNn63Wp3Vd3eBmSLB1/FCsSYiCUnaSsf1OWzNXAVCSjBDW9I1
 TiiWzGJw6siA5dRDdTA==
X-Proofpoint-ORIG-GUID: mOI_hOxWbZoEGX7hD-Uisd3lFbDnI5go
X-Authority-Analysis: v=2.4 cv=XfuEDY55 c=1 sm=1 tr=0 ts=698aff31 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=KVHPon-nXVvIHQdiTWMA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: mOI_hOxWbZoEGX7hD-Uisd3lFbDnI5go
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100081
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-264304-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0E8551192F0
X-Rspamd-Action: no action



On 2/10/2026 2:16 PM, Konrad Dybcio wrote:
> On 2/10/26 8:03 AM, Manivannan Sadhasivam wrote:
>> Enable passive cooling for CPUs in the X1E80100 SoC by adding the
>> '#cooling-cells' property. This will allow the OS to mitigate the CPU
>> power dissipation with the help of SCMI DVFS.
>>
>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad

done boot test also, cpufreq nodes are reflecting, please feel
free to add:
Tested-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>

thanks,
Gaurav



