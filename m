Return-Path: <devicetree+bounces-242175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 573BBC8785F
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 00:51:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 654DE349E6A
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 23:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1EF52F39BD;
	Tue, 25 Nov 2025 23:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j9qOF5wz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UwCC8U9g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135192F362D
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764114643; cv=none; b=XBT0DfU4jvsnWZN2VmZNQqC5G3+1aUjQ7SkL0lar1NwfQY5gatDtXcudep1McGJbK0WYBbi4OWNVMp1yKHUu126uupRwQb0LZCKOVxZdh5vZlda+YxG83Qtuvdh2K5B/wXJmX5rOKr/EAacVNxUCqPI4H0uEKwBf7iKdiuihCls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764114643; c=relaxed/simple;
	bh=9/I+WLBxVQ34Jv2VUWOPSxKz0/+kco6uge5FdQSfaJQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Egy1kw/MitGxTfIyp/7jfThZ3FMueyda80BioPKBrerqkALUvQrQc7qAf1uyuVpZTrXOZbXcKyfMkZvTKg6JrR9BxiuhY3S6y1wBWxP0IhXqZrtAykxCMMuP46o0s0bz3nrVGU1r0O9Mj/wQLLh/cOFHwLDygng68GOJGy4176Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j9qOF5wz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UwCC8U9g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APNmgAQ3317510
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:50:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DpjUEb+lO/d5XqWetRnIyO8+
	USr+7eXZgV8h6ZiGl9Y=; b=j9qOF5wz4FySeSiET9C3x97eXIqY/tQcVJvCmRnl
	bIjPtCATItbKPt2hjdZn6QmuntIlmxDH1MOAo9R//VyKaY7JniDDS4aLnnlGfZAK
	HOeTtbzBLpF7LgnX0BbLTI87gYom4cK+h1xpPXQNcmP7bIUHtC96gdJ/Jc5iv8gq
	d5ScBRGUgmaXAsyrvIDfGEAUAqxbJ9TYS9t3dYVfXaWv4CYTQvcwto/mkUZW8JS9
	kcqxqiqFXVhr6OghB3de+vNbWY5jgh268Gb9kyiXvRv3BTZE1znFgi3MM9R+Dqa9
	ITmW2a+1g6AScplMLslskbGtxguGYFEeEfm6YYKA7BrumQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4and2qhn9g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:50:40 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b23a64f334so1598126585a.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764114640; x=1764719440; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DpjUEb+lO/d5XqWetRnIyO8+USr+7eXZgV8h6ZiGl9Y=;
        b=UwCC8U9gzU2TveL5fIhdjuZGrT0Oi+36abKHJ4mty06r6xKlfAeyygVZvEfmHT3Phv
         DttWpkOSIvAHZdp8ZVbaR6InHfkv5DqSyNS/BeIiuyjwDLrmwew62nK8OoaPaUsZFcfg
         W8x0OzN/b28zO+PFQi2mzW5CuO+059nJUvbr/1oOTrJnj2hOtimreeYkOTLNJAMWStaV
         S5o4TW6sWlF+oG0eIH65FcZ3JP8N05VgIMFW+op9Vw8Ob3hJk2mKqEw7e1D3GtYokkH1
         94+o5TOx2mSfR5EgKAiX/53xE+LiaJTK9sppH/H5wdBDvUAK0jRNE1CdDJBZX0uNC6/+
         Jb5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764114640; x=1764719440;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DpjUEb+lO/d5XqWetRnIyO8+USr+7eXZgV8h6ZiGl9Y=;
        b=f910ZHe18JE8IWU8Lnls6CinMyJ98e0GdxitBTuw+064VNiSXJOeLYYTQAI+3cqlUH
         ius0Mx0dV8KyWuCWjHUkKmugBZYc95bJXKIh2mHptAUUvUewS3GMs/jJ2CNWRPuB6Q09
         Hpk0v19bpOw8n4S14FAVFZzVR5gV2LvIBeu9PIgfCEraIIiyOU/IpRpD5OdYgWyPu23j
         LeOmq5C0f8yGtjuEURo97w+lJIdpgxGiMPo4ZG24vt3cjb1R1Qn2gX0UA1T6SQ63r4tr
         vKXqNHPP7po5dGgrOqMnbSeL6w3lPkTFRFmYmtLZE5ICLu3g/T/G56UrtQJPH+yRw7EC
         g/Kg==
X-Forwarded-Encrypted: i=1; AJvYcCXmopQlZkkiA8jz0JlyoCkYsy8qZeGmkxT8AUvY+a9STnqntGC0orY3KRbM7EsfQUhG+b76kYEnL7zM@vger.kernel.org
X-Gm-Message-State: AOJu0YwSvP1E+Scqs3corBjyos867glw5rXFPEISgZTlOWb8lRD5xqi3
	mOMEbNDepZhSV5XO74slzS5ZkSjm2edS8fMQ11irXUtpWlhud8GFNbvmYbPMrYp8GXYuBwgyAFP
	AScmQoa6+H5dTqupsbEkLlMcaYyXe4HoEeULSr4n9FXFt9B3ubf1TRVcbCnRMr/j7
X-Gm-Gg: ASbGncsCyxGm8jV+uRFvaJ3r/3XSS0YjV7QuiD5iX0+qbWwQpc6N473TO4m3chTSDWQ
	g+ZAF1SPmRVcpAhlCQaWhPyKOJ4LO9vCltzLnKNtaNjgUIe/pZpt4VtFYUVzVhmeA5MUhZtODH0
	q7R8ODWW9nbsiADP4ArkP0WMLCwNz19enzLehFPx4EnyaQyQ6f9EsRLcia90PdyV3pga2a7txT5
	TVsIXVTMTirW6xb4WKkP2gocV0LztoatDhcXGpWry/RjhUXoPOCoGC72kWw7nLP4J7D1713wAmA
	D2YaM1QhxLpu29YBUQ+xGl86MDyTaeytd4HYStVkvGl/GaYTk2v7dqeDXgX3MgILIQTu9lR8hJf
	U/gXfE9nCQIr9NPRxYQQ5bxd2JGauza+afZ/ze9ZKYT4GR8AYvAy5YnQ0vHgPwOsjOv338aDzX6
	oPRHxLnlnRv/7GaIK3ghO8jpo=
X-Received: by 2002:a05:620a:4623:b0:8b2:1f21:ccdf with SMTP id af79cd13be357-8b33d469823mr2113206385a.48.1764114640365;
        Tue, 25 Nov 2025 15:50:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHBnTPo78pU39U83yKEF/eAZt8NiiG5KXac8B9fVr39yPz26x7dHZeyUAP6bCjxbAjm4iirmw==
X-Received: by 2002:a05:620a:4623:b0:8b2:1f21:ccdf with SMTP id af79cd13be357-8b33d469823mr2113203485a.48.1764114639859;
        Tue, 25 Nov 2025 15:50:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969db81b35sm5418440e87.22.2025.11.25.15.50.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 15:50:39 -0800 (PST)
Date: Wed, 26 Nov 2025 01:50:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Joel Selvaraj <foss@joelselvaraj.com>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Martinz <amartinz@shiftphones.com>,
        =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Alexey Minnekhanov <alexeymin@postmarketos.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH RFC 8/8] arm64: dts: qcom: sdm670-google-sargo: Enable
 fuel gauge
Message-ID: <vpqzef5zggibkmfcnx7movs75s2twu5kreo5lxsss24o65isvi@yr4njzgttq67>
References: <20251124-pmi8998_fuel_gauge-v1-0-dd3791f61478@ixit.cz>
 <20251124-pmi8998_fuel_gauge-v1-8-dd3791f61478@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251124-pmi8998_fuel_gauge-v1-8-dd3791f61478@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDE5OSBTYWx0ZWRfX0HvZiHSpJILo
 xdBUQzKgW3t8TU7boPWPErNdHZ98ZUhnl4YPO72wVmnzs9qkIU5V97Arfg3LDZ68FCDQ3yWgM3Y
 Y04qWDzgTZXDO+SXCB6W0+qikpp8PQH0M0sJWLzpmTXYYqDI+Rn15aDCsCgC6o947axI86/E/fU
 vSSt7NtYI/dwn5aByuNj151SN+Xr6PjdeePzLG+nSIrjV+ID9aLx2cLObDLiCCmfqXppI2TDjpu
 vUs+Y443MXdAcSKAfYBFEYMEEKjvj1e/VhiduMvjF+Usxwef0J3DGL+SnnNM6pdTyX7368fwkx3
 +qav/rw5ZX0dOzwtnDSzSEOs7TaPAi/3abVy/LjnCwlzobsfdD3dPftSH67t1iW316QuTjpNZaK
 WxVQ2h2QluVG4BUAtXSwPTmgz7Rt7Q==
X-Authority-Analysis: v=2.4 cv=dZyNHHXe c=1 sm=1 tr=0 ts=692640d0 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=EencKPdTMqCUiY1uXwoA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: Oa7RPyb6zYwCfqQ_TNmqPBRETdKG_LmR
X-Proofpoint-GUID: Oa7RPyb6zYwCfqQ_TNmqPBRETdKG_LmR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 clxscore=1015 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511250199

On Mon, Nov 24, 2025 at 10:53:41PM +0100, David Heidelberg via B4 Relay wrote:
> From: Richard Acayan <mailingradian@gmail.com>
> 
> The PM660 fuel gauge determines the battery charge. Enable it for full
> battery support.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

