Return-Path: <devicetree+bounces-258398-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAvMCKsgcmmPdQAAu9opvQ
	(envelope-from <devicetree+bounces-258398-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:05:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB2E6704C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:05:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 19D4142C01C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC7F03168F6;
	Thu, 22 Jan 2026 12:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XwYuwLkB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kc11u/3b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01493164C2
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769085164; cv=none; b=smVb3QaVHypo5u28nwv3E4raHmPot7ql/YyguclqsoVk2k3VIfbSfk9wg9buVTvwOtoXvlUIpxT4Ri5TfWTbxn1NbcfX7ru+ePmc0mAGofMsHYBA/iNKO5JAdaFbAi4wd600XTYCmjnqorHxVflqToIRXs9zlPd+/aLyhclC5KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769085164; c=relaxed/simple;
	bh=/mQKKB8o5PT+6nT5bLXeqTkThJ0jemmU7hrsEjvu7TM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qx0UleN0sY2SLNP2/CAfV8idM3W8tRAlE0DIRhB1ksseERWRlZvjQDVCuuSGkF5ywcQeOEWnPylOxOQ3nbyz0YAiMhKdjXswJejJRIDnjvRL6tOFE8TvCgLQbTT1uaGqukb3sj6xcjYwC8ib+GD69P4/5SQkSBC/tDXz6CmXgjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XwYuwLkB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kc11u/3b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60MB4ssV2629709
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:32:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a8/JK4eqU4aRzpBRsI/cvSNMP41mjw7eC77JpWPbvF4=; b=XwYuwLkBpfvjyciU
	NOJ/owNFJRDwwqthMhuZihEu9N+lUjDYRnbBnO/e7th0fgXv9oKWIgHZ2xyEvzVR
	DM4kuC3rwqU2GSE+cUEFBP16mrUpTdIyF0HT0hNBTsH35WuiVbw/yc/oqd4IHSUO
	v/uf7I7YHzC8EA5NJUUpoCSXXQ1kIPjGbomcjtJ8yTqJWIV68gGfG+Xm7NsSnVPQ
	0LAdI6+FQde2ouLYS+pavdq6dNG64wZ9ZLSHL8pwGKGzrLxATOJLJPVWdkQ/4ChX
	67xJVpRn5i2fW2g6cKP5YoSTkDuJ98kV0wu7LB+Nx7Xto1er4i8kLW2/4c36Dep9
	kNZnAg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bujq187yc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:32:41 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7fc82eff4adso882602b3a.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 04:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769085161; x=1769689961; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a8/JK4eqU4aRzpBRsI/cvSNMP41mjw7eC77JpWPbvF4=;
        b=kc11u/3byAxFaWEnVz8h+KGtZBEaZw27t7K2v6N1lREMUzOqMR9j4g7SRi+wlaup9n
         Uq1IeGd6Y/3NIdu9ErdBGssb1sFWq5ofxahM3b2TlkLM6+y0BFGJXV5+K7Yqc4+X5pSJ
         QpdjRv1OLRcnLeQyr//HbUSAjTJKplwe9McpgSZeJVveJNuhpL3JAvFmOinsblCWJn+l
         oOjdQgtdQm5k5dUL2G5QmZKthWaMryrjdr8tGk1aITvJQfz7qYBT7hdu5o9KmKjwCSCQ
         Tv+xK9Bz9GsEbbphfUBiOzPl2DpE4PAkKYX9voqe4ekUC8Eoq12LFsbW/b59birFJ2Uy
         MgVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769085161; x=1769689961;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a8/JK4eqU4aRzpBRsI/cvSNMP41mjw7eC77JpWPbvF4=;
        b=T2hdr+hiu/OMxTRmpnzy8+iTlVSd7L75fecFX7q2aCFZQgqN5Yg9Arg6LdDCmcukfT
         mMzWVXnApod+1yTCmVpczBvN+NWTgTQpVnxi0qCEN2vuj8L7/ziBqJ5YUxdfGo4ctQuV
         wtT0NJ7x4fjltghXr3++i9+L+SCu9GHqJiOaVjuqjdj6bhb+uuZOhUVSibzZO1iI+GkQ
         AE012K/CdQEwdq5KG6Mx5LOe9XnpYIIpy7D5ZccMeJrxflbk5wRXTeC5Wz1ytxQ+Sfbf
         GG/w9wAfl37OvLpPbAgXDdwlnCX5cJdwe8My3ISH4sXqGzk4VNoI+KXOKH9EPLVcxzMi
         879g==
X-Forwarded-Encrypted: i=1; AJvYcCXqjmMZsfDGpQ0LW1sMlkRBM3K6dGEHE7LdwyU7aDETdpL3fTMMihvQGSpPwv8wHd/3fXgSLw5f683E@vger.kernel.org
X-Gm-Message-State: AOJu0Yw04vEokZQFqe0/0qhVNRlueWGNScyHzGh+YP8KrwSvqKL67mOC
	u11ZERhonbifXEOdg9pIFtEygxnwCCAD52ODicGwAOrP5ADfzfkVA5ERde3WVATsv+sT4KOo8Rc
	VbuKP2kw8iBFZFW3pRGjLpixrd1gLUKkcBhzaiqNyw2LLxC9uGKfcSKb6hQnEbqy3
X-Gm-Gg: AZuq6aJ7ugxzDRTJHE2/WEREWU+hhhQbFh7zKtZF1GvDO3t9PI2iEYN3e/+963HgGjP
	i9wiARhHqtjBkqIe9XhU3Ew/jBqkvjBQOZrtRF5tw572CEh8tUiTiLkOPXcmd/Zzq0XHholvQly
	QDhScD7S8ZkbDCSQWpuyL4eXMeW/isojNPvCtrBAcjPDVzOXrkiPBmBfcUnFaWOWMPwTjO/mGxo
	Ybh7sog1a1q8FVYaodNUAF53zWL7pfrDOLXkHvX5Y/srDAvMMShZhpHK2APYNrIcIBO/6qGLMEd
	iSuy7NcPEaLYQWKUTE9kcZbWpc+NgZ1Fe6If59jsrVD7yxD7GusVRPU3QXkSHRV8PCUZVb8dQS3
	WfeybrPIxzmqER9TL33MKYyh4YZmc2VY0+YbmeJgKmudYvA==
X-Received: by 2002:a05:6a00:998:b0:81f:c6d1:5608 with SMTP id d2e1a72fcca58-821978d8e7cmr2654994b3a.1.1769085160297;
        Thu, 22 Jan 2026 04:32:40 -0800 (PST)
X-Received: by 2002:a05:6a00:998:b0:81f:c6d1:5608 with SMTP id d2e1a72fcca58-821978d8e7cmr2654963b3a.1.1769085159705;
        Thu, 22 Jan 2026 04:32:39 -0800 (PST)
Received: from [10.217.198.130] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa108b21fsm18026681b3a.13.2026.01.22.04.32.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 04:32:39 -0800 (PST)
Message-ID: <4ce28526-6900-44ee-a63c-d9099c0a1325@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 18:02:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/10] arm64: dts: qcom: kaanapali: Add TSENS and
 thermal zones
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-3-a6cc9e45de93@oss.qualcomm.com>
 <4c44mmkpsnj4cn2eh2xzraiw73xmhtx4qm3xiyhecm4vyou7os@skyj646r63d2>
 <3cbdae12-af7f-47ee-89dd-6c00660fa6da@oss.qualcomm.com>
 <vjx3bd75zdgdh6hzhrmlv5tlarnf6ea3yklwhg7jx6momknase@kstxwngyicd3>
Content-Language: en-US
From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
In-Reply-To: <vjx3bd75zdgdh6hzhrmlv5tlarnf6ea3yklwhg7jx6momknase@kstxwngyicd3>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: eCpC4pAEPaWR9aHvw7QYDAM1Ymuo17E-
X-Authority-Analysis: v=2.4 cv=O480fR9W c=1 sm=1 tr=0 ts=697218e9 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=8VeMtYcsI4s2KzZ7CggA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: eCpC4pAEPaWR9aHvw7QYDAM1Ymuo17E-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDA5MSBTYWx0ZWRfX2qmO+dbHx8zJ
 3AQWmEGoEr3FK+GvMNqdfohq8DOomykJlCrZsqZYurPGl9mkC8qvdHq3HoNTeA8/yaVp90MQavW
 /MNMEciQI2C8P3bS9DppNucoSEIm8nuSaOk0iHUx6pnyAA+9TISskA1LHeheEeOwj5QDk7lMz2M
 ew0bHBarVKsSAwNyAPtztqrBPnRqd2/+cd2BJAsKiji2Uy8F1mLyniR+Ui4tuTGwZyKSPCewecP
 svSUTS88CMnEg+0RnyO2Z9MllXjgqTRBogB1I2Ul2/eZO0V8/43GlQgEt9XbQVlzCccUNcvV1EV
 mW1T524q4q4sWIYpnWlHKnBpoao4MaEJ330gC6PtLUbwRCzIZPc+x6LrybfS1ikMGrXuCT1sU4S
 eoOOihvowa1Ukj+O5Bs6dvDe5BG9Ycr8e9lG6iT1NKwzhPDkutcJPHq9lNKfWUedHiiuB1fFQxE
 Qgne4vHSpPa+Qw2kJig==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_01,2026-01-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 bulkscore=0 spamscore=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601220091
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-258398-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manaf.pallikunhi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.100:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BAB2E6704C
X-Rspamd-Action: no action

Hi Dmitry,


On 1/16/2026 2:12 AM, Dmitry Baryshkov wrote:
> On Thu, Jan 15, 2026 at 11:22:57AM +0100, Konrad Dybcio wrote:
>> On 1/15/26 8:09 AM, Dmitry Baryshkov wrote:
>>> On Wed, Jan 14, 2026 at 10:49:05PM -0800, Jingyi Wang wrote:
>>>> From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>>>>
>>>> The Kaanapali includes seven TSENS instances, with a total of 55 thermal
>>>> sensors distributed across various locations on the SoC.
>>>>
>>>> The TSENS max/reset threshold is configured to 130°C in the hardware.
>>>> Enable all TSENS instances, and define the thermal zones with a critical
>>>> trip at 125°C
>>>>
>>>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/kaanapali.dtsi | 745 ++++++++++++++++++++++++++++++++
>>>>   1 file changed, 745 insertions(+)
>>>>
>>>> @@ -4795,6 +4879,667 @@ pdp_tx: scp-sram-section@100 {
>>>>   		};
>>>>   	};
>>>>   
>>>> +	thermal-zones {
>>>> +		cpullc-0-0-thermal {
>>>> +			thermal-sensors = <&tsens0 0>;
>>>> +
>>>> +			trips {
>>>> +				cpullc-0-0-critical {
>>>> +					temperature = <125000>;
>>>> +					hysteresis = <0>;
>>>> +					type = "critical";
>>> I'd really suggest having several "hot" trip points at a temp less than
>>> 125°C. (And 125°C for critical looks way too critical for me).
>> LMH and the firmware make sure this never happens, the critical trip
>> point is a last resort safety mechanism
> Looking at e.g. SM8650, I can't stop but notice "hot" trip points at
> 110°C and "critical" at 115°C. I think, LMH is a replacement for
> "passive" trip points. But for the thermal shutdown we should give users
> more warnings.

Sure, I will add a hot trip at 120C for all thermal zones in next revision.

Thanks,

Manaf

>

