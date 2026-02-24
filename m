Return-Path: <devicetree+bounces-267857-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLwOBlGQnWlKQgQAu9opvQ
	(envelope-from <devicetree+bounces-267857-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:49:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 87665186953
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:49:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7C0803010BAD
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:46:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C90C43803EF;
	Tue, 24 Feb 2026 11:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VbHMgZ5l";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a8EWh4N+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A813803E5
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 11:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771933610; cv=none; b=fGYSqIseQdnPAICgSv5k8bj8wDJ92qqY4riDMWRt2fCwsNXFG51eMkkZaWtaH/H6dHGA2lvcRDbTu1mW+V4uSxeKPN+MATLLW3eNF38mDRDyb3ORUrREe2zNBXkd+2Xo58mbYrLVEh/Keo5mZHBkTd1XXmVUKdPXh6WCj3vBFUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771933610; c=relaxed/simple;
	bh=bhvy8oe9cmU1vca4QHKXTqvHAeM6pxHdfMVdkDWGRtM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cvTQ+CmpD1Uwr2koBTgUJffZz7kcQj5XKU9S57XAE7ZGNK8Tr3TbDxK6uhQATBF6lz2rbl0WvCkG5ySOYx8zKxsvvE6MDwLETVa17vUp1m4DqUoYVOUQWZPdUj2t/tNYpufkwOzmGqbYIzNpJv9UOp3mnmT5K+ftSNsnlsLWhwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VbHMgZ5l; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a8EWh4N+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFMwD2560032
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 11:46:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tymcocPzSV9cCZXdLKcJBNN35FTMQW/hRXDDLBuZkN4=; b=VbHMgZ5leSwmsptb
	ext4POx96LsS/q/rbrX6zjNh72QVJPFT2n8TKEMZ0skVFF13Yroo1Rij8U+lX/Dy
	LVRDJWmGVEaO5yfYx9GbnXjqtbInqXsR2agAofx+a+Ux97343MkSFlfMe70YQIED
	MFdLKhpHFUGS9N30lfQiGqCnPHrUe97qq6lwDeaeCRip3qmkYYUh+42sSL0rbnlt
	D2qm79DJycCWOlW0tYejnPEDz6JACma7aSg5Jjxj3QwehtH2BSxUGIek+CYZr0yv
	GYiCnFNAyl6MQTSI6mNVgzVY4a2zweTsfHTteIsySObwRFEwaELPcpR9l6wRBSYF
	SXzkRQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ch4e398y1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 11:46:48 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb399597fbso422818985a.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 03:46:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771933607; x=1772538407; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tymcocPzSV9cCZXdLKcJBNN35FTMQW/hRXDDLBuZkN4=;
        b=a8EWh4N+E3QFufdDQHokd/UQfYqGu2nihPtSf7AsRcu2SWllrp2vu71CllrOHl64xC
         PmADMayukDFaiOOaOXmhpg7s2JM1qCwL/IMZkb9+FBpA3mOT/JNV5HqDi5+rK2EnNhsw
         JP0TCdkJztahdNK0G2vCct6cBD2WLyWG4ewrMCkiuzh91pWleI//+hRiMjtJa6nMj5Hf
         mCgvnvp2jDJXVAQslSCRRU5AV+tzr5969iqazAEvETWO1afO3L7H8LFanmHUIqgAQoL1
         Lmbxsden7OUX1KY5ksMQN5CxD5zsvOvKVQrq1WIAYoIr/WbsNsSfU1I02byQ3Ks5ynao
         MW5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771933607; x=1772538407;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tymcocPzSV9cCZXdLKcJBNN35FTMQW/hRXDDLBuZkN4=;
        b=fYnBP9AWaUTg0LLLJUizkgNfa5wLXPE++Y6Y4rnYlPtekAbHwKVAXgQx6wVEpAVykc
         1HhcE6EncFx9yb9AVeKA1LsDGJXq4VxiQS2m+4Z/Bfp2zxjswU/lPY6Y2uCuG6ePcrhY
         VuUmHwoEcWm2ym1RPVJwhivI3Hkk+uO3b/FfKN1s7/130JPmRnTMDNbDQl0TZNB8jaCi
         TPaBS6uqJIFatp+93OT2Q16fErxECxDJsZsqqXZR2xrpBf4pkXVlvo1ghntZNWxidKy9
         pQLrmvPetThev32Zz02mphd8g1lIKxgTpDgP2D/h/6JLajT8nfkmDB0T1tHxZoCJ/z+E
         Z4fw==
X-Forwarded-Encrypted: i=1; AJvYcCUyji3cBAlhGdljysBqzhQ3KTVLydj7wxY4BBEZy1N88OPT/55qzTEL/QCnTv1FKLtvjjx0vL+76+os@vger.kernel.org
X-Gm-Message-State: AOJu0YwdzThdTvqreAsRdcDxPYiirbl8OHWmnm+9SevJE5eXwVXlSEq+
	tsok6qbnGvnmvNQhzFa63KfbE8YjZdmCT1r/sIffLeLRIy5nfOuagxS3iLCfcZTmCRb3wz2bX2B
	P9SEY2qMKh/94wE1VEB7P0DqZxEo5OFOlQQwlyJYGx3IsM90PNAt8SFfucKDFvNMp
X-Gm-Gg: AZuq6aI3oWJgDHbhSm2FSWD3BGKhFhOd4eVc1aoFSK5kBBgYjDSW7ueQ5MMn5ZrOGsq
	zrUVaa2nR3365Qyxeq3a/OoJurbnsIs+5MTRbn7ckJsaR1uVxHCAAvlExoqc+k0GzjCuxNCRtMA
	R6B4ack0JABovKXswgvnM2NT2W96JQMW5c1RzDQ6AMtIjDgNyhPAGqxavpmsUpxXWBYORxuR6Q5
	UoYB81Yx+hbqjO8MtmK2sGOFPf6oZUNKLVGMFgXzoeupJ1Bd9QgLTci6advpvcskjmIO7EIVKU3
	+EBmDohq3tM8cac+DFq611t5FkKRxTy8NMgY9hldNL8sLRuvyRokiK3l6g4vh7HkNPTcSM6rI9L
	bvB7a1ZIENm/qFC1vzcuw/BugeQrrRgi8AbXb/cqxJemD9uqY4w8uaIF8i3QeVAHszh/GGJBAP8
	hij6o=
X-Received: by 2002:a05:620a:6910:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cb8cabef31mr1110164585a.7.1771933607497;
        Tue, 24 Feb 2026 03:46:47 -0800 (PST)
X-Received: by 2002:a05:620a:6910:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cb8cabef31mr1110162485a.7.1771933607079;
        Tue, 24 Feb 2026 03:46:47 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084f03911sm411180566b.65.2026.02.24.03.46.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 03:46:46 -0800 (PST)
Message-ID: <8a2db0f2-c9f5-474f-afcc-53248da19297@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 12:46:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v2 1/3] dt-bindings: usb: qcom,dwc3: Allow high-speed
 interrupt on Glymur, Hamoa and Milos
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20260223-dts-qcom-glymur-add-usb-support-v2-0-f4e0f38db21d@oss.qualcomm.com>
 <20260223-dts-qcom-glymur-add-usb-support-v2-1-f4e0f38db21d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260223-dts-qcom-glymur-add-usb-support-v2-1-f4e0f38db21d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=UtFu9uwB c=1 sm=1 tr=0 ts=699d8fa8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=iuyhanrI9R5_42HSFcsA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 9AOGjPiVg4rMaNNX3U50jCvq1UMxbaqu
X-Proofpoint-ORIG-GUID: 9AOGjPiVg4rMaNNX3U50jCvq1UMxbaqu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA5MyBTYWx0ZWRfX001vRHMhwqfI
 PtFLtZCwPv6ue50hdaf1AIWMNUwkJ+Vh/GfWygRor83+p4MR5U//jkKWlKibkHpMqAM/oUXVM5f
 djW4UIQkr4JrJVeODLAHntRVL3J840w+j/4ZkcxmIEt1ZhPdpRD6AuusQNKRJ1tbMQafCKCP5Ov
 VvXy+NTafWniDNeN9D7IazQhHofwvizBUjvOJvFPRm1bd4OklGRFf96Jq6IjRJoR22vltNIsw79
 AoSBXBbMcRhqCd7lUF5FcZTsaWakoBug69OiHNFFh7i5mcb3nLb9KG9sRSoRTFihjWMAcZwh7VK
 YLnCKuNxfmBBbDRvS/xMZCuwEzu7T6G4/gLlBeoKf6Ng4mzymTBHHKI8VTWf+0l4a0UIsrtWfwe
 qNVGKjkEoP4j3FuwfUxaTtLQk5JMERha6hNc/4BBXThSLYHF9vx01Dfoz8nU9VKg/NhQA70tknE
 PH2Vq+vPF0s3xVcaJLg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0 malwarescore=0
 suspectscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240093
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
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267857-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 87665186953
X-Rspamd-Action: no action

On 2/23/26 4:37 PM, Abel Vesa wrote:
> Some of the controllers found of these platforms can be tied up to a
> single high-speed PHY, basically rendering them as USB 2.0 controllers.
> So in this case, the interrupt to the Synopsys DesignWare Core is coming
> from the high-speed PHY, so allow the interrupt to reflect that.
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
> index 7d784a648b7d..f879e2e104c4 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
> @@ -500,7 +500,7 @@ allOf:
>              - const: pwr_event
>              - const: dp_hs_phy_irq
>              - const: dm_hs_phy_irq
> -            - const: ss_phy_irq
> +            - enum: [hs_phy_irq, ss_phy_irq]

Since you're tracking this change, after it lands, could you please fix up hamoa
(SPI 243) and milos (AFAICT SPI 349) too?

Konrad

