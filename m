Return-Path: <devicetree+bounces-172821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E7191AA68A8
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 04:17:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E4D1981C1B
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 02:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E1B8176242;
	Fri,  2 May 2025 02:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iKzJUoLO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69CA10A1F
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 02:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746152226; cv=none; b=VDp6KOM2X4nbA90LCR0uertfzII5FfyIJyZ8YW0N8wMyDNvIt4FURhl6YFUDjow6dDbg9mS5w2AyNYpgts/X3Y1uVuepGhWecB9dX5dlLPl84oNOk67GPpp9AaaV6BoHYGieViaMgPwqS40SbLweX7dCGcKOEbzHa3A2nNNJGr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746152226; c=relaxed/simple;
	bh=GOkCqQSrFxmRvTw53doxoDpQBDGJECghNqwxhhNN9n8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=op89LpxNmGEUUepU93ReNtq/qdBC88azLEE08M7izwadtmvqjedAs9moxWwsLb+yMywmvxfil8+jlHHPDadCAkxaiyKwfLR599/2N52hfDJJKVsj9LAadoEKjBXROcnRa3wAhWaLiAZ6QuTmd7miXn/aC4PYhMZoFN6e2gdJnk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iKzJUoLO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5421NLRQ017267
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 02:17:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5oT72X6mwQlfV9dF5Y+1Ez23
	5tgKiUG4lSyv0Z4ZvLU=; b=iKzJUoLOGoKZx0eIE8ElnX9iQMmIGKpUlXajOesM
	/DJ6MKxQy9oRMMGc1GyXekkrauh5LvdOuMDDPwsifUkv6aoZqfIHXqHOzeXJN4gk
	W02wtMToHj5VoMfpmC3RRgihtclFjjFMwsSvsTTc+iRxnEJcLWnDCstlyLAZsIUU
	eGKYHfRsXm6QxQnfnYPBdlG82iirCVWcjUqmNzxBmpvoQcBS3l5YLJ9SLZFW5wpo
	Qbzh9XvDx7Cu60mVrBqcuxQdAQdw92lQJITPASz8oLQAOHZRg9Je504DjKbdHHdv
	oQ5ODdalCGvFWJn4ui0rabmtUqZj1gWuAhl/D9BEyGCg+g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u3xxh8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 02:17:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c0b0cf53f3so237103985a.2
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 19:17:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746152221; x=1746757021;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5oT72X6mwQlfV9dF5Y+1Ez235tgKiUG4lSyv0Z4ZvLU=;
        b=JTRVrFbie16OfxSe6QXwOiWoapTW7olVsUe7Mg+SXPR6FHsMotGKPptuWSmqzf/Coo
         USHEhxQ8vtfEX16PsYRMzVpsK7pMoCqEQsezqbf90+qQLjaVrwmqRQZSFZDiHtJ7O2ML
         AVxTk4Tbhm49ZrpyhXTgoE7DISQ5gVLaMVcspF5DEplkp87qicDGRXK10xTdfW5y5hC8
         bkKhdJgOSmusAQCS9sudZOfBt3JLioACPeyHGfAs4YYBZmb2b6YFWV12mu2HdzehfPBZ
         0Mm3LBFDvLE49WTQA4oD5Cr4rbaEVfDvmXKE9wdraHjeocVEQwRIfvcrYIu1F7mlGqz7
         1rXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIno1lsB95GLXxC3L4N5LjdSpIuMnbzSSEnb5FGS8ZBTTajBZMu5wd33xtBJUlWY6MSc+F+R4zaPR3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx/UgSJd+nL7vhirWVfLcngPDWHmItsvI3Jub0cOR6mly1DVhS
	ennMoHD5vrcTnevb8GqhGl+HRkKVtRjcn3Hdn7BGHWCXVxh6VlC9vLkFgYU/sQPic8GXWd1hcnB
	CcGYhu1sg+DhQjFL16/DZbCD9bYDQTWPKfg8cO06VdNt9kaKVkmEtUVjVGZhR
X-Gm-Gg: ASbGnctP/gKOEs4qgFJget3R0T4d99oXds3P9ENLG9FOtEUL9I8rd0ohVq6kJqGiZ2u
	JRx1ZL6OwkfhxjmoYY7nE1TJY8DWIvTLzhMLiDoCDfFCq9hg0RXhYcf5zEyaEiLwHvSIOKrBTQU
	8ux1V/vgNldmlPsil+IUXonrWoALqb/pwClhDQzunPJ+fPp7GFZWW6HCuIBdhRSl828BkO1+DfR
	96yLK8gtjLswG8WtHltQYfJ3c9VYaP2L/V9jJ5mmXM+rKXQ4NkrJU+f9hgbSf1DQqEqR4MU1v+Y
	WIxsvvsUXrt8UAd8UO32N8Hvc5OSY0SnyUWSMBJHH5eXeIaP8fyhkNdmQFx4MMT4DyJtCNUXl1Y
	=
X-Received: by 2002:a05:620a:179f:b0:7c5:50dd:5071 with SMTP id af79cd13be357-7cad5b383d2mr192391385a.22.1746152221673;
        Thu, 01 May 2025 19:17:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRQI9OZkpJjJTMAHtR36kzYsQGo/Ucv1FSwGGm5TGym9QFJ2XyQKGj5FI6uUZZkWFC5pMDtw==
X-Received: by 2002:a05:620a:179f:b0:7c5:50dd:5071 with SMTP id af79cd13be357-7cad5b383d2mr192389985a.22.1746152221324;
        Thu, 01 May 2025 19:17:01 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3202a89ef1csm2328001fa.66.2025.05.01.19.17.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 19:17:00 -0700 (PDT)
Date: Fri, 2 May 2025 05:16:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        quic_ekangupt@quicinc.com, krzysztof.kozlowski@linaro.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add adsp fastrpc support
Message-ID: <ovokvdc5vd7txnrcnljsibbvtyukp33ml6c4xk5w7kf2vd5g4d@2sw7r3xmvw3n>
References: <20250502011539.739937-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250502011539.739937-1-alexey.klimov@linaro.org>
X-Authority-Analysis: v=2.4 cv=Bv6dwZX5 c=1 sm=1 tr=0 ts=68142b1e cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=4kMaQRGzCb8m52ShnMwA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: gub_os6HLB7M-aZ98yMIM-1Sn9AoFppZ
X-Proofpoint-ORIG-GUID: gub_os6HLB7M-aZ98yMIM-1Sn9AoFppZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDAxNSBTYWx0ZWRfXyTA1B/fOAc5u yMDTXR1CrCDPd5cvzTgTOmFKzTT3l9bzVaTEsf1iQ/NdgrIaFYPnW2aWH56G4nlHy4lrethQ7+Z qxOdlGMvZ7mIzNrx1KdlWbySw5tfPZ4BCML5zLXhWGg0PnBOa+mbqUD7QIzL/uEQPKUFEA/DizY
 H+MpBJmrauMldIbMV3oxd4uoWqkxX6khZ7VWnl+lYUOjllqOIsPUC1v8FsCIRlLXm3aWWnLViGl X3FuVpt9HYtac2qo0xbtfuxmbPNLC0TzLcxUBa9ISoBpI/4Pzv1hvu7Jv7mgNXPQFJPUdoJvL2M cZQOrR0NpY21t6rxsFRI6NzD+2sEFywQcM/dku9ZeM4NbnnrMxm4m9cBhWfL/p4y1wbuUj3mUz/
 gXhi/1WbHcds8tTzzn+c4mADYLDgcMprcSdhcT4GLF+obT3qioJqjK/715XsLDStFORckfZc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-01_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 mlxlogscore=673 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020015

On Fri, May 02, 2025 at 02:15:39AM +0100, Alexey Klimov wrote:
> While at this, also add required memory region for fastrpc.
> 
> Tested on sm8750-mtp device with adsprpdcd.
> 
> Cc: Ekansh Gupta <quic_ekangupt@quicinc.com>
> Cc: Srinivas Kandagatla <srini@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 70 ++++++++++++++++++++++++++++
>  1 file changed, 70 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

