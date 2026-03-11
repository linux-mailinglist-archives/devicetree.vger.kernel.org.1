Return-Path: <devicetree+bounces-274068-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCStN51ksWkZuwIAu9opvQ
	(envelope-from <devicetree+bounces-274068-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:48:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCD9263D5B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:48:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A668E3138E83
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E42222A4F1;
	Wed, 11 Mar 2026 12:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o9iD8xoU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WwLJxjya"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7FA1A6829
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773233155; cv=none; b=qIm68qcOe4WlCyBcvb2o1XABnIcC+vGD4GxSlc+Y/BSS0ML/v1UjnYCw3ICdK0HakQt+CP3/7TJjd0eQpzR99XIr3Ye7UBL/XxqBHSCmBmrLDQPAR3CaUSzvWNmCVIiaNoMM6yx5wDul2n1RYpXZWCtJJd/g7xk3FDS/dceW0sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773233155; c=relaxed/simple;
	bh=MKVR/nvepjzhVk781OJpWMzL7c3MzQ030ZF6t0WPF1I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=toAYOopWDFWq+rFDiFC9ACQXL+YfWCIHx3YWmbIcn2DPqfnroeGNvdd2JglvbIZ13rqO43ctu/1o0c3kn1k26Yw3yeWmD7AEbchAbkWPiq1Z3zTv4if4Je7yY4whK6RFolErQc3V8MsEuwNfoO/6HsF2C15b7V+ODa1eXDC/C+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o9iD8xoU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WwLJxjya; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BCR2cx1439686
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:45:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cdLrQRRyfilWie7X/vDizKW44QbQM3u+eAKoqS/Yu5s=; b=o9iD8xoU98ywtGiQ
	o0fzOhWqYWcHGQN6vWIxDHD1Qyn/acwdyy7fGTUUbDjIriEqkPsNr68NnN8KRZbd
	+GlKGvapezHBoGUo2eAngva+EpSR0IetJYEhb2A1fq+40tXazrQTQGfqquKIx1XV
	VqlgSQjU9Xdj553M0MeEsNiI0zi+3h+dfcFe+j6KUoTtQ/oDwBhkBVOlK/KF/Lci
	POVdK1RR/AEHuPj0OKNQkE3p0vrrDwmDp7U8LjtexQWRmlqUoHaGwNEJ1w7iOHQc
	p1Y6e7ZJu9XxRV4gK4PKdDEB4XnDllUV1Cl1qr+4iUtQu/OEbrChRGzTvp50wc0V
	4AmKpA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu38yhbc7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:45:52 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-899ebdd0b08so69429166d6.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 05:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773233152; x=1773837952; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cdLrQRRyfilWie7X/vDizKW44QbQM3u+eAKoqS/Yu5s=;
        b=WwLJxjyaqTGxYvmR55d5xOogUlA0d03NCh+f0IgNTnBeqLak8qPZqt1jgChK/HaBrk
         AB48ExkcPnP0vmZl/oRjXINRJMM6fzrpOSlqeauDsRhQqX7i+Zc346e3cc41yhFu9chK
         YiReb3OB4x453j7nZIlNqbiw/3U3QWRmQDOuzPCQrqLIBKhp/UH8QQb25rm00QvlN7sV
         xpFMzKrXJ+unbPbu8MCUOf/aul9OwexJvlWcewbS1IQnbov3ZaS5YUnluRqrhuUjy4pu
         LDAGm25G8FfAcX1lQIGTs9zc4wZ+RBh9ZflqBpJvdF5xkdy73vDg1Moi7UsGQeAmM4F/
         WwIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773233152; x=1773837952;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cdLrQRRyfilWie7X/vDizKW44QbQM3u+eAKoqS/Yu5s=;
        b=dEzW61ppjrd7ls8kk39BYOXglC4VssluXNxPXR9GHJL2OdaYk1le1fK5EjAq2Qv6h0
         3aFyIvG+jgtAuqeagIgBAU74tCh70pi/UFi1MFXHQ66fu0IDuZRPKJkfLsnXJA/laJgW
         nrh+c5VbdkFEPbpJfjee7aEqvvEvpGQiq2G88Ot55T+S0rimE9FPZ2+m3ESsdBAOxOsT
         VScSbW4KIgGqmOI1XFgjpETta5nyOt/i9t47y0LgMZ2B1FQzyp5dtIDGxzdoxJS8RigY
         8CY4mjGqvKGym0iaGF9NZFlRMrIyK98l69cdi9ur4xNIZ00HOk+uEKHdUi9LRsWw5u0C
         4KAA==
X-Forwarded-Encrypted: i=1; AJvYcCXXgp7Gp26YssnjnoOaT2fFY8ycXF3Jbttvx74c6vmOzC0aKK7CRCexCGdFAHB8Qba7SyQnCY3RInWO@vger.kernel.org
X-Gm-Message-State: AOJu0YxkKcr3z7xdjbAk/n/ELFxHj5jZHfiVZ28XwXRhFG+fxrc9rm19
	/1DRwpGHG9eYcEmn/pqYKNSqCZuRcTG1t6qNL2DyG7jlwjHHiR4+jNmeu/4difIaGntSWiXjsKW
	e48ur1em+4TmG8Y05OjkKd9MQI6q0wcdWqOtHriwM2y7CCsorijHDRrwQ43dqwxeZ
X-Gm-Gg: ATEYQzzTrsH88lFK6h2uQZwqGnplNCX4EZzqOEB05PoIiRGxHZ2Dedx7mxU+cFKgLsx
	LQkm//HAO3yCgzsU+fkIdgw+TVo/63SR92n8zexuE3K9AM3oS5BVT6Hnqgah2zWAmjZ784CzD+W
	xdm/8WkAStY9nt3l0o9xWPvDP81DGAdkLhDJezqNnemi2BokckQiqX16NTOHqrSzsHfrHu6uS/U
	1ydolHoYITD9bMpV9jYQZjlUG6a78kiMF5mAhWw5EIuu1dTGkS7PZ9UqBDnDPmuuwNCyn6UH+sX
	6+G8vxbIvux+BE7m6fdPpHYI1eVtXPiBRav7akA9hEx28PaZUbg9kqeMjaWKcEB1H0W6nYHMmpC
	3gutvrFGjSyeWlp2G+Q9z880ZM33Q4L7Jf+2fKpEAqvbWFHJLcpiYC3Qnppdp/LviR9Uwdub6VM
	JvLBE=
X-Received: by 2002:a05:6214:4704:b0:89a:4ee8:459 with SMTP id 6a1803df08f44-89a66ad045amr19738426d6.5.1773233152201;
        Wed, 11 Mar 2026 05:45:52 -0700 (PDT)
X-Received: by 2002:a05:6214:4704:b0:89a:4ee8:459 with SMTP id 6a1803df08f44-89a66ad045amr19738106d6.5.1773233151702;
        Wed, 11 Mar 2026 05:45:51 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b972e14aa2esm52398166b.38.2026.03.11.05.45.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 05:45:50 -0700 (PDT)
Message-ID: <31108875-d0ed-470a-9eea-e57f4c89f58d@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 13:45:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: sm8550-hdk: add support for the Display Card
 overlay
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260311001238.4191034-1-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260311001238.4191034-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEwNyBTYWx0ZWRfXx1xcL6JWML+y
 R54GL6Ic6PRjJPgTOz+t7pxbCOrcRGakg5+An7tfOQF/mjSNxp2xuV52sGtTYnqSoZpCESR2ffW
 3zbgn3vD9p/Trztt5GzP9uwTpGzouLG+H9y71l6qg2iksb9jCb5/QoqzXU3aNgFvkJhXlieCcGZ
 9O1X8VJLnaRhK7XSzMot4IqmpI2ve82frqEKAphIiaNo1p5EQb7TONQWz5DPPMfnjwmzcMjQIcv
 1LS05i8ls6Gmp+ah+eACKVPxLSTf8tNiz1iYAV2S/Rpj5cr644WImIMCIBGvtnw0MsjTIaI93lB
 S5VzBicXWHIfJdnLTd7yPf+WBGDZiruNnNruG0JFYrWsUVo8XUwUuL7z40Vo4vfGGq58tzuwsYt
 cvbYBdamOZJeuZVNbLBfJsehcNStaeQ856B//yLZ2RVc6P3ss+XqNCbUV0XrTbedRXK+CwfwyRm
 6wZZlcvo8H1aLios7WQ==
X-Proofpoint-GUID: Ln_VpYi7k13ybA8EzE0KTZJq6Gldv8HR
X-Proofpoint-ORIG-GUID: Ln_VpYi7k13ybA8EzE0KTZJq6Gldv8HR
X-Authority-Analysis: v=2.4 cv=Cq+ys34D c=1 sm=1 tr=0 ts=69b16400 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=dktjcL7kckRUqMNtSHQA:9 a=QEXdDO2ut3YA:10
 a=zgiPjhLxNE0A:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110107
X-Rspamd-Queue-Id: 5DCD9263D5B
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,linaro.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274068-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/11/26 1:12 AM, Vladimir Zapolskiy wrote:
> The SM8550-HDK board may be connected to a Display Card external PCB,
> which is identical to the already supported SM8650-HDK Display Card,
> it provides a VTDR6130 display with Goodix Berlin Touch controller, see
> also commit bc90f56a1699 ("arm64: dts: sm8650-hdk: add support for the
> Display Card overlay") for additional details.
> 
> Two overlays are added to support SM8550-HDK plus Display Card and
> SM8550-HDK plus Display Card plus Rear Camera Card setups.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

