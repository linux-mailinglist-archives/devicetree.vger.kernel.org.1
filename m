Return-Path: <devicetree+bounces-270932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHKyFCH0p2mtmwAAu9opvQ
	(envelope-from <devicetree+bounces-270932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:58:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E99A11FD06A
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:58:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0584A3012532
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AA2038E13F;
	Wed,  4 Mar 2026 08:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Uk0rvhxu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H/YzFH8C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D561384224
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772614684; cv=none; b=EsJtqjkiC5710z6Gaz2H6dtBfNxuTTtN06/i0iXqnjcZ+SsxeN6vSUzrDbimOiwmy8wlfKgmVRmfhlQaexi6FAo7691k9KC/x5d+gUeIVWCHKOuBgzv6bgby20GNIW81aaO2Wk3rCyVx2hcHBgXCO4o32N76w49gZhW62rLuipk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772614684; c=relaxed/simple;
	bh=YNyzheyMXouN8Lf/ico2jv5x4+uFyMuodyQ++FAMW8g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qIBoEHTaVKCPs0PPV82/N4j0AHFJjJCz2pd3Mth+/U+PezhKXpqf4JLoLvIotjV8rtF5czEAcDVYNFyKU4Ldr9keGQKL5ZTYdAkPD+MAyZDb6QBe793dByHOrKjq0D16GZ+ynaYMKsDUIRV0PnpNRnfgrYKNl8pZUIOafAZXAm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Uk0rvhxu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H/YzFH8C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SxQB2306688
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 08:58:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	niOuDWaqN4TxIlYkrKh6EztHOaj9yjtzNsL8ODj5nqM=; b=Uk0rvhxuuWKguEN2
	F5lDCz0rki4FrqwhkyE5Z7ESRTqyzzZl3naodJuBH98RNZtitzWyTC5JucEXC2Ul
	/GpGkxS7fPJU7Z5oI2g5g0rSbffff6oSI8rP+CwtoEoXRaGkAWc5+g1auXJKBjyy
	kWdh71oLAFD0AWTal03j2F/f+kIt/efFRqmAzBkvqoG6BTCdmvdD81QNlWMzeWHG
	vCWJXRuCyEC5U3p+NBsecVWLT6BzuAjmcEruLQ9poFn05lGcNBcCxPRCeJGdLDRU
	tpzU61KR7idevCJZFiICZIVo8J3bERB4SBu5USMWvwnLjz7+/nHC19atHZgqVSD4
	+jA8Mg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpau8seax-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:58:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c710279d57so501035085a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772614682; x=1773219482; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=niOuDWaqN4TxIlYkrKh6EztHOaj9yjtzNsL8ODj5nqM=;
        b=H/YzFH8CySbR9Oy+FW8IfFjTBUVU5R+9MUrhyuzBuMQn9i24IISXojHt4H+4WD5Ha8
         AbpN3ThWhS9/POFuoEHbdjHojXL2fl9BzR5LJFmiLQe2y4ORE0gu37/TkgkKp9HLmack
         fW5HWUbsRAelLszA3xA/3DwMT1EVMNIJRrnEryLOuSZTrq0XDtS09p6+Eaw8YEjAGaEi
         fa4go81HfpxduWSxPWhCgAGvZj9JS/3DhXYsFSCdSGo2jcKPKB6NFWwzB8WZnBZsB+9k
         V9lrxAPja7l5WLmxQBWhGRhwt6Vjtb07QtcIxtzh+6bAd0PAcoWjwqi3C30a6QUCvmT+
         X16g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772614682; x=1773219482;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=niOuDWaqN4TxIlYkrKh6EztHOaj9yjtzNsL8ODj5nqM=;
        b=eFLCXGl2XOoVJQy7gghP3scKheMw1V1/4liQjcT2sAbsqNDo5XZisQLlwHGDCOniqn
         IMIaTErddGv90Orgvnb6Sw0LIk+cyhxxw0axW4jlODrBJaQuXhARjM8Ft4df6YQW/oYO
         T6X0nHtAHYWFAIKfPU1+c1MuFCUT4HCUCPJEbZePExpS6YsE6utjaME7HX7LUUUQoW4d
         GB+jHF0Lxj4kHZPXw5MSA1sVDptbPMNu3m8HCBUBJ8F68hzPv2ymkp+OrgumTHh60unV
         MFWJOXkK9QH63X0Zut528RwI+ATttA4qcV31fCkAD4xtpBWr1vk4pbcGAtLlyPxoOzMY
         TMxA==
X-Forwarded-Encrypted: i=1; AJvYcCXdTSArAya4IDIvf4cvh7copeZAEUtySxiYEAk+JkK+ATNm95SD9DfUNejCdxD92mH3+QFRCrqGORgh@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu+3VpRuICxU0ReGnzqmb3lKCfJo62xnGxE/hUVD4Bqqty5JCZ
	g9Ndk9/EOr7siSLULpk75mPZVrNmfd89fwk5Ckdzks1e//JMP4vR+XSdwYkp+iZdwAqbenQaxtu
	Z7YogjF+7hamncyqEek5oDsb0alPQ5kCc6MQ78Mk9SU5WzDCme3NisA5IwNS4lw7K
X-Gm-Gg: ATEYQzyN8G1/h1CNqeFHvBJTi89Z66G82Ik+3aPQuDrGvhGtgY9LUoO8BQLbqxczhpx
	VYlS+v6u9nXrvGRwGsTpASwDWlTo/YlsKLB6t/m9x3ML2Mis8pI26QAYsv5O19C5UcScMrrS6cV
	tByUE/w10+EKvIcpCHNTESK344Flfh30qhLYTkkW4gzVYwIqZAmHwHp6weDs/9RrvNgJ2u2KxXg
	GOMtGSIfj0qylxqsHmOzvBceIOgbqYepwo3y1AexHGnaj4bcYLyKP0zsvk846MNo6gJzS4JRWjL
	ajc2fRmaeBKFlRXXSGvRzHEDSuhhiOxvy2UanwFhcHfuoF/IFQyMo2zizrcKmbu0VvD4C5z9t07
	lBVX4eNFI5YWp8tSwH874ZQdoISMKSb0uhF7vDJzX2RMxJI+q6dorYLuFspztwDPZZgoRNOhGoF
	S4u/Q=
X-Received: by 2002:a05:620a:3945:b0:896:ead2:a657 with SMTP id af79cd13be357-8cd5ad9dd70mr122028985a.0.1772614681664;
        Wed, 04 Mar 2026 00:58:01 -0800 (PST)
X-Received: by 2002:a05:620a:3945:b0:896:ead2:a657 with SMTP id af79cd13be357-8cd5ad9dd70mr122026685a.0.1772614681264;
        Wed, 04 Mar 2026 00:58:01 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabd46753sm5249417a12.8.2026.03.04.00.57.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 00:57:59 -0800 (PST)
Message-ID: <4a5be869-1b98-4b76-b483-4fa374bb36bb@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 09:57:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/7] media: iris: switch to hardware mode after
 firmware boot
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
 <20260227-kaanapali-iris-v2-2-850043ac3933@oss.qualcomm.com>
 <6fe3a1a8-46c7-427c-abb5-2e7366a43392@oss.qualcomm.com>
 <164928f6-cd29-49e4-8b5e-365f5b0a70e5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <164928f6-cd29-49e4-8b5e-365f5b0a70e5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AJS1/0o2 c=1 sm=1 tr=0 ts=69a7f41a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=b2WnVuVpUTZYNMXETCkA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 1r47Vq2hK2BUlRleuRQc3iMw7OgMM_Xh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA2NyBTYWx0ZWRfXwhmpsehbzytv
 LoJzyvOuKRrSVOde9BfE3xg6VkoKLS6LkDtKI74I5fxpSfbE4G5T3Jo9EGkTek0P95tKaQdjafH
 QRgofuSue5Utoa/EPc3JRprASiyeRyf/prGLAcSKlaX8W+01Mh8fkAxrF++x2bnBx7N+k7Ue/Vy
 6f2eLLpfR2676EYoElkMB1ed/D64OKKxoopIbo/pU0RrB50GLuv0VwzqLKRsfg9jUQRR0w4PbSE
 6lrAbSgVzosWb+pnCOKI5+/+XussNQkjXRdsnvVcVCPfMnTAqXIfVJ3reQRUpa/l/ivTyHw8KpU
 7WOQDqwWHUQZBCGhe6PFuM6Gz7HB9xqxXyXeVizj7XCjZuSBhvvJP6CNFhQFIakzjIhrm7ul1xv
 2NyYk7Nls4b2Tqb4UABq85m85z8dRKQYBGd1y7wAsvk8cj/lzQlLCj4e9AhPWyTe6l0V1/dZEdb
 gjdDc/M3e22z/Aa3MjQ==
X-Proofpoint-GUID: 1r47Vq2hK2BUlRleuRQc3iMw7OgMM_Xh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_04,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040067
X-Rspamd-Queue-Id: E99A11FD06A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270932-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/3/26 7:15 PM, Vikash Garodia wrote:
> 
> 
> On 2/27/2026 10:19 PM, Konrad Dybcio wrote:
>> On 2/27/26 3:11 PM, Vikash Garodia wrote:
>>> Currently the driver switches the vcodec GDSC to hardware (HW) mode
>>> before firmware load and boot sequence. GDSC can be powered off, keeping
>>> in hw mode, thereby the vcodec registers programmed in TrustZone (TZ)
>>> carry default (reset) values.
>>> Move the transition to HW mode after firmware load and boot sequence.
>>>
>>> The bug was exposed with driver configuring different stream ids to
>>> different devices via iommu-map. With registers carrying reset values,
>>> VPU would not generate desired stream-id, thereby leading to SMMU fault.
>>>
>>> For vpu4, when GDSC is switched to HW mode, there is a need to perform
>>> the reset operation. Without reset, there are occassional issues of
>>> register corruption observed. Hence the vpu GDSC switch also involves
>>> the reset.
>>
>> Is that a characteristic of the hardware (e.g. also seen downstream), or
>> is that required with upstream iris only?
> 
> it was found lately with one of vpu4 variant SOC and applicable for all vpu4s.

Thanks

Konrad

