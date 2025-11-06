Return-Path: <devicetree+bounces-235728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BF492C3C063
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 16:24:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EBD9E1AA20C9
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 15:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EA97284884;
	Thu,  6 Nov 2025 15:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LFpsDnqX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WzAKjhsg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CD3281370
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762442635; cv=none; b=ScjkB4We4SU5WHdehTEkNTBdxjgz3eMlKzPL1SuAFPGkx/dfTARkSV90DSzrUF/3NgHU0ymVmuFPlcHTQYrQdH1iNEw1OoA/zttO6gKq0Gas2O1QeYFfb5vGcWTUo5ZaMzKszEc+O9Z+kWZ+VeLhpW068MhwO77UYW2kK0livtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762442635; c=relaxed/simple;
	bh=HCaYR4YVOukbLj7jhdYFa5FxgeZeqJDhW58mi5gV+F4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rHHmwLcRL4p93METSWWnU9drLdHlC8K4W+UwnSD9wWrrlY36MIRgQWjeIVfY2+xtijvqRaPXAUd5rA7R0QkA3SC8p/b+g+ZtoMjVmO3RsLaHhxSiDbi8OcJBGcL3dUmkRcDoFPCE4j69EC47c4lx2stlMxVWdS9aKj9z20/MUhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LFpsDnqX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WzAKjhsg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A6F0FMV3157007
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 15:23:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AM2sfMtEfOa7KhDU3VgLqOS5fRlov02lYAgiXrnPdFE=; b=LFpsDnqXbN5J8HSQ
	p5kjOSYW7NDB+pDWWE86gHRIbIOit/osKG0RvSt1cF06nYypOIayGHXkO6hKf0XH
	zzbZ2iKK5vvj0g1NC87dQtIXYKN7xyd8DkE8wIHb97KvSLbBYOnHjCrwr1s6oc6T
	BudvlhVhTXK519NdZoVa3FRJ5JH8/nsn7NRRAjADGVQNX2v42Sv50atDxK0u7WuG
	e7lyl4iIi6T5213YsmUOfuqSVuAWNJU1kzKlK/hYV5RxKIChxNdLl5u4Bta80RDo
	NR6H+h5gfeRcNaKpmVYxKxY5uOBgHeajzXCefNxW24cYeQkiHvrIRVLqJbnH35QJ
	MVDcYw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8pu0herf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 15:23:52 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7af85c822c7so1089545b3a.2
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 07:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762442632; x=1763047432; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AM2sfMtEfOa7KhDU3VgLqOS5fRlov02lYAgiXrnPdFE=;
        b=WzAKjhsgwV4QJ+wjd1POxOX40IHgmBnAy5HIZutRzZKRlICHjSytmp4u7oveVkHzgn
         V75oMiRGYmhby6l+k8sUPFcacTgWIbZWBQYYhHWyJ3MuvoDcuJ1EIuq2oWylvMnnTaIj
         86DY9mYaT7FMU752ZZaLH0qZdEf+/4QwUG1GL0wyuhQ3blcE5nnS1yj124R1wRQoRGv0
         KFVMvmf+ngnn5IHXrtPrO2isS8kLUCCjaSztavY31TSe18H5yChjtYujV2rIpK7/DDXA
         Bqe2XXI/zVGwcz0CZxZNin2IoSQDoNOoDcyIk46K13iMGUubfjhtuQm3HYL6xRxLSjCG
         MVHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762442632; x=1763047432;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AM2sfMtEfOa7KhDU3VgLqOS5fRlov02lYAgiXrnPdFE=;
        b=gCr6AX52SUidJTioU6xyHiouAr5FdtvehsYVjoCcazVkNvELy6adWvWs4gX/M1X66Y
         b2PbN212g6P2lU2tiWQNfpJHv1JUrBbqwQNLBCT8rhKGsH0gxbQ5jACd3X9yYO1tvl5i
         bgudazA2TVjApBDTsGs2VOBOdDHUQ46ePVNClGg8B+PdEmnG85JdsOmsHDwSXOnQ//nk
         s22KdOaMUqB3zI1ZG5RGq2TPc+VYfkUVyhb8ullgNXo8Wzr/2y4PD1Ift8NPUUI0V3h9
         2m2AwMJY92awpBArNeS1S1j2bvaq06xZjHhoTLwFGLRaWG+4986lXgT2Rptu/jbz1MGu
         H7aw==
X-Forwarded-Encrypted: i=1; AJvYcCWTOdUDLV7b/lPsT15QLVCK9tJ5ZYlN7KM8VcwR2dd1P//KvLuHNL/9NJx0rwVQdsUo6yOlBQW2Ppx0@vger.kernel.org
X-Gm-Message-State: AOJu0YzaKEpa20K2/knMV2+PePCrAgWFrXMYNp1RnZ54xHb4CArtgtCg
	FhiwTqLSzhDmQvUt96wOiwfVjTWB0Tint5NhCHahnHJ7PdkCiq5ZpU0MPUYJsCqB+aGK6M7dO6P
	S1Is7ORH5S17p31CxNQETIBZbRcS24ML93sxD0OuVHbOUPD6HIlhjDQinjd2/X1AU
X-Gm-Gg: ASbGncsdf9G62QJmjuNdESVGT02D2PrIuEqSr6oiXPKeMTYirYvKRgfKZNiVSrCgHSH
	YxCPN7FmP/epJmf6JIXALF5BTKrui2WVX0CT1Ik5xQ+eiXERxFkzb5dHG8rGhGD0UiSknNumgyS
	aM9HepHXs+Yqvq3mMmNsxtVI3ajWowGiCmyaVm7gbs5S3/HNv6UXki3h0u2fnrufLLx9ZipyI8D
	8PVwwuKPtTRvhkhmFVDz0QUA4KrhC9jHX/sWJr0Z/KV48pCEv50223IYPHRF4W4gTGCWKdr3qGD
	QmkkvlHS6Crkn7VUQPMUS38jRdFZ0pE1kcYKGdPsSdThDidSOYxfAqvr8FylI7O0duujJHedGiU
	XGFEMf822/Rynx6QRHyr0fyxDOvCoI6I69w==
X-Received: by 2002:a05:6a20:7294:b0:344:97a7:8c5c with SMTP id adf61e73a8af0-34f868ec5acmr9474792637.48.1762442631928;
        Thu, 06 Nov 2025 07:23:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF97e0GXoOncAGOrjI2ScllFLDrtpqS3SjsIAfKcVzSGuS3VIsb+Ftj9YpLE5DE7gJppyEwPQ==
X-Received: by 2002:a05:6a20:7294:b0:344:97a7:8c5c with SMTP id adf61e73a8af0-34f868ec5acmr9474750637.48.1762442631390;
        Thu, 06 Nov 2025 07:23:51 -0800 (PST)
Received: from [192.168.1.3] ([182.65.157.163])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341a69b698asm6878934a91.21.2025.11.06.07.23.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 07:23:51 -0800 (PST)
Message-ID: <65a910ff-61ae-41a8-b5aa-9a7a119fb13d@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 20:53:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] usb: typec: hd3ss3220: Enable VBUS based on ID pin
 state
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251102164819.2798754-1-krishna.kurapati@oss.qualcomm.com>
 <20251102164819.2798754-3-krishna.kurapati@oss.qualcomm.com>
 <aQxyfjYosVd_kPKC@kuha.fi.intel.com> <aQx1WVif-vgN0_T-@kuha.fi.intel.com>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <aQx1WVif-vgN0_T-@kuha.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDEyMiBTYWx0ZWRfXzWkpqUmLqDoc
 28u2xktJMlyK6DWPkaPlHRUhTv5kqzHX0jJKaldUs80AC5jNFY0+OP2fQXlbqyFyJ7uTZ0Wc0Ar
 1chZn5WPzxsLbV0dK0Hok8BGLubax2HJqhTTBDhI/ig7rgak8Y91lYP2OTyUcRNbwtHHuibAcbG
 L/UzHR/rDNQAe1QyozqBCaoFzgF/0w2VwN+rvaxpaBCpvr8sO761g1eh4bjlNbsKwp1FeaGnaqm
 SckIvmSaRF2EikcWbIhJFV3FTEg0N9p4kvzP8orcmAo4xOSMbliNEg+949Zd5D/EaCDUx4ts60k
 Q9JtG7JtUaMGmqUCpo9gXPq/xt0BTUwcYt31S3XZOSxZ9FmU9bdhxB2hNVX1QDdLrRE/I2F4nm4
 E5iouKDXlmJz8NHnjb60sNG52gRkBw==
X-Authority-Analysis: v=2.4 cv=bIYb4f+Z c=1 sm=1 tr=0 ts=690cbd88 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fO48qRZoIuIFQjWVjTpNpw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=RlX0HteZJ6yL10uBmSMA:9 a=QEXdDO2ut3YA:10
 a=QYH75iMubAgA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: htDEHXjAqQzIhOHy8PaboJGKI75vdFkF
X-Proofpoint-GUID: htDEHXjAqQzIhOHy8PaboJGKI75vdFkF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511060122



On 11/6/2025 3:46 PM, Heikki Krogerus wrote:
>>          struct regulator *vbus;
>>
>>          vbus = devm_of_regulator_get_optional(...
>>          if (IS_ERR(vbus) && vbus != ERR_PTR(-ENODEV))
>>                  return PTR_ERR(vbus);
>>
>>          hd3ss3220->vbus = vbus;
> 
> Sorry, that has to be:
> 
>          hd3ss3220->vbus = vbus == ERR_PTR(-ENODEV) ? NULL : vbus;
> 
> 

Thanks for the review Heikki.
Will update the suggestions in next revision.

Regards,
Krishna,

