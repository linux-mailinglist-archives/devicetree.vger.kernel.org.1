Return-Path: <devicetree+bounces-266110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNs3IrtelGnODAIAu9opvQ
	(envelope-from <devicetree+bounces-266110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:27:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E928714BEF4
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48F8C301412F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:27:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E602339B49;
	Tue, 17 Feb 2026 12:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k5H+jIen";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N1LMo8BT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8DC3396E8
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771331255; cv=none; b=udLFtOFAr2K7B1llyKkEhyKstkpAcQN77pHVnBEcox+I72u978BvMb9edpMLIbSqVrr53hwEcvCiZVLAJ+IhmfYLe4ptM7mru+MDmBID9kEaTiIN2XBisYHS+zbZJ1wCfo2WqLMXseml6X+9xYnE3PoMXZO17aVWDUNxewRoacs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771331255; c=relaxed/simple;
	bh=m0NqDjKQV1IiIKGmVQ+XSPW7frvUNll6XnPkvEFYuys=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fhqq0ufVoMcf97oB0jRoO9PUogEIJhDrv6KLpxyZhP60A5dTrNCuq2TXq1JW823Xqkhs6a1RXWUaaQKDllev2PQHJuShSAWaRvvXOfsqX/P2ksf+gkYXGxwxkugv6Utljva//mH2maj//2wApnXnlaDkPBlzF5qiCmfhfPOXXPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k5H+jIen; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N1LMo8BT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H9CsmG985203
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:27:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/LfJ7FA1LOB23kUU1Y4jX3YyUXIsEdCQIqdfdeeOUEo=; b=k5H+jIenj3/xVCRl
	FEZ9XE2GHes6V4FXR0DYes1R71c0A/zS6JptXpxlzpRWdqVWbxADRG/w8BrFXWIt
	ni8Qn4hfH7d8yBSAUv4uHXBVxysiz4j33+9ziCkXlPwZQtJ+3oqZ0zUcfFI2azHs
	iX1YWMtEjqpX+djxKVs2Bb928D0fuVkQKuJBtCOD8AsgkzkLUagW0DbIKKeGNeyv
	QqOfeCOQDkVD3XJxTZF164XBVsbsY5tlBrIrZTbP57To0AfBGHSYV2p34AqlUYYs
	srthpdRECVm5jVWejyS0wjOeQSDc4UB3/Xcfc7ChycEfbbylK4tQ49AUvFtLEoBR
	NCIZqw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc7ap272a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:27:33 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb456d53a5so318807785a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 04:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771331252; x=1771936052; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/LfJ7FA1LOB23kUU1Y4jX3YyUXIsEdCQIqdfdeeOUEo=;
        b=N1LMo8BTi2NFO/K58OTyGFIIPHZtDTbf/+4yWD2yp9zdhL0jXghdF8LdGdhNU3b1N7
         bKmxVDO2brrWn0PbykX7mPeb2WLg2indykGXTNBhE2KC7OoSFt9T0tPHjeHZBoCbvi5V
         oVWSP5VXizFFriCDNd6C1AtPiOqdGJF4EBLCGCY8hBNF8yaWFTiedZo9YDCP9yNl1XKR
         WtlNvNyhsBpKphdhHrF3C+waNe2u0tQaZGI4YX7V3YkN00UZ2aSwGvhM5+s1W8qew5e7
         Z5iieeuusBIBauV9ETsCZkqkMQ31PNc+UWNf1B5ra9K23Mdzl23pg1gP8LAADmY19kUO
         5BTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771331252; x=1771936052;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/LfJ7FA1LOB23kUU1Y4jX3YyUXIsEdCQIqdfdeeOUEo=;
        b=RJYTh4qSi+hH5fINVz/XF6LLIem6hsk5zkZds3sszvYH/tBW0/QUcuIPJLQDSmQdrt
         dCHlixsxJIsqeX2VkJ4hQ2jFfQgIkYX7Zg1CJehCbTc6MRarwnkQGrqMZovjxpBiQm1Y
         jcaayEAoi+zkATorykhGPoC78q5Y/OADDbmNRas8mvIC/OstRXifzGV5zajmYznyURfI
         2ryZv8pzIX1g7qsvznLiV0buMde9esKHJ/SWAu2MJv5sQ1QunilvybCaUlzgD7gZw4a1
         MxdZAtWFQBy8gZyMoh3lrS3wcywshckW+4RNhKKJyS6Jaa98stttPq2C+kUQ/59WhvWJ
         bptg==
X-Forwarded-Encrypted: i=1; AJvYcCWDdvA1mzP1rv635tGg2BtiJG0h6FooD68HqLCCfh5jTFWXJ+0UtlwF/pN64X5VKNDlcpOT8KcyTlx5@vger.kernel.org
X-Gm-Message-State: AOJu0YzJBxx/RmPPszqzfWVQUIncqDxh10wRVLKoxVgxy8EVk03hx4Lb
	qE55QJjYmU3Sapp6dxwkb4dtTPDultnYKXw5GsPkpQTUHfh+x+g6sT0dSN5GHvgrpguTCSqYgyB
	LyF4go8MuVfQVnRCqJ+LLOwAnaBWfGd6B1/Dj+fAs6nFl0rj3gAzYPjv+g3u6oOuY
X-Gm-Gg: AZuq6aJ4iK3MPbix9PbeuPgZ6B1HuEx4C06CMUVcEs82cGqAJ+3orGVGHUlWZSNe19e
	NR3HeJgQSI4mcN6d2fapq6FOy0LWro7Sm1PwC5ugw2WI+JPh3NDrAEpDMHx3vBqsDGpmlXARxDs
	T3nicVyIooPSVoJjP+9eeDR8neAjJ6X7XAQ0yf38XVrH6FOXCmt0AuIbGXisqmpyOefILNFI1PK
	Stww5zxHf73coVc/jET0tXG1ROxj3r287eCJTGCUYNqm9QdBgLCWp8n3rSm0zJ75SgCG915WJzs
	ipnKLGbp9sL6vg5S8S7aYLzZUFfzCsamEqOfXbtEEo7XsYzRQ7FCnvkPCgh9yMznXPsE+V+8gyQ
	JD+6Ab83oUlITexZ9+8bDtBJKik4uEfwNeRYeecxjRI4HVOoOk1k/UIkusUtHEB8dqfZpEE1K5X
	6w7Yk=
X-Received: by 2002:a05:620a:28d6:b0:8c9:ec71:b224 with SMTP id af79cd13be357-8cb4074ecafmr1366941185a.0.1771331252644;
        Tue, 17 Feb 2026 04:27:32 -0800 (PST)
X-Received: by 2002:a05:620a:28d6:b0:8c9:ec71:b224 with SMTP id af79cd13be357-8cb4074ecafmr1366938985a.0.1771331252148;
        Tue, 17 Feb 2026 04:27:32 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7691f26sm344142266b.58.2026.02.17.04.27.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 04:27:31 -0800 (PST)
Message-ID: <bd10782b-444c-417b-bf27-9fc6a2117567@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 13:27:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: power: reset: qcom-pon: Add new
 compatible PMM8654AU
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Sebastian Reichel
 <sre@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Courtney Cavin <courtney.cavin@sonymobile.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-input@vger.kernel.org
References: <20260209-add_pwrkey_and_resin-v2-0-f944d87b9a93@oss.qualcomm.com>
 <20260209-add_pwrkey_and_resin-v2-1-f944d87b9a93@oss.qualcomm.com>
 <b0ade3b3-f2b3-4dbe-9e21-920bbda1d077@kernel.org>
 <20260210082612.3xakor2yo4h3dbra@hu-kotarake-hyd.qualcomm.com>
 <k2eu6lvokuh6pilmipztfqufffkmxa3zylsxz4lad45ow255no@fvocedpr3qwp>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <k2eu6lvokuh6pilmipztfqufffkmxa3zylsxz4lad45ow255no@fvocedpr3qwp>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEwMyBTYWx0ZWRfX5T69YIqlt3vN
 lo/5UVwcRb1FqKE0qJQPKdrbUAULnjOXQEPr+QLuZ1HdmVv1g3fDwdSp54OXHEzxTHQVjbvuv5u
 n33t312nJ4AolJSlfAfAyiQXGfZXpUUX2xKP2kYb/NcX67rdebm9J7iullZiQWtGJJQPUeV2DTA
 bVlGYJsENXuWWDHJk1fKhRzXEuVR8iPl/4tap5mvtVsG7sNIzWBX14eOAu42Et++VxhWNY9wALW
 bD5TYUA1c2EX3WMK9MZOuocE0D4aZNc3uon+uJJj+HBDPQgy7XrcK/IxFaR4DnmCz81PBRpC/ut
 f6EKd0HgW6u0I/XKKnsQj5vK6n5q/+mnG5/rQEU+ITvB+t/8q/jhwSrR4Ezed3DE2TUnMCfCiqi
 5quuib1JkZqaESjF7M2cXGMNjMqyZ5M6CiBKMqvzkMv4Bn6Kf6vk+fQNXrakqkNy+f38cJ5ONPY
 yhmOM4Nhi8FrwhLuIKw==
X-Proofpoint-ORIG-GUID: cgk0Ny_uZcuQL2Q1n-v7sL9X4bNT7hzJ
X-Proofpoint-GUID: cgk0Ny_uZcuQL2Q1n-v7sL9X4bNT7hzJ
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=69945eb5 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=TmaBVuYMn6Vj7WTXxxEA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170103
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266110-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sonymobile.com,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E928714BEF4
X-Rspamd-Action: no action

On 2/13/26 7:17 PM, Dmitry Baryshkov wrote:
> On Tue, Feb 10, 2026 at 01:56:12PM +0530, Rakesh Kota wrote:
>> On Mon, Feb 09, 2026 at 02:49:24PM +0100, Krzysztof Kozlowski wrote:
>>> On 09/02/2026 14:23, Rakesh Kota wrote:
>>>> Add the compatible string "qcom,pmm8654au-pon" for the PMM8654AU PMIC.
>>>> The PON peripheral on PMM8654AU is compatible with PMK8350, so it is
>>>> documented as a fallback to "qcom,pmk8350-pon".
>>>
>>> Drop everything after ,. Do not explain WHAT you did. We see it.
>>>
>>>>
>>>> While PMM8654AU supports additional registers compared to the baseline,
> 
> I can't find PMM8654AU either on Qualcomm.com or in the catalog. Is it
> an actual name for the chip?

Right, I would like to see some clarity on that too.

I see there's a PMM8650AU and there's two variants of it, perhaps that's
one of them?

Konrad

