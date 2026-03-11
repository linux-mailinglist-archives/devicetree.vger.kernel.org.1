Return-Path: <devicetree+bounces-274004-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4O61G3VDsWlCtAIAu9opvQ
	(envelope-from <devicetree+bounces-274004-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:27:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 114232621CE
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:27:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 74E12303ED91
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DB9A3C944D;
	Wed, 11 Mar 2026 10:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AHDk77ZA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kBb9cvW+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB323C8721
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773224502; cv=none; b=AUm3S3XI4x1O39qRaPj6ImiB/0JlG6YABDT4AJO82aW8/U0QgvmvefCFC0DoDfpH7GJqiThvNQ/8zAjrM74FnFM+8x/JbgN/lNDqgrjXr0fBmHBh+EyU2Ehy7x4LHcx4Jv9yqNYGeCvDyaPIfz/ntI0263YHOt14DL89c2TQq5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773224502; c=relaxed/simple;
	bh=OIr96WVd1mXbDwFtOdV3PMHRDq6mJV33ej6PSPF2MYU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s70Z9zLcE1vXhIhAPDY/D7rClSYeZp6atOaziE2G7mKTgpwfAuKZhpYJmeVMvWAtceTFdRzCot0+DXYWd0poi1La7idcZd4T4dWiVPYGUOkFUZOy90KEI7nLxbfnLO6qw30lftha35hijS7Gz92aW7heT3Fectdy3AMBJNBkFqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AHDk77ZA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kBb9cvW+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B8oAQx1573154
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:21:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cp7y8BcGZ5UtDLsO0R+jMD4Esl8EbGI07itPMGRIp+4=; b=AHDk77ZAaoxeNi5X
	3gq3KmcJA98ah8laMh3uDg+byb+D/uH2oV9AfPRhUO9CXBGWz/2sRUV/I5oLZ6Ou
	XuHRe3sQxiNQzrGNzCyUH8nUqSqPAKc/d/noLx6DXL/N+phViPojTbKLhdCOacy6
	zdYHAdyJOkqc6C7GY/Bcyrw3dCXow5ZjXBe9uUZ/AbWJWNS63vwDE/dBD0ENrYH5
	8MNjYtnhRdkxhLw2Utx+xfLFmQFQ6LnEGVzJ/E8k1bHLU4wP0gXL3Tea72s0LywL
	8ADovhbwspUQdBPB9b/dOLg9A+0hPJ2lDXeRZWsu7D0AZo72WhsFPN3Ik8hrm9Kp
	L8mweA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqgkb57y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:21:38 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35a019abd6aso470818a91.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 03:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773224498; x=1773829298; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cp7y8BcGZ5UtDLsO0R+jMD4Esl8EbGI07itPMGRIp+4=;
        b=kBb9cvW+TSLZ4IluD50TI90GBsoBoG4iqSr85X4vPLEAa/QS4jmZXDBB5V0Q0Y3CUh
         2rH1VIJ0GCRmUorL2AAzfb8acEKWetRshi+QybjhGI1wW2JuKdpfxy4uijn8JAz9AaEY
         LwL+ywvgjkovRs38pdIwoCRRQanbAuQIkLHFplEeN+DhUZYBRyIZyQUy6VkBbWNNsAiZ
         befW2W0l9chC9xyl+yYuPAdv3Xg9s12pR9ErM+yOGnzSp5GVLWt0czjpffni9LbvaX3P
         G2ze6h2iQW2Rlun4e7cQgyeVq42lSScFf2QfDjAdF/AL/wtGH+XlVsDSvY5F/yycAoJE
         BX1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773224498; x=1773829298;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cp7y8BcGZ5UtDLsO0R+jMD4Esl8EbGI07itPMGRIp+4=;
        b=ojFYlvfmMHqev1nZpJlgQ1VkYBaAK0+mlocAPyiKEvvkGKq3q1+5sX7ysZlLq4RaJH
         KTuxUD/2Zr4PoPuEe4UH/is2zhWZzyg8mIiKlaHo35Gv6rof0RvQs5bz0wxcZDacZDyc
         xpOZV2qxQUMzmJ0gNKbWGwut2nVXkoRtSgrT/rp/9hrC2F3mkTyVjrhKUyXEgb0fynmz
         qb/cOMB7FuveEJgOrmzjBMF1mvG1Tm2M5szMlcJ7+WfvqvpmTkFvCZD4ofnHLOEmGrMn
         H4QHpRV5IR+2zOU8bw5x3ZqT50Y6hOWjYURNJX8G4iSa3e4Hoc+xOMUA1nmJd7ha72Ve
         xqAg==
X-Forwarded-Encrypted: i=1; AJvYcCWmxfnCeruOxCnYW1TFQXBOMwDUFnqtTmHUzDofF7VPeOkYOFAhkoJr2LDMng28NikZ1KUgOfhRlktZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyJqGResuvxJ7I6i+m1k6g+Ij0MQ6Z2pUJAOQDBVr/5SjYsH3p9
	Kt5GV5D5Atveo76+ije4pmBeXlQWmIOmBxath2AkRRUUXUW13Z+llw5BdEtHLA0Fs83LwLIQCHO
	xXU42t97YiGbIXliS+XcA4G2J0ZPcAqSzm8fOHUok7kTg8qGcRt/+kgBCvXcbkaxb
X-Gm-Gg: ATEYQzyK7ZzlmQdl1xE9v7zUFwNj3FNfrltTCn7xDtIvqjlttbxVJ+mnyKFUGEWaV/B
	2StfxCpNe/M5i3x3LCmV4xUKKk5ptRxf/3+AG6lbqI1qI5FxTW/0PGI/qJGV6hSYKB3gyKOrYd0
	OzYVcD8H0SG4EEJyA6mCPyOamg7hcmlb498cMDQL45h79pmB89FI+P6MdGf3tArfl3vOdTe2Dzk
	GgfLomcV+cRnP+AdVzcY5m37ouFneWbNJnRDl2nuYWB39XWTSWmeFtqz+iXfUHHTjTzZ7PG5t6/
	qlfXvRgXlMVzClOeKJY4+i41QexfzjGnPQ2+nWZJON8cf3GBHrZWVgf/lUwvjgyCP+dVgrEEgBO
	+uqSt82Bfp9yNl/bh7jNrPw3WypiKRnGwh7IhGazkY8/DNEkaMnqj9jfMqcebbBf4irxH6T0Ban
	9wxqs1Jgi3E/1fA+mm2LDVBvYnwrGCSD0uvrTDSYo=
X-Received: by 2002:a05:6a21:4d07:b0:395:cfa9:88e7 with SMTP id adf61e73a8af0-398ab2862a7mr5904412637.8.1773224497714;
        Wed, 11 Mar 2026 03:21:37 -0700 (PDT)
X-Received: by 2002:a05:6a21:4d07:b0:395:cfa9:88e7 with SMTP id adf61e73a8af0-398ab2862a7mr5904390637.8.1773224497238;
        Wed, 11 Mar 2026 03:21:37 -0700 (PDT)
Received: from [10.190.200.237] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73cdfab64csm1706820a12.34.2026.03.11.03.21.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 03:21:36 -0700 (PDT)
Message-ID: <96f4dae1-321c-4c6a-a6d3-85f4f785e863@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 15:51:29 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: arm: cpus: Extend Qualcomm Oryon
 compatibles
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sudeep.holla@kernel.org,
        angelogioacchino.delregno@collabora.com, viresh.kumar@linaro.org,
        neil.armstrong@linaro.org, festevam@gmail.com, Frank.Li@nxp.com,
        danila@jiaxyga.com, lpieralisi@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, tengfei.fan@oss.qualcomm.com,
        jingyi.wang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260310040751.3132523-1-sibi.sankar@oss.qualcomm.com>
 <20260310040751.3132523-2-sibi.sankar@oss.qualcomm.com>
 <20260311-premium-meaty-bullfinch-f01b0b@quoll>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <20260311-premium-meaty-bullfinch-f01b0b@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Hswtjbz_t5ofvnk8kWeZy5MTx-vWLWG8
X-Proofpoint-ORIG-GUID: Hswtjbz_t5ofvnk8kWeZy5MTx-vWLWG8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA4NiBTYWx0ZWRfXz/hHjOT/16+P
 dwUzth2USQwWtaWqpFwH59i1oJsD0FZH81igPA2jIa7dn4+o055oMRPFlcIwYdQNz/1Yda+VlZn
 Ug0UrTcKvlH+DiZtu3/mYmyI0qccwxCyR+eIp6mASUqG6i4vRwpLDTQbe9kXRzEC3Oz0O9fQxuu
 nYHKDTmzflFIWoOL4mBxG0+p+4vYnIebt0y0GO3U2iTZxF9163Tg+tEG/BGw8uyfaRgn+qhHgJe
 n2jnMzbedCcrNwaKTlOM0InuPu6Cu5Zlwsap+GLVW701sw3FY5GZxqnNQPlKLws63dkbOQaLeO0
 GPLfZnHfZOFSSE441bO11suLBqw9LovYm1Ati3ldfwtVzX09r8CIpJSCDxYDb0PPRnu9qO5kIt7
 h5nEUvRvqyXwthOCT0/JZKXg3paw9yFNdtffysa5euFjyQwm2baHhW2/kxSuBxaONQGOW6x+Bxi
 bizepr99/5GKDuTy5cA==
X-Authority-Analysis: v=2.4 cv=M4JA6iws c=1 sm=1 tr=0 ts=69b14232 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=vZVINAHaOJVY8LkD9qMA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110086
X-Rspamd-Queue-Id: 114232621CE
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
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,linaro.org,gmail.com,nxp.com,jiaxyga.com,oss.qualcomm.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-274004-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On 3/11/2026 3:33 PM, Krzysztof Kozlowski wrote:
> On Tue, Mar 10, 2026 at 09:37:49AM +0530, Sibi Sankar wrote:
>> The generic Qualcomm Oryon CPU compatible documented in the binding
>> doesn't account for differences between core types and has been
>> deprecated. Introduce core-specific compatibles, based on MIDR part and
>> variant numbers.
> What do the "-x-y" stand for? What are their meanings? Your commit msg
> or comment in the file should explain that briefly.

Thanks for taking time to review the series :)

-x-y stand for -MIDR_EL1[PART_NUM]-MIDR_EL1[VARIANT]. Will add it
to the commit message.

>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/arm/cpus.yaml | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
>> index 700255e9a002..fb6e5871b625 100644
>> --- a/Documentation/devicetree/bindings/arm/cpus.yaml
>> +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
>> @@ -218,6 +218,13 @@ properties:
>>             - qcom,kryo685
>>             - qcom,kryo780
>>             - qcom,scorpion
>> +          - qcom,oryon-1-1
>> +          - qcom,oryon-1-2
>> +          - qcom,oryon-1-3
>> +          - qcom,oryon-1-4
>> +          - qcom,oryon-2-1
> Best regards,
> Krzysztof
>

