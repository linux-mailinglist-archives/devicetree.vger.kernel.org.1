Return-Path: <devicetree+bounces-277579-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIGlFVyNu2k4lgIAu9opvQ
	(envelope-from <devicetree+bounces-277579-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 06:45:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A69BA2C64D1
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 06:44:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CA2A307F2B2
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 05:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AEF8399365;
	Thu, 19 Mar 2026 05:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iwyKWURb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i6JarO/N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F21186284
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773899096; cv=none; b=PblKyKpRY93O+jnwWLBgx92jnrfr+DfprxiSmm69B1S6VYwJnnTwDCwmKmoFxmwJoOgWS9ItWlS9SvkAZP2ft66u9vsteHnKD/bvFqEdvsH55UGXzoiK3Bl9sMxCNE8oJ9n6ZD+Xv0eBe5lnitidXTdmt+2eeT24AmGdAG60/gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773899096; c=relaxed/simple;
	bh=NNB5xffDO5KucLPq3mYXRXkkzL7ZnpefOvtoDqD9dZE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DvQ+/nuxrJjPFq6b9mufC9ScekBKxsOJWwnSR5e9Erfif4b6rIBPWJf9twOh2v7R5jNuX7E2aazTOVCYLvyhLVg75OYaYOsrPA2IoThChi6nrtSLAvPJ8w0T31CSUcu8LUe5/0CaDcd3E29epJWtOjL1rqGXX9bip06M9CadE2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iwyKWURb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i6JarO/N; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J5XdcD573870
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:44:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ampQRXpUK/R8dpg2C3wASpItLjwceLYCOODrGNFGjZw=; b=iwyKWURbyLNcQ8Oh
	RexAbUlCFF774kwQjATg0aXt6/ftyCCwMkxySXaOw//d0AlGft6wMuXsVolWhdTF
	VngVhthHCAfM8OoNig2SeCcjqzxIQVZkPYRj0MFEBVK/ivL1GHgFIUwPehjGQKnU
	oe5X/djf3PL/3ln8LfpEuT/I7c72wtckco8NR4zJgt5hVMDdxB+PymsgJyMKnO3W
	CN7VDkqJSAclcw4WejqMzSYoXuAvIcDos79cSxTmen9gHCsiy8gJL/b1jb9WpRjk
	gug8jOV8Ec3sM7/2st9VYt2rJE7XSOTcac44hI/xgaqoLNUnQZxDo1r6CtlbVcEN
	pL/A0g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d00eg9wny-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:44:55 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35b9894f9ceso410471a91.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 22:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773899094; x=1774503894; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ampQRXpUK/R8dpg2C3wASpItLjwceLYCOODrGNFGjZw=;
        b=i6JarO/NL2ANNLNaQ4XrfaCGLQl3H67QVz14kl2kFP2KE2Gpb9ordCZzfa5SYjo+Z8
         PB8O/5LQqyL1zb5uku1bTD6zSvLFz8MGbLEtANK8I897OoKfBg0Aur4pY3FCHHPi3RNj
         mlE4/j8m4TAm4Kpra+Q2hzohr2yhoZxIdfmwyPyJEJ8qdLfmlrD50WWTp55jnADvi6Q0
         iZw/zRUCVZiB29bGQdwSETX1U7wDEazp3I7cM9eoApBVTSWDRCziFdQmxMlw3HgUPDss
         ABj/45W5+N53XACYoO+T4eKIbrjS98+sumuHpmKnh0RkdEV6rPsDMnWTOMRYT6T69aCx
         yNfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773899094; x=1774503894;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ampQRXpUK/R8dpg2C3wASpItLjwceLYCOODrGNFGjZw=;
        b=oYwv7ksUooHjbtMXojYzMKifRsBCjld2E1apJrEH4NP975aCndVosR+NhrmiwrvQwC
         u9LXn5+Rs2WtL3yClzw7Am/KO6digQoNrZe5YSvLZ5Gf/X1mJrXVpO6BeaLh7aqdAQYo
         6l3/s6y01u7O2ySGRnZb5uniJXyse9hIqm9afX5b93JusaY/BAeDbcIVPlv1nhz2RedG
         nYVHJI87wY94KckBSm9iAgucYKvYJW91bxMupUZ8Wx/E1WUkuzuipU6kACKtHh+Pd1YW
         td+zbCAVTj8quvvRC8mfsmw/Rs4Z52VlR/YNm5mvmaoW/pk44Amn3HQL+JQXO/XRPy+V
         uGfQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5WSewbJ7WDah0/iCLow395mBGc4gVFrAGhksvZMwaegD50hKp/dEbT6aErlz9yCoDT2+9IoT3aDtk@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa3jNIUyPN6KWb6PnRPB0awT3GfF81QJ4HyAZTPLoh++5hEjik
	SCF/dH7234larWRXRuEEw/nosxsegk9agz0M/RRbfyjvKYF2T6Bf8H5ODLDtd0DJsJspK8YNh9A
	f+yr4WylkD07bYi72M3mQysLcaQfAeP7EkHzhIbWagVbbiC1yUOf2S1NLqr/c7Bc5
X-Gm-Gg: ATEYQzxHATd6B8BRNzRwq+NS6LANOqmBw9obI5pkpKx9/p3p6WfDOMmNl5cZzCLMxpT
	NlXV1B6rTOCYbdx6j6Y/DMqyIWEf55hbO68ucxcM3f2HLwnypPu//wioAcHNnf3t9bsraIuDKTQ
	Fm7hdSltVdAvRtZEbUtgFpFq2iqJMZIADfWuH4MzGo5e/zOZNdcr0QwlguNx3KtVtMYF1oKYI/X
	kt0RlTyNPS+VSsygQCLdkNETAlcyg/uctAMQTownU2ZaTcRusM6HyZFdoHJvupxRz1GVeFcVVbc
	jD+GJkYtC1d0UKr00LQ203yeB4E3Btc8NuGtXbU44vDlATO0jxFNiG4eaVn4RyWZP8AI529jC+o
	frc32Z0Kq/PhONXm4OHx5e7hu9if5PVRV4HDRbqEnym4vVKqUmPa758hUh/43FP0HCgSIiiURUP
	e1Q35Y7Vy8TZR2HJ0+
X-Received: by 2002:a05:6a21:3d84:b0:39b:9aae:fa01 with SMTP id adf61e73a8af0-39b9aaf5283mr4413789637.60.1773899094376;
        Wed, 18 Mar 2026 22:44:54 -0700 (PDT)
X-Received: by 2002:a05:6a21:3d84:b0:39b:9aae:fa01 with SMTP id adf61e73a8af0-39b9aaf5283mr4413769637.60.1773899093879;
        Wed, 18 Mar 2026 22:44:53 -0700 (PDT)
Received: from [10.133.33.168] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c741e543d25sm4068895a12.20.2026.03.18.22.44.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 22:44:53 -0700 (PDT)
Message-ID: <ef36a946-ba7d-4588-b94f-4287f3ea6105@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 13:44:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/7] remoteproc: core: set recovery_disabled when doing
 rproc_add()
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
 <20260310-knp-soccp-v4-5-0a91575e0e7e@oss.qualcomm.com>
 <CAMRc=MedT32COu-B_TsrN+jCrHjde2v5gnA6WOUmMQ2dEBY6WQ@mail.gmail.com>
 <ce24a2sgg4b6wymoxwgl2ve6np2nxn2wuxfqxfpmvqqrpvgouf@xihd6ziqwu4m>
 <CAMRc=MfRxhXXdAEX+Gm-vJbQGJZ7QRL6RM2CbhcLiqicyvftdg@mail.gmail.com>
 <ymo3kf4bsaz5yh4uwpk6dapfuzujepru3szaa4ujge7vtv43ka@skc5xgejj6aw>
 <9bdc6b6d-ddf0-47af-b1ed-8d1e75bf30c2@oss.qualcomm.com>
 <c6qnvfiknlaofts2kdahbaweiufqitnuni6bhqoxznhxp5zdto@m4i5thd57wx7>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <c6qnvfiknlaofts2kdahbaweiufqitnuni6bhqoxznhxp5zdto@m4i5thd57wx7>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=MMNtWcZl c=1 sm=1 tr=0 ts=69bb8d57 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=rNVI97BeOdma3RHj8UYA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: 8YM1gPjOk1rszTonQ3GIs1iGIz9eUFSY
X-Proofpoint-GUID: 8YM1gPjOk1rszTonQ3GIs1iGIz9eUFSY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA0MiBTYWx0ZWRfX9MgcOAP/TFmB
 O1g3/DZQh68JYlMcrwatRTk6owSqbOXnTzq9M3bOl+NerAaXImdFjCHIm5Yx9chk7u/jYUYucl1
 HUHhsS2gUJ4sk7XnkONTF0if7OBZ2tSSYY2INWBjCQWIFibY0NFBNkGmgsCPDK6XfWKpMe81/IX
 miTzqNKGaTta0gUEHtb2IgzAPOyN6XJQNwGde7y6npsSDLS5HOzdMxOTP6DEIT8DpIKlPaZyCtw
 xwdviRsyDvxeF8a2Y9+uDNP8u/eT+Qt+6DoH5edVW1kSIxNQN5axwiKWKv3/EACMzvL4NcIwRT1
 cKoskoXjGMkPjiF5LyIPDod4rqLB2qcex8TFePUUiHvPxzzJkLcyQwyezBJP3V86UlK9fGWcEek
 RTFLfTqxzbM9m01VdAfrPDDHBrqYbnIJOZsr4fe1MbvJB0yM5LFzNHC6AhfMrc1TECgpWQfoN5F
 Kfp5nMioJmPikdaWgBQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190042
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
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277579-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A69BA2C64D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/19/2026 1:23 PM, Dmitry Baryshkov wrote:
> On Thu, Mar 19, 2026 at 12:36:15PM +0800, Jingyi Wang wrote:
>>
>>
>> On 3/13/2026 10:37 AM, Dmitry Baryshkov wrote:
>>> On Wed, Mar 11, 2026 at 01:39:50AM -0700, Bartosz Golaszewski wrote:
>>>> On Wed, 11 Mar 2026 03:11:42 +0100, Dmitry Baryshkov
>>>> <dmitry.baryshkov@oss.qualcomm.com> said:
>>>>> On Tue, Mar 10, 2026 at 06:50:30AM -0700, Bartosz Golaszewski wrote:
>>>>>>
>>>>>> Ideally things like this would be passed to the rproc core in some kind of a
>>>>>> config structure and only set when registration succeeds. This looks to me
>>>>>> like papering over the real issue and I think it's still racy as there's no
>>>>>> true synchronization.
>>>>>>
>>>>>> Wouldn't it be better to take rproc->lock for the entire duration of
>>>>>> rproc_add()? It's already initialized in rproc_alloc().
>>>>>
>>>>> It would still be racy as rproc_trigger_recovery() is called outside of
>>>>> the lock. Instead the error cleanup path (and BTW, rproc_del() path too)
>>>>> must explicitly call cancel_work_sync() on the crash_handler work (and
>>>>> any other work items that can be scheduled).
>>>>>
>>>>
>>>> This looks weird TBH. For example: rproc_crash_handler_work() takes the lock,
>>>> but releases it right before calling inspecting rproc->recovery_disabled and
>>>> calling rproc_trigger_recovery(). It looks wrong, I think it should keep the
>>>> lock and rptoc_trigger_recovery() should enforce it being taken before the
>>>> call.
>>>
>>> Yes. Nevertheless the driver should cancel the work too.
>>>
>>
>> Hi Dmitry & Bartosz,
>>
>> rproc_crash_handler_work() may call rproc_trigger_recovery() and
>> rproc_add() may call rproc_boot(), both the function have already
>> hold the lock. And the lock cannot protect resources like glink_subdev
>> in the patch.
>>
>> And there is a possible case for cancel_work, rproc_add tear down call
>> cancel work and wait for the work finished, the reboot run successfully,
>> and the tear down continued and the resources all released, including sysfs
>> and glink_subdev.
>>
>> Indeed recovery_disabled is kind of hacky.
>> The root cause for this issue is that for remoteproc with RPROC_OFFLINE
>> state, the rproc_start will be called asynchronously, but for the remoteproc
>> with RPROC_DETACHED, the attach function is called directly, the failure
>> in this path will cause the rproc_add() fail and the resource release.
>> I think the current patch can be dropped, we are thinking about make rproc_attach
>> called asynchronously to avoid this race.
> 
> Isn't this patch necessary for SoCCP bringup? If not, why did you
> include it into the series?
> 
yes, will squash to soccp patch in next versoin.

Thanks,
Jingyi


