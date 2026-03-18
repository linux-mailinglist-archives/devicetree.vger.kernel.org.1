Return-Path: <devicetree+bounces-277307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLgvI5+7umk4bQIAu9opvQ
	(envelope-from <devicetree+bounces-277307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:50:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4430C2BD84A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:50:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 33017307AA1E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DE493CE49B;
	Wed, 18 Mar 2026 14:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lmS+l9Lv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SCnghzlw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297703DDDAE
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773844939; cv=none; b=YFLokhTE/qGpqpJJgdKbBeOD6PGq+14nd38+R7MNLbv91zvoz5i/TTyF93fjGfxLckgM4B+ECxTVKby2oWwo/+MFRmybJETs5d8g+VMsh1jOP7f2b9bxn5aZ/OnQtiBJhvwodRVepDfekYXgD6EzV4TjQI7+M4cdyKtOAJXnqbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773844939; c=relaxed/simple;
	bh=+lm8/3XAZ7H3Dy09b7Vs3as3vdTiEfIMShwBN03+TRE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PUIbwRb297Y955TNj1NMsEbYc37BveAikPD5r3ADblGQbzkW3mzRU+nx1k4TwEAduMrSBI6Dt/dFHNZLoOve3JhqMmjm8X8AImxhKlXvPtWsfcXQcQnMFFxLsbgZCSbP/xOYeXAqdjDEtRKcYQ3myxxVNgNqkPT2diJlzA7DMiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lmS+l9Lv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SCnghzlw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I9MuCQ3358496
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:42:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0R4+Iy3LR3CasixwzcVINmeR
	kUOvdSZcaHXXMIfjpq4=; b=lmS+l9LvN7kYYdyrz0jWsrCL/58eGslGzdPbFcQR
	vX79RJ1Rz8dCvAG4mZDmtrmSO4Qo8FjOOwnDV7kUAFF7bvdkqeuRd7CEm7QFkyBi
	qgsNS69cw4/RuRw2x9AgP+YIXZ5is7XHuyahoYW4sGBiTZfEM8F5HNtxMkHqHVBP
	P64Mc8q7tgRBC7hvwPQJVoqQZYG+nZABJFvnZUSXagRmTnj9JwYdGJhDl8EtWlNm
	31PhGhVy/eXSj/zpXo2W2ydFtTVdkvueO7dx8cnn9jsXGJR5UxphCV6Bd1/2pAkR
	/K80PLA8urbrT7n7+BMnDIjkqO7sRjk/ucDLJRBzx/bfjQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyscb15ye-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:42:17 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50900e9803aso8639571cf.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773844936; x=1774449736; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0R4+Iy3LR3CasixwzcVINmeRkUOvdSZcaHXXMIfjpq4=;
        b=SCnghzlw3692zzGHl2fPFJFdw9Tfw3Z2GodsquQSYVHh6t6M3nIHGgWF+18Yghm4DJ
         JAP7BXoZHZ75ZKdlFWUrMWFC1uJbxr/08uRyGqNEx2+Z4tWhgY1WeJpiDWTDYEyfWDAw
         LMq+l8ecFwAHySU/1k0mO5arVRHZ/cjFkt67+lZqhrmKl1qBINv03HcFybm/eG3xH5Fn
         72yjTRsdOM1j1XaIpEYvPzWlNdF2lS0RB6QEcRJq/WkWF0eFyyUqm3Hzhew1ItPeBXao
         kKmmpXh7F+S6cCxZDKRYa4Xti9sV+cWu+oYPMh8DUHwzWbSklU4+Js+g9lNcgtgv/SzL
         jLmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773844936; x=1774449736;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0R4+Iy3LR3CasixwzcVINmeRkUOvdSZcaHXXMIfjpq4=;
        b=gjo6cCByiZahf6xH3+hBJTotxsTacicULqaxaOKy7txvLYJKZRpSFap2keekyO/8SP
         KgOqOeKCSb4G14StWSzYIn/6ng1ec3/Jq0ixV0YRbpBXs5EytFkQH/gxTNLcTfk96YTC
         eo6wmN6jgTMib1mCbcsDixmg/cd6wgpu/fhNqv4rpDxMhKXX3PlNJ7UYiMfG/iCtLwTi
         j+EjJK8D8P8xbj40Bufx06dSilbcOn/BJAe/fpCYgee6P1kv6YjX69tHT7uS0+MvRpsS
         ht7AESPvarAR87qyBfNbVOBxRzNDvd36M7j+Dz1FJ1g/WeemPN6dAxSG9O+xgtpHSr9T
         95nw==
X-Forwarded-Encrypted: i=1; AJvYcCVuHWq32GHT9RTCcF2R1TZCVz/zCnkSAQFM6R5HMmqSEM6+CissfLF2Ne+Y9M2TaSeUpQYLzWFUZgSq@vger.kernel.org
X-Gm-Message-State: AOJu0YzArtsh1j2Kuc90lKXngCKHafPNYDeAQlu+1D2s8gYqYydmVnn9
	z0m3NCs9CucEjNsvavx99lWK6PuOU4itDkrNDvN+qMi13BmCFYS3jm+jIC/tiGInSVjHVyjKsa7
	LVKbWkj7YAz8bDQ/9Zs+GmmTL2W3epc5FAn3ZQ23zr6AKilw+naSjmqZ0KS4+VVcR
X-Gm-Gg: ATEYQzwP9oC6yLNIzPCKVbQMU4g/bzhQRtM7vdv9qSGpk4lTqc5KWyUNuAfapb9Iwxn
	0fuiKoM4FNtt3uQrEBocmpbKSnS+Fvh3YyKtY+jHQNdwfskmiN6IdCObcCvXoPmWUkUo2GFdcT+
	8xtLj6+C7BasivyjiR+lM+jtS1cZsvSKKBDU75SmlY98eJk9UjfGH1nzu0jbD5oyV90Nrjor/df
	A92aTbyoQQVvOifqzWYbKHS9RJguzkvJU9dVT4YCYKxNiL5L1N6t/1+8LWtYGpcoA4IOuU9yQRr
	ykGDmJ1DHqf1am0y+0ERWEq060aqdAz7a9ESpC4IRKZ0h2wJDlL/twecRJqWD4UKZjFlXOCwQqW
	lz3S/bTCsxRJXZ5A08h2TUA0FMApNIVddS21yI03iFgnKjxDohM2mN+Xkml0dbWN8eT1YttAT93
	zFLGcA21lfQzy22qfHutKWm1mAEGlFsBzfmAY=
X-Received: by 2002:a05:622a:d4:b0:502:eba0:b60c with SMTP id d75a77b69052e-50b148e730emr46479881cf.65.1773844936454;
        Wed, 18 Mar 2026 07:42:16 -0700 (PDT)
X-Received: by 2002:a05:622a:d4:b0:502:eba0:b60c with SMTP id d75a77b69052e-50b148e730emr46479141cf.65.1773844935761;
        Wed, 18 Mar 2026 07:42:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c2bf1csm590149e87.20.2026.03.18.07.42.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 07:42:14 -0700 (PDT)
Date: Wed, 18 Mar 2026 16:42:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Sam Day <me@samcday.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Petr Hodina <petr.hodina@protonmail.com>
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: sdm845-samsung-starqltechn:
 Convert fb to use memory-region
Message-ID: <q5x4urvyxvybkhonsbncskf6vefyxasmrftbpbjf2r3kvyttln@ichsydzf6cha>
References: <20260317-beryllium-fb-v2-0-36b69dfb760c@ixit.cz>
 <20260317-beryllium-fb-v2-4-36b69dfb760c@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260317-beryllium-fb-v2-4-36b69dfb760c@ixit.cz>
X-Proofpoint-ORIG-GUID: AE7oBpdQloOZ8d9tz-PuugrN2NzcYPUa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEyNSBTYWx0ZWRfX+sJbsK7noKk6
 Qb5k1gPBiuMOY3tGMYoPiYxaJ5heaaVwS8s32i/D0dJ2G0Fq92vU9/aC0DZYppa8DSb+euUfWb2
 VdPMzGCtea2fJdEmKZAiNLojl4hD3t9EJ0o308B7YeMHAIAJGt7xmHUchEpBksyS5VvvkiuGFXb
 qQJZs/Lck2piRubC4RlmtQldnEdzK8/hD67DiO8+LF858JQXT6NwlvAaqvUp3ajNpGLlUF5Lntk
 vjlJGKSHbks+R5PO0AiBTBx0loe9dmkkYtCmXSIs40gwn+BlPJvRY+7kTBB1KIb4pzXea85yiEl
 dSSJ++Eo9Xyllf0qH+vv/pynT9GGm8AB9eRitRy/XDwUFzLpM+RvyQyoRaU28YP1ydR4pf9CgA+
 uui4g+jsOIeAXetb2127ykM2+Foi4Oct7daYN6Av6+sYAl0m9IRnJ5A47vNuXrQaanLzQQw0zxn
 CYwK8SIRycVFfWcQb6g==
X-Proofpoint-GUID: AE7oBpdQloOZ8d9tz-PuugrN2NzcYPUa
X-Authority-Analysis: v=2.4 cv=PtCergM3 c=1 sm=1 tr=0 ts=69bab9c9 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=iFDlCX9k0_uCMU9SnYwA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180125
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277307-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,samcday.com,vger.kernel.org,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,ixit.cz:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.979];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4430C2BD84A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 11:12:34PM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Instead of manually specifying reg, reuse the memory region.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

