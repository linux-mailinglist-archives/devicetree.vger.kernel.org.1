Return-Path: <devicetree+bounces-262192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MF2IU3YgWlYKgMAu9opvQ
	(envelope-from <devicetree+bounces-262192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 12:13:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CE0D81D8
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 12:13:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 474CA30055CB
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 11:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A0D333064B;
	Tue,  3 Feb 2026 11:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j6hPqAPt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L+N6mY7I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD20C23184A
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 11:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770117193; cv=none; b=PDGPub55Jscg0sU4g6OQGZDmidIwnEva8G5/vUYeXZ36oXlrwEm5p1I4wmTYLofPhFXjrKiSJfqHg6ru641RZQafYMlDKY4ZxhLG0BIQU/WVk9h7kqpnAbr8P9MpCFhjX7wav4VQLozkBWNqmIxAb9xb1wTrAKpg+9xUdKoXgXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770117193; c=relaxed/simple;
	bh=UL5crj32LxmPG6U8bVc8ffJ92JGOhQqV7xLc7SgFcy4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oXIGcfuAapeuSdyRMqtFhb0cq2o0c4T3MMb3ZLA1v2rx2xsj1fbbr5E+m/nq2uxM7sRoPaIkKQ1GSeKpi97rNAKO3e35pCWwcmn0oGhVNKx1Rvxaev44+3mNN0M28a+xSeaInVdqUX6RXhRgEdoNoUjMLnQwDfAPC6QGtib/d8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j6hPqAPt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L+N6mY7I; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6134ZtYo092361
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 11:13:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J3S60jnKUAOx2q0OJoK205tv21uIelwgA+YKFqBt1g0=; b=j6hPqAPtllLfvxyr
	sRknqsZ3WEFMQRXyMd33jiYqK0Igv4EdTVNmswayjhxswmVOMNRF1NZjPlj6CKZu
	IpiGdmAh6pss8wHwASBIa+lV4kXNajXAIfKJyc+NB+6qwIZc72LSm21D+j0lnMPm
	YYvDEa/JVEg1izfTIRPaMuYA9X4z3IFw4zNKkLBfyGR68p3JNdR1GT36/T9F9o+l
	8IQERMFGfGkt7XIcPix8OmyAL59XqWXKWMAatsVm/Qs3HFGCujOZNFhS/RgmtIke
	zuESccXa44N0rV7uE4LmBdeAsFVgMmDxxmqWMcl77oBSPErymMPcUA0rFFmtXzpO
	RuclHA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2trbm161-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 11:13:10 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-894a207e7cdso13499486d6.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 03:13:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770117190; x=1770721990; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J3S60jnKUAOx2q0OJoK205tv21uIelwgA+YKFqBt1g0=;
        b=L+N6mY7Iy2TyYy56puNC5UyUXjlSbh5xB8DLH1/SMq/fyjfnNxieG3lFrF7Up5MCBX
         20ywFe3M1I6qCGh/Z6DLQaAXOW/VH6SMFHza77/OaouZR4BBtG32ZKg8ogKlygYWl5H2
         g0qE6CBeroJ3Cd9fvqb4c3g4y6JECtrvUU4gs6V+EwztuxACeO7cjjEjtvhSo15eU6zX
         cUVCoYDZrRTVFDfvShfmF5KP6KiVm5PxLTYwQ9Yu504iPt9RpDQdEr4AuBOlWlJxYlWB
         QOiApi0LnZnV5l3i5/3DsYvtIL/PtYEO97vwTTki2H+uU4UIzm/9YNVdctu7fXDjXggB
         VQ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770117190; x=1770721990;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J3S60jnKUAOx2q0OJoK205tv21uIelwgA+YKFqBt1g0=;
        b=p40Lkjv7sJ1CW3cvZvJtKFrWLwHwDU4IR+xtLE1j8i1/Mf8r+vzHLk7HWPaIbgCQSS
         amtSqgbbNnISqWUBst1VmeH1SmifDE8eycztIQMshiEbn2xD32g2unCn/gs9sdIjwP70
         3QZFH9HSmIZxL4sqs3+/qe4KM6WOIwlYxsO0+9H1zzzL9bWGSuqyab+pcvQAg/qn95iA
         tIUnJcIT0gulyInsZsbtwI+YGOidDiXZb6Z0a96E9rnQ48yartkyS3UIsUYAyykXfDCL
         3by+QMvBMtmeZ/ewjX9L/uk/go7Ve/Vg4iC0z0B14FTu71K2+88G3CXLvF0li+iP6HaT
         aV9g==
X-Forwarded-Encrypted: i=1; AJvYcCX88dwsugFTzD8Tv/86Xlv9lviTewSKu3YucHhuxNElzyJbvCGJsEQPxVPkO/zAIQ4VpWjbJCxGkQPf@vger.kernel.org
X-Gm-Message-State: AOJu0YzPDez6vrMPAQs24p+98GQIOStMuoJdoWlg7gXu5/9ub9XwM5O/
	Ymp+htFnJpNzJVdEBSUZAuGOl0vEEo3/8C9z1jvRt00VOYWLFbqF1l2/wlZq4PPr4HZKZlsjE7i
	AMCah43BBSDszf5Mo6+OoHmDE60oqvuQnTWdmF5EMIzsck+dhjdkawvjfkc+lis27
X-Gm-Gg: AZuq6aJZopdMskc7lW9QRvWhS+jN8lUKFXqS/Y5j0AC3LwmpS6q8ajdFM3n8c7/Ylw8
	C1IZK3g+KeLv7Cy71TQ0w3TJEGU1UeGvTilwylCBEIFiGmMy56VqVnKdFZliTiOX9EkXz+52G47
	DtqiTN7XUXlsogIubmrjO9nxUsw+pzqsqkfeOy1Ybc7pej7CVS04fEUMDeg0P5+aIPcUvb0+P+k
	X8borl6QTmn3QFemgzvJagu43UHtixC/SujxZx9OCKUKrXH0GcrFCzWzLN0T+jBpccsIzM6DjCJ
	FlA1HiBL5ATC4qNr0RTnmiCQAcJEv8p1QLqevWaqPekogoa/ZqcV2sqM3ryYa8Bjz5//ux+N1A2
	rQYJ4YPZMXkRApeBuDb3rEMsoY7AkROrvrZTJm45w8t+V8+kZ1qNi3BksJyHZcTYcyC8=
X-Received: by 2002:a0c:c3cc:0:b0:894:f6b5:4b9 with SMTP id 6a1803df08f44-894f6b507e3mr99932846d6.1.1770117190038;
        Tue, 03 Feb 2026 03:13:10 -0800 (PST)
X-Received: by 2002:a0c:c3cc:0:b0:894:f6b5:4b9 with SMTP id 6a1803df08f44-894f6b507e3mr99932586d6.1.1770117189615;
        Tue, 03 Feb 2026 03:13:09 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4691db4sm8965252a12.22.2026.02.03.03.13.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 03:13:08 -0800 (PST)
Message-ID: <638daf43-d80c-493b-a88d-18bef447c02e@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 12:13:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/12] i2c: qcom-geni: Use resources helper APIs in
 runtime PM functions
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-11-praveen.talari@oss.qualcomm.com>
 <ce78b376-b581-4053-aa23-4f41ea0d140a@oss.qualcomm.com>
 <e887a7b5-d2ed-435a-9961-5a64b0494351@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e887a7b5-d2ed-435a-9961-5a64b0494351@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: GHFcKEyvYLVmHXDPbKwRSlwwnTrRxZTq
X-Authority-Analysis: v=2.4 cv=dcmNHHXe c=1 sm=1 tr=0 ts=6981d846 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=8FF4YKaOkL51pCzONRQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: GHFcKEyvYLVmHXDPbKwRSlwwnTrRxZTq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA4OSBTYWx0ZWRfXxBHQ2GDZycHD
 n+7rZJ44+EbT9GxflEeNy+WpfaL1Brj3Su+fvkUbeAdLY58t7yPiFerLcpzLd1sWddvLvPSFP84
 DvMmjOyWHOy+NF7DAgtbGzCkYy2TxBtWsUS8lxJlGMUTf0WP7zJp6qktixvl5QtWmOoMOspQnwz
 En4FbB9IHm5iBvOGYcEwKn2FOClLZ/TmGYi+urCv4AwIH3lrRSEleYj6O997ypeJA302faDc2bi
 ugKS7pFJHuWsgPEAf3XPwM/llAhr3Z8+U/ocq913sP3P1/qduD0QXrGxfsOhTMiQ0V9KqILSmK8
 G66ecK4XX9VZmtlx5nA8ptP1d+3S2qYI+XgmYZsn7LaN67ahs4aroD3yzijGEIjz5szVDtHTMRs
 rPKoNz2OL+CnxwKecxrQPglfIZM09vHdrwluoAEE7Pu6IvcGyg52jAA9NGKCav1uMxs5Aut20aS
 FDKdCZlPwNtNmyFi0Zg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262192-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B3CE0D81D8
X-Rspamd-Action: no action

On 1/30/26 5:48 PM, Praveen Talari wrote:
> Hi Konrad,
> 
> On 1/30/2026 5:35 PM, Konrad Dybcio wrote:
>> On 1/12/26 11:47 AM, Praveen Talari wrote:
>>> To manage GENI serial engine resources during runtime power management,
>>> drivers currently need to call functions for ICC, clock, and
>>> SE resource operations in both suspend and resume paths, resulting in
>>> code duplication across drivers.
>>>
>>> The new geni_se_resources_activate() and geni_se_resources_deactivate()
>>> helper APIs addresses this issue by providing a streamlined method to
>>> enable or disable all resources based, thereby eliminating redundancy
>>> across drivers.
>>>
>>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>>> ---
>>> v1->v2:
>>> Bjorn:
>>> - Remove geni_se_resources_state() API.
>>> - Used geni_se_resources_activate() and geni_se_resources_deactivate()
>>>    to enable/disable resources.
>>> ---
>>>   drivers/i2c/busses/i2c-qcom-geni.c | 28 +++++-----------------------
>>>   1 file changed, 5 insertions(+), 23 deletions(-)
>>>
>>> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
>>> index a4b13022e508..b0a18e3d57d9 100644
>>> --- a/drivers/i2c/busses/i2c-qcom-geni.c
>>> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
>>> @@ -1160,18 +1160,15 @@ static int __maybe_unused geni_i2c_runtime_suspend(struct device *dev)
>>>       struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
>>>         disable_irq(gi2c->irq);
>>> -    ret = geni_se_resources_off(&gi2c->se);
>>> +
>>> +    ret = geni_se_resources_deactivate(&gi2c->se);
>>
>> This calls dev_pm_opp_set_rate(se->dev, 0), dropping the performance state
> 
> This does not apply to I²C, since I²C lacks an OPP table, so the callback is only relevant for SPI and UART. All the refactored APIs were added as generic interfaces shared across I²C, SPI, and UART.

Does the i2c mode not require any ratesetting on the SE clock, or
any >= LOWSVS RPMh vote on the power rail?

Konrad

