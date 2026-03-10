Return-Path: <devicetree+bounces-273513-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eH/RImMjsGlhgQIAu9opvQ
	(envelope-from <devicetree+bounces-273513-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:57:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 374E225117F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:57:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46DB333EEDDC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:03:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50CD83CF037;
	Tue, 10 Mar 2026 12:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nL26nhQu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kseAQ/yu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBC63CF02C
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 12:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773145856; cv=none; b=e7Ig+PF/WBbrIPXx+lbvyca22rjn7h4YQ4VgFs03mC5W/xN04DqDvh3ENs26PQ5ziTm/vfMeX5mdSM2Cx9RrMk7svUqn1hnryVHN0kFtdt4RLMSZq/nW3G7QZF/tTbJ2TZZTdmGhQPgp8aps6LG5SiW0QjMEa/rP0E/JlfukOpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773145856; c=relaxed/simple;
	bh=jSATiF9xfB3+Wq8PWkAs8NlQggZLlFInbMgv2F8b0Kk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kGm+yGIglLj3CTAOJhcNbkE6a+9JVeZpaEP97DswuttapsRIh3Aj5hzmZEaX4mJvsSFG1pOnMPGG28GTfTHizPYYDP46fR/1omxst4SamqrOdA1HzjrY65korsrRKsOCVBbBL6ZRTc8+VB4QZA17HbJaKtjgLy1voQGRmIvX7a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nL26nhQu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kseAQ/yu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A8keSh3587446
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 12:30:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2VzkmLjRqtvKlkeC637966q5Nji7GS6ua5xJoVJknTY=; b=nL26nhQu1x836ekL
	0C4GUm6rVxtYqq9Sgcqsqi6S8MM+rueV28ANaIgyfFRkiPtv9cbTooT86dJeD2Zd
	wm+0bn4Kim0PEqJJa+bGJmnnK359aHbWACmVJpNrjfrJ6HQeu7zbcerKjI1YY26f
	fbBabm5ZIpRlgynFXdqM9gQ5q/TLF6zm509ZxT5mAWyl9QskkvdT2sX4FeT6aXJb
	b4m3nn3tzKfyDwnYzu7wQNyaDXZUolxSy7OH8plkxkn+Wi/ZWGpazm0bgepn7Aun
	XxeYSv2bvgCw4t6Othp4FSnEvbTHUPyBmEa30sr/KyfqRhUAfQkOJ+lEOGqcCLZq
	lrbbeQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct1ekuuf6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 12:30:54 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb50dfd542so870078485a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 05:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773145853; x=1773750653; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2VzkmLjRqtvKlkeC637966q5Nji7GS6ua5xJoVJknTY=;
        b=kseAQ/yuHLBtj500+LKcyt2Vy6Glr4YMNyBjoh608pt+Lo8xDB07X1TUbZlzNcA8m2
         sfCNu9fFUXYcuKhJN698sKITqoUtt8AYuujglgMXGeWYn9hKFLyGQ3F9yAvcVSMrny49
         bN9YRHqjin5c9FlyDlm8sNMeX7CQ3rl9q8RSI2gaSEq1GzGzOviBwXICXdYCcQbAsDxa
         9BbU25IA6NGQwDYiSS9yHtxmkiK7CABC1Ps4RXd1IodOLb0zPitIPckMVr+qH6Ft/7zv
         3NcnwBj7XdAn98KxnDY5jWnADX6SiP29xWrUJTYXJ/1VyukX1qcGrn2AudVNvHrK+H4z
         yAYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773145853; x=1773750653;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2VzkmLjRqtvKlkeC637966q5Nji7GS6ua5xJoVJknTY=;
        b=bWuqRtQfxvgfDGLuIw9hvccUnikGr5nGsnZ+T/MYVuEzqhFHJuwuEuh1L0YQae1eMn
         BPJVtHwMwLoqk+r1keYHANw4Y5doSu1Irf+QX5v6LiZFOeHvX/2CMo7Y9akSz+VwxN6A
         w449ID26r2Wa6+JracAnC6TWrsNVovoMfLbodM7uMrMrmcL/czQBnHCdVZXW2i9v9B2c
         Mrsm9bngKxDm/sMSzBlAttcMA3VM0VbF15VSyJnRYVHTZp7AOcozd7DVREpx1/F04iBk
         jI0T8RirLiRwrIGDFg1ygmcJhXMCOZzvP2WmMRUEg0YzVpdLYtQEUjcq9beBoyrz360l
         t46A==
X-Forwarded-Encrypted: i=1; AJvYcCW0302T0LkBy0O7s0zwNou7qcM9qXxyuy/pvxq9AbTzjxI5NOkXjhfoiTgKjAlLKH4u/MxaDcJhSYy7@vger.kernel.org
X-Gm-Message-State: AOJu0YwzGgLg/6POeRvqNX6yUpzBQCRvgwT0b+crrkXxhT+gpa57xd8h
	Y0ySMB9oOJRNiIfuTGMaT0QSp/ScDORqOvxIwwvQxzyAbx+dbmi/GCiBla8he6xgb6uz6nKLiXO
	O3hSABpTgbRa/s5p9KEYVUYH8NDJ9iepfqnsPAKWuFHewgwzsOribTDxMfJmWYvcq
X-Gm-Gg: ATEYQzwB1zVIJnoYDDGzWCSZSvzzBoMQmrDzOQXjs+UJv6HBcocx+HfLjqUWYM2h8gy
	QnZmD6afBZNugf0fw7IP9zLIavCiNcIct1pYC7L6zgEgoFiV631JSJWFNKww5oWPoVMlfgdCAvA
	iI1AzpaSrZfjwVcQutjGfEOThKcvb0lLXyXv0kUlaFrqNdEkTY8Z4ieRn0Y/2XlTA+Pz229BwqK
	FjTG6AQiVc+AopCmvG6joU5O28cek5JEW0bitD+DTrRLT9jMaQ1ijBdrAnPIvaaMFhVRY0hAF3P
	+SFMaGSwD5ntlQU7ypGtDrPC9eI6xBqFgayifNzCjFS6HSlPeFi/YjJv9cMogRNJdwoHYhtwGFS
	RH8gbCvu74GnMkW9hOBZ5P6SZHQEZ/JPjy4Mywth2AkYVkmVpG1ZLYQpc5Nnfvt2UknzmHgET3O
	ukKYU=
X-Received: by 2002:a05:620a:209d:b0:8cd:8bfb:a4a with SMTP id af79cd13be357-8cd8bfb0eb3mr428495285a.0.1773145853060;
        Tue, 10 Mar 2026 05:30:53 -0700 (PDT)
X-Received: by 2002:a05:620a:209d:b0:8cd:8bfb:a4a with SMTP id af79cd13be357-8cd8bfb0eb3mr428491885a.0.1773145852600;
        Tue, 10 Mar 2026 05:30:52 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942f189de1sm479139866b.63.2026.03.10.05.30.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 05:30:51 -0700 (PDT)
Message-ID: <bd0dc1de-c157-4f18-8010-ecade0a4b40f@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 13:30:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: msm8916-wiko-chuppito: add
 initial devicetree
To: Stephan Gerhold <stephan.gerhold@linaro.org>, Paul Adam <adamp@posteo.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20260307-wiko-chuppito-v4-0-325ac66ae338@posteo.de>
 <20260307-wiko-chuppito-v4-3-325ac66ae338@posteo.de>
 <aa6P4rE7d2ftaeAw@linaro.org> <aa8__ofJBdMfavbq@MyryksLaptop>
 <aa9Epb7MQ0qVFWGO@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aa9Epb7MQ0qVFWGO@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: FAgUKZddLJIxp582PtoZniILSyTuT00S
X-Proofpoint-ORIG-GUID: FAgUKZddLJIxp582PtoZniILSyTuT00S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEwOCBTYWx0ZWRfXyXM9wcw4L54M
 nkL+rd95fPjj1O1Ngiz6jVAPSutThsHl4/2BVW/JsaKVniaVf3mpg8rVPdwVNAoy97uN95EXxwk
 QU5LGsTiOLs7BJyIkRcOaGxTb1/gUIUkKXZEdRawzdLkS3JydZdA/32MEvLph/pAUPtciTxaiLv
 ugk6DsI3zGEFXZVolAShdUUOgx094hB8ZCA+NpiD5TAOE4Y41SEu77ZF6JZvWnf5oaWn7HZgY5w
 1ybQ0BYIKGpDJIyh3vGL+BM0YGGZjudy0KIXAiuWpA1hR5SkmpNRYg0f0QZlF+EuTItaQkEJvpW
 bOQY+YTpkEY7MjCZi20gYh/YSYX7d03ApCVo5aeThJ1Q1d1SLw6+VObY3vhKcg7yuXoenT/YIOB
 VqssytotEZgrLs4uet2Bm99cP3R6WVXomLEu+s3Y39DGtVIB68ugTcteZLrljS+nqwiG3/Y3l1K
 0OHsa5RZl+Agt7oXMqg==
X-Authority-Analysis: v=2.4 cv=eIEeTXp1 c=1 sm=1 tr=0 ts=69b00efe cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=b88osBH9l-aT6nkOueUA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100108
X-Rspamd-Queue-Id: 374E225117F
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
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273513-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
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
X-Rspamd-Action: no action

On 3/9/26 11:07 PM, Stephan Gerhold wrote:
> On Mon, Mar 09, 2026 at 09:48:12PM +0000, Paul Adam wrote:
>> On 26/03/09 10:16, Stephan Gerhold wrote:
>>>> diff --git a/arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts b/arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts
>>>> new file mode 100644
>>>> index 000000000000..d927bae2b208
>>>> --- /dev/null
>>>> +++ b/arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts
>>>> @@ -0,0 +1,315 @@
>>>> [...]
>>>> +&sound {
>>>> +	audio-routing = "AMIC1", "MIC BIAS Internal1",
>>>> +		"AMIC2", "MIC BIAS Internal2",
>>>> +		"AMIC3", "MIC BIAS Internal1";
>>>
>>> Sorry, just noticed this now:
>>>
>>> This seems a bit suspicious (I would expect "MIC BIAS Internal3"), have
>>> you tested if the secondary microphone works?
>>>
>>> Thanks,
>>> Stephan
>>
>> The secondary microphone does not work yet, neither with Internal1
>> nor Internal3.
>>
>> In the downstream devicetree its Internal1 for AMIC3.
>>
>> Is there a way for me to check which one is correct?
>>
> 
> To be absolutely sure, only with the schematic diagram of the board...
> 
> Another option would be that the secondary microphone simply does not
> exist at all (i.e. there is only one microphone). Any idea if it works
> on Android?
> 
> If in doubt, it would be better to remove the line for AMIC3.

whichever way it goes:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


