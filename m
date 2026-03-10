Return-Path: <devicetree+bounces-273390-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOnRIbzir2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273390-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:22:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFD024842E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:22:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AC5E43002B05
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:17:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA8C242F57B;
	Tue, 10 Mar 2026 09:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="glFOLc4p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UUx3FSwB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7663140FDAD
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773134257; cv=none; b=WzB5Uj5WH0LWt9hUiTBoq3mwe9R5Z+H/L3RpzVED32XkPdiTCJhMBc95APqayvI+nF2jToSX/ojWmNS6grgTJwksR+grwtTG3Oc5t3HGMmq6V3CL6VklclgfyZs/VBtAAcoo5wyyxoqbrnjbveHrnk3UxjmV9lmiRxaVHF0jjIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773134257; c=relaxed/simple;
	bh=7h/4Yclabk6wNHjEMn8MKHlsK6axtckYcV6RVrETjhA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jseQLTy3ehn0gzyK3iPw5NoTbsMQ1roqQUWbysYD+OKOrEeS2mpvdQketKofE+O9N3YSsi4Ye8uE2yB6MVTc190txL1/Wusfff2rdpSeyVYtLeZRBm5fMIJvIfuYU2nn+gCJIXOcOg1RO7OuHGaqcVNminjrxluNtLIwuVLaUDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=glFOLc4p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UUx3FSwB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A8oolW246501
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:17:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8MYKZxGiPOu8ZRtoTFNtUhc1HBg8grDgGM38nwNBDDM=; b=glFOLc4pUhhSufGG
	juOzFu75rc2eycZS0BawFPNeOheWjLjQqwPfSIlWmFiucB97rPJ9LQL9Cp/cSNKv
	plE3YXEUahfs8RsU8tJnFVxsW8HSSA8QCncdOeqmpLgykMNwg/ZpGVNTYFwJMFTB
	sOfgUyOQqUvP3VCWbe4/frXJRlqlmXI78YYiso9fsTdmoooLu18yqfRrIh+6ewMC
	y6JmSp5/Yg+ju6Rg4B3eIkfq1ZO0I1rf/N7UlPE/Burl2cqn4TmUeQZQqS24JPTv
	4Ezx3oM85QrMXrvNGpd4BpEp9S+DANv5eAH6evKzJTiOCYDiF+0tQlMc4iG2XIrV
	AEIAeQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct8801qpf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:17:35 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-829a535ad7fso11349779b3a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773134255; x=1773739055; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8MYKZxGiPOu8ZRtoTFNtUhc1HBg8grDgGM38nwNBDDM=;
        b=UUx3FSwBQAK46aRBrscVCeekqG/a1mH2gFRpV68IvxXS44bNHOzgtHAvgd5/b+f8Vh
         eNwGPB3Re5zN08IvmAFglFi29OgwCGU2PU9xCCSBCIEKobNudI0Rnm/lFn+s+6B5284w
         pvvczG+KGg1N61bMcTKdyinuA6M9f43fvYFJTzpGPG62cri7XaswOMVYHAtzP4/AwL/f
         xjTUej5d8bgR5nqB9xoj6a7KmmIH5Pqy+3D7bEN6UNKykVIUiVaATk654P5DD3T96q4o
         UZvNsgoXmPkTPA9l4+ySRkLW6oNit+Ddh+vfqEdel8dNSnhuTmQROYiaY/B63x0feRak
         MU2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773134255; x=1773739055;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8MYKZxGiPOu8ZRtoTFNtUhc1HBg8grDgGM38nwNBDDM=;
        b=vgYeRJA35F4GcoILE6MHs8GAtqPwu2xrlxbunzfO89oHE+Oiv8ttFhk9wlxg/lf+DJ
         ADEG5j1pTXPg7g/9yK/wzfqXv5IJh6HreSKIzs2aZ7oNK0HhBGrvjEB8RBJ0gNvmMuGV
         mL7rUOhQDXgyijKfv3lBvAq5/fbUDPFwymKWuh2pio7F+puoxfm2h0FLMAD0opdqkGQl
         i6J5LsrXHbm/et2/wNU5kJqeT7HlAuHhbQYcEu0YI9h1afK0KuMx2mZt4LX3MVI+NyPN
         AwQsFllAA906g7a4wPZEuFDNnMgCcVQmLpO3bA2JoGoWBs0/4I1VYEMd10W2mt5rLGv6
         67Wg==
X-Forwarded-Encrypted: i=1; AJvYcCVVylHw9oFRyikKf5eVHvOqlaZYb8QJS665CFi9AMfkoF0rVgjYayo85emXZcpZdbKRryZslCgCpJ4c@vger.kernel.org
X-Gm-Message-State: AOJu0YzU8+5/6UxsJon8XsSioQEZzsbwJsSYszZZbT1fmA35/w5VPW7M
	AN2P9FpoVm7F+rTITxNZi1t0Chwr4VvoBFbP8d3jKARvJWBGclFc9bOOecKs5fdkJC35z9k95uH
	lFDyWNO3UjYkiRrfoFGaC5mJrSu/m8TmgUHHX7VJ2mxcFu6LhhE8SBSlnUJPxYIKH
X-Gm-Gg: ATEYQzwvRttqWZI43YBeNkmSm3B0qh48VXH+WWSp2FXTf7ZD86zA32IbWQvMEvO2Na2
	7i7vYNH7fBNQ0lZJZp4YNexVpUHkW5vJoIsleNS6OQy7ovaxrVLeas0pMYXVxxZhrIYBbhbnZN1
	TfXRYeSSlfvb+aq+SOcU1nAhl65WDmBkxbFjJFnwWVhJmjz42p1lWW5iHPk54dQmh2UYO0O5lHS
	d5wnULSfZFSctbeWZwSOWLhDdaYfERwLMRGobPEy7bEOsfo5PJOJUwRti2ksJsraaoK89UoLAVA
	u1HFq9XtI6PrwBxlCOYLW6zDq5HWuBlmxstOJwU5VAwBWwDmJZcrS53cZYOhhLmQXZQQ44bo7EK
	HxiVVyDFo7Hoi7OO7r/Db6nt4D41M7IdeGSGpa+GqXf1Yx5azANCr
X-Received: by 2002:a05:6a00:3d13:b0:81e:af19:34bc with SMTP id d2e1a72fcca58-829a2f79879mr13718889b3a.36.1773134255111;
        Tue, 10 Mar 2026 02:17:35 -0700 (PDT)
X-Received: by 2002:a05:6a00:3d13:b0:81e:af19:34bc with SMTP id d2e1a72fcca58-829a2f79879mr13718859b3a.36.1773134254666;
        Tue, 10 Mar 2026 02:17:34 -0700 (PDT)
Received: from [192.168.0.103] ([49.207.195.178])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a467239asm13388147b3a.26.2026.03.10.02.17.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 02:17:34 -0700 (PDT)
Message-ID: <ff5a52ef-7a0d-422f-a62a-6ef812d6b676@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:47:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 1/5] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Glymur ADSP
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, mathieu.poirier@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, mani@kernel.org
References: <20260310033617.3108675-1-sibi.sankar@oss.qualcomm.com>
 <20260310033617.3108675-2-sibi.sankar@oss.qualcomm.com>
 <20260310-translucent-almond-herring-f7acae@quoll>
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <20260310-translucent-almond-herring-f7acae@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA3OSBTYWx0ZWRfX8h8Sx9Bornk7
 UQBOkfXuJQjomXejyiN+L5Zz4SM/V4iz1RnYFHe6gqKcKJ3e4o8uhe8I67wffhBkbcsBTB3JE1h
 HG4utF0ti5CWyMkmIS857Ajmu9MF3SkrVdFwP7NBWXw6ntvLegABmuAcU0YOHTxhI6nWW9VV5jZ
 hX0Xp228PB5miPSo3VDJCByY4Sp2Pm179WAS7m7+4mQ0dg6j3UPjKmVomM2SDR035DT6DWLbnI0
 gI5EP6s+kD2Bl/9xa+qvw6+kMnCH/4NWyHxiT7APGeqbe+0imAv/9LHaT8d7iw4TOxwoiRlIzi7
 nn6osEAo586MHovGdTKLiDqzG2uW/eOML1+omvTJAyx7uHOD074in9jd2S2gCVT6hsWcNm2gm6c
 8Eg7hqhj5BphOVsOaaLk+iTeGwj5oQ/6ofPjBM8Znew9qptlETqaZPIfvpWxLCOO8/zkDRGrC/M
 k8xqj608NdMWptOQtJA==
X-Proofpoint-GUID: KES9kA_7jbav09D_V5HPfijWnwKvy9Jv
X-Authority-Analysis: v=2.4 cv=Jtf8bc4C c=1 sm=1 tr=0 ts=69afe1af cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=FDuvZuZHjihTmU/CkdNO9w==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=XJ9aKg8kxmvS5VUx9gAA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: KES9kA_7jbav09D_V5HPfijWnwKvy9Jv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100079
X-Rspamd-Queue-Id: 2AFD024842E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273390-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On 3/10/2026 1:20 PM, Krzysztof Kozlowski wrote:
> On Tue, Mar 10, 2026 at 09:06:13AM +0530, Sibi Sankar wrote:
>> Document compatible for Qualcomm Glymur ADSP PAS which is fully
>> compatible with Qualcomm Kaanapali ADSP PAS.
> Kaanapali here...
>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml         | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> index b117c82b057b..fb6e0b4f54e8 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> @@ -29,6 +29,7 @@ properties:
>>             - qcom,x1e80100-cdsp-pas
>>         - items:
>>             - enum:
>> +              - qcom,glymur-adsp-pas
>>                 - qcom,kaanapali-adsp-pas
>>                 - qcom,sm8750-adsp-pas
>>             - const: qcom,sm8550-adsp-pas
> but not here, so fully compatible with Kaanapali or SM8550?


It is the same as on Kaanapali which is fully compatible with SM8550,
so applied transitivity to the commit message. Anyway will get the
commit message updated to reflect ^^.

>
> Best regards,
> Krzysztof
>

