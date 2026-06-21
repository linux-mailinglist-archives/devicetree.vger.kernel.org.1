Return-Path: <devicetree+bounces-314082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lOE8G5XmN2qdVQcAu9opvQ
	(envelope-from <devicetree+bounces-314082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 15:26:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 029B86AAE35
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 15:26:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=cYCNRrUZ;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=IbBfT124;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314082-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314082-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6FAC53003342
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 13:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4198A3655F8;
	Sun, 21 Jun 2026 13:26:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE1540D582
	for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 13:26:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782048402; cv=none; b=eNDHYQPufYfw0fXCwKmpuSyG3zeTtmPwA6UxBuiPJ5v0Qon2ApY6o5ryO5i2Gdy/7CfCeSIqeepmjBAmt9sy4cQLI8HVraaM0EMxRKM0Br/6/wizDt2i3HKwI8FnoewQKLYbeBKIDFDmmj6Fw93Aimyk6woCdTqk/nF6KRSTIWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782048402; c=relaxed/simple;
	bh=hfHWjo9FdSPX2jmzryMtVbG/nLdH4mx1WlJkHIUmHN4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=adSZx5kVq55wHBLl+3Wkybre4eHuOe27Jhu5UBVUAz/Int3qZRYUMIYiwQ9dHtMKspPDtm3fzjAJjVsB2N0Vs79Tft0lITvs+OEYZXcv9QJS9+Is7qTFuJyFmX++HIw+p+DIMcZ1LEVotpMMvjVaUreN7pqYcUPKELf2j/aTjtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cYCNRrUZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IbBfT124; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65LBb3xG283031
	for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 13:26:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gw0JBm5jyNzHqpIwq5NkGoy55xlvkBZ7zb2fd6emL1U=; b=cYCNRrUZIoopXNVV
	BkZk86isDyFb/V2tIEKGUHqg+KwqK7JCfhrIbVoYu1hTMktwGXbyYMtF3JY/EdqC
	mKHCDtJq1sAdqUd2SuOf5N5aDvWi08WZSyMXqBcgyz7pAoUkvLQTlhPlpc46emrq
	5o7HVS4efps4ujn3O/nIkqexTkvqswqzvlEj6BwOoIFMFExVetbQNRoITCzvd8po
	R4sbrj3b9VY5kSGfBLH0YvgjdudcCtvNUcJjMaJ9XTywtcetUSemsrFY8tGEVsHi
	88n8rfxegIQQczMJpZdCIxH0fdSjqvxsqQr6SfV0+i+6cruZq662Yz2+7d2nh1E+
	p+OarQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ewhtsb6gh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 13:26:40 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2bd04e4fe3dso73041155ad.3
        for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 06:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782048399; x=1782653199; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Gw0JBm5jyNzHqpIwq5NkGoy55xlvkBZ7zb2fd6emL1U=;
        b=IbBfT124p1Z9k0CRdbO2M0C+sN5KukZqW1AQS5fkD9rRYQ1hUgkEubnJNdNE4qcajI
         Af8kNTxEDSkzMiqwU+gudnrs5d6O++BBLOkwa3pO0TB7cZbveay9O8WgZyGgP5Bewgw+
         0boX4Dk50675O2ReM21knijQOUsyQ7Y4Ci+AqAShKjeFgxe0QgIKTEpY2+XaVb3ZRkWq
         MoTLQJAQs5eNm6CVtZO7BGz5X4rlU/E0/Q/19mTDzMToghW6kiXyxeg8dfHZmjy+W5HV
         +JhlYLpF8OPuBTk4ccT0kGPVAA8BipQG1Fz9MePNk+5J4Ht/d9Yw5M01kPI4TlB/b4CH
         RkeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782048399; x=1782653199;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gw0JBm5jyNzHqpIwq5NkGoy55xlvkBZ7zb2fd6emL1U=;
        b=ZmTi9dBhLqwNSL6Gh3CKycAqIChjnhBARwEqsOYwcldf5vxbvykbRbKiVOHKuoUh1w
         XnwSl24ql/7TFWHFsztnpYMrd9LZFARiCC/9HiDUA6/dq33uDx7lB9TbeyeQpKPFlAMn
         /vld0oYX6ZgONghjRRBGzwQ1O9K4ObbmHelPN0gDjQbHHyLGBHqpc1lF6Y0hDXVsD0KM
         wfajIoHKR7NlapJ5QxkL1SXTeo5RAy9vSUX824RUeHUnrOYfzzmjqe24bmyJoq2PY8Gc
         PoLevI8W9pVCj0P1WDEr7lDWjavCqXBYgJV3RRE5fCIsS29JP+0uDHIFEHWf5ip80nUb
         ncTw==
X-Forwarded-Encrypted: i=1; AHgh+RoCHy31z3G0lzGFDhVC6BVcBypZycWYfAaunUqNkLNYYKwiw+sLLqlgaazWacMkwwM8vQGwOCkOURsC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5h7FiIWy5D+xRcLIjGzoB4Qo/4vfU3edtAjNjq19rgyky0ixv
	/iofdwdFqB8yENF+ZRwS2ymCGkF4qBpiFdfaKEEYQmMX6Y71V0eznTJAOwC1ZXVdV45KPNU31WM
	bj8lihY6GcN26trkloCI+ZtIK3LU80u9Zk4nAasgh1amjRitIQhO5F1tt4xD3WSBC
X-Gm-Gg: AfdE7ckXyO+7guDpdlRWK+qN+8E2ELDScHaI85mtp16DV9pPbKdTcAze+uBypQcefTY
	db2MkUuVXpWjV+kPxToLDHIoEsHEwckULi877Uvm9QUuvFjHVvXIyxXuWqSPolobL/8ihytyvCH
	vtcEMGVnQqPC7FYLYgoyVQnM8HLxLS6DN1YrdGb61toBqw/vI3aABa8ly9iffWmP3IGCG1V1Fm0
	hbDdjoCIXep4CeFH0zOOSJ2Vdoa1FEMAZcUVkhN+7I1HYzqWAwDCEswaIxo/K6jYcm3lve5SMro
	s8TVwnN3S7JrDhPe2JjPNVyM/TuJjU/e7JxzWnLzfoJ7hBLOJIc1cGEN0FsCtgEgV3Ul86QraYu
	/nL6woMeIyhS6bleVLtB8je0P1IIfVu5jx2SlAaZE
X-Received: by 2002:a17:902:f683:b0:2c2:245a:3368 with SMTP id d9443c01a7336-2c718ed584emr114639185ad.14.1782048399435;
        Sun, 21 Jun 2026 06:26:39 -0700 (PDT)
X-Received: by 2002:a17:902:f683:b0:2c2:245a:3368 with SMTP id d9443c01a7336-2c718ed584emr114638825ad.14.1782048398998;
        Sun, 21 Jun 2026 06:26:38 -0700 (PDT)
Received: from [192.168.29.32] ([49.43.225.115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c7439f8d11sm50109435ad.43.2026.06.21.06.26.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jun 2026 06:26:38 -0700 (PDT)
Message-ID: <0071c7e6-cd2f-4693-8311-21a112422bfd@oss.qualcomm.com>
Date: Sun, 21 Jun 2026 18:56:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Imran Shaik <imran.shaik@oss.qualcomm.com>
Subject: Re: [PATCH v4 03/13] dt-bindings: clock: qcom: Add Qualcomm Shikra
 Display clock controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Brian Masney <bmasney@redhat.com>,
        Ajit Pandey
 <ajit.pandey@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260604-shikra-dispcc-gpucc-v4-0-8204f1029311@oss.qualcomm.com>
 <20260604-shikra-dispcc-gpucc-v4-3-8204f1029311@oss.qualcomm.com>
 <20260605-bipedal-aquamarine-tuatara-e1fd62@quoll>
Content-Language: en-US
In-Reply-To: <20260605-bipedal-aquamarine-tuatara-e1fd62@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: g_NV8TxhpXlfNnufqg1X9wMGnXiWLtYc
X-Proofpoint-ORIG-GUID: g_NV8TxhpXlfNnufqg1X9wMGnXiWLtYc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIxMDEzNiBTYWx0ZWRfX9DC/OuLm6Dhh
 D40RQTsQKbmepl+6ffVmSozlitOqQjaU5YmntRDohiohrhR+mMFYuRz7FMZxHQQVfnWw6H2O3CX
 B1z6gGLjPS7kov2o2C8UaHUKf7fNV1iXVuR+7Y1b1e42iVZl7upiBmCT2KOcvILNHQ+W1hmWP+y
 yxsFXGj+/ZVDNG674Dd6+QQ3M2mUzq34jaJyvhaVmNgGinNmykHsjGH2yKzYmxhC9cSJSNe13PU
 7AgsMTkjONYWDhhakdCLKR/1Hp6WzMBAu4j4SbuCvRg/hHhQmcXuWUMm57SAWjnTxeQ20/hze9W
 AoQH98hMLyKJi9xPmyTqoqm3uUYY1GeEEwuLXOOSR0CsjWpX2Vm96tvQHewAH6+G6HGJrwG0Bph
 Cn1AV4s3Ne7ue0UU3lQ5HWA5CcyfjNLQKVWRwT2M874eGw7Cpa6wLpRqBVW/2F1FH8KicE5KQKJ
 uFDQAv3IuWYWex7gDRg==
X-Authority-Analysis: v=2.4 cv=bcRbluPB c=1 sm=1 tr=0 ts=6a37e690 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=HwFTmRh04JSsUSWzyQ2edw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=CoFMXLd-oDv0mI1FUD8A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIxMDEzNiBTYWx0ZWRfX0iTpWr55A2Cp
 GfvUOHvrCKXxotolJomXwXcun+YgDRrQRvuIARkGM6x71+/B+nWzBbaKcM/QSacmpJOvCvcLIgd
 PpqVt+6K5TJQzNNa83KcQGvM1ckpakc=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-21_01,2026-06-18_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606210136
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314082-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[imran.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:andersson@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:konradybcio@kernel.org,m:loic.poulain@oss.qualcomm.com,m:bmasney@redhat.com,m:ajit.pandey@oss.qualcomm.com,m:taniya.das@oss.qualcomm.com,m:jagadeesh.kona@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imran.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 029B86AAE35



On 05-06-2026 03:55 pm, Krzysztof Kozlowski wrote:
> On Thu, Jun 04, 2026 at 10:56:09AM +0530, Imran Shaik wrote:
>> The Qualcomm Shikra Display clock controller is similar to QCM2290
>> DISPCC hardware block. Hence, reuse the QCM2290 DISPCC bindings for
> 
> Similar or compatible? You are not reusing the bindings here, but
> stating that Shikra is compatible with QCM2290. Just say that.
> 

Sure, I will update that the Shikra DISPCC is compatible with QCM2290 
DISPCC in the next series.

Thanks,
Imran

>> Qualcomm Shikra SoC.
>>
>> Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/clock/qcom,qcm2290-dispcc.yaml | 8 +++++++-
>>   1 file changed, 7 insertions(+), 1 deletion(-)
> 
> Best regards,
> Krzysztof
> 


