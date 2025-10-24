Return-Path: <devicetree+bounces-230680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D4317C05025
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:16:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 912871AA681F
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AE98302CBF;
	Fri, 24 Oct 2025 08:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RYi++WMb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B5F302CB3
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761293771; cv=none; b=nyXzjWWsgQdzWYpOZaSLqSD52IXUtfFvtqy1yO7ZFFIkcyJYbMKqJqikSGiTfBfOMejyKyMx6SK8J1FsikoPFCcmo/9lJqT7Cw2rDzS0eIgrl66fQfu6xinNDytZ6SI9nwt3DA9bgIydduoZtv7/X0g+/1PYqQYFDq1SU1aFaf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761293771; c=relaxed/simple;
	bh=gxc6NxuaGmoQ3aacveReooeKLh8kqG5U2uVKhVcqBSo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mGZHrppEUxmvy9/MP2rsBCSLAHHlm0X8WWy9qtk9L5KBTaT4N3q2Ze7yqHyE63Nt3UhUmNfxjGBi+qX2FniJTRH7qJPAryv5nyvqyqlzisCGwd3slAoQeXjouf4u8fy/YuvD+cuH6SAioKE6qq8aPT6lrm90UCOxhc/nNuWPcAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RYi++WMb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FQEG003453
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:16:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z0nAQ53RpdZhU/fF9OWWdO6pXQTZc4rhlNUi5MRP3Qw=; b=RYi++WMbMt3+m9wk
	0K6Wh/RSQyEjc/3aySXP3rkiv5OUancdRWFNSw+uYGJ8Nog3Z5ei7kgyDgpPxi+e
	pXke2RY/l3rRARFB3tUpvWueX9XHtOgxGe5BNawFacufSbcktGH5M2/cOfaC+v+g
	r+/EoOAX7k1Y562lIyXqoviuz+o+hxB7Hgr8uCuXMwSTVnDzIKwoJY8KKBgRGISM
	VSP5zXGj8uRasNtfUOuUsaa/dqBRcHIgfhVaNflrhczxGhi0OKCAPMkgqAmQtB9B
	Pd2Y4nEtvK43JVBUwYjioDx68WLbsUNzF1rW5Z7CQsK+rYNST3u4h5QgL/tzlL8K
	JOwPig==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27jb7n1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:16:08 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-88fcdbdb598so64385585a.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:16:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761293767; x=1761898567;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z0nAQ53RpdZhU/fF9OWWdO6pXQTZc4rhlNUi5MRP3Qw=;
        b=fsxXrmESs8yorQIjRjY7+jg2jlc/u5Y9Gq4qKoVYC4amZuhSRRgrNz47GsuDgDelN+
         cGcjWl9b3nkMRCVqPDZYgVGQSfyaHmx3vvnlZnmntMj/FU/9ZRciPjzzA2cXuE6V7TDU
         gGOIxvspoET8H5FAV1BrrCIZITSQsX3KsEtejU9lXdXTfDMV3nLjUdNYRS+eNTrn1ej5
         T2pqw2nZUprsM8/UQjo21CkP7eH8L4xH2xx15mgIlU2iovdYMIVi6C1p/HqJCNUK3kWB
         1Z4HWWEKbCw5ZILtkFG4srZ4xDqy9qcCjDEgs/e7BPhNq1a0x7ndzhpVxXa8glWoEPr6
         1sWA==
X-Forwarded-Encrypted: i=1; AJvYcCX8qZHNYJZcP+4Nbp9PvV30y2vp5W1JzCyS7fypMt6T8fCgwWTEz2qMZS02CEOTPBn+Vq97OdGm/7KR@vger.kernel.org
X-Gm-Message-State: AOJu0Yws7t7OgjffNCy4vzCewbH12UqukU5bkwFslPup2n7zwEQBNQTc
	iGVCpRR3znNy/XxAHX+6k9qdBOK03j8vOdOnJeOjtAzHudNJlDuQHcJsFISb/HPoE9p+IdQjOob
	nVeR5x7bqxn2n8vBGJd7tmKdY+JrG8hW5wzDt4PTGS7CMGDd44rkFBplnQueAc5Y3
X-Gm-Gg: ASbGncss5rd47ElkOfnAIQfeLcQFloydsIX6ieAzO2gobCXiC0jKax/hUq+i6HyDVX0
	p9EXYmHEFqwFAK0GTI6R27KP9zU9sp3XQk3qT536Uy9v58WD6FWS7NQFOdi7ylI6Yv8+m49Ph7b
	wftFlAKwYyjkq9i23aKUUSpyg9egs641XXspBP7r2Bb7/IzIbpabRRpIKb+pqBhfjDBf2PfxAz7
	bOaVEbVhDcNmsgbX//gAKIqHa2gdM9WC4ICXxI/SFXlFbQRu6azYXxs+bX/785taWU1nJGb4IrW
	OY3GAoZLwvwFv5t1W6z4IQiS1DQrsX1K6NdfOwnBZdfJkNKapUM/mVWrpCMCogWRFIHWzXwkGn4
	4/U1MxQRbFjQyiULjYs8kElQAohFKgHnlrVvE2GqTT7CjKKnYOOqMf5x3
X-Received: by 2002:a05:622a:60d:b0:4e8:9ed2:790f with SMTP id d75a77b69052e-4ea1177d7a5mr113240681cf.10.1761293767617;
        Fri, 24 Oct 2025 01:16:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqWq0FM45W/CaXbxQcmVEVnt3Jm/2MAAbDo4P1ICuvT3VveOwZ0ajbZdmoXWa5jmDngYDjtg==
X-Received: by 2002:a05:622a:60d:b0:4e8:9ed2:790f with SMTP id d75a77b69052e-4ea1177d7a5mr113240481cf.10.1761293767170;
        Fri, 24 Oct 2025 01:16:07 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d513199dbsm477760066b.36.2025.10.24.01.16.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 01:16:06 -0700 (PDT)
Message-ID: <f90c16f1-6991-4968-978b-1d69d7b13d85@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 10:16:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sdm630: Add missing vote clock
 and GDSC to lpass_smmu
To: Nickolay Goppen <setotau@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20251023-qcom-sdm660-cdsp-adsp-dts-v2-0-895ffe50ab5f@mainlining.org>
 <20251023-qcom-sdm660-cdsp-adsp-dts-v2-2-895ffe50ab5f@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251023-qcom-sdm660-cdsp-adsp-dts-v2-2-895ffe50ab5f@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfX7GUsxZ5+1Oha
 GyPMRomdnSTEsXTzXp12GEyQxfAAYNnbBpskdPa/8MUVawbr2oovEfZMVor3w8sh7D8L0HVTomG
 Feg/9UckhKhUnlCH5TfQ7O2RGPJ1/79Q9y+YsLh2XNj1jkTxPrOR/rX3y4hYzwTAdjFEhu1PCmI
 pZmkYqO4iU9fay1PaEJaXKp17mj7KyneJqfwohfomKl174+dGq0ApnwYLhxvGb2vviG02YynCCF
 DUCpGA4shKtRnxQrd05EwIIp9OGj7ZPq/P69bMUu939FbRrtxxpBE4sg1daHattkJlAFVj8WC8I
 Dtb3Y85JwvRw7fZxLETc1rpR3hVOHuWfyuum4/0eYu/yEMpXRWp4Xu0RYFjtvq5JpJo9FGfztHS
 DU1MYcbx8sN9l49pQ5QnElFQVLxq1g==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68fb35c8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=I8aIJtlCLNSO61fVdIAA:9 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: U4t0HGXxqoXlRXRiMohh83PZebRnccFD
X-Proofpoint-ORIG-GUID: U4t0HGXxqoXlRXRiMohh83PZebRnccFD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018

On 10/23/25 9:52 PM, Nickolay Goppen wrote:
> Add missing vote clock and GDSC to lpass_smmu node to allow FastRPC
> services to probe properly.
> 
> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
> ---

"to make sure the requires resources are enabled before
attempting to access the hardware"

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

