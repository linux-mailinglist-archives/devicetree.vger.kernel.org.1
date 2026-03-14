Return-Path: <devicetree+bounces-275672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNcrJH88tWkEyAAAu9opvQ
	(envelope-from <devicetree+bounces-275672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 11:46:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AB028CBF2
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 11:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8C30B30427D1
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:46:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD880352C34;
	Sat, 14 Mar 2026 10:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G9d/BxDZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EZ2bR+u8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F8627BF79
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 10:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773485180; cv=none; b=PtygsCOn8RhR6CLhy74VPp3Qlrb9FvgaUMyHHtblJZrQSryCKR7IL2C/ICWqJtAVvbet7M3E92+83CCr5s4PxwZh5ml/H9d9/azUfoUyL1zRUHForI13tqX8LXuJ9/9wAPcSJYt5r1mByllGRV9pn3v8Iyx+jSMqMLtb94N6ROw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773485180; c=relaxed/simple;
	bh=VO/ejbKJKTWN9wqCY8JTlHi79NeKZjNOdR21IcIVe7U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KxahEbgMarUnkkVryP37eWykZTz6ofEV/aTlbQAwRqzeeIaDH9UMGCRxRZr5tuNoBI33tqE7sXxNERuco5gVMgRXq36sQp4K08JS0a1mKnQ8VTNjdRqqWPxc3HmzPpC6s3uF53/YTlcBJBrROdw0KrbB0BlQ6VmqGTzTJlhyhec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G9d/BxDZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EZ2bR+u8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E5Qv7W2996248
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 10:46:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VO/ejbKJKTWN9wqCY8JTlHi79NeKZjNOdR21IcIVe7U=; b=G9d/BxDZ0k8gWaAc
	oIudLIsHzRFOylZGebnaay0wlycmRH4RdK3bp9T64NIwCpUqDPzEjnz9sgAV2n/i
	vDlf6JN4Lo8++7bqxwJ/zQWktCGqOrkKZpJvfu9pM4mT8WKM2geX8yMhK9+36tGo
	PMXn+0uI3x9dwR4L2+v4c1Ji7zssfLRCBzHB2RnXd57Ri62x7Ep5fibIpDtvFTLu
	VDEyl0jmdJkmYYlQOLf14BXipFHIlbymamfOV52gIdxHql4+U1bp1dxXjRlsykq3
	O1j7WYfXJUorHkRhWrWy4d/2UHy+fFEcU/jGK/ayb+IwPnlbX5DsyBZkVSMaZwKJ
	wC2zig==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyy5gkxf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 10:46:19 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7fec8d44so2006627885a.2
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 03:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773485178; x=1774089978; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VO/ejbKJKTWN9wqCY8JTlHi79NeKZjNOdR21IcIVe7U=;
        b=EZ2bR+u8dSjMxm2zD/kjHgukuhfOZM+hsBSRvRr/PRJJhdXSDEYn7out/I5AEbcoQQ
         diXSWuns5QrpPMugUaPWj4WmR4Zh/mDX9q+DOlo9/IdBjWSwg1eGl3omCJitWKYjG+XY
         Pp2/7/r7yR4U3scf7sPQOBLKPWIyyMg/QHaTUVVt2a73SU3pRzfxniI/SsWAviD1SRQ5
         DGwsCuhXGU6gZmQazm57Roxd1hCyDm4VscsF5S95ERhYxbAhTWk8Jk+ADD1wOmhzxE6m
         lUL7qq0JjoT7cQzDS7EBFBSZkyaIsNi6Zn2Xn94YrNc+G7/NhAIAA9HXxKlrq68IksfH
         2o8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773485178; x=1774089978;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VO/ejbKJKTWN9wqCY8JTlHi79NeKZjNOdR21IcIVe7U=;
        b=iWOFYU1LG8KqN3ForcVLTUWONJeEGDWIBamTfvLtzSmfKOgID63BFzIHVkCaMOPvoE
         AyVgI0Wovk/UAxdVOVCgrpqBOorby4h6zpQRe5Vh8ZGSZMNvGulCz701hBKw2Tj5ajQJ
         1GhyyFuEEZvgWzTda1VLZ2lbOPe79ByPUsLH0V+jtbbzzfYEjC0dRs9FMjyHMBPZ2Y/6
         lcnrDfBWJjrKtohzoi2H4bAPx6qzI9Pb3pW/51R1zUkH9JpoWGBDoUE8ksFqowVv/ug/
         FF62OEQBiNn33d6Icvca9qbOhr8vPfAf690HKWDPmeQFHF8Xe7pbL/PE6Vn70vDFtYoU
         Ckvw==
X-Forwarded-Encrypted: i=1; AJvYcCU7z5nsWSiBmN0lQYfH9pR+YB7KkEw/agHEUkYhcPkWSmK+YSsGOYhL5hoMLxVsMg6htVzOR90FOYSm@vger.kernel.org
X-Gm-Message-State: AOJu0YxfT6aCxuxS46xm76GKyMXExA6kfzpVxXf5OYr/R8sDPoJ2INZY
	cQsszFmXBuTbrZ2F06wbVxQ6o1GZMJAt0MKwKDp1bkVHS+kBkkYASH8Es8AGv15ex6lFjYAaUXX
	T0eSlJVU2ybTg7O6LD1GnTY3UFwaqLs+1E6iFKXyjizGRIRQNyyNL0pulkUGlxDcP
X-Gm-Gg: ATEYQzy83RI+T/UWQre5Wjj6m/wqZgO3uuLPCZO8r0iCx5Xu5U8ScCWlU2D4xVPB991
	urP/pkaSqEKAHlF7t0gYta34877hCQfd2hCmyfA6SCCeTHoMzKwTka9FmEzzIlhcvV2FMkzgDwT
	Ga8h19paKE9iSUOGISniVMz44eXNOcuuoLktl71TFrV450gyngVhyRCte5rrnoZY1jgGpJMAVcu
	t05mi+JL7FG0HcjvbGMLIdqziHlM3z1H373NWpJgnIcslUrfvCEZnEWv2F9Z1f3snHSdefLkVfV
	KdsAeyDrM14vnb4Pp8Z+TsOXvSm19GZuWgA8LPlu5Qg470KspjpyqstepvRGshbHt5AqBnSt2ds
	qPOTEKhz0fjJ5sXhMZ2dSALMb0IWm/myTj5S2bWsbkEmXzl8nj9ShBa/aSf1Sbm91YOjfMUwg5h
	9UFJfCbg==
X-Received: by 2002:a05:620a:24d:b0:8cd:c077:40d3 with SMTP id af79cd13be357-8cdc0774143mr332911185a.25.1773485178268;
        Sat, 14 Mar 2026 03:46:18 -0700 (PDT)
X-Received: by 2002:a05:620a:24d:b0:8cd:c077:40d3 with SMTP id af79cd13be357-8cdc0774143mr332909985a.25.1773485177836;
        Sat, 14 Mar 2026 03:46:17 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:136f:df3:89d9:875c? ([2a05:6e02:1041:c10:136f:df3:89d9:875c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43a0b2db487sm9068085f8f.28.2026.03.14.03.46.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2026 03:46:17 -0700 (PDT)
Message-ID: <2f10bb1d-bf48-4146-8a6f-345b35738352@oss.qualcomm.com>
Date: Sat, 14 Mar 2026 11:46:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: thermal: qcom-tsens: Document the SM8750
 Temperature Sensor
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aastha.pandey@oss.qualcomm.com,
        dipa.mantre@oss.qualcomm.com,
        Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
References: <20260313-sm8750_tsens-v1-0-250fcc3794a2@oss.qualcomm.com>
 <20260313-sm8750_tsens-v1-1-250fcc3794a2@oss.qualcomm.com>
 <20260314-macho-solid-tortoise-408b0f@quoll>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <20260314-macho-solid-tortoise-408b0f@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ie1CxtwiXW6Kh03EwZzur_HVgB6gYt_b
X-Authority-Analysis: v=2.4 cv=QOxlhwLL c=1 sm=1 tr=0 ts=69b53c7b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=pKYB1mvBG6tSaCQwR-sA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: ie1CxtwiXW6Kh03EwZzur_HVgB6gYt_b
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDA4MyBTYWx0ZWRfX9Cn42lG3BsdJ
 cn7ZC82Ss1ddnNh/xGTARJiDyAGoT7ODXI0ChPwzD7BZwlReIc88cwvcq3A1BVqRXpiJvBPXeOA
 koQXbQlglsPpsM41PMohRdyYhBa+3aLghD3UBKEkfxFUmoy4IHkrenVolz7UbCCfTPX3TF951kS
 8HSAiHT+a91fbAbVRv061DHoAl6SSbt2mbE+QQORnZBd597wGfRe9tL3C+Qrt1PDbSWHzFvTz5t
 tEiPfzg18+PVQTLR61gPtusi4Qbs2bNfwGeF6A7sHtpuZw5hecD3QmtBsQPyAYwx6nL3m6iemIM
 cXuIOX3wwc926TXrBiTzXTUOZfOelZCgYylq4ULp8C5dhbGGgTSSKlfU9UKeoeJ9l8AMN1z5tzc
 0yHCLI1ZbIxc3PW6CbTt4h2nSr1Q4Zq814lac3plcFFMy+8EG1O481mYRtzTQ+Vt3K/JTWB63Cz
 Bqg1C4byFspF1H5Fi8g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140083
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,intel.com,arm.com,vger.kernel.org,oss.qualcomm.com,quicinc.com];
	TAGGED_FROM(0.00)[bounces-275672-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,quicinc.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.lezcano@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D9AB028CBF2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/14/26 11:30, Krzysztof Kozlowski wrote:
> On Fri, Mar 13, 2026 at 04:04:17PM +0530, Gaurav Kohli wrote:
>> From: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
>>
>> Document the Temperature Sensor (TSENS) on the SM8750 SoC.
>>
>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
>> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>> ---


Applied thanks !


