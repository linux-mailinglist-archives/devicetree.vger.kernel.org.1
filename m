Return-Path: <devicetree+bounces-268310-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gA6oD+renmkTXgQAu9opvQ
	(envelope-from <devicetree+bounces-268310-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:37:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EB21969A0
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:37:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6421F3030EB0
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9250393DD7;
	Wed, 25 Feb 2026 11:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P/QV8DUw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ezvsjhE5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2038C393DF2
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772019225; cv=none; b=oSWUtm/WbfJC4FgK7xfzEvb076Vd1S3ZILbNpK6YtcUOWJijsDK6HCEXjxqmHgOove1BjhcPdrJq4RipxAOYthPjKXZuw7A1hNiJRVm7PbLp9EuYeVGdRX7rAyHc0EKWXYRM9rMDYShLWcoONiDLlXvfUjHwPUsfg/MpjbK7Ldg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772019225; c=relaxed/simple;
	bh=W4sXDajMPPPyEt18z2SURauy8b3MPDVT/g0T+UjHmj4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VI+3xIjxfcLcxLjgVskqD5kz1kPz985IBxpcs8Q4NkXg0/RnD9cqTN7IsVzFAKC3OVkISHXFa2cI0ApzSn0ywa+Kv18BGkSKPp7vu+BjT4zsXsRCOEaYdrLT82Z5dZdzPdSEWwM+k2akn99pOmr0IRSnDqO1puHf34BujD4gGhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P/QV8DUw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ezvsjhE5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9RuDs3056460
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:33:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LxXPb99z4u2ZZ0MrQ6gRxRSQBAGi1ZD4rir7sEpicRM=; b=P/QV8DUwm+8a+6GJ
	Bd6c8vM/leCnmi4WOQtUv842SVsyXXbM+IZ//L96GHQs6vhBxv9q6S8yKYy4uTfi
	yEGD/yw6yxT3vdE4u8ovQJ6+o2tgIaC8HSX/3knQ6x/g3De4QGWfFP6gg7UQJyF/
	xYMsB104XT4Y9sDp8v1eZ5QCS5y3IgAZ1ZaJzjEx+BColvRlqN7VxzCwgL0FfTvQ
	GH81/VnPelDZAdDy73kXnN/WVhLF5PkG6oa8Qv4JJaInBirSJ+nDwVd+6hzNM+2l
	CwQdgVMtZkotalsJ0Jxj9i0GvbVRWhQGfOY5/fIjTwD+ni51+Bp7u1/Q8qhcWEV6
	QlT5Hg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chx39gfdy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:33:41 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8960257db65so60291966d6.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 03:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772019220; x=1772624020; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LxXPb99z4u2ZZ0MrQ6gRxRSQBAGi1ZD4rir7sEpicRM=;
        b=ezvsjhE5CPCs9qkTXqckMpGpMzL84QTy4wq2qcNWwygkEnE3Hrr4BeVPKtggxFubOa
         VPSvpBVWAgUNQcEumDmYxPId8QhJN6bJm25M08QXo9eBr6ePpbDEwePZkc+vs8vakZBk
         cSE7EyNqBAWfLC5iUOIhkRIXGogC2V4e4gTPj3pUa8tGmKfRDzjLhrvP64g2dO3vD4aq
         LKF+sm8M/1mzddCtzKM51DYU9davIV+iHKvR8wZ6+Zae2xSijstmz0oxqFTHr7NWrpfW
         gAlDplx+qGmtcSIWLUMIf4LZDb187q0EAt+VOREtLL0gELe/yOSvLjKtQcylV41yX+jX
         Vvlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772019220; x=1772624020;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LxXPb99z4u2ZZ0MrQ6gRxRSQBAGi1ZD4rir7sEpicRM=;
        b=cZE1bRLIsFTRpuCbTPC/cvxjpH0pyAd4uXznDXw3ZWKaRBiiZv9hnciPiVV9NBBBUK
         we/slw4awYQIAqu86Prl/9YifwEUq0BIT9at/hjEDv8clt/0VQPn5uh7k8PpsenC7ZgF
         c7I0YhStS/qfW2oxkkVYQHcXRonaa+J3RBi2rkvulPEUnBAJMcBVPrldTDYXtoA0IkIr
         hxHpfzDgF4uDieap/NIDc5b5Nsmv/2UjWyLBhl8k32bpIyqSIjw7mSXHLFhP7hdCk33o
         A/NAzrJIl49nHoblRVxxVnisl60GsMSphRLHpsBb4nDYjfXQbZ/GdYXLheDjk3FuTN1Z
         Uhpg==
X-Forwarded-Encrypted: i=1; AJvYcCWoSd8fojVMXKxcu/sSiHohDXmopXjHmC6BM1BVj+hexk/PJRjSqEbF/eSVRkHpJflSco/mpBh516iW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7lxquX/KfOrXN0dtPtwhBtBTm9c3RjO7FRxkU6I9gMvReKKGl
	RG3Sje95xJSoOYe186kqAbqK4OZ3I/2psVoaJeLQgkbH/NwfngiAYX2BKXHj4NGF+nw/ncZfrXs
	WPTCnu4q+3HClsyX5flQ6n4OTcIsEsl6ZZ+K1jWxcsGHD7xC4CxVdHL73binrL4Wm
X-Gm-Gg: ATEYQzySu7DaH7XxDODonnI0YUlyvjRW/HtK9NUTb9g1avETVRnbkhGOVdBaRxtGsDv
	wpOC5cwtxBoAdxwHGgj7M1xQlUyfa8G+OT519Av92y3gynr87NtV22YzBe6VKlCxqESniqKKY5S
	yYmG20S80GzcDNaFuANvsY4Tj83nSlsC+Eg0T6tFh2YwlxjraAI+7A45+cOB3XHeQuhwWJx9HSU
	NKXYQVBtCyN4qwyAJ4LkfYFo19F1m6gDnUQzuLkqtPI9x31CsgjHdY6g1IgBrEe1XzlfAbexFJB
	QzprYGCBpJAFNnrO583tHfZxkSCOZySfN9v/EypBG7C9Hq/xndORyY90+7gX1s4PxksJU0ZATlb
	ypC2mtXT9FDdT082R93NY4mt2j0XwsjljztRqBXqLbN1DOY6tsNYK2LJ5wVL8fl1Ve+/is4eDKi
	+391M=
X-Received: by 2002:a05:6214:5e02:b0:897:1e9:578c with SMTP id 6a1803df08f44-89979d42f09mr152121326d6.4.1772019220311;
        Wed, 25 Feb 2026 03:33:40 -0800 (PST)
X-Received: by 2002:a05:6214:5e02:b0:897:1e9:578c with SMTP id 6a1803df08f44-89979d42f09mr152121076d6.4.1772019219749;
        Wed, 25 Feb 2026 03:33:39 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084e87c92sm515124966b.45.2026.02.25.03.33.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 03:33:38 -0800 (PST)
Message-ID: <4f107fbf-575f-4f6b-9c70-e8ee5e67ce7a@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 12:33:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: lemans: Add role-switch support
 and HS endpoint for tertiary USB controller
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260225093155.4162177-1-swati.agarwal@oss.qualcomm.com>
 <20260225093155.4162177-3-swati.agarwal@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260225093155.4162177-3-swati.agarwal@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDExMiBTYWx0ZWRfX7Makf/6G/qX3
 HqnmlwXXYFdB5lVAn00fQ9C7N5hHrdav0Vmv3HWwwCl0t0tEB19Qz/6jDINRWl7QknvTgtvPX+k
 d9iD2LRc55jRQyNEpfpTMHZiwDLeqd+9jJnZLNksxfzP5CI30cBZd8STgfWz4AksySUan8Ik1S5
 N5hRQwGuEXieNeA+r3J4B9LSnTBFp7gYr9sRUMd6/UkVxSYC5uORyDPA9oSS98h9MUhlON/M5iX
 Fr4D96aynTy2CztYq1EtLF2x8rCEJEgHekGIzGiV3vt+vngg3Suh22zoYTybB7YNE7K062pArd8
 glcraKZF04zqeIKAtX4m9Sd/ks5PdMiSSH4AFbLNOerglvPYiU6BOmiW2VkVuqDww/k5RzTInVZ
 gaYi6wMYYTU5A7OBSc79wlayoZlHSG41ZXV7I76ozv6v9WFAg7sQ72nrueZpwezyl3NSRN1YmVQ
 W8p7H3G5e5zFnCOVmOg==
X-Authority-Analysis: v=2.4 cv=FvoIPmrq c=1 sm=1 tr=0 ts=699ede15 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=b1MM584mEctOT_RrRMUA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: wLDGZK-6LKFc_qXu6SeAvMmCX-BKpHNZ
X-Proofpoint-ORIG-GUID: wLDGZK-6LKFc_qXu6SeAvMmCX-BKpHNZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250112
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268310-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 94EB21969A0
X-Rspamd-Action: no action

On 2/25/26 10:31 AM, Swati Agarwal wrote:
> Enable usb-role-switch for the tertiary USB controller on Lemans.
> 
> Additionally, add a port node with an HS endpoint so the controller can be
> linked through the DT graph to the corresponding connector.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

