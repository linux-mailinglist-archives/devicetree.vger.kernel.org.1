Return-Path: <devicetree+bounces-262755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBjXI+6Gg2niowMAu9opvQ
	(envelope-from <devicetree+bounces-262755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:50:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AD0EB312
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:50:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52475305BBD9
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C480239C627;
	Wed,  4 Feb 2026 17:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IfY5h04k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d6Sbp2su"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D1238E5FC
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227155; cv=none; b=VxPAYWXuDnBH4sfJdzrOi54IQGigDUsur1DkwvvCGDEpo8NilCkm+iy2Hu3ObBAEXzs50EuDLQKJqBTkiyYHtaK/FPWT0vImlTTQWmM6veR6gPDgW46lApNHG8LUokF2vi4EsgFja65QIMDH0Zm2SwymTrezOQWMMww8GVFILds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227155; c=relaxed/simple;
	bh=1U+T/TGx1lu7uG20Yk5Dj/g7zoJzzEaRG2Pyl5Lwbqk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eLQq7kcY/4KaKbRwcuuuFtggBXf57RNZHPC7da/McY05cy5hGIDqfCmL4jJKP8UhVKNjYSi4O8UFe2a1mQiklIqDa7xQAebr9IaXT9G/biX9NBAR04jOWP6TR86RcuqmVn0sO9BhI3un0RROA9JDzFfhFvlf5pUn6D1M5ISwZt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IfY5h04k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d6Sbp2su; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CIPUP096162
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 17:45:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Op0scuHNJd3fkuYUXQu5Bv+7LfQ4C8HhgX5SWl4YC5s=; b=IfY5h04krrIowMJS
	hIgvkrf2HGdMu9w8Ggl+JmO1gqcpBOgM+OM/cZt9MAKP2NhIRAdJQ3NRry0SdyAq
	DjiCNK8llaNwn+bHIHGYp5lT0g5LknVbXpu8esdj8LxlySKuCnbPr77VY/okti+b
	jNQse7eHwWIz3pWqC8AVQsD6KRbsjEUNXpogKzxqvvmBz4e8zWx2dplEwxDoVx8l
	D73UZf1+GmQyd0Edtp9e5S+uCVonc+AYEPxkvEIB0dx5RuPwwJ+HyjWRRwMrYnLw
	eIuQM5XMXeUK9zvisL30eMoysMJTDncG4Z/S9d6GliqSwj+gateoAlEcx8dpngyv
	ObCeHg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c44kbhaey-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 17:45:54 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c61dee98720so4232928a12.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:45:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770227154; x=1770831954; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Op0scuHNJd3fkuYUXQu5Bv+7LfQ4C8HhgX5SWl4YC5s=;
        b=d6Sbp2suCAT4VgQr7xnlrs+MGFzb625jHoZqGlb0VwK2ypl7L6sRX0uTFjSi4qLzoP
         HsInu+Q4ICjEzpbmQVSUhYIUtGn4ZCcjoHppX9YvrMZjab0Nf2VspWeGINuriF2a0HQE
         bx0DZovCju4QEBBDQsDqK7KaAV1ZQ/9Hc7WyAXzpbM0GMb9tWnCFdix4rxvnGlF3fF4B
         3t7xvahzmJ6cLKUS+O0h5FFcbFyWTLGOoDm9VMqNl8r7uTdvd4+8AQhGqoNqcUZfKw9r
         ++05jlNOdyVmaIQFJfR1jvIuk1q+5lck79vOCqZL3bwlahYgB/Ne9KU6Ay5N5qEQk38/
         HqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770227154; x=1770831954;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Op0scuHNJd3fkuYUXQu5Bv+7LfQ4C8HhgX5SWl4YC5s=;
        b=snGQV4zodnyEi0xoQOl7CiGneR3nX1Vm8b3gYfJtKAY1n6mzerRQkHGFWKp4dhMbsC
         +xBHoW22Ck+kT/KCvw9shnbQXcp4o2TLEaqZYmAR58RD+FK+i3VsuSCf7I/Rz2lsbaVF
         Bym2tpQRtU36F5/ICyil5jalWYebLQtOYLbITEAfVJ3i3vxv8YfAnB42csO1f4wkF757
         kxa+X6L+teNRyfpNBqcbThI+SVxkW2UpZ//XvKAiJBreyDYOvw5LpTziwUTp5NmJZ1qL
         FHRjRoC8XozdhEjIFjwaufNpZNIIi03XvDSCVw32XKWYj+Mw6kdZHs9VFOGF5SYt6Zrb
         R3Uw==
X-Forwarded-Encrypted: i=1; AJvYcCXgmYLEnniHIJTMd+xg0d1rtEc+AuHOoplY7NbtAMAc7jhiqdXfxWhdeEajJGBlfrn71ep76wBIz4C8@vger.kernel.org
X-Gm-Message-State: AOJu0YxfEPLnIkHI4Y1W9rjqUTtU7K8wu/WSjlwf1VkkCjv7yytgKe8d
	ZcrjZUWc/bQY7fFUSJ5FGrxaEuCqEybL35qyUPm+MyUQ0B9M//n4Edawm7dya4kmjzEDPhPlpqO
	dBKyubAFhQp2Qw6gtrhDxFZ4rxbTTIDLpU70hP3Lhp1NYHytJ7I4Bdl6m0AxXs/XL
X-Gm-Gg: AZuq6aKE8AZzn2S2C7uREjn/9t4Qf8nlcC2DHrtBq/wuxnC7Vqh1R/qUEPsDRE8NwPF
	XlyRXuNFIt052jFcce8DdQ9StkRc62DH7iUQbmJMCYOF9DlNRBoY+AVr+b87s5EjAl6IQspEscC
	o160v98S1IrRSh+KAAkcfXRkx5Bp35DrcHIr+8gkDwBHTnJaQmOVKs1H/T9l8+VfwX7TkIIIS9Z
	EflrsbRtanubwGaxsxzwBPaoAJSjZEjKoC3DXQUgr90Eejmz06fLnXMbgjmVoUNJSqt9iQoMUSw
	ydGLRTbRv8SW6ylOTot1SMGJaQuTblp/J2hUOFLs27/RcayRZj6R4hfg1MCNwJRanLXJiSTPi5L
	KUrrQTnFYM09f4DY+wF7DvSoz+8EZXeLza7Kfdd1jdNTg
X-Received: by 2002:a05:6a21:150d:b0:393:39a0:f1df with SMTP id adf61e73a8af0-393725d732emr3402862637.78.1770227154005;
        Wed, 04 Feb 2026 09:45:54 -0800 (PST)
X-Received: by 2002:a05:6a21:150d:b0:393:39a0:f1df with SMTP id adf61e73a8af0-393725d732emr3402838637.78.1770227153461;
        Wed, 04 Feb 2026 09:45:53 -0800 (PST)
Received: from [192.168.0.103] ([124.123.178.21])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6d9713cb83sm219304a12.5.2026.02.04.09.45.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 09:45:53 -0800 (PST)
Message-ID: <b6dc62b9-9bce-4f35-a108-196052f4ff59@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 23:14:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] dt-bindings: clock: qcom: Add X1P42100 video clock
 controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-1-b23de57df5ba@oss.qualcomm.com>
 <fxzm4767ged6hikpblsnh3xzec4qm7dzyfnds7m2ljedhj6n46@zkm7zxz3oo73>
Content-Language: en-US
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
In-Reply-To: <fxzm4767ged6hikpblsnh3xzec4qm7dzyfnds7m2ljedhj6n46@zkm7zxz3oo73>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Wc2rcfiyNab8aeey9WepaCs70FhadP_H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDEzNSBTYWx0ZWRfX8fN1y2VQRZqc
 Pf2hluUpaoO9JTpuEfbNIGJ6H4jroB4DyppvuZFh3i8URu9iT1q1+7gxgByKjmkGwbKi067CCXm
 7QRx4Vf3yCKpkKE4SzygEI8SJ47mep0DbUOPCHzU6AOSMIQbopAaZephk6CHQLMucFoPLxb3hTb
 jaTzTwIY5BZ5MIodcmEviTo9j71kGQE3QA03BrJAU6Uuf1piaTx1NXAY4z1KVdGBQUioE+tdWYZ
 DXbAwwqWSj+A7FW3csgeta+cuiRp3MrMHo4PXSXfaRPVFxwvEc8+FbEtxWugWML0M7KHXDVsHA+
 ol80FrcgbkVo2AtBacsfUdOAWK8CS04fthc4n1Y8eFARt89V2e3gnyj7Fy/qJaAeB/hGb8MqYrn
 pEloCjxBQuHL5uyWLQ+NEdxuiZp7K6hUKapRVxmP//9+wnC89Q454LF2ct1f+9hJvubX61/Q81u
 fH1fXQpIFiNG0t/B6OA==
X-Proofpoint-GUID: Wc2rcfiyNab8aeey9WepaCs70FhadP_H
X-Authority-Analysis: v=2.4 cv=HN7O14tv c=1 sm=1 tr=0 ts=698385d2 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=2H5/5ZkxJs/wMzWGxXwROQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6d1n1Ba-E67CpG4V2ygA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_06,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015 bulkscore=0
 spamscore=0 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040135
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262755-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E9AD0EB312
X-Rspamd-Action: no action



On 1/28/2026 2:04 AM, Dmitry Baryshkov wrote:
> On Wed, Jan 28, 2026 at 12:56:32AM +0530, Jagadeesh Kona wrote:
>> X1P42100 video clock controller has most clocks same as SM8650,
>> but it also has few additional clocks and resets. Add device
>> tree bindings for the video clock controller on Qualcomm
>> X1P42100 platform by defining these additional clocks and resets
>> on top of SM8650.
>>
>> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
>> ---
>>  .../bindings/clock/qcom,sm8450-videocc.yaml         |  2 ++
>>  include/dt-bindings/clock/qcom,x1p42100-videocc.h   | 21 +++++++++++++++++++++
>>  2 files changed, 23 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
>> index e6beebd6a36ee1ce213a816f60df8a76fa5c44d6..e8bf3fcad3fabc4f3b7e8e692c6c634d1aed9605 100644
>> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
>> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
>> @@ -30,6 +30,7 @@ properties:
>>        - qcom,sm8650-videocc
>>        - qcom,sm8750-videocc
>>        - qcom,x1e80100-videocc
>> +      - qcom,x1p42100-videocc
>>  
>>    clocks:
>>      items:
>> @@ -67,6 +68,7 @@ allOf:
>>                - qcom,sm8450-videocc
>>                - qcom,sm8550-videocc
>>                - qcom,sm8750-videocc
>> +              - qcom,x1p42100-videocc
>>      then:
>>        required:
>>          - required-opps
>> diff --git a/include/dt-bindings/clock/qcom,x1p42100-videocc.h b/include/dt-bindings/clock/qcom,x1p42100-videocc.h
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..eb6c9b7264f8cbced7cfa0001903238ffa168431
>> --- /dev/null
>> +++ b/include/dt-bindings/clock/qcom,x1p42100-videocc.h
>> @@ -0,0 +1,21 @@
>> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_X1P42100_H
>> +#define _DT_BINDINGS_CLK_QCOM_VIDEO_CC_X1P42100_H
>> +
>> +#include "qcom,sm8650-videocc.h"
>> +
>> +/* X1P42100 introduces below new clocks and resets compared to SM8650 */
> 
> And then someone introduces new clocks or resets into SM8650 bindings
> and this gets busted. Please extend the existing header.
> 

Yes, I will drop this and extend the SM8650 bindings to include the new clocks and BCR.

Thanks,
Jagadeesh

>> +
>> +/* VIDEO_CC clocks */
>> +#define VIDEO_CC_MVS0_BSE_CLK					17
>> +#define VIDEO_CC_MVS0_BSE_CLK_SRC				18
>> +#define VIDEO_CC_MVS0_BSE_DIV4_DIV_CLK_SRC			19
>> +
>> +/* VIDEO_CC resets */
>> +#define VIDEO_CC_MVS0_BSE_BCR					8
>> +
>> +#endif
>>
>> -- 
>> 2.34.1
>>
> 


