Return-Path: <devicetree+bounces-278202-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IM78CtwlvWmr6wIAu9opvQ
	(envelope-from <devicetree+bounces-278202-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:47:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 988AF2D8FF0
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:47:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 86252301F16E
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B0FC30594F;
	Fri, 20 Mar 2026 10:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gawJDuI2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q6gi3ZPO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12CB387589
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774003623; cv=none; b=BuCK4C7MclRopYl2mbv0T1/2I5PaF+opCf1as49vXtqKfv4lcTbuEQ5+KSFlWlzEjW+KNvKNni2kmUSSSCVlEfxGnzzorBQn2w0Mv9vQKHZh3ik8C9tqwPsIzTgf+NTxNTDAUgrFD7W/o6Hzw/9EvRC2mLNPd/sgXP8pNhZ1g2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774003623; c=relaxed/simple;
	bh=WWB+h35ua9nB3OJoDSz9HuoHu171PsrTQDFCtxhPi0c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f8EVeYh9+zne0Dj/nbjzxGoPDcDS4GA2DbRGD3FB3YjjNn4BuDq3UjGWKy+ubCJ/cMtceDRt0cyZ4hpQvhCrUTJO52DtXuROYj8WwIq35IuJ2nglmJWmq8H0oT40R3xVhrWRXYH/SLG/Yxq6N22Vr/X6/XxZT/pDcwV+1/UVaho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gawJDuI2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q6gi3ZPO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62K2XlCo2253897
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:46:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OfGl7Fmz0LDuQajMkoFQWosA+adFGbSTETK37xVpUaU=; b=gawJDuI2FIPDWtdP
	344l/Wt8DrAPLHYjBfvh7GHOb8RUGo0msfjbQ34LjlqCEGPSCQr4lgZIlKYykLo7
	xJCfeFm6f/o3XW1wX4eod99WcEmLRcrbIRt+ZFAIk3wI53TOeSOdd7JaXVCf/MFg
	M4Mp6qjBWRkFs+oS0IahaqqiQjcdD0/0Hoohfy3MXM1L6RB+iINP0BAll1grBjyd
	CuIFDUPSL6ca9B8sLvuWkW09cDK1wezP9sgIfIpTBR3/eT7AY8srVuw2wCQSGsi9
	luplZkxAumNOLKVNotK7lDapvkLyO1X4UMQU47yRFcGk84MWhzSA//881llUk4+Y
	fqA2XQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0mcmasc2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:46:55 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8230d6d54a5so2396232b3a.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 03:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774003614; x=1774608414; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OfGl7Fmz0LDuQajMkoFQWosA+adFGbSTETK37xVpUaU=;
        b=Q6gi3ZPOZiYd9TFQ7fMCM5XLfkEm8tUOy/4RnyzO67/cUEcQbk8t5FU592uab2FTfR
         te4MPxK43WF41nWzYpg+X8OpHlbjmqfRx8Ir/Fp2BAlTz98MYhu/0dQorPGvrVmN77hW
         ye3Y6XxLy+bkTJMQ7GC2NUqpIngX48I8By/VgV8qOw1U6tJoni9/ewn8Xj8QWm0ezexI
         DMcHij6ZK3RxkLYGx0t4uJ5GCwbIPnwPRUyE1O14DKEFxemOuqaU7VH2pZ6RPtl3jmAU
         iw6xxws4BVKNGtLO1GzS4Z5QTifucfq4vpu+K477n6a+6/pQSHBqgiQ536E9lTD2fOO9
         Z5Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774003614; x=1774608414;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OfGl7Fmz0LDuQajMkoFQWosA+adFGbSTETK37xVpUaU=;
        b=LL8BgyRDVXVBv4NRg45p3d3uPg9N6rnYCldThfHjrz1pyQqcJ7+wD/CbCZOHYi0M6g
         QQgj+3LURTV77rW1ZblpTx3b/BxRULyO1t7DrQdnCGqKqNmlHAmvemz/DMo5BjWT4I6E
         Z7NkjEmMf94IvHzgk905LnLFFG6E0NUvpzUgVso66yQwjQiopmuGzL1wisBi6/GqJ5g9
         s9EcVjw/m7tC39y4b/cwD6+s1S9jFMfldV8lybNADDk5Plfp7rLCJXzezTxVRZ11bUET
         D92hcOlbHvxU3QnUpzEY9olrPpmn7ggjRvTjcilVxXAT1JpZkCqODhgPip7NXwl9K/aR
         phVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXW8c/gz3mH9MwpRRlFdNzDKgwoefajxot7PiSXL4tvKkl9/iWnb6JmuTBxu7iPPAhRiPVlDFGOUyA5@vger.kernel.org
X-Gm-Message-State: AOJu0YxBv3l71/nJGySQXcPyJ+tvIq5F/Y40vI1zlU3CqGqZQ460owqN
	/w0zNqTR9PQeAQZ+LKd8AFrgZX/j9QX1KbzBHYV3VWzv489A7OZCRfbCtoOUloUKueGJaZXzZlF
	FTHGUcFU/MsAFLymLfzHjKVyMZdGtRfKfZ+dC0iZU5PbaASwl5bjeuGv5m3xMlJMm
X-Gm-Gg: ATEYQzzI/28XZbEw43EWtXzHCx5+LAfCGxLZAiKb5XeULx6gbAC11veTesZfd2C33xQ
	hRB6GvTZg59zrhhw7OmnJUhA4/KwcWvKttWlS87FAz4HMsOrrbTA5kf+6qbYWqPXXUl6yWc5DwW
	OLcnr9ymjsVCeSaPfO7eQZQmzX8E21/oduRRaeeCYS6y1WdUA58rQUHk3iHmkbE58Z/Lxmpv3yG
	arbKi8h9XMjpZixX4QK1HK8Grf+7vrtBvIrj8ctMR8Dvp4YN45vW0rT90pb9zhTxv7CelF9Or14
	dNYChfaiPzLG5ppKEFk+6bhKtMFJ3vsVBTMq8GAK/xPil73tYdY6MMK4gWcoHrF49AkRdx9cTs0
	HHitggR2qn5lKNBmOMjkb21d0BX3lJ0/Wfx26e5/1G4aiu0/FRuyu4safjq+cT8aUQdLosJRgbx
	wghaO2n6M36uI=
X-Received: by 2002:a05:6a00:a90:b0:829:f777:dad4 with SMTP id d2e1a72fcca58-82a8c434a65mr2054040b3a.29.1774003614321;
        Fri, 20 Mar 2026 03:46:54 -0700 (PDT)
X-Received: by 2002:a05:6a00:a90:b0:829:f777:dad4 with SMTP id d2e1a72fcca58-82a8c434a65mr2054007b3a.29.1774003613832;
        Fri, 20 Mar 2026 03:46:53 -0700 (PDT)
Received: from [10.133.33.163] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82b0409c11asm1583505b3a.30.2026.03.20.03.46.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 03:46:53 -0700 (PDT)
Message-ID: <f32ad04f-450d-49b7-8652-b8357accb6a1@oss.qualcomm.com>
Date: Fri, 20 Mar 2026 18:46:45 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: remove the disabled replicator
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260316-clean-up-failed-devices-v1-1-f22fc9b072ab@oss.qualcomm.com>
 <85050b04-c67a-47f5-b562-ad890a8cb1b1@kernel.org>
 <2ad93fb5-849f-4fae-b64e-8f296b408366@oss.qualcomm.com>
 <aaf4d504-432e-407a-8b6f-08401a25f680@kernel.org>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <aaf4d504-432e-407a-8b6f-08401a25f680@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 4KucOuRuZf8PA9j5spRP6YArkQXPX9_h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDA4MyBTYWx0ZWRfX/zyuUWy1OwW4
 S+tJwFYrNQK73sMTbjM0LbZyoN2uCqeYR8vd8MlJwbv5S0Kcys8wstPeZWhGhoMPCN/hMX1end6
 MOx+/TQAHqD5725xA4TJVECCr2YcySxg9jg9LnCnIqDdHTzjbBxe1iC/Oknj9eYlOUF0Qo0v08k
 79jz5V5aFKmeLTqSi/goUNiyQoyE7t0hTu0Ohb36rXqm7IrasIc9oWP9o8wMKfh0GbYzXuP4yDZ
 JTNnJ5sXBoFHPwRjZUej4sIGdckGjdyJgXS37HRZOfekhmiPriZsbRfkDmEV/OQy2IMZ+226Xv/
 NKbmS0i4MVfSOfTKIc/LKmNeCEGMx3JGnjtQK5VP1NAADjANsqaUbAcqOIkmbEtXyH2LnoYPdo2
 nSiNH6HZzx7Y5lJjmfpoB5xTCfAmp67eg8ZXIvJz3QMKCVMvSE3dVngJQn30AwxStaTgp/UTp2K
 wNR3nZDPNRKkjPPigbg==
X-Authority-Analysis: v=2.4 cv=BdLVE7t2 c=1 sm=1 tr=0 ts=69bd259f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=LGUaL2YE3l8aayJFi6QA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: 4KucOuRuZf8PA9j5spRP6YArkQXPX9_h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200083
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278202-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 988AF2D8FF0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/16/2026 6:15 PM, Krzysztof Kozlowski wrote:
> On 16/03/2026 10:33, Jie Gan wrote:
>>
>>
>> On 3/16/2026 3:14 PM, Krzysztof Kozlowski wrote:
>>> On 16/03/2026 06:31, Jie Gan wrote:
>>>> Remove the disabled device that blocks probing of the connected
>>>> replicator, as the replicator driver validates all connected
>>>> devices during probe.
>>>>
>>>> kernel log:
>>>> [   18.540971] platform 6046000.replicator: deferred probe pending: (reason unknown)
>>>
>>> No, that's not a reason to remove a device. The device is there, right?
>>> So fix Linux drivers if they cannot handle it properly.
>>
>> CoreSight devices build a path from source to sink and defer probing if
>> any device in the path is unavailable so the deferred‑probe behavior is
>> expected.
>>
>> We could add logic to fix it in driver but it's much easier to address
>> it in DT because we are knowing the device is disabled/Failed in DT.
> 
> Nope. You got comment already. DTS represents the hardware, not your
> current Linux driver status.
> 

Thanks for the patience to explain it, I have submitted a driver patch 
to address it.

Thanks,
Jie

>>
>> It's my fault I didnt remove this disabled replicator device in previous
>> fix.
>>
> 
> 
> 
> Best regards,
> Krzysztof


