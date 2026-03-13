Return-Path: <devicetree+bounces-275211-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MaOJYwItGlvfwAAu9opvQ
	(envelope-from <devicetree+bounces-275211-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:52:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F15EE283405
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:52:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43EE332802C7
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B04E37FF72;
	Fri, 13 Mar 2026 12:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i/gLbCA+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QkKuNIPd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC89372B22
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773406264; cv=none; b=pT6iWZpm0jGtOwWWUqs6NKejU4ggohQSwOaV+RLMmZj3Rkl3Rt3mTnmZRcfp/xYmBYKDH+VAir94Yrmnpaml1uSozXq971iJxWId3bg8iUiSuCts0uyGcVXKezRfjuqcGz7zU0GqfF8ATzm4htwXf0wolUM4r4r9vr+OfupzDZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773406264; c=relaxed/simple;
	bh=J4wE2j1C0CwU+m4AqTI0TdWUyiuleTehv9zfq7Vqhik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B20UH9/EjessidCItcnFvST7Va/Oa90CqeauZsSNNAo8FzS4cR+LNllILMA64X6QdXiYEX+0L3RM2Nl6cFmbtSyeqtj4rO0n3Uz1wUiueum/L45s5CQu79GwuFvRHDpbPwfK8drparEqOcgmWh0zZR22zIpRLUnrvJ+4rvGcUvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i/gLbCA+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QkKuNIPd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D9B8q83906329
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:51:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ct7QKCp/uLCcjZDRaN9aoF62KlQpTeXlak+8t4E5ZA8=; b=i/gLbCA++CKO2lzR
	jX4IbvFY0pApLF6DT8BPCKKW+EB3llBskjv+nQyrc2JsdhyuqHEAsQiBmV3WwMcH
	cHu6jvH0hCBhsniPP+U+mxgT8l5E/+tRhDzqjC+56osFonBovLRhWYK6NgC3IbHR
	alSR94mhHnFf9ZY7cBfZuGqrSSIhgVULch78ha1gbpR5emtSyZjDz3nAyHa1ONXx
	HiX/27x7RxXOgakJCq8nV5/zyfLsro3UcL5N0mcikauE68Y8r0NpYp6P+QHeNKQ/
	P3iIn+nGHm+Tmt6sulVJ66oti1WixlOM1mAr0BIQlQ32w2flW71At2jB/VgvQBbP
	def2NA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvfqs8pbt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:51:01 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89a081737bbso19926696d6.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773406260; x=1774011060; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ct7QKCp/uLCcjZDRaN9aoF62KlQpTeXlak+8t4E5ZA8=;
        b=QkKuNIPdo1phwvMT1UAEBeCbVEzGmfYftbdjhk+g2ssg3jE36tF90y5PdZI6yhsLcQ
         x4hrDHz1OOneGEW2Xa1+d0QDlQYW8ocwaCCRYr+ttX73iSEUfz9234XcHSbKQL8EGW9R
         zm7YpQ9+BAl9eGHRfKncfzAivqVhqsB0QcZ+Z3kZ+4elYrJPujCs1eH6NTut7CLtLKzy
         NRgYovQ4sAHtZ07TbWBN3mYtFZLB41EXvBlVJIzB/E6EJLvQDIbXfrG4y4TiyEzMSe9z
         r21CY3zJSJIURiCQnIJW85NvrhB9tqLN+XBFhaIK+CG+O7pIyaghEI8wL1Sf6StjXsWD
         KUXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773406260; x=1774011060;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ct7QKCp/uLCcjZDRaN9aoF62KlQpTeXlak+8t4E5ZA8=;
        b=S/CoDqewnQ/Y/V3nFUtnMLWNE8rpu+7JsylP3Cj/C9OzG8Xv6IO5frJBRVw8QbO1NI
         fLzfm1FVuzwZBdO4dhYItLrNXRI+wn5ERInC8PO4WC3u1nggcjP+wxCiP+nh0jD2KlXL
         n5cfPb2uHfaapU2s6YxomuXYWe7YGkATjf6oKqTHO1eq40eFPbJLlsrxow9Vozd/+WrP
         9oo6ok1zp847D5ZbH+HiCQlWzfn8Ij6YQNXmNiuTCJcawJXsab0uh3woNcl6KoOU3vZz
         UgHu3HXMB93aGBYJ8y90tNBvISQP+AjMXCrNCPif3PQI5i/KZPChWvnrcTKd5/OmNgN+
         LYrQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+kndMA+bkIr41s8R2Y/Ti7+Biwh3AT49Q855KlIlik8/0814vW4flGglTSB5zPdCL/suMmWaRukI1@vger.kernel.org
X-Gm-Message-State: AOJu0YzqwIvvx9h4oq+dH4NfuD2B4+cdL+R+5uwX1UOwEi8YgbmzmoUF
	Hj3hgvfBT8eKf/uU28YtZLTNp8aL/SgmI8a62dJN0AIbbTOmhYzbKMc2CUCg6kjt+Nrejc7L5f8
	iwORKRSemCLR7iTCbdImpw6u7Gv5qVg8/X9UI+X2VQ0uOX4zbSqlvWFwhuz4TK+hf
X-Gm-Gg: ATEYQzzADNc/CKcGTEKn1AzrAy9wBU0XbsdqbMo6zdLnbevMWDx54t5za7Fcb31GbgE
	sHzGB2iqZ+RbgxBuvog/pauqi6Vd6iEWuYw1Lpc+N6jBhzhlOhfZMAROi4PvnRDCePBfValCS3P
	dF3addFwsVjq8Hi0zdkKKeJ0NBF04ANwYN2vWCh4VmxCltvSmKNUP/va+bMgRORqBOsv9mJuhyW
	uDgZrne8iJ1KsCq2QPUuEWzMi0hrmMQtklG2/ZNeILAdmWnKyOZQpI0eypQzHvexmpNh4aGsHxA
	4WpB3+FKuLndnYGxUlUi7JnEOjhuooCewliAW+im3uP1+F1zA2XeFrq4esoxE/nf9PQ2vjf6c/J
	GvFnAFAt30FVtNYJx6BcLGbPyK0l51E/2dQ/IzI3ImC4qyxPsN84rXZv6Lq/Wqe0VAl56kJSfVW
	+KopQ=
X-Received: by 2002:ac8:58c3:0:b0:509:2b5a:808 with SMTP id d75a77b69052e-50957ca0451mr33656791cf.2.1773406260502;
        Fri, 13 Mar 2026 05:51:00 -0700 (PDT)
X-Received: by 2002:ac8:58c3:0:b0:509:2b5a:808 with SMTP id d75a77b69052e-50957ca0451mr33656551cf.2.1773406260086;
        Fri, 13 Mar 2026 05:51:00 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156373888sm1487485e87.86.2026.03.13.05.50.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:50:58 -0700 (PDT)
Message-ID: <9c6d140c-bcdb-4f9b-8419-aac35ea27584@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 13:50:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v3 02/10] usb: misc: qcom_eud: add sysfs attribute for
 port selection
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260309203337.803986-1-elson.serrao@oss.qualcomm.com>
 <20260309203337.803986-3-elson.serrao@oss.qualcomm.com>
 <2026031101-cornstalk-partner-a30e@gregkh>
 <6fe7a63c-a1b3-430b-a128-0e38754d6393@oss.qualcomm.com>
 <2026031327-sugar-disfigure-8034@gregkh>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2026031327-sugar-disfigure-8034@gregkh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 5Vx12Rfn2Qn_lLiFn4DjNcYbsFgNeUty
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEwMiBTYWx0ZWRfX+2+LuYDOJcOd
 0rJz8APVpCQbV79HlPhWDguCK1vBWK8q769ZeBrEXZhKq6WjXtgRJ1XG4JPTYDQWSvMOgRQ6S5L
 f2f3iIBJXIa0joTyTEWWMxwdVnsP3zD4hhITj9ZUXwU0a60Lvo5F/je2qfVRZg5VL3EFIbxDA2a
 mg5FEfw1d9WPOagFcmf18NdM8bxbvwLcENWZyc6PLzHuD8m2Oweun6G1MrMb47xAmundsbjG5Lw
 QFdPOheA6KamUu2hC911T9v2gAindHSToev2xy7H3OXDwNBO95Td3j2Q7LVZQTzxuND52nDPNRa
 2OuLnemabxkt+CtFl8h8Nbw+zINs7NniiJi4W+qzkgJQJUEed2GnCFAbgpjOYFvEh0CEx4Na2F/
 +tZ8aTIcEOHrZj2ox4HEUOez4SRqNOF0rJ/HiDzQ5eavq7SBLoobTCA9zf1jXE7wQW/PBI2KZ4q
 UtHcYX4NJGTFGGVm/Ug==
X-Proofpoint-GUID: 5Vx12Rfn2Qn_lLiFn4DjNcYbsFgNeUty
X-Authority-Analysis: v=2.4 cv=GoNPO01C c=1 sm=1 tr=0 ts=69b40835 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=XanBRYeQAFQoPGH1A-sA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130102
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
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275211-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F15EE283405
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 1:45 PM, Greg Kroah-Hartman wrote:
> On Fri, Mar 13, 2026 at 01:10:10PM +0100, Konrad Dybcio wrote:
>> On 3/11/26 2:16 PM, Greg Kroah-Hartman wrote:
>>> On Mon, Mar 09, 2026 at 01:33:29PM -0700, Elson Serrao wrote:
>>>> EUD can be mapped to either the primary USB port or the secondary USB port
>>>> depending on the value of the EUD_PORT_SEL register. Add a 'port' sysfs
>>>> attribute to allow userspace to select which port EUD should operate on
>>>> and update the ABI documentation. This is needed for systems with dual
>>>> USB ports where EUD needs to be accessible on either port depending on the
>>>> system configuration and use case.
>>>>
>>>> Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
>>>> ---
>>>>  Documentation/ABI/testing/sysfs-driver-eud | 16 ++++++++
>>>>  drivers/usb/misc/qcom_eud.c                | 43 ++++++++++++++++++++++
>>>>  2 files changed, 59 insertions(+)
>>>>
>>>> diff --git a/Documentation/ABI/testing/sysfs-driver-eud b/Documentation/ABI/testing/sysfs-driver-eud
>>>> index 2bab0db2d2f0..67223f73ee60 100644
>>>> --- a/Documentation/ABI/testing/sysfs-driver-eud
>>>> +++ b/Documentation/ABI/testing/sysfs-driver-eud
>>>> @@ -7,3 +7,19 @@ Description:
>>>>  		EUD based on a 1 or a 0 value. By enabling EUD,
>>>>  		the user is able to activate the mini-usb hub of
>>>>  		EUD for debug and trace capabilities.
>>>> +
>>>> +What:		/sys/bus/platform/drivers/qcom_eud/.../port
>>>> +Date:		January 2026
>>>> +Contact:	Elson Serrao <elson.serrao@oss.qualcomm.com>
>>>> +Description:
>>>> +		Selects which USB port the Embedded USB Debugger (EUD)
>>>> +		is mapped to on platforms providing multiple High-Speed
>>>> +		USB ports.
>>>> +
>>>> +		Valid values:
>>>> +		  0 - Primary USB port
>>>> +		  1 - Secondary USB port
>>>
>>> Why not use "primary" and "secondary" as values instead?  That makes
>>> this much simpler to understand.
>>
>> It's not inconceivable that future iterations of this hardware will let
>> one mux between more than two USB PHYs/ports (there are already a multitude
>> of SoCs where we have 4 or more USB controllers and >= that ports)
> 
> Great, and how will that be defined?  As a number?  Name?  Something
> else?

Perhaps it makes more sense to me, since if I look at the other
computer, the controllers are named USB0, USB1 and so on.. We follow
this naming in DT too, so it felt natural

How they end up mapping to physical connectors is of course up to the
implementer.

Ultimately, I don't mind either

Konrad

