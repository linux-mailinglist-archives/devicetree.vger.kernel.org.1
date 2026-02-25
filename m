Return-Path: <devicetree+bounces-268309-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kO/zJ7jdnmkTXgQAu9opvQ
	(envelope-from <devicetree+bounces-268309-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:32:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33163196868
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:32:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A77A301690D
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C246392C2F;
	Wed, 25 Feb 2026 11:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kx0SZLFy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PAPF25ln"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEB4393DD7
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772018919; cv=none; b=pC/9pF3AYj6ULBOOjT0ea3mFa9n1g9yT1tE4qXYoxTPY7w5ECP5E/i4naYrA5psJvR2KNPc8CuzUEcqPW5otaba5FdvB84jLF+7GAocfR3CAJzPtI1W7aKJRwK8AOtXx2Ij6f0MRyqUqBE+RyYMWvW5MAFzKx3cDBZoaWxIkNM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772018919; c=relaxed/simple;
	bh=19w615IskjE5TCjnvGG3ZbxMlnmV9tvKUkDfVUlxM4I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hKlqvmfLTmCCT/PWi6HbkRNgfC1hTAw5uAtkhuqdlAXHwKIilda1P1DAcMnsJUWtTtvUCRq27TRb+kcld7e7zsytrn+aFzkflo2oBwyz9BHVBwh577P8BZ+sPJ3NLHuZ6g9A4VycYBxtKYW9Dld7d7ww5U7oMTwu+CU6E4/Dc/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kx0SZLFy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PAPF25ln; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9Ss3F2691966
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CByXCvN4Rqtl+FBdMITE6H+cYmdBCI6IUx2Z2zsQeog=; b=Kx0SZLFy9UL3geLb
	7znk2uXL0IpV6Qsb2XFefgUjKTFWVhCpKkEiCCU5rR6569Ma8gPVWiGrHANK6wnA
	hoFD7VYqi9r4S58NLRTqPXwHvMp5nKi9zyrOk+pndBqgBZCmZn6hEz0GZJ+xADnF
	9x+CVmo7lP+8qzuUIuR88KiRj8q3iTVdYnAO6Xaqf4ZJNoOLnm2TGcoosf1dDcbA
	DKiXiDr32M1reG8uJ4RXyTiR5hrQiby/DxrtRI9c5VikjJYSDKhHi3g/36RlDSBM
	V9/SKzq901g+RsLi/E/HEmlhsFWulSLIJVylBII8dzAh3/t7RUG+n58ew66Fd5oc
	SAK1LA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chg2gu1e4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:28:36 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-824b5637daaso3307765b3a.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 03:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772018916; x=1772623716; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CByXCvN4Rqtl+FBdMITE6H+cYmdBCI6IUx2Z2zsQeog=;
        b=PAPF25lnD3DbpiF8tTIV8Gjqz5cDzI9W60+pnIkgyWYZxS9wRv9edKluOCGWmjXKsr
         jRqk+zboUvgnjUuuS+YOWcCyjgTtoJcY4FuGiXIEooJbEaTG7LDIZ1+enwFjq2rScsAW
         ss+guy9xNB/Imfd2fcFeYuZDe48EeyDjJm+ZWC8paTFu0oB06QbyLLE5jgZxy6Urdg52
         GT3YHzPlwbw+2ZfDNDtXiUO0lcfirVGcT+YUrCwLx1sWy6/zTHSd2GyvGe2sN5NOjCCC
         3/cyLtv5DbnmEQeZ1q8Fgtc6ZcHQh/oP5/HVBPAhhzWniCzsw+ibWisxQOJ2k3kLjC5j
         PCXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772018916; x=1772623716;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CByXCvN4Rqtl+FBdMITE6H+cYmdBCI6IUx2Z2zsQeog=;
        b=GsuyVRW+McjbJMiybWvoebvpTDPB/HqxBGGK2Q5fiuR1ynKkWMVQqo2zuBhtIbimZl
         XfJEmWbEKd5N+Pix+XqgiZZLlcW0iZz7v+LlelIckpnPSEv6+PRV7YpllwDASJ5cQxnp
         gEoIZVVUrbY4k0vxtQzEafAJ+ZDTiKlroOr545hVXidXtSnFVqA2cGIyU/tKPWzBPlvS
         HlP4m5MUv7/CvvvlhhQtoLkcjd8R0m+QJuHq/q8wn1k8nyxM4QeO9X2IrQLEaD+H/fhv
         NcfNHiKn2WPR4PJG6a7Hf+ecLeUqMDA1WmKFquAOtBCuBZDL6xA69jYqAYt6KVnuREBq
         rPNg==
X-Forwarded-Encrypted: i=1; AJvYcCWxNwepB+vJyevwqNvLRGh6dsHd02auhcu2TKsZH/VZuaSEhPBIdB28Tw+aorAxIb3Z8enuMqvKrUVo@vger.kernel.org
X-Gm-Message-State: AOJu0YzhJDXr761r1oIsVmgNGmZs8ryn6TH1LsVdCSvxDtmsYfAwt78X
	2cVKVKaBz0UJ0M4axkVUvsuANPQhTLUY2Hi23prErZWWMTOyKU+3iHR0yDU7ysVOc5QfO12+Fhe
	T7c9PPXuTBmMub5VLCI7gXh5gHM43u5PUdKsYwxkgba7450yjVOuMEMY5cx6FXoET
X-Gm-Gg: ATEYQzxpyXqSW+mFMyrDOdXJ3iK+9JqS5kJIawvYib+80emP2xeQ/7PSRY+5Gp9Jfco
	M8TUt5iqOg5FDq2l7PMeSCasbOZAfdCYXeicXOhBwTZGyo6DVCPje7oCR8ghR4ZUBQ4tKp/C5Og
	kVAlgbJgApCQxbiv0SC5hPqdjQF6QuNvNcp+2FAvnUK6sK6Dhker/CDUYHvnapqySRTge3WCmHc
	KFCo+XWoBer4Y9bpnRBPUQMMhQjC2yOuRJV0WdA4swJp9v7wgs3bT9jpSvGPVqJe2ZcpOBN/yOb
	SaB8WvGlP+JOY/gGvMhq4/IXmtwSHK+3f5smAA/DEE0pfBP0lhJnBumgzkE4rndszroPnB3epqe
	sJV3cGH2Ugb+v6Ve0AmrDB8P+4B+6SJDYk1eYmUviZQC31Y9E8UWZSVsSHrDfRBn9
X-Received: by 2002:a05:6a00:2d9b:b0:824:92b7:63ac with SMTP id d2e1a72fcca58-826da8d75e8mr12374523b3a.13.1772018915991;
        Wed, 25 Feb 2026 03:28:35 -0800 (PST)
X-Received: by 2002:a05:6a00:2d9b:b0:824:92b7:63ac with SMTP id d2e1a72fcca58-826da8d75e8mr12374508b3a.13.1772018915504;
        Wed, 25 Feb 2026 03:28:35 -0800 (PST)
Received: from [192.168.1.7] ([122.164.81.73])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd68998bsm15318534b3a.16.2026.02.25.03.28.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 03:28:34 -0800 (PST)
Message-ID: <cbb7ba3d-2b75-47e6-ad46-c37f1dab7fca@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 16:58:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/5] dt-bindings: sram: describe the IPQ5424 IMEM as
 mmio-sram
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20260225-wdt_reset_reason-v7-0-65d5b7e3e1eb@oss.qualcomm.com>
 <20260225-wdt_reset_reason-v7-1-65d5b7e3e1eb@oss.qualcomm.com>
 <20260225-purple-rat-of-blizzard-dafcd6@quoll>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20260225-purple-rat-of-blizzard-dafcd6@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: GNOhJ1-_yBWACEkxU3NkhBzfcvJRvjec
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDExMSBTYWx0ZWRfX3YGmDqgYTLtK
 z26pMurBeWqzRc01+oHcLsdC01+rWOgbdOlnQkiTI8L+f3H/l/1jso++GjCH6SneLTvQ2sYNbvJ
 u0brjD/brihaI8cazc5do3yXV5XekFtAJNTJsAodeQD+nrO8o4CEvYOBG8JEa0m4gLV81LGvvfw
 weF+2j9aZE8UXE/UWwg6ttMi4cfJ1RroJ37G3z598+YEQ/5uJcHslYLCmrehXt3do0xnakk21fT
 j6mVTcLWd19CWi9OJGZD/JJnwbaPsXa4sHJw5dkA9sQeeupOlESyxyMmKVMwfkSWrw5aYgh+/wp
 K3lUqi+QBg30Tkb8G2Ne125EIao9JPVAwUrYNrjKzFMyB4ihHjONlFcu9zJyBLHlSpkgs5GEh6X
 n77/wdqmDX3Hf8NjbPTIunw9+YX1NdpHp1ZzKnvBeTPCD69iy8/PzRlDnd/nOVrxXo6jRwRtye+
 ll//2cVbTIUpLzm5AiA==
X-Authority-Analysis: v=2.4 cv=ftHRpV4f c=1 sm=1 tr=0 ts=699edce5 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=mNPf3JdYh40LbGEelsvk6A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=uv-h1xUkWEa4x-JB8yoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: GNOhJ1-_yBWACEkxU3NkhBzfcvJRvjec
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 clxscore=1015 spamscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268309-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 33163196868
X-Rspamd-Action: no action


On 2/25/2026 3:43 PM, Krzysztof Kozlowski wrote:
> On Wed, Feb 25, 2026 at 12:13:10PM +0530, Kathiravan Thirumoorthy wrote:
>> Based on the discussion in the linux-arm-msm list[1], it is not
>> appropriate to define the IMEM (On-Chip SRAM) as syscon or MFD.
> The reason should be here. I asked that referencing 3rd party resources
> is not the same as providing the reason.

Sorry, I misunderstood your statement. Let me rewrite as below. Please 
let me know if this is okay.

"IMEM shouldn’t be treated as a syscon or simple-mfd because it’s really 
just on‑chip SRAM, not a block of control registers or a device with 
multiple hardware functions. In reality it’s just memory that different 
pieces of software read or write. Describing it as generic mmio‑SRAM 
keeps the model simple and closer to what the hardware actually is."

> Best regards,
> Krzysztof
>

