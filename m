Return-Path: <devicetree+bounces-267226-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIrIIjnrm2km9gMAu9opvQ
	(envelope-from <devicetree+bounces-267226-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:52:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A4B171F91
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D246E303A845
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 05:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55D6F346FCA;
	Mon, 23 Feb 2026 05:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZgYinORc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AHQ39gVc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E688E346AC4
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771825891; cv=none; b=QTt4MG/svyLJg4RO+vCN5bikhm/SEljLdcqtX9ZL9DQPWzAHnA7rE7tPH6T/ualEFfq17Cyjj2R9QbDp4y89gOODY1eCPq83pStvzvzoNKoo+SECllCBO4YMcmyba0Ais/eYJiUDiv8S+RxzILDQAZ2Ee8xqHcAWAksF1ZAIqw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771825891; c=relaxed/simple;
	bh=5B2uH12fWkNLBwvhB4AC1A5SWMXFlRrD3cTFy4kbAC0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WeHMkrNYNL+/eqFGtGhbTfIea86SH1uRyUkVIVPMIbCIIIXPE6DU9pRSZgivp5yKoh4u14s5SbhqK79quVKQUMgsRNgF2hnIq0wTTWuNtE/pNLbDOwBz2TzhMaA8lwPvcfpnppFCDBPVbeL3ZXupviImQGr7jGUfUV/tom2wQA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZgYinORc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AHQ39gVc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MDuV6S891811
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:51:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YlXIqsOQwvU5Z8sYlXy96uUv0HGYahf5Uvea7D0cr+U=; b=ZgYinORcXQgSYDSG
	ezYaEM2QG0zIJB5sy0PpAchI9t6QfeFj5kcidIkM6mJp0RYUxto77ipt3cWDAsyU
	OVNk+W08QS0ij/wpoeCmSZ3XDkk/xwWgR9e4C4IVopnp5lZTzMZUdYkyxTCXecN9
	Er0Mv9Lcs688dAbWC/cJnrPNh8iZqrFjMeBaRVCLzDJTjql0smmpuGG8Ek09KRw2
	8CPJ4AEDQ3tldGn38Fsj/+8gjG/4ZfU32msry48u7bW+3yppDvoNtS4/0ndjn4Ai
	Boz8k3kp1LrUDFYdEJxgbxbYOTZa2aV7PjrJa3grRtTfcaQg6Ssude3j8HkZGTJQ
	QwbYsQ==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wbbg3r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:51:28 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-45efd455a6bso48303620b6e.3
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771825888; x=1772430688; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YlXIqsOQwvU5Z8sYlXy96uUv0HGYahf5Uvea7D0cr+U=;
        b=AHQ39gVcznvI3eImFCQpFLNbg6X2yP2Z/ouFFsunvwkzkJOkw91phizivC6zv7+Xvh
         8bkwTjnDUA8cvYU1NERg0vnom0unOObL8HXhjE/GfxYrwuvOy8oqeUhGxP50qQgqKYxi
         N4uUfsiuMLo7+03eLrV0iBB9To6iKIUA4BEtsM0BuWq9t+1yVDq2utG5BNqduzDseq5X
         7d3vn4ORDrIVBWwe0y8xO86KkHd0wA7/r9REr2uAVMXV59sfRTFccSGvV3/sEzzILwD0
         kSHQg2GddcnVOQct1uEVoKW66kDHrKEnpQV6qQBf99lM/iBRSmv+Y3p4CTs0aodvZ+lT
         nXTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771825888; x=1772430688;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YlXIqsOQwvU5Z8sYlXy96uUv0HGYahf5Uvea7D0cr+U=;
        b=fUNv57CIHIJrsrvHXuerX8MO8TaIcaKrcsva5/RwM2sPC/DZVpGSyIWSJf5cLftFr6
         q+A2IqbDBJ2OKXVA+fs77kmg/t5U0KxY91yej0VRLgNNcYcScGA91xKq42aEa71QjyoV
         /gU108Q5jzhh5HGFWX1t6HcC+Q7Gp+1ZnpOyf4pDKXVwrfTqmAeeLTXNAxEzy0M8p9UK
         EZJEquZ4cSio+BbTH5RTjHhNxE42yEV+dleHdkru+5ruPHdbi79WUSqw3q8QzMK5/j4D
         O/ZR3LKhGymkCh8GwAFB9PEwSTOXN79Ni9s92Ct5FcY8OCR0JYOGZ86dHnd0RzNfa6Sv
         g9gg==
X-Forwarded-Encrypted: i=1; AJvYcCWJvqLbQVcPPbeYlXbPi3WZLVsBqrvkSQExaQEqOwsC4X062ohrL+mk7SAxzzCvHe7WpxFZDu7m2Xmb@vger.kernel.org
X-Gm-Message-State: AOJu0YxtgwOQQqvuSjFtpl2GYQGOhztzETsi/ZNptsBAzi51JzFLRF3S
	EYGGEuncxDh/PNxj0TOkFuDjVANZ0hTtAYNfy28gNP0G8KtAIEe62/sSJlZkshCLRAjGmQSzyEL
	SJTaZZ2ToKp14J2jlGQKYWA2EGwoBbtd/EG8gRVR8hbIDAYOh2aQ9zVBSvmkOvepZ
X-Gm-Gg: AZuq6aK4ay5j/75eSP0X4RmrA6RSXo+Z6Z81SqsrVFdJvjbV43p3CJ3xl96qDMRbkk1
	x5fmFfCsSBlrXiGxEoAlbjzjAkEQNBHQsrwLBvVaWACTp/E2kq9k88dfTXvnMnJQS/4fYxh77DD
	OtPbyt8neSkODuRlUqKiJEXqulhaqGjyHJLCgGIuM/hkZfs2VHisXvtG9z9G+g3Qg5X8qlNNgGo
	/dW1kp8Ti/+Kp82tbhusA14kYSLeU5iapR3PX+hmqMdncLAmTaE5dBAXASDEcYE51Ol3Pk6t0CB
	YASfeSMjJJJFpLvV+KGUaPftQFR1E8tS5qn7TTTMoTN9LEXSrT5szkwovFZxYIItQi7eZUK4pCC
	GqImNh8dSeez2jEwJsFW44MieCvk2Yp3Q/tv6hFCfDZTXJP61fLN8RIVXudQQkIo+dI8Bxv2P
X-Received: by 2002:a05:6808:c281:b0:459:9630:3742 with SMTP id 5614622812f47-464461b5eaamr4040521b6e.22.1771825888223;
        Sun, 22 Feb 2026 21:51:28 -0800 (PST)
X-Received: by 2002:a05:6808:c281:b0:459:9630:3742 with SMTP id 5614622812f47-464461b5eaamr4040514b6e.22.1771825887902;
        Sun, 22 Feb 2026 21:51:27 -0800 (PST)
Received: from [10.110.58.37] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-46460661eeesm1987552b6e.13.2026.02.22.21.51.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Feb 2026 21:51:27 -0800 (PST)
Message-ID: <b1fadee7-74b1-4b66-845c-3a525f259a98@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 13:51:22 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9] arm64: dts: qcom: qcs8300-ride: enable WLAN on
 qcs8300-ride
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260122053624.4068718-1-wei.zhang@oss.qualcomm.com>
 <46d0bc58-2c85-4293-a8ee-480282b80161@oss.qualcomm.com>
Content-Language: en-US
From: "Wei Zhang (Stone)" <wei.zhang@oss.qualcomm.com>
In-Reply-To: <46d0bc58-2c85-4293-a8ee-480282b80161@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: UQ7WPNUsVw9B3yCJRDg1YRBQevlqNOd4
X-Authority-Analysis: v=2.4 cv=UZlciaSN c=1 sm=1 tr=0 ts=699beae1 cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=JAj8-Fn0YFEjOL2seJ8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=TPnrazJqx2CeVZ-ItzZ-:22
X-Proofpoint-GUID: UQ7WPNUsVw9B3yCJRDg1YRBQevlqNOd4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA0OSBTYWx0ZWRfX5hfQEezJc93Z
 ZE7Ohvl9S+xVYsJS8T2u6DtaI2BVJpKr53CJciSboU4n6sOZq3vXRMsX2cavAdWrhmGlGucZhkg
 DRI/2mHqfE8LRpZtEDXaIDuuh1sBInINDs4dxtCztKk2PlJYwzaSWHpLDMtpjq+beCnd3MQWEU/
 JwUhbC2RdiZnC9lfQCTW3RChh8Syg4vKcRTm6Uh/BY0w9t6ZZ7VPzDCCviB40HWgP7c1TVdfMQy
 /tFM1P4zaG0aVjOk8qJIIfsh+Uh1pWLVm/tba8fSlsTAS3TifyOtROvDFfoJsXl7SrXFzuQhNFx
 3k6oHkLpA0O7X1CfvY2oHQDNMAqVFFF/o7VvWxb7EIGm7AEYJ9ceKWoNjbS8VIRM2nXHrvSMtcD
 srLu3wGbp9trsUbCiHbL+MYu1AhIeixMFfe6R0h7TLg6lBWMMRg/yw7QFvDSVG9QfxAH0acquik
 2ONXuLu02T0RMnQhjfw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230049
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267226-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[wei.zhang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 06A4B171F91
X-Rspamd-Action: no action


On 2/5/2026 5:28 PM, Konrad Dybcio wrote:
> On 1/22/26 6:36 AM, Wei Zhang wrote:
>> Enable WLAN on qcs8300-ride by adding a node for the PMU module
>> of the WCN6855 and assigning its LDO power outputs to the existing
>> WiFi module.
>>
>> On the qcs8300-ride platform, the corresponding firmware and BDF
>> are QCA6698AQ instead of WCN6855, which have been added in the
>> 20250211 release.
>>
>> Signed-off-by: Wei Zhang <wei.zhang@oss.qualcomm.com>
>> ---
> [...]
>
>> +	wlan_en_state: wlan-en-state {
>> +		pins = "gpio54";
>> +		function = "gpio";
>> +		bias-pull-up;
>> +	};
> pull-up sounds odd for an active-high pin
Good point.
GPIO54 is the active‑high WLAN_EN for WCN6855. The pull‑up is intentional to
keep the line stable during early boot and to reduce the risk of a 
low‑to‑high glitch before the PMU driver takes control.
WLAN enable/disable is still explicitly handled by the wcn6855‑pmu 
driver via wlan-enable-gpios.
I can switch this if a different default is preferred.
>
> Konrad

