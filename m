Return-Path: <devicetree+bounces-262103-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPDnCBa3gWmEJAMAu9opvQ
	(envelope-from <devicetree+bounces-262103-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:51:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7A7D6675
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:51:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3E14130215A6
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 08:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52F9739525B;
	Tue,  3 Feb 2026 08:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ILmb8T1n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Sq3PvFsK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DB423C4FF
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 08:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770108640; cv=none; b=PCzzi3M/Xt2zrh26JRX6vLG2kP5AI11djJDAORIiY0Ci1eHi1hAAWogaU/+uFnfOURjWJiGldiMeKNaXLWkfVwA9Zu8QUtOhWUN8xqyP/a+Qa5iETxETeBzmyAzdMj8e5f0XO28Bs6rr7Tl1DJZYjLQ9d9DEjBOjugG7J+Pw7fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770108640; c=relaxed/simple;
	bh=5PGNAdz0IGhaQRyIi2BcslJKauqrEIBTICyLSphH+TA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C43Wm3LEgKRRY024EdzngBRLG3JKHXQG1dwj6w6W4kwl+9RLd55rlfsf2sCDXZmlkbz+Z49/xJNTooqfLnNUQsgYjm0EfN3vatQ6aoM+6/kLUSjN53zEYO2Dccx4r9IwJSvE7bMNa6BaSIfW/j+/Vd9bRYlQ4KkB3uu0JdaU7kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ILmb8T1n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Sq3PvFsK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6136u2Eh2884358
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 08:50:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S/fRdI2PF6m1aXfRifRrrW4GDQwRezHHNQacN6YnKws=; b=ILmb8T1nDBEAW2pb
	j5+AvKCyNxYmXkyeUl8I1T2THz2iPlbnL1eLh5bMeqTko097STabFMfsGXZVX+u7
	irv8w70rcJub+y8zCFJ+YvHkXB3TUbOoXLYWIdbVxsvXAQEWSBjVcZo7PQb236Co
	Te08TXQrGOTzY9MGjo44mfIYOtt/wc11L0AhLiKCS5gQej+nloDfWi9uyFroSP/c
	A0/m99sYYq1Hsr6FhChF014ApYGKOgezV2IHhEtPurs83UjH4uiHcdx62DrWWqbz
	5qyUTJ8DOGInbHNLnAd3khVQdDbPhKqZ03MYWb9K2fpzY6nwUrmpv5JsbLRygJyN
	mXm9MA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2uu3ke18-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 08:50:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2fdf3a190so53529385a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 00:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770108637; x=1770713437; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S/fRdI2PF6m1aXfRifRrrW4GDQwRezHHNQacN6YnKws=;
        b=Sq3PvFsKXoHN4TsSYhyOosDU6fG8J3NT0/8p0/0DlBxCuJe+lnx9s/PH5GVAN76sBW
         9hAALynXgx3tg0LZulIACzUeI6ACMuK34UdYzXgIXuc0FzLhM3AUqe3GEwWRhRRliSkg
         DfI5FXnM4gNaNgSmirNEgkEDKSQkTNRVzc2yB+ztDlA2p33WBGYf5Jo5MAj0aXLC/Py9
         ZTeUrBrT0xRiQLCUcp8iSVcZhPjN53v7iTtxvBD+JsW8+f9n2SnJAcoebgvkEANu+zLu
         6/VUcRUSbGIFU3UgGMlY/M1qnUQMKUPNMABuVLNY+vKZ27LXSIxgB1WykDOMbllqRaGB
         SD1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770108637; x=1770713437;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S/fRdI2PF6m1aXfRifRrrW4GDQwRezHHNQacN6YnKws=;
        b=G4umfRwodNlk9PHf8FQVyVqIYxcGkNpFHF6cJb/Hck4i5C3SPxihmuUERkP39DzElz
         cWMfrJbm75JqgKv0KbK1UIBw3+3PVQCnrT0nVm1gxpgO4+0lGLKCvSOwT9mhrtBDN+3Y
         YgRnEslHlKBTKdhU12VXKpZr5qqggCb0AsPAGc0yWe3srIL7lAtDkW8dzcxy5K+t6Edb
         TQBJEK6HNav/js5HHv67pPzE66IelaJRItPifqpuzYUJeL3Cs/afnXNQu5ZtGMa9btnY
         +lbqxchK9KKQjtwlaIZbWgKvRbuobS6pHKG1d8xw715zg9fVwcGEO4kKVfMe0mb9zuSK
         k3SQ==
X-Forwarded-Encrypted: i=1; AJvYcCVMRLZRZMjeMY297Qf7RSCkCrMC2x3AowzaSev56vK3D+hmZC5vuEj+bNz+y7Npe6y64VuFUcR4oyEN@vger.kernel.org
X-Gm-Message-State: AOJu0YwuGYEO2NFBNoRg3y8iBtaCJesNhDvXUBexGayXn4jCw2ZeZpnc
	9PifE15zHLahhdE5bbnIVXuCdghSeDIOz+4409Lf7kUH5qUqJIm5NYetY15bQ+rMFyikcQLofvR
	R59mBrQAfLmVCKjAGypqPgl2zS5/BkERFhvKGs86U4d4IiJobsXHCv/ioN/AWVULE
X-Gm-Gg: AZuq6aKgn59DhAxGsvq7BN/xfnlqYLTb4q3y2vPqyv5qs+51j2YPrvyPN+8N3k6LqDI
	o9PTqKR/SbIdIJzEZ63T8nQ6hQDjpr/eknHS/cqJH40XYnToScqxb9aK7kooEsU8ZkeRGLB0Ik3
	mBfVDpJI8oS3AX3Umeh/y6ffaHx2iapSmwnLYryVoMMNNYM+3hFOakH68VANxa8Z8A5EdL7C1RD
	w/Xx0/UefZmPhlAYf6SmIyVrvWhWrHtmQkPOD/YYh2VpJ3KB1dX0e6/Uk5UfpJVwl1koFeX436b
	EZGMh1/oXRo32cXEV16WzBHaOH7fxPhoCtc2CJi2ifu9CcFc5BXwSD8++s1GxeWm7Swrt8IC7du
	053cMQsEhKn8l2KEC9g8nvq0BdP9USuf4yDVURuP/2XfdA7+ziqld4kVeHcfiRaOeCKA=
X-Received: by 2002:a05:620a:28d0:b0:8c7:1af8:4ea0 with SMTP id af79cd13be357-8c9eb2ecf59mr1389594985a.6.1770108637380;
        Tue, 03 Feb 2026 00:50:37 -0800 (PST)
X-Received: by 2002:a05:620a:28d0:b0:8c7:1af8:4ea0 with SMTP id af79cd13be357-8c9eb2ecf59mr1389593785a.6.1770108637017;
        Tue, 03 Feb 2026 00:50:37 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbeffedd3sm975081366b.29.2026.02.03.00.50.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 00:50:36 -0800 (PST)
Message-ID: <6019b38d-3a15-41f5-989e-1f576c327446@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 09:50:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-binding: document QCOM platforms for CTCU device
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260203-enable-ctcu-and-etr-v1-0-a5371a2ec2b8@oss.qualcomm.com>
 <20260203-enable-ctcu-and-etr-v1-1-a5371a2ec2b8@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260203-enable-ctcu-and-etr-v1-1-a5371a2ec2b8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: GnldhhxmE-iPFg-rYqRr96zTh-SowXDy
X-Authority-Analysis: v=2.4 cv=OrRCCi/t c=1 sm=1 tr=0 ts=6981b6de cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=JrAyZVcpMNYPRdOpmqEA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: GnldhhxmE-iPFg-rYqRr96zTh-SowXDy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA3MCBTYWx0ZWRfX57qc22U4rQHl
 4xV52bKJqXEQdAkloJXBpahZFNo3r8Goeo2dstaoLCJOoFxmAgTXQkoW+2p+rp+l1wElVIwbPvS
 1DGZ4+AD3gQNllC7WhCGWpMxtAxM4m9vuuBT/wR8LOG33P9zGSFeEwdovTHIedY8k3vrzKOCGLZ
 C8tGmT0fThcTV0d28fTpX+s+jx6ay8sWfD+2DxKEJ6iERd1EEN8MvJlZYpCm7ZFJRKpCIa5lIYF
 +YkZBRR3AjGDMg5XQnGuV25kVo9/WkyLS0s7wkMiWcVDyK+SPBsuBIsYF/w1d7s5d/2ReyBhrnI
 JH60xYY9wfka8WH2aK02paeIzgJOCkjmgK+dnCrrbekeKW4W9V4UvgTqZdH6BIrSARe0pEMd+6R
 E4EcF05RinDpr1hr0McyW1ESzXf8k9cFKP7MMnlyku07WUnFcZc4kSV/vsVBlG3Gg9ZbO4kCeMq
 FhhxTQHmUNxlLCgFBaQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_02,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 phishscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262103-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AA7A7D6675
X-Rspamd-Action: no action

On 2/3/26 9:08 AM, Jie Gan wrote:
> Document the platforms that fallback to using the qcom,sa8775p-ctcu
> compatible for probing.
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> index e002f87361ad..68853db52bef 100644
> --- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> @@ -29,6 +29,10 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - qcom,glymur-ctcu
> +              - qcom,hamoa-ctcu
> +              - qcom,kaanapali-ctcu
> +              - qcom,pakala-ctcu

Platforms with existing numeric compatibles should continue to use them,
so that the mess is somewhat containable

Konrad

