Return-Path: <devicetree+bounces-241377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A83AC7D206
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 14:59:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C5F1434810F
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 13:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F828221265;
	Sat, 22 Nov 2025 13:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CkHHBHDF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TyEFL1/A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27C525F988
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 13:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763819991; cv=none; b=Joal0CKLAPJiPB98Rgdb7YtKdVXqDgY1H8EJ8bdpWaR0fyOrCAOcEKD531sreQnpXN0Ilzg92ViEGXCmAMj4t+Rq3Q7e3J2rRfL9+FOaZUUSuYm1RkLnRSeH2acqrTyVmFh4ZJB4NQ3ZOeu682SHO15YdhlU18yV7zY7Oj4mmmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763819991; c=relaxed/simple;
	bh=EaGOTqboQEXrohWb4N0dM9ebND+TAA5iiSXQGxAjd4U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ze5IiIPbUd6RpXVncevHEolxqDHn4oDRSwYdq8MgwCNv5tY2JbCB0AGrTxsvsj4v2VndCIIZCaVHHCRHynnwuE9dofn3TpraWszuNBSxqPbf9r4J0g6GDbvgP3As713VaoiaEr5yX16abFz2izw3SbPZQI46YY1ia47SCpMFoWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CkHHBHDF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TyEFL1/A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AMCcVWc2048266
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 13:59:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UPiNAw1Tt7RvkHyG8Y7Sk3PFLPISpHRMaZn89Q+0vA0=; b=CkHHBHDFmKRJetWF
	BTF5P9rQP8repvG6d0gkqwZWg0dTXYONHjh1vx3a4x0EqrffPCCl3Z91MoVbvluz
	ckzFVa1prFWXIFOAN6QGQkOb2FbpT8+e/4eN+vVglmyqwYAkS6KiSekpYCG6PwMW
	1JXTf8KzbIUlivIeDFQnjIrTVyNaGMEChpsVq9uefFKNugW87CkYxf/tf95+NsTS
	WIM2NEFmhcNj11cX4uCuBmMnV0p09/6snnaJTo6jtH+NJGczOkySWgxgRy5kxtfk
	dFL/orxmn4e1ghReTFTHJHKh9L8z1VkMWyfjrcVlHP6r3dcA3qMbYejtAdo8k5kH
	DjX2QQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak6bgrr6u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 13:59:47 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed5ff5e770so6171161cf.3
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763819986; x=1764424786; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UPiNAw1Tt7RvkHyG8Y7Sk3PFLPISpHRMaZn89Q+0vA0=;
        b=TyEFL1/AgV0pca70944UUBPLQcEsOKBpUht16/InSEkEGJHg8OYdpW1nu3Ak1mh7Ge
         5IgVNDhEu/r+Lhc+zgeQvfmbGZUjiNIO+XfRHvx/Hf7DUM7qCNFRkeIMdLq066MFkOjG
         aa0XxbhcKRFjsDhZJzi2b7cfMvFkkjTd5oAkqGVnAWlgb20QX7n73j4MZ6tu+wgUOrok
         DNXFYeSykMqwHvixeaiir9duGPwCVzUwcdhiz0QCoP1CcsRK60fYiao/HI8ei6sDv/jN
         WosstvyrBRoALc1WgEdA27gTU0ykxSLZd8TsSwBUxalUfqtqRnxvVrHdvr1BJdD4KNg4
         K5xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763819986; x=1764424786;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UPiNAw1Tt7RvkHyG8Y7Sk3PFLPISpHRMaZn89Q+0vA0=;
        b=ZJGOzlEwuLH/OjNtDrdBOV63qL0pZVyHGSyyxW178zhVEKAE3l1GSmTWjrSruvC+rd
         E+ClFdgXmPYTk8oNfFJ87KsQRUiL1L+qEZFqltQtqRXZ8sQtaZZ1HDgbmCqZhXcYBESF
         dsaTIeT0B0BJCdVfTfwWJglSe1ieVDBCdFb+q9a36zXpIxzGUmg9CObX+gau4fog0ejo
         yOOK4So5DFfPuPGxwBAAnGQOleYdrGxiy2iGvecOFVAVIc5kMlKkcqKAEKFr9t8rqLFb
         zWcT+uNNEPP+Box+kQUOndr6XF8buRO/GccebOmHZDPbsCq9woK5UN8AyGFFHogfEAet
         nmtg==
X-Forwarded-Encrypted: i=1; AJvYcCVnbaul/t6SxaFNZ9oXw8WB94kpRB8mAGUu5ZUQ11Y41bTY6YBn+UVW+fhL0/mc//Cz6gpot4xAPBQm@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7LPvZCAF/Jw8OUfMRkOcAnHe/9ry6GgmDq7IhuxgFNAoF3Ilw
	PcULsXkYesafswKrx0CAf457LzQGgffxnKFdqjIVxsl4Ba3NmKHhmE3Pa+Ef1Eia/7P0lqfBgvk
	5d41BmY/nVNroX5y2pRSDoGeDoGTGd+DuxqtNL/C1kqSGz/Yn5TJz2sQBRoMn3v++
X-Gm-Gg: ASbGncvirNaFfvqRWjOonKyi3e//mX6HEgqHRPYcKcnXCehbE04hGfBVnrupEbM38vg
	dq4R1Yep9hwrpbQkfoVQdW/9ZlGpQDRB/Wpc1IEFH0Y710+UPk1CMjdiY7fXocyKoNxg3JrwYmQ
	eGQQQgvLWVLM9WVHuvfowe1tVb0/hLqVcdJb2MtAmXP55oxUtc0+pzvYX5XfmyWRFYxXlUH8jGy
	Gyv/NjS4oBCXAfJ1G6jkjoEJT6YXPuf7BzaicvtdJTjuC/X8ADwntgBKIxsISsHvpvktxfnqQAu
	k1JIqz7igO3NIytZGNfqiVl0ztb/RkNZnvPemkHetHSGGfBIKeve9bfgAi7scUfoq/RjKuvkoG1
	UQwAhRytJU/vaj+kvpcI07C0UQIO8TNiWJ3+BqmC0gezyUCripfR6JXXj+HXf+vt0fyM=
X-Received: by 2002:ac8:5a46:0:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4ee5885ba39mr57660221cf.4.1763819986381;
        Sat, 22 Nov 2025 05:59:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFIJN+vL5B0qzR53Fu8tdU0kJslcRoEiovdfi/oC99Dchs3yUA9islhgT15c7fVbBvVSSpozg==
X-Received: by 2002:ac8:5a46:0:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4ee5885ba39mr57660091cf.4.1763819985888;
        Sat, 22 Nov 2025 05:59:45 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7655038011sm737185266b.62.2025.11.22.05.59.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Nov 2025 05:59:45 -0800 (PST)
Message-ID: <039dd3f2-3ea1-4dbf-81a4-ef1690c9236b@oss.qualcomm.com>
Date: Sat, 22 Nov 2025 14:59:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] arm64: dts: qcom: sm6150: add the GPU SMMU node
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Qingqing Zhou <quic_qqzhou@quicinc.com>,
        Jie Zhang <jie.zhang@oss.qualcomm.com>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-4-9f4d4c87f51d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251122-qcs615-spin-2-v3-4-9f4d4c87f51d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ijciEqf-tHd5TfcAOmtL_k45YfRPV1df
X-Authority-Analysis: v=2.4 cv=MtJfKmae c=1 sm=1 tr=0 ts=6921c1d3 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=QDjCMyA0A8yHJihhU1wA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: ijciEqf-tHd5TfcAOmtL_k45YfRPV1df
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIyMDExNCBTYWx0ZWRfX6wsLDYMmo2/4
 UhbjetiGFytdHHZG0fmtd2jHHxg4Huc9R/b274nqJE8XibjfZPLAuMLi6vmoZErKdIHmujD8Pd5
 3eu1s5WT1mGkAO6KUvqmsRvH0jZsxwUs1FhgWr1/ziYI+TSWgmcKZGoP+m+GXQZWmtwBBV1qQuE
 ni0NxoMsOWjde7+vWvYATbWus8R+xnbM1d8pQV6x3CLr+i3fyns+i9zkfZhc30jCaMWh7tJ3z9X
 RWDWYAR/NOvgUcuygCtH6Mr1/Ul5q7yZe5nwqjam/4CRXMJLfDG5z3O+53cnTNZagyCkUJkVQ4X
 xGwxl1J7gGHn30IXHd7aAeQwKRxdmY6IVrVofvX3jDb3rbeNF32yXSlgaLOnQ+xhPKTFPZJUoAd
 dXBdCg2Hr1+Kf7i2B+z6qGc2gtf+eQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-22_05,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511220114

On 11/21/25 10:52 PM, Akhil P Oommen wrote:
> From: Qingqing Zhou <quic_qqzhou@quicinc.com>
> 
> Add the Adreno GPU SMMU node for QCS615 platform.
> 
> Signed-off-by: Qingqing Zhou <quic_qqzhou@quicinc.com>
> Signed-off-by: Jie Zhang <jie.zhang@oss.qualcomm.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

