Return-Path: <devicetree+bounces-160881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF696A717AC
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 14:41:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3073E176696
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 13:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9F91EB5C8;
	Wed, 26 Mar 2025 13:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R3PccR2g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB211A0BDB
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 13:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742996388; cv=none; b=SOxOK0gwYSu3KrZZixnbbkyM+gJA3UA8j/+GLa0bcO1p1q5Wf/la3m7zVDFbU6nrfdC/y7YAGX6f9AquYvUasaIedOhj1jqQVYB7vZNuEwnoMqfSe8roayDgTGvOFkv6Fhlml59HN9/3JD2CekTVOU19PoT/NHUbAsrHoMRbnzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742996388; c=relaxed/simple;
	bh=kf/F+jkny4YZ6AMu9z2yztZ4555sxMojDJfUc3bbQ5U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cAjDM4VrG/UXiJytDRqrT5mJLPw8aajGVVScOT+tbnndRe56/znF4JsxH0G5VdkAMe0KfO3ySUzwb3W38o7pEdF9N+XA+GRzU+fNfk0lCG4WrtFhJ28g5IHMe5dc0ag80hbES0UdbSd2FXM940j+GgVNxozHG/ldDSTzFv9b4e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R3PccR2g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52Q73A1g014501
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 13:39:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yY+54IoSFwl5DkXlueEGcXHNH/dGPmMQZUEhf3D4Gz8=; b=R3PccR2g11AvGt3A
	9gd63yRUAp/h48xNAnlloqI0zkkYwDcN9vRC1rqwG562XZU60YcRH6p0475rMSKk
	SdZoSv7CETHygqiAoKYCJWMpBNOzQtnkospRlzx3YiasVCjS6uEXCJ/KQblMa/ZQ
	cFhRr4mGRNuL+KOPWTgCZX/lueI/LjewtiSLsYy8/jjKoxCIAN5zyRU9xunYe7Ob
	sGPhdkYcd6jVLUZd0aOb/v1tYJxHt7w4NB6ENnwrc5Ja/VCTF5Pqz13xzIvYnk54
	71mXSuYGbJGWGXFA7Uwxck1/Z4lOGj+AFoVOY5QNJvD1lbQ5fR6s+OxQoYp+OdUJ
	JP7Uaw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mb9msd6f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 13:39:45 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54734292aso166122285a.2
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 06:39:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742996385; x=1743601185;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yY+54IoSFwl5DkXlueEGcXHNH/dGPmMQZUEhf3D4Gz8=;
        b=D36merwb9LA5Y22KFCBQiWTcNjKCA+QEglZ/PcCkO3wJYA7fjlyNEDLK7Y6E3F/Zc4
         XZCmHfmYdMWdMpNistGz/jO+J491ELQ/RSeUyWk/Fi+JnajrUDRz7COuS/k2V3cfvJWf
         z8I1MReJPUNXql/Fmxw4ETrTVpJ1YayWpTIz/BBSMqh42Usk9SvZHaqY8hb8XTnWRNJF
         X71rQdn3T0fwOxEdhx2KVgFVzbjKhi8x7yOhRhU3YFAG34WFgfZdNZcwfs25xHzF2ZdA
         X/hI3DeGtKFUp6coK9Piz7bIFRe/DXRVceMjVAw/EfjxxiHnyEH8Dj9oByTICHvdMybp
         D+Fw==
X-Forwarded-Encrypted: i=1; AJvYcCX3Xn7ALxBa84neZJdG0R7ahN9m6ixZ2ioFNO+x+CKXhYoDU1h78LR0s9QpvcPBsi6pqqJUdya5bsKN@vger.kernel.org
X-Gm-Message-State: AOJu0YziASTnkl2O+VvMqEWHYMWBDSOPZa5CDClmOQCTrXb8UmtIr8K1
	9imLMeJt7xvTgIqbx9Hq92RiI2G6CNnSc4bS8Oe6Sr/44wCRxH2qqaefe89BV5LMUP/1jNBMhmc
	yWsW+KKPZgq6I0zp2UOzYZd1FjUAh2jbe98ttcpwid1PgeL/VbCkGlQev+JAc
X-Gm-Gg: ASbGnctVu1xZYiI7yEsr7xhWtoe/SFBlBAXvLZ+3FygFIjq3uO+1cGUThol2BHW4l7K
	XoVyGPZemqvOdb5izlZxgbc6wuNXBO65Dj18mnKbuQd42LvcTxBZv8hvQ9+nrUy1upY6p9AjARE
	oxRYtVxCbAwu5lGfJFSN2d9r5cTi/0H4S2B+mfVW1e6uxAgj+88j+w/skbt8YhOIUFTqxC2y5IU
	SvutRyky0JqxjHPF5r7KjaUSVw2Cc4q+G8qv2c7po1cnF6ehZDmOYTA15mfqxNSyQMrxZunc8bC
	HYJJkLS0esVVjk5i62ot9iFHe0kA4LZQKBFGktXDi4zZRGyOBfQEuFxZFyYyHa+6x7rEDA==
X-Received: by 2002:a05:620a:390a:b0:7c3:c4ba:d8a6 with SMTP id af79cd13be357-7c5ba1e9ba0mr1272912585a.14.1742996384580;
        Wed, 26 Mar 2025 06:39:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHE30qP9JMblwOKR3SHMweTnCiZ7e3Na7JTC5GCduH+gUlOFCJ52ha4yHx4d11pPVez2ptf/w==
X-Received: by 2002:a05:620a:390a:b0:7c3:c4ba:d8a6 with SMTP id af79cd13be357-7c5ba1e9ba0mr1272909685a.14.1742996384033;
        Wed, 26 Mar 2025 06:39:44 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebccfb004fsm9514631a12.40.2025.03.26.06.39.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Mar 2025 06:39:43 -0700 (PDT)
Message-ID: <0ca929c6-6ff5-4ab0-8ebf-aed3cc5f350b@oss.qualcomm.com>
Date: Wed, 26 Mar 2025 14:39:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] soc: qcom: llcc-qcom: Add support for LLCC V6
To: Melody Olvera <quic_molvera@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250324-sm8750_llcc_master-v3-0-2afd5c0fdbde@quicinc.com>
 <20250324-sm8750_llcc_master-v3-2-2afd5c0fdbde@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250324-sm8750_llcc_master-v3-2-2afd5c0fdbde@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cs+bk04i c=1 sm=1 tr=0 ts=67e403a1 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=cgwDF5ybabLtFIHcvScA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: FWWNkU1XYpmF3B-PX1cKa6MEJC8aDbY5
X-Proofpoint-ORIG-GUID: FWWNkU1XYpmF3B-PX1cKa6MEJC8aDbY5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_06,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 bulkscore=0 mlxlogscore=999 malwarescore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260083

On 3/24/25 9:29 PM, Melody Olvera wrote:
> Add support for LLCC V6. V6 adds several additional usecase IDs,
> rearrages several registers and offsets, and supports slice IDs
> over 31, so add a new function for programming LLCC V6.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

[...]

> +
> +	if (config->parent_slice_id && config->fixed_size) {
> +		attr2_val |= FIELD_PREP(ATTR2_PARENT_SCID_MASK, config->parent_slice_id);
> +		attr2_val |= ATTR2_IN_A_GROUP_MASK;
> +	}

This is fragile if parent_slice_id == 0, but let's say this is not an issue
for now..

> +
> +	attr3_val = MAX_CAP_TO_BYTES(config->max_cap);
> +	attr3_val /= drv_data->num_banks;
> +	attr3_val >>= CACHE_LINE_SIZE_SHIFT;
> +
> +	ret = regmap_write(drv_data->bcast_regmap, attr0_cfg, attr0_val);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_write(drv_data->bcast_regmap, attr1_cfg, attr1_val);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_write(drv_data->bcast_regmap, attr2_cfg, attr2_val);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_write(drv_data->bcast_regmap, attr3_cfg, attr3_val);
> +	if (ret)
> +		return ret;
> +
> +	slice_offset = config->slice_id % 32;
> +	reg_offset = (config->slice_id / 32) * 4;
> +
> +	wren = config->write_scid_en << slice_offset;If I'm reading the wrappers right, you should be able to drop both the
shifting and intermediate variables with regmap_assign_bits()

Looks good otherwise

Konrad

