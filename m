Return-Path: <devicetree+bounces-268578-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gA5zA8i+n2lOdgQAu9opvQ
	(envelope-from <devicetree+bounces-268578-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 04:32:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E631A0936
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 04:32:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79A6A3061756
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 03:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0453C387378;
	Thu, 26 Feb 2026 03:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ArhA+Ydu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QP8iRQH1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27DD38757A
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772076441; cv=none; b=DoA6QLsabXmq1w+RmdJe17am9LOaf1c5JvKlGowxmBIu46zWKYUtIX016HRX2l4Q4v5ddyBHegYUmPQzDS+5++niC7Spq2Pr9YEXNv9J95sq51IBrwkm0aoHKsCaMJkt4uDVG/H28BAdPlYBbSQ61kGLMYdWZ13oHqAz6navCaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772076441; c=relaxed/simple;
	bh=7DwtVrB8tXXE4YHCekfqno27ymWeE7BSr7uv4mmPtQo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HhAKtq9IF+djc8GsT7w0Mzyi9XaKqDfu7Bl7nDJmQcdPm7K1Q4RaPPyKHA47yLbQ7qmbj/BjMXgV2S/qL48K3Y1Ex6X5Cepo5KZDxKZVkYvwlNEnQeZJb5REpKOnLgbsUtnHQgrcQNZuBDHZqI5cmbWaRl7rq67Wzhy4kjTgSz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ArhA+Ydu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QP8iRQH1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PKfRmS2522264
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:27:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=W7KGFT5i87PCOlERvfvGYanO
	5SD/jEf0Fx9uA50jjtI=; b=ArhA+YduBGJj0AJcz/kA5CZIL+FKwF9CQVen2lkW
	Z0H2qDqmaWN2Y5Edv8U9LT/PdP7K+5HCMR9yPvHrRGJ9reR6oqF3Yg1Pjx+aBivI
	EuJn1+xhGQGOP5eHIe+lOqfGUhv7qI6EfysLbXNIRw/xOp6+gzI6jkr6bNRIByEV
	6RNO4ToTZtvjAcbhUZ6wgFkKpfvRzGO90x8fjhdgWU54KhaqDip2w+xgU8OBG5CH
	J2aKHRZDRvSlVq1d+dQM0lx5dn2AoE/k6AnsDrbdxdz59vGjrYxy6Qmf4cvFF8zY
	Q/kEpRWGuNB2ouRYejvEFjJDPVdrnHIORdjt5okEsNt/TA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj8bd8vte-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:27:20 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3b0d938dso337577285a.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 19:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772076439; x=1772681239; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=W7KGFT5i87PCOlERvfvGYanO5SD/jEf0Fx9uA50jjtI=;
        b=QP8iRQH1dxZqxjDtgI+YQL0M9tCNjN7I7Xwi/BWFB1nQ8Ge3hmu82qRCVrkN2jxbe2
         uiQOEgc4gSNa/MC+TMBRFF/n13BTcSyifadbuX5WUkzcqrSn2FvGXN/qNQE+QgcoVsKg
         7Jh48PwYAzOKXHGzyJTDg9g56rk+DN4N/aklztnqv7TAf66KuejOMMRx4h+bnmVoEUpU
         DlU6NhZzaFLOB8BVKGQqqqZwJD9logoXH1LBnAyhgImLJlAEgJXWqohxiSPz60yYSU7O
         fMQELWQgZ0LRRhcIN3zXNWDh70YydVHlzIhxBd5lb0+Zm29XmIvProq51J8sGUKnCQBI
         5tKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772076439; x=1772681239;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W7KGFT5i87PCOlERvfvGYanO5SD/jEf0Fx9uA50jjtI=;
        b=CZBiCJHkNoGhipCBOeyD54QooP/2q0K71MCWYaRk6N16IdvYBBVof5kBgwgxd0kh7J
         tqxyfkSgUl9Ugdd2OuzImotNB41nVlU19ojc0HxvQi2TA3t6CMTB3Uo5EQOdy45LuBYi
         cuRrWZ/Yr6z0sz36LVitePt8OvQAp47rnZqM7GINpMDD5iQxzOvj/FhQirgEfM+GsFy2
         95gA06mfO2Ps+EIkVcUA8ItCE2vWMl1bTUKoY/FH+orD4uZ2rorrOdY9r3AUGpoOzq+z
         jX9IfLqPddwuHVz9JefObaUwPpL7XgBY7Xqu4eohilIn1EnD08NRbum9415Au0EP2gBp
         0Egg==
X-Forwarded-Encrypted: i=1; AJvYcCVK0UugfMnXPI0K4XP9NiP6TSKhGpzHW9txnSpiVO4ceJ5TALy8gDaNvsyFdsQxYLA9uoZp+mbACKc3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/QQguUCal1aTF/s7tTNMKGdYmfpuIeGKxWittP2fEgx9krpzG
	bDlYSHoiWnYPG5Tg/5uLqOCWhZmKnJ0gpVwmtxt5/wbgw7h7k7glC3CPrA04fuurrCSX4ffe46I
	RLudScxW/GJ43lP8qK+eBZ0Qf/oZB+vJaLPh3KfXYMAyZ27xam4ucrM2jsttbyw+i
X-Gm-Gg: ATEYQzy4SpicxUp3XCV1iyGfCxDjuqH7ZCGPEPyyETMzpzHbPPSsqngjl7HOjchVpqH
	7X4idR7UQSuyX4gS9sXhJrQvfzATTf97pPidPG+urquqTFD9aUxwNiFL9wi4UlpFwitg5uBVJlh
	z/DaolmQ3vEPUedfaDkXj9SY3yWkl0CAKVmAv4WeXXfHkMUemJIQAnoPurKwsgSOjmws37GgWom
	boJB/p3MV6eHK3qpRtreF5JIGBDf5v7+HOFqxLmUTiPpYmhayTe7TJ/UyVx3dSVO2N7mo9IGToP
	B3quAapXb/WU6W4h4l8YDzilQjupfciWKrpWx8MMO1M+Cg6stkSdvmz48nPgPDE8ZCifsu2Gw5U
	p4Sx7Ll1PWj+SI2dB3QQ6wkbh7giiIURfTnIrhbMwEr2dIkTRWOTA3t0Ft/jjosEucFlyliItoe
	FcS4yVxEPHKZLYyIvTyX8abEnj3CKQcdNrnpU=
X-Received: by 2002:a05:620a:40c6:b0:8cb:baea:89cb with SMTP id af79cd13be357-8cbc1141410mr65005385a.31.1772076439136;
        Wed, 25 Feb 2026 19:27:19 -0800 (PST)
X-Received: by 2002:a05:620a:40c6:b0:8cb:baea:89cb with SMTP id af79cd13be357-8cbc1141410mr65004485a.31.1772076438732;
        Wed, 25 Feb 2026 19:27:18 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a109df8498sm261553e87.62.2026.02.25.19.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 19:27:18 -0800 (PST)
Date: Thu, 26 Feb 2026 05:27:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v6 10/10] arm64: defconfig: Enable Kaanapali clock
 controllers
Message-ID: <xzdhzgthx6vamn2asacitlhlznu73cx3ijcmuqc6hhpvwq6adj@bx6tpyfudvys>
References: <20260224-knp-dts-misc-v6-0-79d20dab8a60@oss.qualcomm.com>
 <20260224-knp-dts-misc-v6-10-79d20dab8a60@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260224-knp-dts-misc-v6-10-79d20dab8a60@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=FKQWBuos c=1 sm=1 tr=0 ts=699fbd98 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=hHfo9KWc5dFt2d3eTEEA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 5miimyVseWKWaiJWReId9QJCW9X0DmQn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDAyOCBTYWx0ZWRfXyYsaJCbf83pK
 yxRo69BnV0E67hI4My/4JQBFZdgUSGGJ9XIA4rckOc85ean4w+zFr8ytZnPIB6hK/vuj9kJEoqV
 NO0WFu7apr0uY51R+IoPEwhpYVfn+dOMAlvQQvxmFmM/u49HscrxD1TYEa4gVSoRlhTHYf23Bv/
 1oReA0yNkZlQ/rxYarAcP4cVSc62OATbGLy4tbvOQ5rAseDau7hcFV12lwEDkoaxYzAXIgfV/8b
 1lf3JNYugfCBzciUBY9lHm4ExzorSLUR1DoJCuN2Ctxvr6zsLe9GXlK/F6omLi2m3l9OkMQlCLK
 R7Ysp8kqWr8USkCdAMKAsz/FqYg+z3NX9pUyOqwNumLsAQaFAjZIwh0xo27QTcZGUl0Yg+haoLC
 0SyT7H+EGYPULt+/M5lQG81vNYLwJYcM1o3wtZp/RJemG3caHYBFQ99MPZOoWQwVj+EVRIFrvVx
 FCY62p0Dptf1uWa1NQg==
X-Proofpoint-ORIG-GUID: 5miimyVseWKWaiJWReId9QJCW9X0DmQn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602260028
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268578-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 30E631A0936
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 11:19:25PM -0800, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Enable the Kaanapali display, video, camera and gpu clock controller
> for their respective functionalities on the Qualcomm Kaanapali QRD and
> MTP boards.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/configs/defconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

