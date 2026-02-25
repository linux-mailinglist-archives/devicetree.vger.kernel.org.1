Return-Path: <devicetree+bounces-268352-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBioJFHsnmk/XwQAu9opvQ
	(envelope-from <devicetree+bounces-268352-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:34:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CD21976DF
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:34:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D86203015DA9
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:34:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DC383B8BA2;
	Wed, 25 Feb 2026 12:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XbBjsu3V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JdA/pjHk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F7DE3B5317
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772022860; cv=none; b=P7OeHtASIn4pYSFft9lpqo8bUhlpVJfIRxFPeQC5Kfbog3IoH6FTowcqA9AYvIIxSacX/aTmYsU89WK9bNbBfVNi59YZllLTOfZi1qNIXncKD93jYueUbrc+ED6c8el645huEMKIuRY7wMVhlQGKO6uoOV7ZIhOLihn0Exbqb2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772022860; c=relaxed/simple;
	bh=dvoS4cXOTQ6nH4o6gAkqkV4CXoHhaBdJ7jRS1GiLPus=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RjoBkBdvB1sd/TGyN/P38s6JRAez62DZOuuyJIOjXx7p7BhjsNzwdoKfgXunxusSSzWp5SEN96ugNTpW2TSnczcH4BFWYNBU9KPAdD0IgFftlc/dDDrq5brqNMYju4y3hreOH1HK9X917Sbme6oSo1tFM/u9Q7LtGLNL++obDvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XbBjsu3V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JdA/pjHk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9ScdT1087910
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:34:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WPZMGiP8R0kvpmiPMpY3O0daM4uBFegj/GCC6ulAun0=; b=XbBjsu3VlELAPBJy
	5WmSwZLSKWaDUTt50TIC3y9+qvAjxR0L0pT+AGKy3UFq/kWZtsIl/yB6Psy0/g2Z
	kltcg5+VTljxfd8NhACpZUQcoZgRh024IfYt92qElU0hYf8QH4QVO1PQu1PHYxqx
	1IbnCwVSBfEYZtiqGSWeJDT6x/lOjNWqA3/kB6fpIfgCw3Ysije+hg7gshuWoQt1
	daLVZsLF+kPs+OybCtZgu+ss0dJRdpNgKnhwmwT4dLaLEBb1hUOZ901t6q7Yf/Vd
	lZmk9sx2YTZ+Jj9s7ldmMiJ0GlfyaaITIW16WuybWXiKxH4jiyFT2S5sW8SfcS3p
	ksXa2w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chh472xa0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:34:16 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-899c0fa75b9so561146d6.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 04:34:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772022856; x=1772627656; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WPZMGiP8R0kvpmiPMpY3O0daM4uBFegj/GCC6ulAun0=;
        b=JdA/pjHkFkO9DyETbn10uuceSri8u6SqOaXkz/dzYu7fgKoeK2nRhhL6/Ch6I05mAY
         Of2sdrfewSoo0c3a78voiyDOBYMI/t1P/7LI2Lk14cTFiVk7n4kKhxXK9WJhHf9RhmN5
         7UekMxGh98gNVfMM2Gon1xM+yNG8oDTbSGPhB8ptbN8yIL9pD7hXce6gj2itj8ESIphT
         9piJg0dCvydVzuZeoMEEnL1fKXUNJqBNFLnO38giXPAkPqR7D5eOtDhELUIKF76wR62n
         V7DJ7BLu3SlQ2f8Z+HWk5Ww2SuTsxpjd459OEGTHQ4XnK5QDkWcdqP2yAJJKOD9x2oSa
         437A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772022856; x=1772627656;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WPZMGiP8R0kvpmiPMpY3O0daM4uBFegj/GCC6ulAun0=;
        b=Mv1wAjmqgIGb9JXPbLwmmspzuArxGkY9SpK4REbWGej3WWo+DBGdDa2y4Ys+mXCuHC
         SuSTVcJGc6YeDYR0lyoTYEh+ki1/FMH3HfGtwwhMKp0HfJEaJsB9sTargAo/GKNUjYHz
         MMhKKlSYSt0zZLEquYAlHBCrH/e1PlDYc374A5bS1Iy+cpuJEuJVFoCu20c/qBJHEw1T
         +O6DRh6mAfrMNkHbWr+4u8Mv5usWOkQIokyqPgZfGA8lqI2A39CpwsMlJ+dshz7zRPWy
         G64IktshvcKw9sprNzEsDiiWyyoaLjxIVZ0iG7j0DVfF20fPdmUwd3Jj8DcgM+MuUpAb
         ZiWg==
X-Forwarded-Encrypted: i=1; AJvYcCVxk746nXKa1SUIz3NOGy0XwNrXiNiotBWEiIO6+0dSOzNonM401XuB//weSzRpqSDWa+kzuEoT1rvf@vger.kernel.org
X-Gm-Message-State: AOJu0YyonBcWGyxytQhx7xPx1D4+MePIrXAPnTAEknZekkujZuMGpnIT
	eft8sattKy3C01hdlrLCAix8vHGvW8rZ+LcP7UTuWdCnf/Gt8NKEikKCvslVJq2chDzarl6ZtLz
	RWsEx6bOdTF1i6T1x4lwPrwlmnAFFU39fdO8lYxiiqiT4mfBDmJbM7zJ4o3xM1MPP
X-Gm-Gg: ATEYQzyQkMHqMxG6PRFhMkOR/wjjnJr/vZrHuSB7XgGXRWVXaNW6Tg4hNHuhHOc3otp
	n3oFp/Cf8KpcNg3dslSGVNBH9ZDTr3GOTGTAjycT6UZpL4vEeG/G3/amZIUwa+mpwMFwfiyqes7
	3/i8tXJBoZcxMU2O7/jDAZPS59nE/3Hxdtn43IzUoNNZG9OvsL4ALZpW97t3DNNPaWyfXZ8WjXs
	NFqoAyOKSfhBYYWaA36lAL+wCFp0EuTtY1/uZI2YES9mF5WYvlvo8IV3uhxcOtSbMQI9Ld8y/SB
	87+XnFx1ZpzBYSN0zgpuVtv+LNUuEQYojcgO0t1DPRIR4qLxkxVJEZ5mncr7Efo1Y6uL0MlP1R3
	fVZnbZljQDswLwukGbryemS/Dp7MSvUEjwTn6qjckvHEMSZmfZ9B9CoH+t1ju+KtxKryCdeQ5Sh
	U75QM=
X-Received: by 2002:a05:6214:8101:b0:899:5565:efac with SMTP id 6a1803df08f44-89979d59fb9mr152712496d6.3.1772022855741;
        Wed, 25 Feb 2026 04:34:15 -0800 (PST)
X-Received: by 2002:a05:6214:8101:b0:899:5565:efac with SMTP id 6a1803df08f44-89979d59fb9mr152712116d6.3.1772022855237;
        Wed, 25 Feb 2026 04:34:15 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084c5c514sm515848566b.5.2026.02.25.04.34.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 04:34:14 -0800 (PST)
Message-ID: <0c8b3f2a-9aac-4b97-aa13-1507860d9c0b@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 13:34:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/5] arm64: dts: qcom: ipq5424: Add the IMEM node
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260225-wdt_reset_reason-v7-0-65d5b7e3e1eb@oss.qualcomm.com>
 <20260225-wdt_reset_reason-v7-2-65d5b7e3e1eb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260225-wdt_reset_reason-v7-2-65d5b7e3e1eb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: af4qtiLy94cm2fqaPp48pGeXAEc9dCEF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEyMiBTYWx0ZWRfXxlFR8XUIXzYJ
 ev7TdmkdI8JnpM9TE8cSwB+zzestyI6yZDm+nZIvMNsuJxNxm/eS49XuvLW2OApV1olAthvjodI
 52l3xJUgrwzw2PsqomGXN1vDPW0siN9M2VPrN/ntqWR0/9cy6t3ZYMM0xsIWn1pQ25xtuPDQnAw
 9qPSzgKqRJipHjHX4HeRtYHHGueDXEJBKufZaZ5JELR101yc+Y9WYADqU/yp3H4yTTgJRRc623/
 R38nAXdApFUyNGMts8E9TYrQ5/fNaFDw/7ili5ErX3cv/1f5yU1AzkVua81pTw32VnsQbFZqOJo
 nwHTwbtsNLeb+0QSjJyjAD+WDfjLami0q+v3/evTbRA6F5BKVTcAzLtFrVQiF9ncRZoAE9VtQCc
 FboIPMGFI/ABvztoXbS8mpBj0JonyuLUt9P3G7VxOxGJKy6we1oZicmROE8Q15STb9ri/tJr2YW
 q/CIKk55+rNCTMrwJJA==
X-Authority-Analysis: v=2.4 cv=fvDRpV4f c=1 sm=1 tr=0 ts=699eec48 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=owAxAYLDMf__z6yt7SIA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: af4qtiLy94cm2fqaPp48pGeXAEc9dCEF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 impostorscore=0 adultscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602250122
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268352-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 74CD21976DF
X-Rspamd-Action: no action

On 2/25/26 7:43 AM, Kathiravan Thirumoorthy wrote:
> Add the IMEM node to the device tree to extract debugging information
> like system restart reason, which is populated via IMEM. Define the
> IMEM region to enable this functionality.
> 
> As described, overall IMEM region is 112KB but only initial 4KB is
> accessible by all masters in the SoC.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

