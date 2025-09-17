Return-Path: <devicetree+bounces-218407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F18AB7F99D
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:54:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8839717E87A
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A75993161B1;
	Wed, 17 Sep 2025 13:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dFuV6j1I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31883316193
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758116674; cv=none; b=tHKZXAY0eirlVwr2m5WgGcw2CSkz3F8aesCLDaJE1bpWRh4Pa6AO1gCc1McKkiSo5riR18Fl7JTg8rWLiJiXQA295/ElWnyrekDeQ2w5s3x50LpLpPaxupLRdAMbf/ObXxUOwRy2AsfurvIKW0IG8NqwNbDpPsVyXnvIOz8QOEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758116674; c=relaxed/simple;
	bh=KGJ89Ip8KM9yZL2AtmSDAZ9jlNfqx57J4QYJKCHMZKY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OtjFuSWTPMLbPRlXBQtJJfS0Qh/wSUwU07JIF3Te8Ynl4Ne9JmEWYggZVShmuvyLl7HwoJiTltRsTZOZgoX6ebISc4Mabga+DhfF4YWT2SDecVntIvyO+c8wHy52ZNA7R/NUyHcQRr5zBRRMtf41142L39RYeq6F5Iqpzr0OAjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dFuV6j1I; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8XYGb032378
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:44:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TB+Y1i4qByytglaeJwdA9wSRh58asAd6J7+AJTfzU3E=; b=dFuV6j1I4rppQykC
	NjlBe/rH+YCmt9tVxfaQ+eea61I/aUWcKi7FfOPLC3tMoEljKbAT8UOsvlxAPOJs
	2NFvfXKfDc/wFQ6MVYCtBD3rWf1aZ20/aUQwdTEU8WlyAz03EXRK5OBzB0k7fbnk
	yb2nT3hULCJTXT9qhcfmljO4UPzP6M+o45vMy02uXLfwh4m3iRYPB/Dd9a/VZanj
	EMGW6jEe/xieIC8jn/4Hk1khE9cvBRhGDkZvG2nDKGyzzHlauy9HNOLTmhnGVxfg
	QuwdiLZL/50A1luObaJnRZt6gZuO39MRV6vj9VUYLv0MI+TToThkkjSeIQ5EHZm5
	mT3gzQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxyjj48-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:44:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-82b15c1dca8so81855485a.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:44:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758116670; x=1758721470;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TB+Y1i4qByytglaeJwdA9wSRh58asAd6J7+AJTfzU3E=;
        b=wJBOkle5trbHsrRScBZEFjbp6SveaHE48bTTvIg6o9vyvr4Tq7pt8NlIfCumPcWfOj
         Iv/sEYcqrORGqARqXD4h9EM2cGJXLxrib/XSmjwEwsHy4kKFlG+XZipZliICapRIT1q+
         uOw2TLVloNOD7iNgFbB0gygq/qtFJOLacEyJ4btKfsNJw8UTAtucIN2uzpJrQ5OIfyt/
         nRhuGvlJ39VCAqBqp81bIwO2MifDRsNxUoFNHclYaugcdvkm7M+Wi4nfhQ4zjvWIanks
         XybiGWw2s1L63IkalNPIgHm6WBkjgjbEAUqS1nIUfdnpC8OahurLF+dYsBgoqVc0QOj0
         jDxA==
X-Forwarded-Encrypted: i=1; AJvYcCUVB1xSP8QrHN1uKVc5a8owu+tmFxxmkNPnsmCQ1yUqVcork1FJt27q2wwV7W6pv+HPz9xhJdAywAz8@vger.kernel.org
X-Gm-Message-State: AOJu0YxoMS798y/0w5KvwmlxulD0vTlyHBQVuzDpi0zRMKPN/BBv0RJV
	0UGSayaQmpDyD022nOgnNlkt+Kk0DaVPomgcafvsHGZOz4m0j1Aadx4jSlYTrlgJXncTO6wfozf
	cqp9S3+Av5nMNhwtBszsP9d+fSyd6zYloTnH2dzfsSjakhDpdc+Yg64LaCQUH9ldx
X-Gm-Gg: ASbGncuX4KYwwHeAy7bCCv6qg7t9Mo1PENDjA8lTloPu7nXg9rkw2npW4EKk6wT0yi3
	oiD8ehyzHtotdzyoM1UQFJnAqMSq+iThFZHsY9R2G3UkK2ckXMhCx0Ye2ogJac3s8iwqtwkcSOz
	VXr6f9x9rGBCkKgXutGrXC4U1DoDyiL98TdHicqDa6Ba1spdwcst6vav78mCgJ4H53yNou7jnis
	rOeGzj7TcBY+ey9nTHQUDdoqXEKiuq2Jg4v9166DOXnMqtsKXor4d0yd3ulOJWczE6SKPWso90B
	kFEHZqjygkoOZ5krgS3CfySA1lL4NFjvhumP8eg/mw902BtiUC+Vb0MVTQynMm6owgQUpmJnZaj
	10Xnm9YAMP9AcRed6MuOKWw==
X-Received: by 2002:a05:620a:1a8b:b0:80e:3d31:372b with SMTP id af79cd13be357-83107192cc3mr144040885a.3.1758116669826;
        Wed, 17 Sep 2025 06:44:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH41xmt0ry6CW9CnoqIFFt+3vfrTnwf6OeUKuoFjN86Vs3RJMW2dcmvW2InNVBj9vsJSekDVg==
X-Received: by 2002:a05:620a:1a8b:b0:80e:3d31:372b with SMTP id af79cd13be357-83107192cc3mr144037785a.3.1758116669234;
        Wed, 17 Sep 2025 06:44:29 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32f2122sm1376701866b.85.2025.09.17.06.44.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 06:44:28 -0700 (PDT)
Message-ID: <83d57576-65da-44f1-b9e6-3ca04c7e295d@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 15:44:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/13] arm64: dts: qcom: sdm845-lg-{common, judyln}:
 Add wifi node
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-7-5e16e60263af@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250916-judyln-dts-v2-7-5e16e60263af@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=e50GSbp/ c=1 sm=1 tr=0 ts=68cabb3f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=Gbw9aFdXAAAA:8 a=EUspDBNiAAAA:8
 a=GROcJi4qiEdEo-BvNFUA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-GUID: ubVBZ04XVjJnzBtBFMXpb_R51w6qIm58
X-Proofpoint-ORIG-GUID: ubVBZ04XVjJnzBtBFMXpb_R51w6qIm58
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX/rAGkGKfywFx
 Vw+X7YGEeJbndsu8xxumKYRUwsJ/3o2QcChpkQ1JY58kmNlRoFecPJaPKJtuNk3yb/R3c444Oum
 cdlIgDB1alpuCb82b2OgTls7+Ul0z5K4dlQYk/8yDZOB0OMLEkFdMNkSg65vmeZFNjad1Kg3ZtL
 +dVMr3HHMxiYXFHv3NQyoG6UjMDuqyqit54Rz76PDHJavaCWT68bq+vpxm6l3mZIJ+KcxnUqyX9
 DWoY5WbCH/iZ1xmNjxQwd/zuk50WKBZBEOoANvxwTCyFjdXdpb27RtNzhC7coup6sOy7czOU659
 kWovPw1gMI8dj4+oRAmjhVaH/rfhGHkvk7TEaa/LYLvqEVOnomlO2IpO1wYsaLhgskkqqQbXGZb
 1/iCHbHJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/17/25 3:09 AM, Paul Sajna wrote:
> Wi-Fi now works with this patch and relevant firmware
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---

Well it hopefully does ;)

Would you mind adding a snipped of the dmesg, e.g. as Dmitry did in
Commit b6a56a5a25d6 ("arm64: dts: qcom: qrb2210-rb1: add wifi variant
property") for future reference?

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

