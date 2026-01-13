Return-Path: <devicetree+bounces-254576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9F9D1987E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:38:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5BD24301D897
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:27:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 080B7296BBB;
	Tue, 13 Jan 2026 14:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VCaR4Ulo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BGl1Mqja"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461B82820A4
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768314469; cv=none; b=VZCmgKNsyQ+Rq5FkAf89+X035qJCwSLRCVHYS4KoEHlUI5csWMnYTI37DmJVTiwwuT6BrfG/HgDgxfnZ3Be00kyeN1+3xUKUBNm1zBBzT4a4zm3O3YjaqGfGGaL4gl2MWdoNqRNxsMF8m/IZ0+lbMhJv+JYHtpzOlvjFYQMDN98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768314469; c=relaxed/simple;
	bh=NeoR0fPNxCSdzYMkdOI+2qYm+0DV4Tdgor4+2UlbwKQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KpT6Mu9/KdgmIGKZrgjtBd/T10SN11pnk0MbugkVHuoHncCJIM2ABdePKoI4meFBjg6fnHNVUa6d8t2OfPpK/U41HwALRhJsWDePOqB/DW1hf2CdelLNUAH5OzIVrQUZFb34kb6gHz+eTCtnb9RZRNYqptu/Mk8Y455Tmd84FoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VCaR4Ulo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BGl1Mqja; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D8ZOSp3728790
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:27:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q4nT7i7wEpjHjKT3NdQ4OcmrJHkGn/s/l8olKaCe/HE=; b=VCaR4UloHp60WWR+
	ehYYYx1BW1Bzv2cY+oxJUBYhYX+6sN8bJ38ubUfB0K0jw0e3/Gy06T/+WYamOrTr
	zmE84kHRFVzK/Bjy0GF5uCAtyPA1mHxZlXRTqXaasp5ZdV/jbFkMP3HVqtErmzvU
	PgqCbmgPVafdjWb5e3YVrkBxu6Qgj2Pa6gODu0sd+CUKX9pvVkF/bWA79blvNMnT
	v/bwCNe5H/Q+hIQh+8DD9/7038l/erTBcVFlxuYl9FXoQnPy7vyczX1t9SIQF3bq
	vqAL3oiQNthAPGPrYB0D1LFbKYDNm5q/URBkIDvwJGFCPrknnSNkLd4WgjzmanVc
	UziIrA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnjnu14ku-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:27:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8bbb6031cfdso248764385a.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:27:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768314466; x=1768919266; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q4nT7i7wEpjHjKT3NdQ4OcmrJHkGn/s/l8olKaCe/HE=;
        b=BGl1MqjacM2V6v8V1LHSNHmNlxYDyVNMLjfX9qE8szgnD6VIQa3/hhEebXE9a9bHRJ
         BW07PRUR6Qm7ZTOq1yGquD7Swq2cJancGcnxhcV+SU3G0uTwvo3Fgd2elbVnUUhsAWto
         +p5Anbmo2ISVhCmsZn0aOlNgeavrb2QL9I4ABS4Crj/dfrUq83AN+RtYzKQSh3dmT8lv
         lHG4BmDhaNgavKi39m/nt5AFMk/Yj7AGOIAFopEXbPhz1BQJXknoxUsE7lS86zMkquyG
         ay7NnsTPb1EOmHgYUdaNEQ73dDxIqMH7By06wuGT2MSNfZK6VhTp7dsQ5d9kbrRtVVnK
         lGiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768314466; x=1768919266;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q4nT7i7wEpjHjKT3NdQ4OcmrJHkGn/s/l8olKaCe/HE=;
        b=MKFz8X6rGTUCYO8xAjqF7zqxicZW/Vx74QgRoeITm4fGAQwXtJk0GhzY9HiVcXr7Mq
         MtW9aym4soQcIn2sg7Z8QfpCypIMAOoFEdR+lvhAOFNq+yofPc0eiOGTuCbsFqLPRlmU
         2rWgaLtBUu9RoVNbqFG08xY9F9HmloBi7BecJAghXq4WamRGrut4aWVZe1YBIdhydNPj
         /E/2Kh+0jwpsgYfwovCibqyLwr6CG0k6j6pZWKYKbL21peHPi0ciaxDlSGbBCTzLARMe
         ovcDwHd2u/jKeEEYmFqwgGtvg90bZwgwD+KyrVrLfz2W2U2xwjNQ/oGFz45IxVMo/bOy
         MTMw==
X-Forwarded-Encrypted: i=1; AJvYcCXaMdGt5nCZVqdpVdfprD1BpnXIzVaiW4EUAiJXgBgmiB67BZMoz62Jl5QRFcMmwtMu1bbmRIyCU/8E@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0Ggyj3skjSit95ZjJDaSrrz1vP4TWTHtuMs9STzVzfCfW0kgO
	eZbZzzxt8kpBxiL9Y/uDMJYEa8DVRoNhVvHTSqzBK9PDZxSNU0KMICCSV4Rs3PZWc+zpVTAKgvk
	MPk3u9nNRyYI8bkm+q8pBr5kcdavsZof4zF+T/BygHrHWDvwEJWXN7JQibj29Hbf5
X-Gm-Gg: AY/fxX4jaW+VsaokyJwqHqAi7capQRYJXKOtHpRmxdUC5xlxUXfxpkHBDIiJIQEUSvw
	Q8mp7NnYAUQRpUzd03e12HKRe3YkUEHajyKCbLnnDstMejbLky+dXRxJ3XRYXcoxVHTXWv3E/dN
	hcb7UVC3vAXpNEE28Kdeb2DU0fQ18+Mi07lKLWsZulcbMOL1ndgJor1XRWa7tMjb3nyThl41ckF
	WjWjeQqQqk2d02tI+SIgVScaenh3S9GumOJEdgniRJlJE3NbrmS8Fk3KSLALjs7lfzjAXgK/Yam
	TxFW4GObmHqjqerFJrzWflgkM4nE4Vma/h09Xqoq9ugY9QpniDreJ+Jm38cvy7iXgzyAyYK49FV
	LElBuTrKVob8oqEiC8JQFaAHkXt6kItTTjyL3ck3cNUvFrzAQmtrLhkXXOO8xll/74DY=
X-Received: by 2002:a05:620a:40cb:b0:8b2:e704:55fe with SMTP id af79cd13be357-8c3894104edmr2194980385a.10.1768314466539;
        Tue, 13 Jan 2026 06:27:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHScso/L7ys71AOzWfrACJ67yGq+O1Tl0268Rco6zWp40zeSyEB9hK9SwA0CE9pEPkDciaQFw==
X-Received: by 2002:a05:620a:40cb:b0:8b2:e704:55fe with SMTP id af79cd13be357-8c3894104edmr2194977685a.10.1768314466088;
        Tue, 13 Jan 2026 06:27:46 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86f9a9103bsm927560666b.30.2026.01.13.06.27.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 06:27:44 -0800 (PST)
Message-ID: <f9bdf491-0809-48fb-ad81-18a77d98ae00@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 15:27:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/9] remoteproc: qcom_q6v5_wcss: drop unused clocks
 from q6v5 struct
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>, andersson@kernel.org,
        krzk+dt@kernel.org, mturquette@baylibre.com,
        linux-remoteproc@vger.kernel.org,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>,
        Govind Singh <govinds@codeaurora.org>
Cc: robh@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        sboyd@kernel.org, p.zabel@pengutronix.de,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20260109043352.3072933-1-mr.nuke.me@gmail.com>
 <20260109043352.3072933-2-mr.nuke.me@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109043352.3072933-2-mr.nuke.me@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: yWcf8FpI7DoIXXdifzU0tj6wx65wH9rw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEyMSBTYWx0ZWRfX52C12YIJ5QvK
 p+IIdOg7/2MPtfH++abtFm8e6b7Q/kw/M4HLjzSplQs7NnUSMlBce5uVAK/C3IMW8pF2ZhcQae5
 4sC/fj6NXwNY34dQAHJyBDYIHMV/uqNPTujfqA55MxhofMmyq/XmRKI6/CabOSM38c6I4mG3Ie9
 NRG87vq2ztZfBEoa89cCsd87Slzbu9S3Et1Wn46l13cKGPm6o1+GX9ch0R0rao4JX8/vaqUbuLp
 gfmfTMy8xcgPZy3QXAufBVlnluIvy3D84qMtxknx2Ip4I+0CsUOhgZDyg6WSJbgc5ecSxWm2jy4
 XT2g/dpl/whQW9OeYSEnp6ZmKyWRZHv8lxIENNyfIT+W4a7xIIkOB3sCc2aaSZ3CwvLhS+7Dmu0
 XFJTlMkLijy2O/z514gqdzKBf7FvKgF989KcrAhldcgisVjWdRgYrnQevZUic2SQWHeNLxzGwWk
 tlYoEejrnE8/ACDTdcg==
X-Authority-Analysis: v=2.4 cv=RMu+3oi+ c=1 sm=1 tr=0 ts=69665663 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=3QIJbu31o7VC6p0Pe9UA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: yWcf8FpI7DoIXXdifzU0tj6wx65wH9rw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130121

On 1/9/26 5:33 AM, Alexandru Gagniuc wrote:
> Three of the clocks from struct q6v5_wcss are not populated, and are
> not used. Remove them.
> 
> Fixes: 0af65b9b915e ("remoteproc: qcom: wcss: Add non pas wcss Q6 support for QCS404")
> 
> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


