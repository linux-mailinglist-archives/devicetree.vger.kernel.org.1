Return-Path: <devicetree+bounces-259846-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uC1lCnikeGmGrgEAu9opvQ
	(envelope-from <devicetree+bounces-259846-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:41:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3D393BB7
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:41:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EE644300517F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23367349B05;
	Tue, 27 Jan 2026 11:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AGQolWPw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G6QXreCC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3006E346ACF
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769514093; cv=none; b=eC3JWIqtk4D00G2ZGFQE9crWtwotwnx9rfeG2XhKXKfQw94kiExGmCgpyX8+wHcNZhHxxzAJ0Pg0H50BQ6tCugZQZ0AQP6/F8YNlyglo2qgxTMazX6Pl02NABcaoPXzeBKXh9voo/B5WRBX9BUoMgJ+KO+atEoW06/2GV6+M+5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769514093; c=relaxed/simple;
	bh=Xc+XEbWu7NydMS1y/ul3bnMWcOeJ2XSUcR1hvGpsXAk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MOaqbfTTrJS8Sj6K5ljrjzT1Y8muqja4wEeYCTLPTGDRq3b9vVzH3LqaGviQ6WCEJeoSxgPLjXdFCaDoXpKOyFbnS8D0tnR3N3OxcpvPN7P7jNf8qJ4dLthHziPBkwmzrVj08Dc+aZ+hALx/M6AjZadiLXRiaZjR/kxK02++Y34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AGQolWPw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G6QXreCC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RA4PLu171390
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:41:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y/LYpTnA6P+gHv9F67L52mGzLDD2sDygJZB/kfqndfY=; b=AGQolWPwXRqBElCS
	Tblvac8tvTr1pjU6aBZHdCx1Bl7yNM+UCWThWDDPshKw8d02Q1W0uW9023pw06xv
	hByoN6hdAmQY/bvmzkhv2c6D6nkyClm+U7xB+WvOEzQkgcxhoJsc3ZenKeercntJ
	bAIEYjGsjGc4NZNzDFigGkKDgNl3adYhjogbE0MCuY3kVynQxCU/xGSYlrUMMWQY
	iMGcvbCm+W1T7asQq+Uv9d9bfYG2UATBOJSIbjdCtAJf2SLXRT+heRZhO4sAEImS
	B9sLjDRg8SL/b+F4eOQvTbbdYfuUelrBlfj8oYtDTgAkqxTI0zTRJ52OIYHyiIj0
	k9VvNw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3a2mgp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:41:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6d6b0f193so119158385a.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:41:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769514089; x=1770118889; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y/LYpTnA6P+gHv9F67L52mGzLDD2sDygJZB/kfqndfY=;
        b=G6QXreCCfOPePV2gAjYXMEF/RDcGuv9lVK6avxAyTms1fS9c4eGb5Tz6rKBN6eimQf
         jiWX16soKyHUQjDhFMtJcc42S3ImPO20ha4Vsh8pSg5Ec5eh/PB1HmmDwkrUpMiX5cr4
         oVq1RgNLLpkXPRTJSHVbbMsmnwX+KEE4juLvWU2h3gFBrRqQ9g0q7V8Kipq96lQ/Nhqx
         RLZsGt5GlYhTOyrfIV+BwsPFdag3En2sYE77JdQZCS0SGGNJcCT0RNEpn4/SWFS1+iPH
         Zf9m0JUvCZVbdcPjBLrWv6T053SFVmntxGBMqsY4QPra5jXgchJl7S5RcsCAOF3P68J4
         mHLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769514089; x=1770118889;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y/LYpTnA6P+gHv9F67L52mGzLDD2sDygJZB/kfqndfY=;
        b=HOvofrm58eQSwcDyq4gup45S5FIQeL1WoEq8XuBNVZqDXzEECnXzOa1CGcwBz5HYB1
         A4yca6ev9g3GgvL/N4eG8fVc5CiS3T2jqC4FyWKSDEiVH/2N2Gp3ffsrZMO6umbWjUmC
         5kcYN9aoDGZmQmgWJrX2LAYyD61MFj4mx6VR3Kc/oCfM9MeWEVCvz+l+psw+I20pfLFi
         QwzyCpZFeU+ZEuUHraz09DQ8f5hrVNAUHjlVcLCoJi8xt63hHYERaPIstgzPHIsPUzsJ
         m8S52Pvf/Ok5y8I1a7bNnjNmG4K4iSVNb0f3tYWd7w8/3qJCBnrlOd4hn4VHirlkxR2u
         rigg==
X-Forwarded-Encrypted: i=1; AJvYcCXJza7gb8j7pydocyeDILFbhCtd5+IUpmlJqfwyjnLcJnGfoCR6R7DktvgYRXMMPJ5S8QtSArf7aR3K@vger.kernel.org
X-Gm-Message-State: AOJu0YwvvwD0Yke93k3Y0fI1aIDHfAvsgHUNJzai3OcPiXLKlXpURu6a
	hFc2Uiyci0QkuIEmRahie7eZgnnWFqmpec+3sv1M8VH/FVvBOjTSKbj5V4jT9eyFLhTdM6gnq1l
	geSaOJeSKoGQ7rRWFTR4MEsLNLoUgE1gqaViGi4IKPUR8jKVqrgw8HdlQDlpovxmO
X-Gm-Gg: AZuq6aJk6FRqL5ZWQb7NntqoGmGqbCpU3w07WRfTqIFP0evGD2bJbTzgB3bTp83V8JK
	sW/H5yGhKkXjm5d31OixZAzjTzJX1WpttYabMMoAotzUOVf0Yeo/c3wKwPaqEkcOSdqZqlxlEaK
	W296Q4jYP0g3NWQCby1z7eX36ggxWtmrlKUU2Rl8iYvYA3MG335d5UKQ262UqjmTwbFq94XX/Im
	8YaUIzdl89DQ8zuXVYDmnc1xuHL59fXpbdaRioXbvxCD/xtZAsyXTtj98+vvS/WvWD5D/praBCn
	G9Nm3taq0mEB1ffrEd8kdUOdFuU8tXLbQRpNtP4RJ9sumCD2WUGuK5Nxo2Yz4VqtZ963scgYEjT
	Krw6g5q4Oc6FyEkR9WVbRKK3rWqOz+vWJedmCFVRgNveys5oaFgsnVJkDKiiy3+boFFs=
X-Received: by 2002:a05:620a:3199:b0:8be:6733:92b1 with SMTP id af79cd13be357-8c70b7414f1mr120435685a.0.1769514089516;
        Tue, 27 Jan 2026 03:41:29 -0800 (PST)
X-Received: by 2002:a05:620a:3199:b0:8be:6733:92b1 with SMTP id af79cd13be357-8c70b7414f1mr120432685a.0.1769514089057;
        Tue, 27 Jan 2026 03:41:29 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b3dbc85sm783768066b.1.2026.01.27.03.41.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 03:41:28 -0800 (PST)
Message-ID: <458cbc02-5649-4ad5-a6d6-3ef8c4dfe2eb@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 12:41:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] media: dt-bindings: qcom-sc7180-venus: move
 video-firmware here
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260126-venus-iris-flip-switch-v2-0-b0ea05e1739a@oss.qualcomm.com>
 <20260126-venus-iris-flip-switch-v2-3-b0ea05e1739a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260126-venus-iris-flip-switch-v2-3-b0ea05e1739a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NSBTYWx0ZWRfX8re9uF9WY6Zj
 N7Ubb/78X9JcwE4ZCsbS/B4JOc3yeX13OOSDE8BfcJ4TXYA7VJvZbVMOKd0J/ZLIoaF9GC6aPRi
 5u0+ICvL+w9s452LtIlAr8C7TrsDpfruR3lLMz+xvdhfCddd9Sz36dMHlKto84stMbDHUdH3TTG
 PcqEJGRorqIvpDXdQEE34yR6yO/6zzfcvqA35OadRAduGOXTxn2owbzINZKkeOx+WkWhcSxEJvb
 yG9Om7fHijoH3+TqQfYHciuyV/TuqZW6zQ/0tZcZ9OLAoPac2/nFzNMBWPEhD+q56a8PKEhjCK5
 5mI9CdXf0SK3xs37MJ9qAXQTKGymkjYOoHEMRd5nDwM2kJWmo1tDBJ4l1GJzGU0xX/xusetOZp6
 O1z+r28oddNFeYYjMVP0rz1kYXWV9VuLRkbQuY0VVLK1rn46MLHWjpBc8uUIe2Y6PtpAncQQDCu
 MJty1OMbfmmL3Y8yVlg==
X-Proofpoint-ORIG-GUID: qqWcjjZ2MXaQqITl-RrqflNBL4g8LOrF
X-Proofpoint-GUID: qqWcjjZ2MXaQqITl-RrqflNBL4g8LOrF
X-Authority-Analysis: v=2.4 cv=a6k9NESF c=1 sm=1 tr=0 ts=6978a46a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=taCg-2STDlqsnU512KsA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259846-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4E3D393BB7
X-Rspamd-Action: no action

On 1/26/26 3:09 AM, Dmitry Baryshkov wrote:
> As SC7180 is the only remaining user of the non-TZ / non-PAS setup which
> uses the video-firmware subnode, move its definition from the common
> schema to the SC7180-specific one.
> 
> Future platforms that are going to support non-TZ setup will use
> different semantics and different DT ABI.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

It's worth highlighting that this set of properties is not enough to
accurately describe the full capabilities of the hardware and will
likely one day be replaced with iommu-map anyway

Konrad

