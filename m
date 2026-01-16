Return-Path: <devicetree+bounces-256182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC10CD336AC
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:14:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC5163079ADB
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:13:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 090F033DEE7;
	Fri, 16 Jan 2026 16:13:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LwtjwEOF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S2J6feBF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD97340DA7
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768580010; cv=none; b=cfZtkVmwmaD50RIrHygE1aGxusW5AZ0xIl7VTGzTKb/P5RAJf6m7gC59+wEdmlmsB3ZevU1AUGtzi1U019x87VEeHPiZxv58+UQ0SMPKs1y1TN5qkF8s9syIf3r/HP3OCRLxRJgwFkwUw4rniLZEfRp3xa2N9SpJjJBTtW9qmxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768580010; c=relaxed/simple;
	bh=h/E810/CTY1XFkPzarACCiq7c1ZDlBl33zyKw8u34j0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o0xDj9jGU18nFxfuTBRXolQuFmjrR5sRtR6o3l+oftY+vuyQywSwELKLBzAXFYTl8Fd7Do7MGKkfuR9qNfF5WczJEoFCGLILhP1uT1PuhJ51zDL3tkBc+x01cBfXddRR+uJCnPKmR6AG9i3kd2V2cPBOHY0Pc4/UkcbmzI1hiDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LwtjwEOF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S2J6feBF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G85Jwf2819401
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:13:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OnISaKeZPEtPqspPW3GnAYb4
	P+w9H95p9ol9sk2Y1Ek=; b=LwtjwEOFF3xQE7pWnTpfjP1S3D667uIzgDEEzPe/
	Af0uXOUde99Yy9GCpztpYnlmfStTpt9QZO1Mi+l8ndWZV+G/UKbsvlyqa/QHk4WE
	MfQkOrnASq7DV6xw6szDvO0Ces7kwXZipO1cuHarDjTgTWdq1s2xKy5KslGoMs29
	bKYgaPCxprvGuLvcwVdeWPNxZP3HdG66/1d83we0hkDDVGYtQsJUcKujuA0MyOCS
	JPZT5Xcy8X3OwzJURMoTtpd9UBIyAvjSNvggSxqkKPkjVffAt7Hu+hsHMxVEe9R3
	5ooeVPvbyZZiHj5yftQTTS1Nizy6EOospBddKAKKXu1VHA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq99ajsa1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:13:27 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a7fb4421so186061585a.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768580007; x=1769184807; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OnISaKeZPEtPqspPW3GnAYb4P+w9H95p9ol9sk2Y1Ek=;
        b=S2J6feBFh4XRBMeqnDq3qb9tzvnn6l7zwdD/w9yVGwcvoRm1CJIdh0eXH1oFl54ZeA
         MeBnYsJoOCFvY+kaljXYMSzT1QmEd4Xj2IV1x1vRZ0dAWQ72pP7jR0W0OXwm/ml+k3cL
         ArT7cH57V6NaFefWenRtv9AOsAES96a5hJnzgqW6A4SRZBWb+z2CO/DXSAuMz0vOtlJT
         BUWQnZWbMtGRNaT3jn4R+mJC0BTk5VZgqG8HWV+pzQ1YptIG8VMReQKY3rar3SHynNxO
         Q98gwwzVbaYdC6FcjPPfTm5caXOa0btx+jRfvKoWZ162PnFIjM+mb4YHUM78sVAldUa9
         p/9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768580007; x=1769184807;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OnISaKeZPEtPqspPW3GnAYb4P+w9H95p9ol9sk2Y1Ek=;
        b=azruQ10AeSPE/9kez6N0D0myJxjtaPpnTtYMuiM/TWHjAwCKQF/hEX6cls9NmHPn1x
         EYV7NgDaaQ/IbElQs9GKF6MWLIkDcxuD0gg17L410mBYpkawjxpnvz/WtWJSBJ73z7qY
         1zV4li0p1DnMhJrfpxsSVfHo6VR7xBUGCTh18V5M3wcosaE5G55N5N/BuZsWoG/soOcr
         82V7e0YYmwz78R0sFEJRybljYE2AMaKHC/SjNEPxraILbQrZdyE61QHsYSItI6+2j322
         FwJxQh4cDCJpdjxc5kXoRNKji0WO/edGaq/byww3RDMEeVZhF/s9qglpa/WW5Nf1icSe
         0vYg==
X-Forwarded-Encrypted: i=1; AJvYcCXFokZ9r9VV+foI2hGJJBg9IIKs3YJzsChKc59pbNryrBzCCkud6eM3n/ykilpln50ZEkUekJ+Vf+om@vger.kernel.org
X-Gm-Message-State: AOJu0YwxhgXJkbNoqNRtDjxlHqR7a+Dj71xUcwUhqakPuWBV5ok/KEDB
	p5S9qdWffcbRUo3IiVPjv44YzgzgzJXJx8I1n3poyBewucmxOzhDVbgAbbpJisq3Vz/V7gNTYYu
	LvC8qUjPckQj+r+o0t01ALW5aOLD4Qnx/S6atQ0dMEvSfnXxwGq8NkMf9OfpUaLTi
X-Gm-Gg: AY/fxX5JgWnx2MHLRRNMi6U1yYoGPDGons/bH2W9KcAs2iCUQHmV+aKqIxEniyx120j
	CMUn0YRq7cRF3tRQawwIRU2kw1s+O/lsGK+fYV2MtyGnMOwQvikMX9JzncTeAt4E0p0NZERLudf
	UAImAP12ey0JA49kKECiMDLIPlMJS5CMikXSakMoAWY3vIFC/TezFUVyhceJHWXUEghiJymi/0b
	Z5HXejbHqhIFBUX+4//rDl9V+NroM3I6PgopKx5Af/W+iGRlOaBqjWIrF+SwH2kezIL/dGkikd+
	1gr505V4APzUeCQS2haPPLr8/r1+cF9u8tRhIk89OMbuSF3LodxJPqY2A9Shu4vVljUJhF+2bNI
	TkTSBgaPQKMgttp5+lAo91XStZINIDwYMF+kfdIar8Bz07l5bdw5e8MUsnCwvz6tHfOTTKgK5jK
	cjXOn0G656sofyTbq3bN9Us/E=
X-Received: by 2002:a05:620a:404d:b0:85e:24c3:a612 with SMTP id af79cd13be357-8c6a66e4bcdmr468243285a.32.1768580006807;
        Fri, 16 Jan 2026 08:13:26 -0800 (PST)
X-Received: by 2002:a05:620a:404d:b0:85e:24c3:a612 with SMTP id af79cd13be357-8c6a66e4bcdmr468222785a.32.1768580004787;
        Fri, 16 Jan 2026 08:13:24 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf3976fcsm880180e87.65.2026.01.16.08.13.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 08:13:24 -0800 (PST)
Date: Fri, 16 Jan 2026 18:13:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Koskovich <AKoskovich@pm.me>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/5] soc: qcom: pd-mapper: Add Milos compatible
Message-ID: <hwndiywr4x6tvqh4k6nxyfqf3cumrjhdcxtm4w7h7wxtsmucz6@f4yutm4kfkuq>
References: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
 <20260116-milos-fp6-bt-wifi-v1-1-27b4fbb77e9c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116-milos-fp6-bt-wifi-v1-1-27b4fbb77e9c@fairphone.com>
X-Proofpoint-ORIG-GUID: fS8TcSJT7Xw-4dYZZymVsi0J5UZun4Jv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDExNyBTYWx0ZWRfX5+e65+pHKGwQ
 GiNGzLwgQmWqJPeZ77Dvb3ZyRRgL9TsJpQpaQY9EIbxt6qdIqBSrz8Rh4PKEH8HC88KMlsIdjDO
 vmL1ES4troAL6JE5lqSYBnCal6X9ufWgkgxllsrvK/GRPWSH6k1HfX8qBn3FKhJ2WhUm6nYQYUW
 iEJDJV26fra2BVzISifhzxt6CpeuvJ9LZXi0hHnbAikx58dSmdCPY9g/Y8JEWvxXDJgPTRCcNiv
 sxTr62YjJpv8Eo8RO1KQklxNy9pffIJYJUB3lHhIz3yODAhyzqtDESxKEj4SBDEvW5UE5ZHSnWy
 W1EjM3NTmqsIuz5CKOKABLpjLRUb5mTKUu6y1PlH3b2vMB8qzzHLiOnWERR3HWO4Uy51l3BX3NK
 IwIkgYcRkpFkcyDCbu9ffEw4TClqpL6irYC4+QMDl9RCsLLlcwB3lbUTFhcS2napM8JCSby3srh
 7r1yDVjTPW0PxQrY2qQ==
X-Proofpoint-GUID: fS8TcSJT7Xw-4dYZZymVsi0J5UZun4Jv
X-Authority-Analysis: v=2.4 cv=f5ZFxeyM c=1 sm=1 tr=0 ts=696a63a7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=zGNnDoXLyRuJOFJG0UgA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160117

On Fri, Jan 16, 2026 at 03:50:47PM +0100, Luca Weiss wrote:
> Add support for the Qualcomm Milos SoC to the protection domain mapper.
> Milos shares the same protection domain configuration as SM8550, so
> reuse the existing SM8550 domain data.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/soc/qcom/qcom_pd_mapper.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

