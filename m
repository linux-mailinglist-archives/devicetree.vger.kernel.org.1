Return-Path: <devicetree+bounces-261096-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GByZMh9ZfGkYMAIAu9opvQ
	(envelope-from <devicetree+bounces-261096-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:09:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA08B7C94
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:09:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DAF2B301910E
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 07:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DB9533D4F6;
	Fri, 30 Jan 2026 07:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ObBNJUCP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gaJIdKOu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBCF3081BA
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 07:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769756942; cv=none; b=SwWy9pKD65uSuGoZYT7C0GymoZ+ZsuFaXxxgG9PqWdUe3BnOO5/SywbEG87ZmlCKXu4TQeoL1A8OdZCi5iZtkFE+ZOWwoNW2K5UXxPh3bL8fJgXLH9bL3k8Ir27uxSTKODy7tg/emZmbkrmHWZb/OmoSC99Fkq0OrIavmnk//ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769756942; c=relaxed/simple;
	bh=vFbTaRxWPwQB59kC9o4nLdn1Q/su2WIu577U4EPRrVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZtalBfJHLfN8tjiCz4jmKnny2XrhzMlsw+1PbzdWbDC3WUKmDxGfaDjRuW60xe63uoUiWkHJDIKWD4CYyP35kCQ3sLOE1XSXnBNdg2tNODpUdc//Ia4aHB6xhuyuU18kpNVnnM4fxdQUScyDZ3ki8zPYT/9r4KBQxWB5R1GTMps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ObBNJUCP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gaJIdKOu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U4brjg1485920
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 07:09:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XvE0CnUn5SK3lUAGivif9EppbEE8UDztCGOLiFM0BRE=; b=ObBNJUCPFZnXThlV
	qRUp1hEq9a6onElu63q3JtkIp+ZDOuCfjRiaTtFBxuf0ry7hdmMS/pocDv2qrma1
	3IcR7tTu55oFlUsCX08vx+gYDQqwFO+KkhMav7twhkecByMP5nT9qionrTLy0EJ4
	TkY+thEmoXvOsIY2nvNPVvSB95QUzYSiC6lvwDXbLMtT3A9crD6plg93vtkDk/GP
	pPfqRk9BU8BlG69vjBZHw32gl0MPvPYMD5I2kUYB3xZEEMG5mzF68Pr+MeTBkHm1
	yg6GNktqC7zNG9oz4sJVvYEEQ+heaS6+RXQdFMWLXwshyB+8ssMPZmjb7ptRnLgP
	7L6XCw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0nsf8crd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 07:09:00 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c636238ec57so1222627a12.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 23:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769756939; x=1770361739; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XvE0CnUn5SK3lUAGivif9EppbEE8UDztCGOLiFM0BRE=;
        b=gaJIdKOunE5fSNK6CNSvu3IriZEKveWNgdOp52d8e0EajhgurSYjaibJ8I9xUDf4NK
         Gatnm1SaSOzFtILRb8zNOcMi3vKUYPTha4SuFYp1476dVEihS00KE1kjNau7hlQo3B8y
         VkrMOxXjp200U/5Po65ZkohVaVe31QHjESWss4lw+z42Nul8moCiSAefloffrMMa+w/M
         sOfYuSJQnQ3j5F8k6WMuwvRGG+7Y7ekOerCpE2gYMnGIoITLkmqqx0WkBbphPkHpZlUk
         k5Bi8PWvqQryQuJ9iY8ztndVFWEg8+eTbjSOvRHFL6E/HL68a8roHgsp1vr1WVbY1DWL
         K7xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769756939; x=1770361739;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XvE0CnUn5SK3lUAGivif9EppbEE8UDztCGOLiFM0BRE=;
        b=PxScdNO+zug14DmwOkEXxlJ8cQ7h2Inx7kyBVVGN2gW4NwUUZgbT6FQUVY3g1ZQSnA
         dGc4IMTWobjBS3iT9Q380VJaxxK7C63kJ9oFvzvtwX6GkH11aVMxWhj2lYH+FH+WFtaP
         YoB3I7sMAy9K3EqNJ1mpKcBSzoDdKQlgGGef730SR1Zh5HkKxh4k16JBrdli3LWMfbeW
         gtXX8FsW4QUIjlR1aqW5V1sqKzAqWumUzcL7mpcZW3mIq9+mxWeYpjYaqALncJAhkC+x
         6zZjKe4GfH4USxtTT//HMCBBxpAB/L3k33F+PJGmT86kjrSCiP0g+pqjUnNg9bUTdfRW
         mA7g==
X-Forwarded-Encrypted: i=1; AJvYcCVTvGnuE+Kos7J/cWIq8ddwk35PI16sfHSQoTVFwQF3PRIhUK5IBk3lqnALeXxKjgyoZkNqX7ja0kSf@vger.kernel.org
X-Gm-Message-State: AOJu0YxyYLjrbi9l+cs8WWpZ6gIvugTFry2F6uMIP88SLSdsiMWBelrt
	UFA3LMSBNzRyKFPIRgmre47mJr11WtaylQ4LRtgp4IuMVJtDuB86dZddp8JklCVC96KpPN8tCZI
	FYXx0H0Vwp7+EZ4gurvWW4/Nub1wsmHT9CvfuzmhSvBQaIKPeGO3xEXoAyHWW1gR0
X-Gm-Gg: AZuq6aIRLyVrU6IqL/znp565PfglhAkrgjzIRsTladDv9bSL+aDaPuQS2vTTzKmDNIu
	4X50sZA+nCns9yNh53/QrgkDF7wAv5t6cpBsw6ewuug5qB9YeOimvlJ2/+LXsxWKl4OnQTXqHF5
	+6E0sx1vBD4e1vW5WOtymbpz5zh8EC7nQzAd/HqHgY4N0UPPCjZ7mT/j3WfRE6pBWEEs85oELJE
	CXwKXMr+506obWZaJviiMbBmGt6W+bICjOrbTt0nBv0McPGRNoBMzqR7xjaFedvosiiR+85DX8l
	PUCoW8OU9t5HIzNc5xhFXDZU9cChhfpEpmHpy6fQ/tbJKu3qEMdbJeqPfgMr+YtO/h2K7PFEqOf
	wxXscVA5kBJXk37KYzbynTrEMR0gPkXTCrndv8BoT
X-Received: by 2002:a05:6a21:600e:b0:38d:fa22:8ef1 with SMTP id adf61e73a8af0-392dfffc712mr1756463637.3.1769756939559;
        Thu, 29 Jan 2026 23:08:59 -0800 (PST)
X-Received: by 2002:a05:6a21:600e:b0:38d:fa22:8ef1 with SMTP id adf61e73a8af0-392dfffc712mr1756436637.3.1769756939020;
        Thu, 29 Jan 2026 23:08:59 -0800 (PST)
Received: from [10.217.199.117] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c64276ef9fcsm6500158a12.1.2026.01.29.23.08.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 23:08:58 -0800 (PST)
Message-ID: <09298c37-4cbf-4486-b720-5e96cc08a1ab@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 12:38:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] dt-bindings: thermal: Add qcom,qmi-cooling yaml
 bindings
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, amit.kucheria@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        manaf.pallikunhi@oss.qualcomm.com
References: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
 <20260127155722.2797783-3-gaurav.kohli@oss.qualcomm.com>
 <k3q5hsdsxhtf2yxibyqzzldhgrbv366n3rd6wdcoju7gcksiu3@uplmllaihm7h>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <k3q5hsdsxhtf2yxibyqzzldhgrbv366n3rd6wdcoju7gcksiu3@uplmllaihm7h>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: H7gDfM2pVrJyHDyyuMCUBLbej-yuj3c4
X-Authority-Analysis: v=2.4 cv=EvjfbCcA c=1 sm=1 tr=0 ts=697c590c cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=se3G6Dq_jQueYJs0mkQA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: H7gDfM2pVrJyHDyyuMCUBLbej-yuj3c4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA1NCBTYWx0ZWRfXypgFBV9fyoTA
 LN1ipMPT+kLvDfkQR2J5XHtrmSAMzFzmJj9/yfREHjEHqj6MK/NB2zvbgeR1OyLYjBOSPa3Ozw3
 yI3+q4BydckJGnxZcJSfo/gzgsCat4Vj1oYWKVtr5zAV3eW4NgFsIUxq/WXmPvd1Z2qlSkRz5/w
 nPQ7tWUhoZih4Bh0FLL04Iie+pJXP0LfjzqKaqAwCqIsoRIe8fgMe8dHVOMlfwgxk5xbPuq2ptu
 gNKFSN0JQT0uI+eLoQJN0dwPV/UIfJSWpy/ddtUgnuJ8/6bsg54U0D/7oBmFpUv8r0toKILNF53
 mrZRkwHm4xQtnEuMsugaw9A16z568FHUBCRy52p+XsH1SyE5/N6QYLmpItI5GxGV/y1IDtyq8Hf
 Dg/DvUD67kpg8FseabDod0+WAoIX8zcKfLJQ+pUcg/XGDCoEz1Fwn7mtfghUcOPSunbq/ihhToh
 8E9KPQIAqPnqRD74ufA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_03,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300054
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261096-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4DA08B7C94
X-Rspamd-Action: no action


On 1/29/2026 6:15 AM, Dmitry Baryshkov wrote:
> On Tue, Jan 27, 2026 at 09:27:16PM +0530, Gaurav Kohli wrote:
>> The cooling subnode of a remoteproc represents a client of the Thermal
>> Mitigation Device QMI service running on it. Each subnode of the cooling
>> node represents a single control exposed by the service.
>>
>> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>> ---
>>   .../bindings/remoteproc/qcom,pas-common.yaml  |  6 ++
>>   .../bindings/thermal/qcom,qmi-cooling.yaml    | 72 +++++++++++++++++++
>>   2 files changed, 78 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
>> index 68c17bf18987..6a736161d5ae 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
>> @@ -80,6 +80,12 @@ properties:
>>         and devices related to the ADSP.
>>       unevaluatedProperties: false
>>   
>> +  cooling:
>> +    $ref: /schemas/thermal/qcom,qmi-cooling.yaml#
>> +    description:
>> +      Cooling subnode which represents the cooling devices exposed by the Modem.
>> +    unevaluatedProperties: false
>> +
>>   required:
>>     - clocks
>>     - clock-names
>> diff --git a/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml b/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
>> new file mode 100644
>> index 000000000000..0dd3bd84c176
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
>> @@ -0,0 +1,72 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/thermal/qcom,qmi-cooling.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm QMI based thermal mitigation (TMD) cooling devices
>> +
>> +maintainers:
>> +  - Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>> +
>> +description:
>> +  Qualcomm QMI-based TMD cooling devices are used to mitigate thermal conditions
>> +  across multiple remote subsystems. These devices operate based on junction
>> +  temperature sensors (TSENS) associated with thermal zones for each subsystem.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,qmi-cooling-cdsp
>> +      - qcom,qmi-cooling-cdsp1
> If I read your schema as you've it written, then ADSP, SLPI and modem
> also can have _CDSP_ cooling device. Seems like an overkill.
>
> Please take care to describe cooling devices for all DSPs at once and
> describe them properly.
>

Thanks for review.

All the target supported in this series are limited to CDSP, so i will 
update the binding to describe

only the CDSP.



