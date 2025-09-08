Return-Path: <devicetree+bounces-214482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4F6B4944F
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 17:54:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFD34166756
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 15:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 053D62ECEAC;
	Mon,  8 Sep 2025 15:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jtmoeSZW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9962D5929
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 15:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757346871; cv=none; b=emH24dhFcp8QRAeVZ7Q+fdXvLGQX1vrNQ5+AcX/f0bUgMAwLx0DU4kPrBpj1QtxXjSRxfjjnpsBzMMN9dI2X4Ghw6ho/Pzub7godNlIBsGvditUkJe/bBU4h7W1SqgcshKkGEmyLs53P6aH6gO6QAxpEXxDewKbPZdzsUqBltn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757346871; c=relaxed/simple;
	bh=I98L7wVl2WaiGNwfnBzveMZ8tRbwqAhF8X/Pp9rmIF0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NREq2t1VxMrZGGJl7dh5LQudLQsfAw07CijnMI5m/qAuim54fs9AAW8yzTEUN0OUOzE+OQnxBOSkC0LKVh7a2deCr1+6twKy09y4JNF5VbSaLLbg6QN7I/iIxHIBxLs+bFlI4+Tceo30d/9QhhtVCYZqV+IP2eXmHasZ/fC8OAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jtmoeSZW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588Fg3YI029434
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 15:54:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FZVyFRJMgNXCoEzFRk37j1p5sKIJje8nIrgLumMu8yU=; b=jtmoeSZWhFE6gdOK
	qO9tzHqRQtL89IX12UOsmkbd+MG9E5yEARYlV6iWmPkcVRWbHeRi3dKGrRd+0crZ
	TOv0c7c1TPqZ4MPjsbsDAvp50RBP1QKrdzbvNhUdwVE9iSl5kh2ycVcdVjh3BShZ
	xji30gA9AQM7AqNtBzzOByEi++k7cawsNp+it+Em61eiJ316Lqh7W1QwUJfjx1Yb
	8Fx543+0sDDwxk+rIj0qmQqArO2nh5o6wxQ6N4m8wTao8cZstHUf+/iUQv/Dnqjq
	5DyGR/YYICGdt+iiTGBfUim6pN54dOMRx2suHpF17U7O/JjD8x/e48RC9UfIIzRw
	4lapwA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapdbes-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 15:54:29 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5f92a6936so10077561cf.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 08:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757346868; x=1757951668;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FZVyFRJMgNXCoEzFRk37j1p5sKIJje8nIrgLumMu8yU=;
        b=eLTLdU3mxO5Oucd/y8DZLtCOZfKoISI6LveFP1GfrePRaS6+MH0fEb52PbX+tXngwT
         H+kfDNYJ8HrwvE/2QwyI9ESQs4XjjnMEPgtD0iFxmn98ZSMFekDidw2ABuTI5p4Kc6gJ
         E2/TQF8lXQlQxz1O7dmMb4wYsqKhDa8wKJlieJLitHSXPIisapOaHxi4WDZX7vykTYs8
         g1FPNizFewBGvdQSRbrMzAZUdkW2AKE3bp5S7XBo0EEbB1TLvs/B9Kulh54m7Cu4ocyk
         TdG55u13E3XiS17WgEFVcUvdEB5ZFm76o/pMg9pLm2kfKNVa6Izs5LV51tAYk/ewNMWV
         r1kQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFYAzJtIZB/xMBKngPUbOL+5IkMmL3vKj8g+iI7sO3yRET64Z/KrlkY1tV3fcYoZgIhM6232+MfmWo@vger.kernel.org
X-Gm-Message-State: AOJu0YxGt1qoaE4EcwTRwjIp039Xx/yHctJto+FRp9YTVJobg296Al4N
	sy7ldDYAJq1n5y2g/Krfg6u+x+JqRi06m9QStEQXcDe5AHhZbR4025AltSwStJ/xQ7Bwnrajius
	8IkpQRBi2ixL008D42hjnbnxNfjtSsLyeqRKbZdFShWh7RRvDFrAQVQ8PX8TORhnJ
X-Gm-Gg: ASbGnctRqR1yGeipE3Oaq6CRscwJyv0vlFTYYJTljJifUd3k7kR3IQ/1oylSmbDmDfG
	1EdqonUrtlAyydVFdmVItpt+x6dTVUKBIL/GLwoqDe4UHucLDLoQyCC06J2vhJT53WwjAMNJRQ7
	2NelkYWGrRua6g2RStIAJ4zLn9mr2li0AZ9LE6wZT3SWvpd2FuOY2y2i6PVh2IaH8bppiZLjC0s
	x+Gv5x/N/mugyFbhgStCEud970BxpZtG9gVcVwCNGUfZBVlJzZ+wMwUzCZEd7vervqmjEbcP8y0
	IwzXkeL5sTfqTTW/SSq/jZQhTOx78Q37JNCLfxiB+HpQWKoMe3xG6dkmfBNwgmaUm0p2nbQrd5I
	W22pqTflZQuQFUvH2tA3qDA==
X-Received: by 2002:a05:622a:587:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4b5f837c266mr64007141cf.2.1757346868476;
        Mon, 08 Sep 2025 08:54:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmj+R2u4FLhqzfyki/3z/8FBeF6ho/daOftyM/uI5DeD4o//Or/s9QM8aLr6Cq2JdI0BWMFw==
X-Received: by 2002:a05:622a:587:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4b5f837c266mr64006971cf.2.1757346867969;
        Mon, 08 Sep 2025 08:54:27 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b040d44c9adsm2200245966b.9.2025.09.08.08.54.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 08:54:27 -0700 (PDT)
Message-ID: <66e99113-6a53-48da-b775-9044e4269344@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 17:54:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: qcs8300: Add gpr node
To: Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250905192350.1223812-1-umang.chheda@oss.qualcomm.com>
 <20250905192350.1223812-4-umang.chheda@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250905192350.1223812-4-umang.chheda@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68befc35 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=0KPPPQ53LOdx7guq9hsA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 0C99xezO8kZ20azX3BOB4LUyjTQH8o7x
X-Proofpoint-ORIG-GUID: 0C99xezO8kZ20azX3BOB4LUyjTQH8o7x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX0yZnntvtsOlh
 pgC/6zxWVTrRDTlj1SgNgORSN9ecJzs7ePoXcD1mu6bC5/Zd5WtUlblnL8FQwVdM7jlaLl2sP3X
 RQ0NI8ThPiMlbGFVjYXeFAaZe+037t4m5BcJ4NWcQGlL5B+eQZCZP+oDb9kDWqT5hSXkNkhgGKE
 ZlxFQsIDAvw8lQI/GBJHhIqwOyR88QxRQ5lqhW4gSM9idwNJ0nvOwNmth9dR+zKfymJJ31/B04n
 eRKqLw6cw72gJMeeiFNrYCz7HdXXXU2jMmNWylXejACD5a4ht0BWazYb2QsIWeaEpTzR9gBvcIQ
 CGxcjLdRREMp915Cy5bfayl7dOBZQIPWfdVtqTPPCyEqBmjTMloKSxeJGZW67EL8KNPFpqtxGw6
 O7lfJLW/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_05,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

On 9/5/25 9:23 PM, Umang Chheda wrote:
> From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> 
> Add GPR(Generic Pack router) node along with

Packet*

> APM(Audio Process Manager) and PRM(Proxy resource
> Manager) audio services.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

