Return-Path: <devicetree+bounces-274483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIHgIEd8sml/MwAAu9opvQ
	(envelope-from <devicetree+bounces-274483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:41:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F08B126F153
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:41:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A42E73005EBF
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 08:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0967234C141;
	Thu, 12 Mar 2026 08:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="msuddjJL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NDTB5cCx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114C734751E
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773304899; cv=none; b=o5V6eLi7Owgy+63NvgVOZtdute+201oBul28d9RcA58TVurYUaaDpbpID11t03hWwLOtmIH9cI/m5RPURP7Y9TBUXM9bIB21iwykAa8KV3jqcZGtZ2aK16xsQ/nWvdXWltkxtpykwjyMIr7dWNigE15IsdLCGLU+USqrDdhyd9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773304899; c=relaxed/simple;
	bh=nXEQYjOyUyLCIBUul1s59pVKqz1v+m/N+dx2fP4o3Nw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HbNxhPolI9AVPtNUE6ce2NR0ns5gfF16SYqni6HBsRZUfBcX/ortUrNBSwQUYfa7lslypvcOnxw1dpZZgl8UozaQnzXI3fOoSgJ3tcoQH8zWg9AeeHGavJD6IgMSpoVJiHDpEx6QCBmh7v454dusoqQ1tPTJnPq1/TGlPXd8NLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=msuddjJL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NDTB5cCx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMMrpQ1922545
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:41:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rsjeZmurF6+joxemhQCr/jcIFckZdcXxceVjztyu9c4=; b=msuddjJLfGUpIlQK
	1y2p8PV4aCRFCgMH2OhNkqskThjDvnnouwVmtKArrQOQHW0x61Y3vToaMGg8YpJP
	XJO/oWkFdUEIBJJBqfQ+gUo7Q/FuzFlr4PadGBvjKY6jvO+SXQo+y1bY/EfiTEm5
	6rsP9txr5zc29pi5AMo3CYSI44uabl8UGobO3zQLQ31kGWR4w6DUjaNwC9Iozjrk
	HWRHz1mS/d57+MggDbyuXSTmiVEVditnfdQ5mTglKE2U5flXwRAKvJe5JcZabhR1
	Fy8gJf/hNZjJ6jJ1WEe+R6QRG1kMNIth5mwuQZ0l2i3g0HoCYNSGXMzsAm0NoFyH
	DFD0Qg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wsfuc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:41:35 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c73c065dd15so415102a12.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 01:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773304895; x=1773909695; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rsjeZmurF6+joxemhQCr/jcIFckZdcXxceVjztyu9c4=;
        b=NDTB5cCxwlnHAUAiQUkds++t2C7DSeCZBtu3D4BllwOGAemUrwE0eI3FXVZP0ErksN
         QHeLgoKdPLZfgN0kYMaXxu26DECjiU/PrCIdRceffSbTPY9qrXHmPA4kBEL4jKUjz6NC
         XofLtAjpJRo0Tg84PwCblM0+aMyYEbYfQCl/sJ6+JhdjNuaxINquh08BwCKLorqj5SYn
         N0dIGf3pOr+o7SlABVKFZ5Ujx/ZiI3n7VCGV62s4G2EhQLtSAMhAPOsUlpdPT5oXaehE
         yBZHXFwyESHLOrhiUJ96paHyE7nGAnKojkQ9PZl26DY7c11bnbaP5gfyMbYTL0XOhsLI
         wwaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773304895; x=1773909695;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rsjeZmurF6+joxemhQCr/jcIFckZdcXxceVjztyu9c4=;
        b=g8knpYZHJD+H/Zxyk3SCLmzxMPS96ZOMbWg/x1fC1WCev3a9NrI9R5BAvF40F6AqQM
         prwiFBG9pEZ2YNwy76OcDUtBTdA7mC7jZYZQASECoc0eYgxPEa3rMg0k5fU0FeXfK2yj
         D9PlbmwNTwYn/4KJhAa8Zk3e/35esTGOv1tquq/E8rATRse/LnfC4IY8W2R4WnicBH3p
         gqgnKIGA59ELrvKxQOeBGzVYL4eebwvBQ884kl/dDgJ0kKK8LqJOAFERW4MyfbQOZP7Q
         5YH1PVnbKpHfjUjZKXGCjdCzNk4K20s5WAeMjCWENg7W/qE3sh4UShpRPcePlX9U/vr7
         CNOg==
X-Forwarded-Encrypted: i=1; AJvYcCUZewO+DSLgu0iKbAd9YgDQfqK7OiYxjS2EUO0GRqfmr5Cz81T2jSQUu3g5XL5tqGz4fzvcnrzZ3vGp@vger.kernel.org
X-Gm-Message-State: AOJu0YwZtAhGonDimcp2ANMHEH+0G8lglH/QhOhmaXphZWLSdvbL7W7C
	oDGo/jbFeaqYPcdvhmIZE9AxUjQ5VrD0ZTxD/CD0Nnr2Yr1WFmYEkFCEQH/LBmy7h8t5q9Mnjyb
	gkEvNg+9CX7vgtTBioW0+8tnj/YOYI1ZvCilA/H/4Ql/B53BeYZVb0oDVTT8phUig
X-Gm-Gg: ATEYQzwxuMYP6ZFrsxjA/iZFc4fqjzQVpT+Yf7BWqY8oLXAN25N6vLoDPMMNP9HQuF/
	Z6HI3nLU+rwrNVfeXgEDl9yoFokVjf0NHmROfJploLphLdzuNj8vvgcuNQ4zZdzaHGSfoGiR47b
	SmuNGqo857Er7fwjL8OuamCBCWgDVV/q1te7MyYzpRSzejtMZZvlMCLdjBstop1nfuWhW2TjI1g
	I9MDBCze3azUPfoFiI/vFEp79T4uzgfnagkSZ7De2ulCn/55YADAMT/SvyoamFzej04U2QjLUMt
	WZ+tDjHv/1f/BUnAJnr6uA54urceE5P1YtVrllf79+7zXf2fU58w4SMdIS75thfqRTfJ+Bc7zrF
	7nuc1JseOHmN58ytnuSjyHfEkhWb5aVwx3zKUzhnLrYwFPq9jEJ8q3A7Uunif
X-Received: by 2002:a05:6a21:e8f:b0:398:9ae9:710f with SMTP id adf61e73a8af0-398c5ee9694mr5123469637.13.1773304895361;
        Thu, 12 Mar 2026 01:41:35 -0700 (PDT)
X-Received: by 2002:a05:6a21:e8f:b0:398:9ae9:710f with SMTP id adf61e73a8af0-398c5ee9694mr5123448637.13.1773304894935;
        Thu, 12 Mar 2026 01:41:34 -0700 (PDT)
Received: from [192.168.1.13] ([27.34.253.202])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73cdfab64csm4412645a12.34.2026.03.12.01.41.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 01:41:34 -0700 (PDT)
Message-ID: <0330abfa-7932-404f-b3e3-f43251db2e0f@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 14:10:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Commonize Glymur CRD DTSI
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sibi.sankar@oss.qualcomm.com, pankaj.patil@oss.qualcomm.com,
        rajendra.nayak@oss.qualcomm.com
References: <20260310054947.2114445-1-gopikrishna.garmidi@oss.qualcomm.com>
 <20260310054947.2114445-3-gopikrishna.garmidi@oss.qualcomm.com>
 <rdnz6fc3jfypy7yh6lkswvacarketkcepi3zfaq6pxlsljilbp@yzsyuirax2oy>
Content-Language: en-US
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
In-Reply-To: <rdnz6fc3jfypy7yh6lkswvacarketkcepi3zfaq6pxlsljilbp@yzsyuirax2oy>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GcoaXAXL c=1 sm=1 tr=0 ts=69b27c40 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=3XoJp54woHZrTNLqd2i5nQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=s2f3qrAHSVVwJxwxcGYA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: i4EXvprQ6lkWkKLPCI_hc9UuzMVOF2fA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDA2OSBTYWx0ZWRfX4QFcJ+7JcJmQ
 pRACLlGIObNIGQEp70nY/gCWNNt0Rnw6653N7T4X4CKyReFBpAKHcgCCeID6kkzxzKnGCta0g1f
 3R+RQgt74+Di+f13GwO+Qjwzp0Y0TZioLlhUOr5ezY08mxg/65sdi3TGYJn5eZ+wVSrWHEYmqMy
 9sKtKJ7Yw1qYDp4HkjGWXraV9Zmp6YNDuGOZRUKYayl/UnuOcJ2aMj6G3XnzNKVrNHHl37iQklu
 rL/LBUZl7p7u5ypzdGHZYTs28EpmuaJH++JCkCeiSfzEVOtZZw5Q5w39csEBg/GQAFDOL5La48V
 kV4eQrEK05bL1H7P4ImNYyltq9vPf+70GAwUQSmz6ej5vSkqKcB445ayhOSa5ERE+WL8nYH2afG
 QJXnprT932nepoSY4FZi1Yi52/ggZIDs2w6652Bc/CnkxG5FoeSNYCgO9UDaDp2hZrrQhiSf/Cg
 vFhPMqQn3V8dh1JhZ/A==
X-Proofpoint-ORIG-GUID: i4EXvprQ6lkWkKLPCI_hc9UuzMVOF2fA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603120069
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-274483-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gopikrishna.garmidi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F08B126F153
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dmitry Baryshkov,
>> Commonize the existing Glymur DTSI to allow reuse across the different
>> Glymur SKUs.
> 
> Is Mahua a Glymur SKU?
Yes, Mahua is a variant of Glymur SoC with the same silicon but with the
third CPU cluster disabled.
>>
>> Also leave PCIe3b nodes disabled until the PCIe3b PHY init sequence
>> support gets added, since it's disabled at the UEFI level by default.
>>
>> Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/glymur-crd.dts       | 586 +-----------------
>>   .../qcom/{glymur-crd.dts => glymur-crd.dtsi}  |   7 -
>>   2 files changed, 1 insertion(+), 592 deletions(-)
>>   copy arch/arm64/boot/dts/qcom/{glymur-crd.dts => glymur-crd.dtsi} (99%)
>>
> 


