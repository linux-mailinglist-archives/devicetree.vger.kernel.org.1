Return-Path: <devicetree+bounces-267308-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NZkGbgbnGkZ/wMAu9opvQ
	(envelope-from <devicetree+bounces-267308-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:19:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CBF173C42
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:19:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8C23031007CA
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A37D34EEF7;
	Mon, 23 Feb 2026 09:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PgPei3rs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jVx78ExR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35C61428F4
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771837756; cv=none; b=sadmoA4WAxvLBUCxHWYzpbshfEljjcqDURmH1jdy3k0CdyUmE5vZaWCmmapIGYnCSNGHMHn/RkOVzUoEin/PFSePYKwndCESEzSrX+RAWp+P3r5PsW0d3wDj68ux6iliLyGw5//w8n5CUFvKYVa7HEFSnbdPVR3HA72ycp97v/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771837756; c=relaxed/simple;
	bh=KlM4Wei2v8Ak9Fx3stfKNDE+6tYQJ7Pja4dRQpoaA+8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fsu4pCshF41A5rZyTv1PE0IABalNlEB/zhoMHHuZI/SOcPIEqf9VseyhfyqUoXHwMQUeNUiCqIcVXhSeES4qvQZVaQN1SLsA7vBk6ABwp1kYgNACQqVP0NPz+bPPBxMWVckgy1wEfIcQjR5yxjA7jAe4EvXORBEU0ZdCDFx3L24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PgPei3rs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jVx78ExR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MINtxl3076321
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:09:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eN7Ug5P4IulUD8R6oc/tr1H69BNlQK6QUos9s3IP/G0=; b=PgPei3rsOIhtAWo5
	5Z029DFPbn4BtObtDnE8yAdRIE5N0DRD1e14GABAvMIBoj0Rl5YSMmMgYcLSprb0
	VXe7mfdSSEa16caVx+2raxup1eQrvMlNNi6bFjk5WVkC47Xdl9UcrTkUJw8IP/gU
	+l1gxNrKf6uY7X6VJqwEy6YSou9jMbYpeX2IMjCxV/7BiF+/7Ey26dCudFnak2ed
	QMfDVHs3CkDbLWqteEuTveie6wbUKI5e/GlMmxakyIYiOh/fCgUhHyd1yBldKbMg
	lUae9KQOoKkAKH7X3XDsZfPbaT9Cuv8uYEWEtfE0MX4FU60AbAY9Ls/9iJ2+eP1x
	CQrSyA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5u8m2k8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:09:14 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a76f2d7744so46218025ad.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 01:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771837753; x=1772442553; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eN7Ug5P4IulUD8R6oc/tr1H69BNlQK6QUos9s3IP/G0=;
        b=jVx78ExRfeKslpMrIYPiJlGebqc6apfkRT+5VXoS8uJqzJteMJEf6tvmYQDRHg0W1x
         pHQiqeRU4o/GbXH9AQ3ZvtTMGFGJnXZ+XlNASNMw7Op1VheDyUc9YTyK0l2rFoK+ji/x
         yMla88MWB1+JwnrIkeFEzWXCXEfr4pIp7v4iKazRgCfiEgVG9SoXLHA2xkl81QenPwMw
         g2reb3rfATy0qQJ2IVI0J0UuJGHq20wokL9LYEyzBf3ZTRQYvwb3Hze6687PUgeV9mcG
         WLnCOiWtPANZwW+DqxpDmPKe4T8rQIb+xwdWd73KFXPpLyIBKalx3HAzzZ4cT+9UWx7D
         s1pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771837753; x=1772442553;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eN7Ug5P4IulUD8R6oc/tr1H69BNlQK6QUos9s3IP/G0=;
        b=DWiQQGQOJGog2L8yTA3tmUStjBXNr9p6oLGWa2hPPb7U4GWaYXaOcH1TjVzpCYz7BJ
         GoVrvXUcsaXiSjzMPUmXAipX8M7ldGUPLKomn1fsQMENzfcc9sUX0H0AFnpDRrkByL/A
         i/yvVQAgoW1ug4DdAVG0aWiozTaPCBWfBq2ciKcr7yYCfDOzMEwc9c7qBtm11wm94hJj
         jD4TfdaHoK2Hj/t3QM7EvRr2V9HzEaYJazoS0uOYdmi22zNK+4zuCO3h3KZG//cWBk2a
         S9avc3nVYU0yRJkrNO6tp3ZOa5LTzMD75mm7w6gVeltphDE43fi3oSykkG/1NvKIBULz
         NStw==
X-Forwarded-Encrypted: i=1; AJvYcCVrcs40SZEXgqC7Zj7Rs3xH30frQGX8kGIHmdT/zywYeUrijkTi7DTaLK9hu8+J8L8ezW88HXUm7PeO@vger.kernel.org
X-Gm-Message-State: AOJu0YzAzRd8EPmAopd5Amcm6vNQ/6Q+te7i0uTiqPEzfGQ6V9unuYbS
	sSgdy8jjY7ioHRFrSNFtHfxpB96bqTuDlSJMhfLL03P1ai/DCQyJ1MGXHilfLk2ZE7G2Yme9pTH
	GUwinftDivXLBWJHU/WB1KvxC/3jf07TV5IfYC79qHrYtZNjFoYbsjcdBhGWqfapX
X-Gm-Gg: ATEYQzyErd+BbJWqSa/y8mQaQsx/zBLFFj9vZ4lCoz+NelG2RsY0Z0GAqow/Y596bzy
	WtMIm8asfwUTrniEQ0i0DPQ5IpGf4Bx/gd79mjmakS2Hbyz1kymkRw/3Xr6C+Zp6+UsZTRP4y4z
	6/OrFQekYU8c0sztiY9Mt6jupZd5tatUmmx3st3cWzBQbZy4tezKYFZzdqasX1bTlj9v6FBM9Ga
	sKlTRPcYbu4IketnF0AF66NZeowYrqhB2y5R2gWUG90+Rl7i1AVzLKDrJCDAH32RbikAvbyTRiz
	r6nwSXnbNK4bvo3MxL2JJ6+pEs/VvssVNXkl08urcwUxNWAg+sQJvrSs/cdSFgT0yO9Av3pthAz
	i6oPC3lb/BM2IVyTc8ya/dRcM57lfL2xZx25KUCDuK51bLbFLonaB9NN1sJn1INr1COpvBeubMt
	qXpmOwkeZ2/riJa+sdzGMdyqw8dvXbGO0X4Lt9HFI=
X-Received: by 2002:a17:903:1b26:b0:2aa:d333:ce84 with SMTP id d9443c01a7336-2ad743e37b3mr80704275ad.11.1771837753407;
        Mon, 23 Feb 2026 01:09:13 -0800 (PST)
X-Received: by 2002:a17:903:1b26:b0:2aa:d333:ce84 with SMTP id d9443c01a7336-2ad743e37b3mr80704045ad.11.1771837752910;
        Mon, 23 Feb 2026 01:09:12 -0800 (PST)
Received: from [10.190.200.237] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad80907b4csm34202505ad.78.2026.02.23.01.09.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 01:09:12 -0800 (PST)
Message-ID: <8d96ebc8-67e2-424d-adbc-0948dd3641a0@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:39:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 5/5] arm64: dts: qcom: glymur-crd: Enable ADSP and CDSP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, mathieu.poirier@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-remoteproc@vger.kernel.org
References: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
 <20260129001358.770053-6-sibi.sankar@oss.qualcomm.com>
 <e658b473-6f05-4f83-a730-e586068d8742@oss.qualcomm.com>
 <sgomjvhwnnbvuskxqfybczvxtwn2lourr5eq4mw4qyxp5s6kzc@ccgx4wn5wqi3>
 <24973bc9-a082-42ec-89f4-12758ddca136@oss.qualcomm.com>
 <yaunylao3nefmhbdovpfoymy63hjfjtvbwm5quqvdyk3enpno6@7rmpnx7esdhs>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <yaunylao3nefmhbdovpfoymy63hjfjtvbwm5quqvdyk3enpno6@7rmpnx7esdhs>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: HGvp76imyC0U-Px6Nhm2EjCcpgo-SWtl
X-Authority-Analysis: v=2.4 cv=cJftc1eN c=1 sm=1 tr=0 ts=699c193a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=GmUvsNMoEockHelqzZ0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: HGvp76imyC0U-Px6Nhm2EjCcpgo-SWtl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA4MSBTYWx0ZWRfX3ta048P6+4BL
 KZShqb3ra01zDJYynNRWo9gOjAP/uiPGF49lr/gv11r+2XstKwF+3O1h4Cq2O6z0r1lRBPdPSlR
 Uan8jCFH2PXNaD8i5hfOW1R4PoR0xLLXqu9qs8VRdafgS3BITe7grBT/37pVBlDrza+FgxUDb+i
 OQwwa/pbtpNey7/T39boFtbqLWBBPvjEarRUYtsDgRfp3XyQpW3nFTRlTftUWPLObNjnFW5TnZc
 zi7mH33V7L9n2k7UF+vSeSAm0rca3AQmatjbQydFt12bUEk1COaSvgzY5WPiI0nqYHkb04oqUYF
 i5nlfIAu4PjLDJkwg9G8wSjBdd86e5B6fRD7KpotQlmqe994BwZ1/jskrwzBnv4Y3oohQNBQVMM
 mlEq5+TB9oc+lF3O9Qj9VUNa578xdp8OoS/JwZz9Jc56wvmcslQTcitjG8B0DhuBW4m9foj9guK
 l17yysChReCIz87dVuQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230081
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267308-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D5CBF173C42
X-Rspamd-Action: no action


On 2/3/2026 6:09 PM, Dmitry Baryshkov wrote:
> On Mon, Feb 02, 2026 at 11:16:19AM +0100, Konrad Dybcio wrote:
>> On 1/31/26 8:54 AM, Dmitry Baryshkov wrote:
>>> On Fri, Jan 30, 2026 at 10:55:24AM +0100, Konrad Dybcio wrote:
>>>> On 1/29/26 1:13 AM, Sibi Sankar wrote:
>>>>> Enable ADSP and CDSP on Glymur CRD board.
>>>>>
>>>>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>>>> ---
>>>>>   arch/arm64/boot/dts/qcom/glymur-crd.dts | 14 ++++++++++++++
>>>>>   1 file changed, 14 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>> index 0899214465ac..0eed4faa8b07 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>> @@ -487,6 +487,20 @@ &pon_resin {
>>>>>   	status = "okay";
>>>>>   };
>>>>>   
>>>>> +&remoteproc_adsp {
>>>>> +	firmware-name = "qcom/glymur/adsp.mbn",
>>>>> +			"qcom/glymur/adsp_dtb.mbn";
>>>>> +
>>>>> +	status = "okay";
>>>>> +};
>>>>> +
>>>>> +&remoteproc_cdsp {
>>>>> +	firmware-name = "qcom/glymur/cdsp.mbn",
>>>>> +			"qcom/glymur/cdsp_dtb.mbn";
>>>>> +
>>>>> +	status = "okay";
>>>>> +};
>>>> Please make sure it gets to L-F (only Kaanapali is there right now)
>>>>
>>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>> Hmm, looking at x1e80100-crd which references qcom/x1e80100/adsp.mbn,
>>> but the firmware in linux-firmware is (now) targeting IoT devices,
>>> should we use WoA-like names for firmware on Glymur CRD instead
>>> (qcadsp-something.mbn). It would match what was done for the SC8280XP
>>> CRD.
>> I think it's simply time to stop pretending the firmware is generic
>> (some fw simply isn't and some fw may come from different/incompatible
>> branchpoints) and include a board name in the path
> Well... CDSP is usually generic, except for WP vs non-WP.

Hey Dmitry/Konrad,

Thanks for taking time to review the series :)

The ADSP/CDSP firmware that got upstreamed to linux-firmware got their
functionality tested on Glymur WP CRD devices.  Given that the firmware
has already landed, can I continue to use the same name as the patch and
have a different name for other boards if something specific has to be 
pushed
for IOT?

-Sibi


