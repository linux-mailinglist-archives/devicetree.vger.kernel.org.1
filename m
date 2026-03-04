Return-Path: <devicetree+bounces-271113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EykAsBLqGmvsgAAu9opvQ
	(envelope-from <devicetree+bounces-271113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 16:12:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C45120252D
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 16:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CDD96303A249
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 15:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E2D333F8BE;
	Wed,  4 Mar 2026 15:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QvLhR/A6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JCnc0zdP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4065F33CEA7
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 15:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772636586; cv=none; b=iUJtSaeRJeURzmsWRSjm+c86UrcIJ2I0rvTUcWmm6Gw79/ZFBLqlDWF3tX/JmedAMAFaCDrPj5oHP7VSVyLwuLwExu8DMlRJeizQwQH5RQ7qy6hN3FEXr/xvVJSEBNGFXDhPscFXv2PXofle9gcc9jvjCNBk76ZNIyVgbVx+Rvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772636586; c=relaxed/simple;
	bh=uVM0hFJD90JywvxgR9SbXm3R6fTJLlHTk99xipDVlBo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gIBmzo2QU3vyqxz2KGeUcSpeJw+ctkELL2goYoei1CQ+jJPzlSc1r+CnEgjOQa20BvWiB6j96OHOYJKkpdZKw5J8FzVpwgAGvm+ci0eZ1FxK4bITQjCxFi7fsS9Dpbz6+Orh7wGzBI8irbxQ8Cy2/qOpgzkqvZi+CHRWf9z6fK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QvLhR/A6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JCnc0zdP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624D0UID957009
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 15:03:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YznXl/xLkt2ZLJrpg7QUQar3vLrClyj/Q5njw19yf5Q=; b=QvLhR/A6+9khpe6+
	b4vHB6T7iMRvGXskX98wfpn9dAejPUUeJMlSwaIsVZeoAkwVpfWSItrbmaMjGA09
	5ik3jPElTxpL+AYCdmDXbTysrwqCr/T0hyLr9AZn/x54icqD7RCpaLfEdo9kFmi7
	UQQipK2isZvsQdtVa/Djt3hfezDX4742vIThCYVJpC2dH7wviDJgnEOM4ZReIQLa
	PhitXKj97DwdZGXXb9viYdMO7L6TIXmJzbeONOWQmSKl7fxnXsmg1UDVfe43aVoR
	f082F8y5lj24vz4zTLsRnwP4iiVnDVL4sdbpAA00PbLrTBKciNtRDXehjfiX2VIJ
	EAxgew==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp6qgb9ee-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 15:03:03 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8295eba6cd2so750305b3a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 07:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772636583; x=1773241383; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YznXl/xLkt2ZLJrpg7QUQar3vLrClyj/Q5njw19yf5Q=;
        b=JCnc0zdPddIyWpRVWb3UzUX62Eo0XFaJ0Gi7fk+nPH7k+snwdO5yWcBIHSCWbJXpiQ
         3EOSYF7Zjvu2tiu2S2+FtbDqgxy0v0bHv/BzXstk326JQ6NcPPKQHRq9Tp8MB2UxRW5A
         o4pf8+Zc7fwrD6RCcTYEzaU/IGrSf9rphPMAZ8nnEi7EkXI+aqPVl4gxzKk1Icch0MiY
         PDL+DbdZWkb/g72B89OOOfe2v/hnjoA6ZjW8fh5Ps5ULdor4dL0Epo9SnXAUhZzB/t6c
         HH6rvvL1hNQ+glmUONEee1TLHNlqRo6809slWqwm7RCZyGBUP9Io/i/1vAFHidGM2eh1
         DomQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772636583; x=1773241383;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YznXl/xLkt2ZLJrpg7QUQar3vLrClyj/Q5njw19yf5Q=;
        b=rvsVV0nRhnm8uVL5yMpYv6v68zAd2luI47pHi4E7wYhxPruBsN/6f86hvoRXhrJEKt
         l/3OLFEHQmDCkAj4ZP0yMLdBXmsTsLvP4WIaMuWEVJl36zSWdq8zYLNe5MznWRt6Wx08
         24MAajlMksMhbz+tReiecFsOnwpRfBE2bgcC/waKy94fUpfKqiRepHWOzh53JiwthBQJ
         UweuTjUPok9i55x3DRu09ngxsZXTrymiFOY+wm6yMxiboTXTgnNe7D6qJz6qLi2CpW2W
         39nFSGUE4hJ95jNrNKrGNES7ZLAKh0Egye+8N+4C4dllXYwBMLFdRuqpEmGy9/Y/TmjG
         m2nQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9hpSY9U/PQZhCxmK5ij8PoX/qmXb4GCQ1iVEeBxp/GP7K0QtFq8uLOSdHXo2BLVZLSYXy/4Roi/ab@vger.kernel.org
X-Gm-Message-State: AOJu0YwxeVmaWY0Is/UiYg2WuN+FL6GPGFzx25MSPoB8IfXoa0LAmWFU
	1fsrm9gkOc0Re0mgu/YjMGy+N/K58Uuu3tjzxAJlsfQALMTrGne5L1jTwyFzW1Kb6hKtkJ0OhV4
	SvHNn+8SM9O9BnpHUF0UlsZEvrbCSSTwqUno1ZvIi9W+z3PqL/iYWhY5F/lPZ7V5m
X-Gm-Gg: ATEYQzzARlrTQJocftq+vLIxDYJG64BaBW5VrjxH5iK4UMDtPMUfSyIV0xD1i/NQjzn
	j0IOoEPMitb1TpioSAqdQN99bllaQJ5/djZ61DKvATKkOrLxkavRuFCoJDr8GnnpFl0ZDpO7+e5
	6lYy53k4SpvDuT1gyjw46wYied+5Qp3yMq5VB+oNczhKorqit6Dlpd/IppmtZN8hg6Jp3NEnIs4
	TU+2x3lOnis6JpPi23Dqft6YTs7WUL+fP4crX0nJ103o0J5c2xuoyFME2o6KPO+FH6LPcTzfHCj
	rCXG/N3qqQZRhu+EVKgNOePhimafo+WvTpGdFOZNZlPprT0XvpRg6iKTUc7meyLXY7qhWXOUuzC
	o40wJV5ITLf8A8Z3RkVfw+HNyaGUYuVnAHMPw26z6+wALS1wP/v6DQQ==
X-Received: by 2002:a05:6a00:2917:b0:81f:4529:83a7 with SMTP id d2e1a72fcca58-82972ba66c4mr2094261b3a.15.1772636582959;
        Wed, 04 Mar 2026 07:03:02 -0800 (PST)
X-Received: by 2002:a05:6a00:2917:b0:81f:4529:83a7 with SMTP id d2e1a72fcca58-82972ba66c4mr2094222b3a.15.1772636582281;
        Wed, 04 Mar 2026 07:03:02 -0800 (PST)
Received: from [10.204.101.56] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739db1d6dsm17136424b3a.26.2026.03.04.07.02.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 07:03:01 -0800 (PST)
Message-ID: <b0d04ced-8f3c-4bd5-a5b5-0b2f12aae25a@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 20:32:53 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
 <20260227-kaanapali-iris-v2-1-850043ac3933@oss.qualcomm.com>
 <nen35eqhwbikt7jlpxn22hvur33chxibrbmzd6awo425i3mujf@f2cbncxpcatc>
 <635cc998-d530-42eb-95cf-99b0d5baab68@oss.qualcomm.com>
 <fjvug6snigssgheuduzjomzjq6apte2ggixqzjzziwcycee4l2@irh2mkholacy>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <fjvug6snigssgheuduzjomzjq6apte2ggixqzjzziwcycee4l2@irh2mkholacy>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEyMSBTYWx0ZWRfX29uyyH3NJxsm
 aS96umPmJlDL6/NV9/WGI5rF/hzks8o86NYDq3gvcjGsnoRHfsiyw73S7o2t6hsd2NHzFotjmtq
 P0ilW/24Z6GLtysWL1raKcjA3RzqH14KOJRfq3dImDX5uu7ZIT26NNIz/5wtWQAmI2FaRL2JEdO
 I2GfXfREIHxMhWvylTV4b0LxEMQ3i1n2rRPkxPvDUU8XDLGO3heE9c6tObyu3TNGFdLrjpCTxim
 wNZEmMnP5a1oNlcpWTV6+CjyvVYVkCl8JQliFw99t67HgYUH5M7L4yMqjZ8XgwYrT9orrev4/xA
 BdVOpG3Uva7g9/EsMgHUIim0jklORZbCFBM61FGw0PROdmH6/Ab2tvR0h94wSWaGxB1NTAOu8Kw
 MYOcCyjDChuaCSOVkWcsS+eMAQ0RsDBvWKMD+MYRZCzi+itztWBWnxNYZNviyhv1899rXgjq1u+
 IrfPXwdzCUNr50SwXZw==
X-Authority-Analysis: v=2.4 cv=UJ3Q3Sfy c=1 sm=1 tr=0 ts=69a849a8 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8 a=puI59K64icZz00i_70MA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: eBgdkyMnG8QU4OhW32VBZWVTGJy48D-k
X-Proofpoint-GUID: eBgdkyMnG8QU4OhW32VBZWVTGJy48D-k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040121
X-Rspamd-Queue-Id: 5C45120252D
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
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271113-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/4/2026 5:23 AM, Dmitry Baryshkov wrote:
> On Tue, Mar 03, 2026 at 11:43:40PM +0530, Vikash Garodia wrote:
>>
>>
>> On 2/28/2026 1:22 AM, Dmitry Baryshkov wrote:
>>> On Fri, Feb 27, 2026 at 07:41:17PM +0530, Vikash Garodia wrote:
>>>> Kaanapali SOC brings in the new generation of video IP i.e iris4. When
>>>> compared to previous generation, iris3x, it has,
>>>> - separate power domains for stream and pixel processing hardware blocks
>>>>     (bse and vpp).
>>>> - additional power domain for apv codec.
>>>> - power domains for individual pipes (VPPx).
>>>> - different clocks and reset lines.
>>>>
>>>> iommu-map include all the different stream-ids which can be possibly
>>>> generated by vpu4 hardware as below,
>>>> bitstream stream from vcodec
>>>> non-pixel stream from vcodec
>>>> non-pixel stream from tensilica
>>>> pixel stream from vcodec
>>>> secure bitstream stream from vcodec
>>>> secure non-pixel stream from vcodec
>>>> secure non-pixel stream from tensilica
>>>> secure pixel stream from vcodec
>>>> firmware stream from tensilica (might be handled by the TZ / hyp)
>>>>
>>>> This patch is depend on the below dt-schema patch.
>>>> Link: https://github.com/devicetree-org/dt-schema/pull/184/changes/d341298d62805bc972dfba691da6b3b62aa3ff15
>>>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>>>> ---
>>>>    .../bindings/media/qcom,kaanapali-iris.yaml        | 261 +++++++++++++++++++++
>>>>    include/dt-bindings/media/qcom,iris.h              |  18 ++
>>>>    2 files changed, 279 insertions(+)
>>>>
>>>> +
>>>> +  iommu-map:
>>>> +    description: |
>>>> +        - bitstream stream from vcodec
>>>> +        - non-pixel stream from vcodec
>>>> +        - non-pixel stream from tensilica
>>>> +        - pixel stream from vcodec
>>>> +        - secure bitstream stream from vcodec
>>>> +        - secure non-pixel stream from vcodec
>>>> +        - secure non-pixel stream from tensilica
>>>> +        - secure pixel stream from vcodec
>>>> +        # firmware might be handled by the TZ / hyp
>>>> +        - firmware stream from tensilica
>>>
>>> Why are you providing description as a list rather than describing each
>>> item separately? Then you wouldn't need maxItems.
>>>
>>
>> rewrote them as below and dropped maxItems. Please review.
>>
>> iommu-map:
>>      $ref: /schemas/types.yaml#/definitions/uint32-matrix
>>      items:
>>        - description: bitstream stream from vcodec
>>          items:
>>            - description: Function ID
>>            - description: Phandle to IOMMU
>>            - description: IOMMU stream ID base
>>            - description: IOMMU stream ID mask
>>            - description: Number of stream IDs
> 
> I'm not a pro in the DT. Is the itemization of the first item reused for
> the rest of the items?

yes. As a trial, if i remove one of the itemization from above schema, 
then checker throws error saying 5x9 arguments in the example is *too 
long* as it tries to fit it as per schema i.e 4x9.

> 
>>        - description: non-pixel stream from vcodec
>>        - description: non-pixel stream from tensilica
>>        - description: pixel stream from vcodec
>>        - description: secure bitstream stream from vcodec
>>        - description: secure non-pixel stream from vcodec
>>        - description: secure non-pixel stream from tensilica
>>        - description: secure pixel stream from vcodec
>>        # firmware might be handled by the TZ / hyp
>>        - description: firmware stream from tensilica
>>      minItems: 8
>>
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
>>>> +    items:
>>>> +      $ref: '#/definitions/iommu-types'
>>>> +      minItems: 5
>>>> +    minItems: 8
>>>> +    maxItems: 9
>>>> +
>>>
>>
>> Regards,
>> Vikash
> 


