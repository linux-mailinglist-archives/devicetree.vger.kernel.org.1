Return-Path: <devicetree+bounces-259820-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMypDjCUeGmxrAEAu9opvQ
	(envelope-from <devicetree+bounces-259820-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:32:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC6E92D5B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:32:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 935A83003712
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4879634164B;
	Tue, 27 Jan 2026 10:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VpbgMBTt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FPUUxyWS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F2A34106A
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769509915; cv=none; b=ar6Y9cAhXwU85Ss5NQY4aCVCnx2GJAK9XSfBdOdvC/KkTU6azoZ1ExXW5JYajjcA3guU1K7Yldw344VF3TIFLgPO0K4L43Ka1+1A6pSbl2lfMH+xpw6oLGYblWaplyaRiLknNKotm+Zf+dZJjyVgPwD4Wyk5/x1ApgthgSxsdtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769509915; c=relaxed/simple;
	bh=FK3EK1jV0Z7qak2c8B+ckxGBJSMVCxnxjKEjxmBcuGk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QhlbuDyz02W5LcXwk9HwC7K7DeGBXgR9S6ju697hnxca61R7ytSleHPi0yN2iPaqpT0sDVE5kRnW0MBXZOfWQrXHQ0VRCgvIITBEVfAhqs5IvSUe0sy5J3uzNdeUHWCyNcggfDvoll3xTZAe1wl3WSKqTIT0rAgGGYvunJY0BqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VpbgMBTt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FPUUxyWS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R7QKwf658531
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:31:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	37tcbhoPYX1kRiSMkZWCZCo/kuU+XTXOWQTT0gGxrLo=; b=VpbgMBTterYa7iOJ
	oxFdYYaxp3SrlWVXnmI2qwyqoUYZA4x7bkqjdxL/8lBVc6/cgYYgXtEtKAteh3Fo
	lJ7Bj+Lf2eX7GK4dUMYfZShUlXQVAf4D4WlWPI/bQu70orCj84ovJkfftPIs2f0b
	wYDIFsNphcl6NZkpDK7cARi6Nyn2PKoS55zHaGkTe2u3Z+8Fws1GyF9GzHAHzk3Z
	7DECCJ0G3hwobGrxP/C6vcFJdJioakubSnqnxiqeBQxuvAaK+zXwjRiGOthRJl34
	2394p2WaT9J3zCNBf6iy+Sg01UPxQFfWdQMc8kl968JMMKjN6R7OeJU98Up0bkbo
	YRBu8Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxryn8p6t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:31:52 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c536c9d2f7so181992085a.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769509912; x=1770114712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=37tcbhoPYX1kRiSMkZWCZCo/kuU+XTXOWQTT0gGxrLo=;
        b=FPUUxyWSOY/P9qtoUyrxsrhEfcKEn/IIM3USEvuSDzZEdsEUL9mb1iSBEsK5vWvCW2
         TPjSu5uw2gva/RJqKorI+2mNSx1cUmLFZB5bfPyz7wz5U+I/NeeKkZk9ZJPJXgIPy4Gx
         qTT3rvPaRA50kdoVAOmKPqrSUInEOfSoz5BbnNUdRHFwFxuIDWkJUgKtqpnZY/4CbTNm
         L8FAAEYWF4bKJX3TgB8KxKTrGsRAMTfuaE5fr7FGhpcAz6uOoGsXpoEZNbK03xqkyNiE
         DDMdoLqH/z78A3H3J9PYCUIhRvIBh6MJk+wN5moK3MCBuZrojaNLLaldncOvWSedtNA5
         2sDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769509912; x=1770114712;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=37tcbhoPYX1kRiSMkZWCZCo/kuU+XTXOWQTT0gGxrLo=;
        b=la2c7LgIUGZycG9JNqA5vfoPXjepCkbbEBZRiDB/SHUNmZQkzYyz/tw/jS8YL+pA/o
         fimEbcWuv61JBBWm0fRGjOc0P9rHtOd7M8j5J7MQ6CTJzSMNYbduds1IW4yocAJFffOz
         FX5cKyrRR35fuu4MSjB9aGjCHZrdr8p8IQXOMXPR6DzJiFHKHqgFHukynQ4VqeZttZAf
         MLzk7jGAgW+AHbGR7WqWrELPhW9rpYzyLC5MSX4n6vQQZU6MdTBGqoAdKyBQde4tgCRJ
         tnhAmpxEap/hdeRGV53IqHTAscL2mJVfsfz3Gd2Q+P7CKQNm8eSgHIB8LvkC4SybU/nw
         sSAQ==
X-Forwarded-Encrypted: i=1; AJvYcCW91AaeFJF+BjlXKSdP5V2YnSFn7MpwX4fueDrkDMTysjQwe4+VZUcar20CgyHvFVbI8z53IBFwke53@vger.kernel.org
X-Gm-Message-State: AOJu0YwWonbe6vUCwM7P712x/tcGQ35klJlgrz8+dmHdzPC4k2QCKWfs
	1omUhKDqqh4rMW8ljWdCXo8dQZiNxF30TREfuKg6v2U+Ejca9jvEQ6ZskN4+r10cVSHSwMAICa9
	//RmupyQJmDw9ZGFXeYhG7MY2RULH5ca3yiyxBNTLIRU53AnyBDcc0DCBABjZbKNO
X-Gm-Gg: AZuq6aK7MV5O/jjgiTAsPErzNLTjmZIJ5RWYaCeuU2o62aODRSGObFO5yz2us0QGW81
	79IJRzsb02aLwiO2x7MDbvT9iTV8+TB+OIdvCw5FBAm4Uw9EDMef8Iia8IuXDZysPhv5kOrcrfr
	6FbvJ/uawIQ3iapTyD3emnpT9RcIhXL5JxoNhK8sCF7CQIVKD3ovP1sbaTq91rM3M7oCc5eWEjS
	EQVUK1lEdtwyEM0z3JQTGaeGL15NRF7Tk8ybV3Y6gWzz7zEAfErI3hljpUt7uNv6ztiAjutbiCP
	BNghF3z2KbI923RM8ptDBvnHuKI5F5Xl0imqTF5R/GnJYgpueRRXfWYU5sEshnE5sqOwoiMZpNS
	jfKISVcXHKzoev3NvDBz/a1HJmNUaJr44eBt/SjoeGkFp8DpGFjB/9vJGJwIdmT/EbZU=
X-Received: by 2002:a05:620a:72ae:b0:8c7:f61:eff8 with SMTP id af79cd13be357-8c70f61f3f6mr10056285a.10.1769509912009;
        Tue, 27 Jan 2026 02:31:52 -0800 (PST)
X-Received: by 2002:a05:620a:72ae:b0:8c7:f61:eff8 with SMTP id af79cd13be357-8c70f61f3f6mr10054485a.10.1769509911500;
        Tue, 27 Jan 2026 02:31:51 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b766733sm758314166b.55.2026.01.27.02.31.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 02:31:51 -0800 (PST)
Message-ID: <b3b481dc-498a-4247-88e5-f91b4205e401@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 11:31:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/7] qcom-tgu: Add TGU decode support
To: Songwei Chai <songwei.chai@oss.qualcomm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org
References: <20260109021141.3778421-1-songwei.chai@oss.qualcomm.com>
 <20260109021141.3778421-5-songwei.chai@oss.qualcomm.com>
 <beb63598-a7fc-4e77-a68e-8622fbd93972@oss.qualcomm.com>
 <66aae641-a340-4f0b-9d68-535ac296a335@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <66aae641-a340-4f0b-9d68-535ac296a335@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: cqIqbMKOqPL8ObeuA-oqt1znTYoAgSH3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA4NSBTYWx0ZWRfX/NQCVQMjPPKH
 8mNkoN01Z88xgwtpJLlP7QZ6F4KtKbERFAftS2UCTtDxojmycMzZE2088mubgq+lBHT31HyrV2c
 enH7jR01zzpa2iYL+corTXkSxCX6twdBEj+qrQ9rAWjkQc89IPGC9jiv2baxyuv25DPrMA5rUlz
 GQW1WwtFZUOZodczBRBo1wrYgNwTfuwyzMuT/LIyDTqKuomeRjV6iYitDZCxEsHvdEyl1JhXs7J
 xLRV1vkSTmwDzeSpQO8Yn0KIGs0lWN0Is5A3/77sZIG8y/4nIjAstIUZzdGM2DjnTIFvpdrvO0o
 uVFLGJZYg96SohGqmYP1UxIZm3ruzjkFoJsw4eaHmr++sjIDxfBaKPQw52E2ClRoPuJ02+bJvmo
 /QYZKkGLL+ffX/PNxOzTGlMiJ3oWJfxr+QzU+vmSAWvtrfM70vpEaixEtHSOpGqKHGXAEykOook
 Pm2sjQ6vE8dn88X8+yA==
X-Proofpoint-GUID: cqIqbMKOqPL8ObeuA-oqt1znTYoAgSH3
X-Authority-Analysis: v=2.4 cv=FsEIPmrq c=1 sm=1 tr=0 ts=69789418 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=8EjekOa2TPCR8v-6VwQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270085
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
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259820-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
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
X-Rspamd-Queue-Id: 6EC6E92D5B
X-Rspamd-Action: no action

On 1/27/26 3:34 AM, Songwei Chai wrote:
> 
> 
> On 1/13/2026 7:13 PM, Konrad Dybcio wrote:
>> On 1/9/26 3:11 AM, Songwei Chai wrote:
>>> Decoding is when all the potential pieces for creating a trigger
>>> are brought together for a given step. Example - there may be a
>>> counter keeping track of some occurrences and a priority-group that
>>> is being used to detect a pattern on the sense inputs. These 2
>>> inputs to condition_decode must be programmed, for a given step,
>>> to establish the condition for the trigger, or movement to another
>>> steps.
>>>
>>> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
>>> ---

[...]

>>> +    switch (operation_index) {
>>> +    case TGU_PRIORITY0:
>>> +    case TGU_PRIORITY1:
>>> +    case TGU_PRIORITY2:
>>> +    case TGU_PRIORITY3:
>>> +        ret = operation_index * (drvdata->max_step) *
>>> +            (drvdata->max_reg) +
>>> +            step_index * (drvdata->max_reg) + reg_index;
>>> +        break;
>>> +    case TGU_CONDITION_DECODE:
>>> +        ret = step_index * (drvdata->max_condition_decode) +
>>> +            reg_index;
>>> +        break;
>>> +    default:
>>> +        break;
>>> +    }
>>> +    return ret;
>>
>> The only thing your switch statement is assign a value to ret and break
>> out. Change that to a direct return, and drop 'ret' altogether
>>
> 
> I kept a single return intentionally so the function has a single exit
> point. This makes it easier to extend with common post-processing or
> debug logic later if needed.
> 
> That said, I’m fine switching to direct returns if you prefer the simpler style here.

It's up to you. Do you expect you'll need more debugging or extending
of this function in near future?

Konrad

