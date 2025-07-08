Return-Path: <devicetree+bounces-194145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BBCAFCD50
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 16:20:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 898E23A85A1
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 14:20:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A1B82E0411;
	Tue,  8 Jul 2025 14:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qh/MNwF7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A597B1E22FC
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751984436; cv=none; b=YIGap2Jku4lue6d+s4/aeAwBzzZx9CQyyK8nHQ+cKneKN+vRZGfrv0zALOcHtdiWy/h4EXKqGeZiSuomU4ZW7z3h4y4lzEEcwTbq1Wg/HV9TdmvZBAcbYKUM7PMNHKD1IpxOmRL/NU42p9OB+nbvUJsDXlzue9zw/WyrqIqxCLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751984436; c=relaxed/simple;
	bh=ugicuqbU1yS1yCvIzcXqiNr1oJADRuqRGHGqN3D/WO4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pwkMbaGnEyY3F6NzLUUjfR5IumaSnzW4X85vi2brnQ2y6A+JcDrSom3bSGcaomxf/lFzvy6O+6WnSKCe8TKjdWOSIYnHgBG1ygLg0pJLNHFCuL637oeSsGJbGyLDSmC0r4cK4nAf2DcmTP6CO/3yd9jhB4txRHlsKLhFnusC9PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qh/MNwF7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAS4F025455
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 14:20:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cQuSWDFSA70+qgC1klmaXdIjk5aF+kYMGvQICocunPY=; b=Qh/MNwF7SRV0euQb
	YMp7a+6AkLGtKjF0AimX7Xmm9HT9Prog+tHhaJmgL4Xuy2oT3WoN6jdX700wTiMW
	d9gVQl+BYER3+Kp0SUbVfD3f+hamKIorZ3ZFeU3t6yi3uaLOsFre/mO/Xtq76ixM
	t+wt+pt8huE652GmWeKEUgYt1MG1T9aBWcnBRyfbCzer8shMW231s4n8zUDfZ2VB
	6msy5sV28nCslRSbED+6p9JNHQn0Y70V+8iee5khpM3fu1iTM6XyvWkN56xRTbGT
	7W/rPKc4jzohLc7K3qLpTtZduUK+9LdgWF3iSLVfSFdEUiq28AaHalp6zrYVuXIj
	h0eY3A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pu0we10v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 14:20:33 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d0979e6263so26919385a.2
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 07:20:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751984432; x=1752589232;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cQuSWDFSA70+qgC1klmaXdIjk5aF+kYMGvQICocunPY=;
        b=ImToPrAe6vYddD93NTLBAZsn8cnR7aw8tIZiGDBRlHNSZ+AjOrcNycRRB4ur3weuf1
         Jc8SJHkjEuqYGH0K8KJJGulXwZIn5osheFqtyPZq0ewp3v/ZZ4ifm4XE8xeq1ViI5XQU
         RuElTwQWugNs0PrQE3oxivfRCrs9zVpnSBYy0gGxZQcSxcCN/KZvWbOQ6GmEFhyv5Zq1
         vzmb5ck1/Oe3IgjYW/mw2eCXyJG4Urw//8xO5PRuY36Haj0LbuvlXd8pgYCPidoFH9W5
         t1adsFWjpFGRQFRx4tbKYGYl5UY9qC7Q34PQhIa1MJxFziD4YeapAVR3mHZaO9N4Fh/d
         VjCw==
X-Forwarded-Encrypted: i=1; AJvYcCWTn9M7ugdbefeOjmjQz39tVQoy2yosIxl3NXtJ5gNRomv7fYSBEnE/2qMT1BY5XuJJ6BcX0elhx+it@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4ImTYp5SaM6Qa26ft9hICYX/qA04jAxQ5or/XGKipHTIakOE1
	GP1Db8+8IFRJFjtKLDfXmNtr69EEvEc9rTcVZnDZcjVWLXLFVTgO1LFV2TpB1oNjK9sIzWswdSY
	RJt75DMPLergVv+wnj7lQv46GJmoTkuu8YjTXloNYFQiCn0qemd5Gx7iE229dkMia
X-Gm-Gg: ASbGncu6UmBK7SGqoC30F7dDTCLMQ7AKStOzmW1sZ7M9O2PL6Bj8b1kcf84AigruEfv
	VSDl3davw6f2B+CS1PT/URMzIYKkGr21XolA4ghvPDX7iTGXWCxyMmpB7M5YHAXJIJf9tQLuJVE
	PITpZsP1+d6iEr9+9xOnITi/V1qHpVLM6HTQqDEb1tpbWIRUNu89PW7zVIpl2Qa3FNbQ7of/Zh2
	cfDAKFz50B/pniid9T/OpbNq3GJlOU9eKpVIHoNParwEAX2Xs6ibwFsG0BaA3U612EI2zSqgXKO
	m4eFtTkKsVT4dZ8hHJMmB8TJq2jcrWP/eIPaE/sqz4szDIOXsxbnBtvvL26+OkhKQsT0uREQLRz
	C3xk=
X-Received: by 2002:a05:620a:6284:b0:7d3:c688:a590 with SMTP id af79cd13be357-7d5ddb7222amr682445385a.4.1751984432527;
        Tue, 08 Jul 2025 07:20:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGQfU3IAQ16JyA/2/logP1lSj0oVrbcVrPhvRhtLenSjjIj9jAf8svRkGdzskpKDe5H2LReg==
X-Received: by 2002:a05:620a:6284:b0:7d3:c688:a590 with SMTP id af79cd13be357-7d5ddb7222amr682442685a.4.1751984431967;
        Tue, 08 Jul 2025 07:20:31 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6bb1060sm909050266b.177.2025.07.08.07.20.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 07:20:31 -0700 (PDT)
Message-ID: <861bca9a-bf6e-400c-b4e5-58f3617698d6@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 16:20:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: ipq5018: Add the IMEM node
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com>
 <20250708-imem-v2-4-692eb92b228e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250708-imem-v2-4-692eb92b228e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: yVYgD538Q5jyxlqEINE0k-RJlvYTP5o0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDEyMCBTYWx0ZWRfX/52syvDWEsYT
 NwBGof+MM41gli6JoyQorKFglYt0XSwzLJ9z7asB9R0ueMyozZvt1kkE3aXzPrRSoJFUyvfitpy
 pecoSrhRe4eXtD0GJwMQHJ0CLmyQHvtSQKD+rwkZlQhIPx2Qli0qmQm/9QD0c/H+SiumYf3K1T3
 AgnGyM1FrgQo3s/tGlvKzk6p9UoamwkpZUoNCEI/pxxZ0Q7OXPXC5myWeFB2COP5AGSPozMJPEe
 ffwiQfY4UgQg+0KwBSp5/90KZDWP5Zy16qYKpj7o96c8vdtYqgjbWW2VknjpRhmeB7twuBeSQg1
 lL/TX3KjlEN3EadArYJNyW1nrwIVUOcG5IBe/+ITH9hTt3a+kJEU7v5h9Kj4TzonNd1pUPhIg/o
 Cuwo3OKyidralYcF9q/zuZ8En+SkoL460NmlJHI5I3+TFwHKmwMKpBIYsJdE6s/yWWpYpCQL
X-Authority-Analysis: v=2.4 cv=Rd2QC0tv c=1 sm=1 tr=0 ts=686d2932 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=owAxAYLDMf__z6yt7SIA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: yVYgD538Q5jyxlqEINE0k-RJlvYTP5o0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 mlxscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=719 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080120

On 7/8/25 7:39 AM, Kathiravan Thirumoorthy wrote:
> Add the IMEM node to the device tree to extract debugging information
> like system restart reason, which is populated via IMEM. Define the
> IMEM region to enable this functionality.
> 
> As described, overall IMEM region is 80KB but only initial 4KB is
> accessible by all masters in the SoC.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

