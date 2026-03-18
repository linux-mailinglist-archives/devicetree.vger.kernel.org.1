Return-Path: <devicetree+bounces-277085-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNgjKYhzumkeWwIAu9opvQ
	(envelope-from <devicetree+bounces-277085-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:42:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5532F2B94A1
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:42:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 817563054F8E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77F3C3B5844;
	Wed, 18 Mar 2026 09:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kJjmYcQu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CD4dAQkp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C20D3B2FE8
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773826419; cv=none; b=cdJ4f40OPMjGLGH6FTdHqyFKLIy4G88/g50qgo5EE+7ILyUyF9uAsh5qVWOf6fRAZYXUdS9Mh65vJW71vt2YMYKQgL4Bbpud9syE8c6Jnm+9UaMtSxNqM5Fc0nHZC1976voZc84I3lesWmMC7dE+47/ChSQGJeKFceazT/UNISE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773826419; c=relaxed/simple;
	bh=WPCI/wee1mbpN0qx3vZmfciuSoM+l9KD0jMQsntUFIs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uaZ8yue7eFwxtfX6Npz+UDtxm14D+kkRU51au2b9SoDM/SdhwHdyK+5XFj7H1qN1324Mag97A7npEuJVuxfwtqd+iZnbjcJBGNW2K+11vFqS+YlMe7+GlISUhTvWU1t9YGYOtAZu1MeArzRhPy6/SAC5Ro8Jfae/hPK8kV95vgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kJjmYcQu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CD4dAQkp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I8T4E31050806
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:33:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e67uLUmjQcDVmQDogvW47Kfwdak2mVG2zSXx6AMwD7c=; b=kJjmYcQuDfEv47Z6
	8EbBqc3N2u3jIUFPGtGrJWCINrJvpX6RKESzM9qYgbxAfzNHz1w0xM6GbKZLH4M9
	35QciF5U2BWbPLyb0RJXo2HQf00PVmS5DiJZn1wnM6rp2RQEgJ9r8nEPHc5352Cx
	a2cwmVaQOEW04q3B8snLMa2N/NwOTwVS3kGu4CxTaevVPsO2tMrJtx/59ERhAqQm
	hYqitRzIZFUDNyg9hqQ5swXoqRXY3y0Fv6TPksP7D0Vam739OolN6S0Izz0Ktlac
	j/gXsHO1wi8lw/lf330SJiGfYbkv5GvpF0BRNKzLD462UUgGQUByuQZW17aj7dqu
	TmmSDQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyj4ehvph-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:33:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-509118781dcso78488881cf.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 02:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773826412; x=1774431212; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e67uLUmjQcDVmQDogvW47Kfwdak2mVG2zSXx6AMwD7c=;
        b=CD4dAQkpkCNy8ZNiDMUupx7wMY4PWTDcDT/nmovmbuovX3aPnzKCKtu2A0oshVBI0s
         kqZoSrk/F7twLeXvy3bpOYFRUUvy0vFhT2OvHMOFWLCB5eRWGAPp6irqC6+BdqM+Cvig
         zO1RuzqKfrjdw+DdG64idEShMnF0x7BCZ8vSkdsd+w+uvxQhN4fTn6Qgn2DBas+HMi1z
         ab22n1ZlgFH6JlT9HpUmmoBH+wAFLDu6hslrJiiCqQ1MKFyKEqIywGh3JimvDsuwbu0O
         1PNtayQH0w+dmBb+1BiXGo4wINdvMkhrJy4vREAw0+BO9/RzkOwVujtPYODg4B66Q56A
         nudA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773826412; x=1774431212;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e67uLUmjQcDVmQDogvW47Kfwdak2mVG2zSXx6AMwD7c=;
        b=JCNJah3MaSmVMd/7IXZCHa5z9h23wifMF4BYnzxH11nJwqLdoR2k204YaasTAS6SsN
         hXec3Gw78lX/WYOC6SDxkS2SX1WIrBwpKj1XEhF83KjrdBzH0wqKF1Szu7+5Ba4CtT1u
         Vi8JX2BK4RdUTS44BY58nHFZOQlocmkjn+eUDkUp1Ag2m/zTzObD68fNsAVorx7sf/Bx
         F6a2VzLhvmTaOyrN41/lJH5UeIz51ayJs52Vwb4BHPOLby4aNxQ0zohkaI/TCsl5rVnq
         uBfVE+geyjA9wwx1ZycKuA/0YQIn457tzKgjC/KZUzOLfBTu4V0OFixVA/nYRIW3HE2B
         MgBw==
X-Forwarded-Encrypted: i=1; AJvYcCXEQWqm3Fk6BhgstlvQHSFZywZZM2d0XMuQ9Ta62mLQptVJDaxhPhogJbSmEPPEmo7L1WAdMUBBSuNw@vger.kernel.org
X-Gm-Message-State: AOJu0YzmHbH2Rapgyw4mvRbNZZM+zxzHtWJ1bPUxLHXo9fh2ASvJIkbr
	6tNErVjmEHJSubiNUV8o1IL+pGOQoLh6659CqKSMhdDnQ9/9PzIkq9wwu+0zmMJpsZSXv0CKqAl
	6kE4NzicbPjQ6e4g7bEUrMEJmHMUSK/1AI2HEMxqYujvsYid62rCOfzefoDmxcJkL
X-Gm-Gg: ATEYQzwhQOHzTxmxesFgwTzYt91ZEHqPtPZng2HYylngZlg5EZTOrGnLuGECeX+8Ceg
	Lsqig4jvDJt6ljAxZGIhTTFer/JaxcuH7Twge3Zuc0cTvgxU+KubdL27JauiVbLOMY1RDfMqz7+
	HxmT9rIOcw1JpRziPW04QBydAQZAtva9AmWyzZNxIU+pxfbGZfmVXk1JnVS5w63LSDLnS0rpQs1
	jVv3wjuyhUBKaedz9XzWOP9Zmf8O4eQ6aoqzgZ1fF6oUgBotV5j7ffws7afGGnIJMWmjONt0wii
	Cl9+W9bDSe2fK738BBAB1M0q/7TdJ3KtXt52zHVO78FF1B/wKW/L4kFvO2LqjPOJH3P3q5Rz2QH
	PCVbqT7JL19mL2VT1pGmRV5+yqH7BbJee5po+X2p7Z/CtxEcfmzbFZeMk4UUDuAXojhJVjMrbym
	nnH9g=
X-Received: by 2002:a05:6214:21e9:b0:89c:5285:200e with SMTP id 6a1803df08f44-89c6b56f7a2mr29664236d6.4.1773826411540;
        Wed, 18 Mar 2026 02:33:31 -0700 (PDT)
X-Received: by 2002:a05:6214:21e9:b0:89c:5285:200e with SMTP id 6a1803df08f44-89c6b56f7a2mr29664106d6.4.1773826411136;
        Wed, 18 Mar 2026 02:33:31 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f13e83c8sm166754366b.2.2026.03.18.02.33.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 02:33:30 -0700 (PDT)
Message-ID: <e874bfce-1cb1-4b81-8d05-557f061904f7@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 10:33:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] arm64: dts: qcom: x1e80100: Remove interconnect from
 SCM device
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Sneh Mankad <sneh.mankad@oss.qualcomm.com>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
 <20260312-hamoa_pdc-v1-1-760c8593ce50@oss.qualcomm.com>
 <bnaxwhrfeer3n62xp5rka4pq4mz6y5xxwsin2vavc5zcj3ymxj@splrj22ki445>
 <198ccf60-a4b9-438b-ad92-bc4d2cc84b83@oss.qualcomm.com>
 <90b3a7df-cd02-4878-b614-1499589f0906@oss.qualcomm.com>
 <uukjr4c2uymzj2pe544hn2w5ecpmqle56mir642zieip4ixwor@3uuhplnfo5qt>
 <822cc610-7984-4684-99d3-8abd679eb06d@oss.qualcomm.com>
 <jup7h7tyf4efv25mqj2sz4jmztpqbng3jgk4dvz33ec66wj4dr@kgmp5g5pnbon>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <jup7h7tyf4efv25mqj2sz4jmztpqbng3jgk4dvz33ec66wj4dr@kgmp5g5pnbon>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=T4+BjvKQ c=1 sm=1 tr=0 ts=69ba716d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=Hp9DdQFMGmLfbiB6PWoA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA3OSBTYWx0ZWRfXxZKD5jL58Y8h
 Yt9KBZd0LKnhM8kaoUfj+a9JbypGUAi/2YoziK1Y9riIwAtwkG+ervkfcR76eMc0M6SeM7olerw
 z3pGD1rJ0VZNII+o/ibxHWjclO+s4GR2JPPDKbTGUaB815DOGW5yCKsq8FK7tT/ThffrjzNjOJA
 EK1/Oq9YBPti2yMh3t4gt/dxmhFkhhYO7oVZGjXy17TFC6yvloeQVF29jwooFU0Whtq4gL5jW38
 dJqdNUF/HS098B7WTUIh33NwrzuyNrdglCZawFTl76/W+JDumSUnDfDDrDuYSvGPBn36OWwsqu9
 TzObY5Qz05xKICfwiERgljHn3aM39ZaE15G8RWB9/ENpit9/P6D/xsIprJxj9BVNNvb180Spk3R
 iAgrWB99pY+SLFvAQFAy8z5z7Dcx76GemWlzY84lRtal1aG/pA/EQ6Wv+VPm2reZArXCZXdGUSn
 QXR49+zefE4MPafNkSg==
X-Proofpoint-GUID: IxHhuSs4jr3uSu3kgyDEvkqHh6MqEa5A
X-Proofpoint-ORIG-GUID: IxHhuSs4jr3uSu3kgyDEvkqHh6MqEa5A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180079
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-277085-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5532F2B94A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 3:25 PM, Dmitry Baryshkov wrote:
> On Mon, Mar 16, 2026 at 10:39:09AM +0100, Konrad Dybcio wrote:
>> On 3/13/26 3:48 PM, Dmitry Baryshkov wrote:
>>> On Fri, Mar 13, 2026 at 12:59:46PM +0100, Konrad Dybcio wrote:
>>>> On 3/13/26 11:12 AM, Maulik Shah (mkshah) wrote:
>>>>> On 3/13/2026 7:41 AM, Dmitry Baryshkov wrote:
>>>>>> On Thu, Mar 12, 2026 at 09:26:35PM +0530, Maulik Shah wrote:
>>>>
>>>>> d) Add separate SCM child device (with interconnects) under SoC.
>>>>
>>>> We'd then have to probe it as an aux device or something, which would
>>>> either delay the probing of SCM, or introduce the need to ping-pong for
>>>> PAS availability between the API provider and consumer, since some calls
>>>> work perfectly fine without the ICC path, while others could really use
>>>> it
>>>
>>> qcom_scm_pas_is_available() ?
>>
>> This comes back to either having to wait for the interconnect provider
>> anyway, or allowing the ICC-enhanced calls to take place before they that
>> happens, stripping us of the benefits.
> 
> Yes. However this way only the PAS users will have to wait (i.e.
> remoteprocs, venus, IPA, etc.). All the basic providers would be able to
> probe.

Do you then envision a separate qcom_scm_pil_is_available()?

Konrad

