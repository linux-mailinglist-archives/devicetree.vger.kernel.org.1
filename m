Return-Path: <devicetree+bounces-272350-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Phf3OJxOq2mHcAEAu9opvQ
	(envelope-from <devicetree+bounces-272350-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 23:01:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 861392282C7
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 23:01:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A6C76301B78B
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 22:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A7093EB7EA;
	Fri,  6 Mar 2026 22:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LZFxCCUn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eO8Mygg3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685D52BEC27
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 22:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772834457; cv=none; b=SkRwkia3NsyFbK5RQc7fi3yDfeuXdDZMOmpfBsNjrM3WmgQ4ii6LIVu+VDbdDDeNpNVPUqt74HzqFXnmAB7kzUZRxyBen140hBuV0v0BjBpzaJk6EbfLC7/+yTqdN5cSLiobvU4mSSy8dl9heQEiMVlsXVtz9YPpEW0smUltLPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772834457; c=relaxed/simple;
	bh=swHjPgms4MZhnC7AecoYqmjnZlbvr8+euga4dr04mLA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kd5PMLyc30h7KubWwWNwdO5cMza52M/ei678CHi91dhUB06S8WRpZFOBxkWsA6R8z7Vf3AMfvJwReZ60pndjVCeQrDt8qeoySDCF+ElDTUQKHAqDKrqKf/z30TlH0sLEAaHwWbyuCG5hZYYuQYxqnJmuSClvpHmPCqs50qH5ncE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LZFxCCUn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eO8Mygg3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626KWhKR1207123
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 22:00:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gYR9JUD/FzJUCFovVZEtzoQZJUM7b6CyT+PGPqzVdqg=; b=LZFxCCUn6WpNEccg
	RJnzb64jVXdN3+LfB8r8zhZFKZvCxW7dwcQdYCpWhoWQ5zLxLUR1MJomYdDYFV7g
	52tgon9P+7hTkEdj68q9W2y7TrE9cQcZblIsqWVLvUR4AykkuAbEZdh0MT9gpOUz
	yn6Ebl0mn+fs0Z6dg+vdt16RUdTBDUpiWWvlf7fRoTPE4pboJgPsI061h4SS/io3
	Tp1FjnM5LfCpfd+0/fC/vvDevcujlhfid2NYFvI4lIa8Tutb81vWpz2IIkl66HLU
	0uPflehAB6a3WuWNrav5pU+XcrN8ONqkeOcPSYbv0jhXD6lYPAb8BSyHjYt1piO9
	kJQLhg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqpxdujg5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 22:00:55 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ba8013a9e3so9326720eec.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 14:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772834455; x=1773439255; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gYR9JUD/FzJUCFovVZEtzoQZJUM7b6CyT+PGPqzVdqg=;
        b=eO8Mygg3kPqFk0I84wo+zh9D1d0rkw+Bh7Fb4llZJq04ZTV9f9sH5scYC6qFp8UVwo
         K4IS4+e+GoJGU+FeIzdzV7FC3U31O24UCXruhFQmkie9+H7SKeBvEPNPs1HL1JftqTeh
         0Od0pFGRw0QIeHdtv6WV7bgvqZ57YkLzB8Dx4YTpXJouYVuhWJsmFxu1hpMvarq3J9d1
         TI3ioEDCnqh2RrLp6b5oa6IzZpApCFd97pQnpEe1/oGS8nJ6WzmaxrFEZnnn7mCTu6vs
         9o5e39ZAy3icPHc0Bd0VAM47zhMHdobIVHBsvZTi33cxOba2QcVk/y1vXrdf3q7NuNXS
         C7mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772834455; x=1773439255;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gYR9JUD/FzJUCFovVZEtzoQZJUM7b6CyT+PGPqzVdqg=;
        b=pS958/Agrdglqao5cGxzv8PkIFsks0dIpKwnpxGORJvy9RpZzpOjclgizf7XGxVFsU
         9O8ve2hVTQcUcxjg+zQqd7v3HleXMFg/MNbkuFLmID2AtrYCcl/xOwUEkB8YZolAZ+wi
         DB4n3REnmS92IjQxPAHBvG06mZj1cZzblVos9yoG5wnIhKDDu550Gm29b2YpdNU/cojc
         ife4zkmwJX5lclVy7D/bGWpgvf+iSdrbhZzYomCeRkn8hEBGlhmzZfLLWQzwMLIwO52n
         bn0daHi1+3tEc/tKsf0MqIwX48bwT7uWeSuPENrYWU1NYpQLilyme6Y8sJcEIp1S9Qvx
         ci7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUIfEH1/Rv8LQ2ilxj0xSMEfu7zjpmEv9to+xB5O13VKDf32oCobQ8UtzicQmKigRzPBeV1vRs6dDx2@vger.kernel.org
X-Gm-Message-State: AOJu0YxdQvqo+DL14a3ubkJIlhbBEkUrmj8pzFwUd4XUplv0Vo5lifHj
	r/ojjQ9+u88XTF9eW5rZKbNrPiy3nhdI2n3GrRDUJYzRXG+6++myjEQIqTk3ynw41JipC0ZrfL3
	I3k7K2rIfWeMK0Dqx+NCdn8WOPUMKztZSoUKjTgwLvjwBA8B66BOX4qMh8Eqh74y4
X-Gm-Gg: ATEYQzyHNn3QRxt5PvCljjHQkqeZIbdYi+zcptot0gTUtYIK9SIDyG8ooZsPrDP+zkO
	rRNVn0UyF+/07HEW56fPtX5A27QxyErOzHoYcVv8ENWLjOZVNqTp8uR7Gt2UbjtoWo8kQcz4g9P
	YzN3Ss2dhSRSLIGJZlhPNnQak28GFAg/VXI7cc0CTj2x3ORXp/Dp1lPCsHVrsfKu6bmOQOOmCL+
	g2vw9YcrzLtcaKOqG/ixJMO3yTdxbNceGsQDBARkKBJ4kuOeYMtXzF+YQIrIbn+rsvp/S359BLu
	TS2BkEeDgynzl8+Anv81ctSo2ymxrH5dWDRN1YgArUQQWazxNc1QshLMDzZbg1ZwecLEbkxL7ts
	Hfwp0aM76yKlmLKCzXVvd9Ir/FYl6fdtQ5K6mFYtRfyJb8AAu/hAywCvbH4sY3y540WG8DiobZn
	bEyMFrMtpARol2VA==
X-Received: by 2002:a05:7301:608a:b0:2be:1946:8587 with SMTP id 5a478bee46e88-2be4de8f969mr1272717eec.9.1772834454909;
        Fri, 06 Mar 2026 14:00:54 -0800 (PST)
X-Received: by 2002:a05:7301:608a:b0:2be:1946:8587 with SMTP id 5a478bee46e88-2be4de8f969mr1272665eec.9.1772834452873;
        Fri, 06 Mar 2026 14:00:52 -0800 (PST)
Received: from [192.168.1.41] (c-24-130-122-79.hsd1.ca.comcast.net. [24.130.122.79])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be4f80cc1dsm1962924eec.3.2026.03.06.14.00.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 14:00:52 -0800 (PST)
Message-ID: <13091f47-938d-43fb-a8c0-4b081818b557@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 14:00:48 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/14] firmware: qcom: Add a generic PAS service
To: Trilok Soni <trilokkumar.soni@oss.qualcomm.com>,
        Sumit Garg <sumit.garg@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-media@vger.kernel.org,
        netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
        ath12k@lists.infradead.org, linux-remoteproc@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, robin.clark@oss.qualcomm.com,
        sean@poorly.run, akhilpo@oss.qualcomm.com, lumag@kernel.org,
        abhinav.kumar@linux.dev, jesszhan0024@gmail.com,
        marijn.suijten@somainline.org, airlied@gmail.com, simona@ffwll.ch,
        vikash.garodia@oss.qualcomm.com, dikshita.agarwal@oss.qualcomm.com,
        bod@kernel.org, mchehab@kernel.org, elder@kernel.org,
        andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
        kuba@kernel.org, pabeni@redhat.com, jjohnson@kernel.org,
        mathieu.poirier@linaro.org, mukesh.ojha@oss.qualcomm.com,
        pavan.kondeti@oss.qualcomm.com, jorge.ramirez@oss.qualcomm.com,
        tonyh@qti.qualcomm.com, vignesh.viswanathan@oss.qualcomm.com,
        srinivas.kandagatla@oss.qualcomm.com,
        amirreza.zarrabi@oss.qualcomm.com, jens.wiklander@linaro.org,
        op-tee@lists.trustedfirmware.org, apurupa@qti.qualcomm.com,
        skare@qti.qualcomm.com, Sumit Garg <sumit.garg@oss.qualcomm.com>
References: <20260306105027.290375-1-sumit.garg@kernel.org>
 <20260306105027.290375-3-sumit.garg@kernel.org>
 <e0a86461-c136-4371-99cf-c0b0d31443a3@oss.qualcomm.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <e0a86461-c136-4371-99cf-c0b0d31443a3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: E8BnnLwHDS2epYoBG9WuprBC2ikFAnNV
X-Authority-Analysis: v=2.4 cv=E83AZKdl c=1 sm=1 tr=0 ts=69ab4e97 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=Tg7Z00WN3eLgNEO9NLUKUQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=JJlnT80H4U8AMWgPcGUA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDIwOCBTYWx0ZWRfX0en5UROhaQd6
 kpmvFOJc43TyX1zufjZmcVWHRsD2Rn6gqH6m9gS1IydlMFDbp6WGm8W0v7ZgqpnYNviOlKTG/Ui
 J1MmV0/gGnsMmsCWU05zw8Z7RzUg5wuKruq565yYXEnEI0NkUIedPinZl/HJL96xq2+MUl+ZycW
 wZ3VkOxTXkixxyt2daaQ3BVHRtIiAgcBGn6ZfzflAksxInXZKwPSoDX5Ldnj6q/PKwQC2yfz1ZX
 9sGCVJIeOqBOq4Rr7p9v3jk2w9DlVBve5oH56WLDvwtAJWD8gKd4b68Drn8oh57SDoh9uPoQrRl
 gRLI3teY03pmtqDD8g6hbZcnTdWG34+wyajm2lFaCxLbfBWKY88k4dn7+PipZpnwGvbtBl2FgkU
 VrGXrSPtJROuBB39KhwvFByfZGRKQPz/jGyB2NseEpDSvooors2PQ/tSoVGsoNP4INV1wKMs6et
 pIL6FfGlfn63wS8eK7A==
X-Proofpoint-GUID: E8BnnLwHDS2epYoBG9WuprBC2ikFAnNV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_06,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060208
X-Rspamd-Queue-Id: 861392282C7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,poorly.run,linux.dev,gmail.com,somainline.org,ffwll.ch,lunn.ch,davemloft.net,google.com,redhat.com,linaro.org,qti.qualcomm.com,lists.trustedfirmware.org];
	TAGGED_FROM(0.00)[bounces-272350-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[49];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jeff.johnson@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/6/2026 11:47 AM, Trilok Soni wrote:
> On 3/6/2026 2:50 AM, Sumit Garg wrote:
>> +MODULE_LICENSE("GPL");
>> +MODULE_AUTHOR("Sumit Garg <sumit.garg@oss.qualcomm.com>");
> 
> What is the convention for Qualcomm authored drivers? In some drivers
> I find that Qualcomm doesn't add MODULE_AUTHOR. Can Qualcomm community
> clarify it here. I prefer consistency here for the Qualcomm submissions. 

WLAN team was told to not have MODULE_AUTHOR(), so ath10k was the last WLAN
driver that had a MODULE_AUTHOR() -- ath11k and ath12k do not have one.

And in reality it is very rare for a given module, over time, to only have a
single author. The git history contains the real authorship. So just for that
reason I'd drop it.

/jeff

