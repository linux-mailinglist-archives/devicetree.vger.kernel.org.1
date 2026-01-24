Return-Path: <devicetree+bounces-259179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEH+KiXzdGlH/QAAu9opvQ
	(envelope-from <devicetree+bounces-259179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 17:28:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 509337E1D7
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 17:28:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 477AD301DAE3
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 16:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB82D259C92;
	Sat, 24 Jan 2026 16:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fx3e4Pln";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ut2DmSoN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92845248868
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 16:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769272046; cv=none; b=PGzT/3csDkDmve7ByHZ1ThCkJXADQf1itpeKSJy1va/u7yg3qOf+atOrbG0ytjD1N5FB5GIW7ovL8NTuPaz5TYaRzs34W46O7DtI4LKEY1XP6X1Xqct8ztQ7ZNeuLGAbs4DprGAbjOkQMw+1NzhxBZKBfU5qT2yhE9tJ1Ss+W1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769272046; c=relaxed/simple;
	bh=sIO+7mRLtKqp1C/pn46VEcFCvkrvX/S3ceOy/ibHYPc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=j4vVb9rhGbML9OMQzLWOa91mVQrhl+1JLnwiB/WKMrne1k5+fTKM3HfZR62bInK13WcqgTknyoDMqWHWVtNQtMpjsW1y4N0IBMd9wtp6v+WZF1WVJ3U5jUxEiMJOP7mzYVMMCzdSinVGUkOuf7PB1e+bLa1CQ1y/IJ4UuHCtV3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fx3e4Pln; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ut2DmSoN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60O4gIoT173517
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 16:27:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bOpx2DpXanD+p20yhL77x/LsK2RhJFqcNPIzRpVkldM=; b=fx3e4PlngMfRt/BH
	2aRvYzf7n9WmEVOkdycdcLqm8jlkH8n2eB7YZKQldBrK8u+kgeFUTDvvrxakCZYW
	8TMHr5LeyPB0Y+R7KBds8vz8r5qxLdyOcIdSBLA7bXJXjOtsSb3Rti2LmNny1kQ/
	Vcj/2PTsMvBo4bQ3GLjE85F9XKhEnKlQ+YS6Yhxt1aryrrsTKym4hmZT9DVubkfh
	U4FlYa2TQbiuUTaHb0c1PzMKCekQ1sFDPscfw8RK3XcJfToGDlgamWU4/CkXAiV0
	EatB7MK3IscXa7MpGj8Gpe08seqTspdCMBnqLmRvV9NpbfuK8BhpBtERgJkqMIKG
	Z/ytVQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9f0un0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 16:27:24 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c552d1f9eafso5112036a12.0
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 08:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769272044; x=1769876844; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bOpx2DpXanD+p20yhL77x/LsK2RhJFqcNPIzRpVkldM=;
        b=Ut2DmSoNS/Dx+CorSgxYZFJONTUWdYgIYSm+NyY2+z07rSKnIlNdzoqjxs9jzuLP+B
         VgmzDcFIHxF/oSY4VO3WtNFx3cn/Y2TyOhTzKrT/xsOmnhbuZ5cegezqmn3vs9cRqLIn
         24GStDB+4lW1IjHMJmdoGTsT45vf2u5HSbCk9ULWZV13I/gn2GZooc2lgWn9FxZwb7Sp
         7yt2kmOEoCaxjrQI3+JdEja0Y/hIJl3BOzkFFTeqXfRmUp876XfJGT8MwyMo0GiBZehg
         TsrwQ6JM9+p6sDBfoWZQkrz9gvK3F0v+v3RROa8W+W6xj/bw/MXuJIyr4eHH1VWRnrXM
         NDog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769272044; x=1769876844;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bOpx2DpXanD+p20yhL77x/LsK2RhJFqcNPIzRpVkldM=;
        b=Rfup2qk8Inl5f9pz7N5N3h1yLPfc5il+kqXHrSZ43pAt0rba+ekCLXihYF+XkPfKGh
         q/lYNmNup1kxBcpF8BsDef6Q4Ym3wv+RsRgYV8QjGTJMRPcog+sm7cO7BL+mAILmdA9m
         QiWxHtAkMYvQ+Hc59XIF1rIVpAy+plehmWvr39LyNIg0xThfOgfWaYAaybeO2ue9nF9u
         KbizQEVsJ5Zaa7APEJVdXzl1N4BREhc/2jGNTFSM9+LrZ1hkDCuHJTBZ4stYBEBaHLJc
         2exG/lPWMLIIVqkBvEl7ZLMzQ13ejgnu0ij/UCjsHQulJybu04bL4eTS8wrdKB/iQsAY
         HuzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTJqKbYqAlrPBu3wyRIfn/JgezalxGJtEzLDPMCeUVgNt0ji+gzMeiKHHJw5LIFex7CZJy6ks0nZa2@vger.kernel.org
X-Gm-Message-State: AOJu0YyKmpxR/oW7Bp0sxssJZ0MSROPSqOYxfLo/luUZtkJ69GkoI1Wo
	XcDMiq5DJSxGIqIzdd/CnLaFu6T9Z1GZSaxnb0Wv4meNfrcACPxibddnuXnM5lsVQJKcQFBF7wN
	z24KcooHEJgCdn8OwVQxc0UP4RPATxqn1a0yaPZWw2XjeEont/yrupWAEKqi7P6oz
X-Gm-Gg: AZuq6aK5lFIHk6mOdmhSL8fNK2TVSQfjP6UTJDlibhOu5NPptYoP0ImXp/WFuIMYXk2
	fJnUjQVUZJ7uGq4rKWAKDdYSQe6Oz7OIP1kSOcTDRUydER0l01e/PRrLnAwj5eoeE9DRaZHtelQ
	GSWbfWFrkYQDCctGExqPerhopCBsgLxMOA8CEsN75x0DM0sEEExyETVxlYe6jzmSjZ42NyvllEx
	lhbK/qnP3kvg48bX8ySbupXTeZ+w5SY5IYGNDjIT4hKUASKx9AFvrNUqw9mn0hocB0gJ0oYl8NA
	hzYRUksE+giwT7GWejN1jzb5PTmWrRV/dTAB+IcOgbkKQ+U4f8XtTKdpmWDKqzndbIcxnBFBZ8+
	T4yASbbCT109UaecnOUwbzVntWFAqyMnHVTuZXpZ+O6BjP6rW0/MZ
X-Received: by 2002:a05:6a00:2d97:b0:821:849a:a65b with SMTP id d2e1a72fcca58-82317e96acamr5591983b3a.60.1769272043880;
        Sat, 24 Jan 2026 08:27:23 -0800 (PST)
X-Received: by 2002:a05:6a00:2d97:b0:821:849a:a65b with SMTP id d2e1a72fcca58-82317e96acamr5591963b3a.60.1769272043248;
        Sat, 24 Jan 2026 08:27:23 -0800 (PST)
Received: from [192.168.1.7] ([122.164.85.60])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8231873e632sm5140237b3a.46.2026.01.24.08.27.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Jan 2026 08:27:22 -0800 (PST)
Message-ID: <9febbe8e-3060-47cd-a1e8-5ee2b4de952b@oss.qualcomm.com>
Date: Sat, 24 Jan 2026 21:57:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: sram: qcom,imem: Document glymur as
 compatible
To: Ananthu C V <ananthu.cv@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260123101501.2836551-2-ananthu.cv@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20260123101501.2836551-2-ananthu.cv@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YLGSCBGx c=1 sm=1 tr=0 ts=6974f2ec cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=mFPsVBxZ6X6I+n0VQ0PbtQ==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=WW0ScXIPEF-ZzIcbZ_QA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: hAw5QeqlKk8iZ6a-tUOGSxvfkAAli_Fh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI0MDEzMiBTYWx0ZWRfX8WwM7bSih//Q
 ZbedaejaV1YjYtz6GGRgm6bX/BDH1n+ZczTPZysvSox82ET7ylUXaYL5hCgGBXSwX6HzSCMfsJ4
 0TYmvJYjPC85HUmPX95HPObr443SHiskAwN3cqvhe55YGSgVBAxx1xWBNngZZLYW14p0L8jxIS0
 zHovTrcYnV5D4uZCTTE9EoXJGlXC7kBQIHt23T/fbtx63ZT9VslL5f6jIX6jICDziWF+4crT6xg
 baXP7eJrudBUcbgDu22vmYqZODbmyChgMDpEuZlrMxUIE+klY/s/cv9omijsOpRwNHZAT7fPHZA
 7+joiKPryNltdOeVv/lXm1G1eO7WU6I8O+chxCN+KagvjRkM2g58i1E5sKqxdAdHLGmh3ly3YUn
 jbv/X1sjCPxfE00OT/SA92KK1IwZXsb2rweXErOJYJRIxDj/CqdxIH+mFsk/DeROCqo7VIbt5G9
 U3OYna8ccgsMdLA46Xg==
X-Proofpoint-ORIG-GUID: hAw5QeqlKk8iZ6a-tUOGSxvfkAAli_Fh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-24_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 impostorscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601240132
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-259179-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 509337E1D7
X-Rspamd-Action: no action


On 1/23/2026 3:46 PM, Ananthu C V wrote:
> Add compatible for Qualcomm's glymur IMEM.

Shouldn't we use "mmio-sram" binding? Please note, starting from 
"kaanapali", IMEM is described as "mmio-sram". If we need to stick with 
this binding, please describe the same on why so?

>
> Signed-off-by: Ananthu C V <ananthu.cv@oss.qualcomm.com>
> ---
> V1->V2 alphabetically sorted the placement of glymur in the list
> ---
>   Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> index 6a627c57ae2f..5a4a2868388e 100644
> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> @@ -18,6 +18,7 @@ properties:
>       items:
>         - enum:
>             - qcom,apq8064-imem
> +          - qcom,glymur-imem
>             - qcom,ipq5424-imem
>             - qcom,msm8226-imem
>             - qcom,msm8974-imem

