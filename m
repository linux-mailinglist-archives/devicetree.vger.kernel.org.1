Return-Path: <devicetree+bounces-170315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC78A9A793
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 11:21:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45E9E442908
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 09:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04BD7215160;
	Thu, 24 Apr 2025 09:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NBk/5ikW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DDB11F150F
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745486509; cv=none; b=A+tNBZM5AGyv9vAgaqzjetMf4XI3GxEOSZvWU6bwN1RUCc4msujPYXoAteVRPFC0RcfzZos5lX4aFRLlPe5xuTI0iEuhX8wKtq9egpzJghin7V/c0hPI5P7qbCa4XCrp/cMH7MfkvddQslmBqMYorl4qJlruf4SvQtZxcfqv9Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745486509; c=relaxed/simple;
	bh=cJTS4h8qLRojZ8VoSi+xz4ukVm/2Bvkl9jt6qESf3Ns=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PQa75ac7ZueZCcWOtM4XKjSzsDFcqUKQ46rgN0cU49ysdpay/wBr0LEcA4hPpjSW/ktIxwxAr4wyUEHcPLi7FmCJPJ0G2A/8IlVd0iCn/d5yRdPeuzuUvmk5jLYtnjG0h0EN4BOo5u8xEVgnjYPecwypisullWt+NZtFUjQLs8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NBk/5ikW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53O0F6O3007530
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:21:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xzXZ2sQZ0fuZC4M7pch+4US5
	mpXlHFEAEEK/BeG4woY=; b=NBk/5ikWsUbRruaW8hiPfj4m+a9fZ6SzN/fElfwe
	Ec8BluSgDCCkI1QL+6AfmIAqNtwQPKyhSCW8invga/jUYvcUn9730UD0jZg/3lyD
	Gp7OizFulM8Uy1RRQ/jPHyof8Hs9oUSZb1gVVA51uLFOW4nKzlnmbL1IUbaM2taw
	HqGqnh1N+4QUh2Olp84IgcbG+4pev/stgW0lp0cJFerVPcoBXxduxxgPWrQM8okJ
	/kV+UyMaPUYKeycLls/bxvnD90DM8xrVCbHplyO7cHyT487Da1KvqTtfbu6If5rw
	Dh8ZTswTSxNWPj7nX41In/vXiE8Ag3Vr4wYmUVfezTV5Dw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh1mxrw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:21:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c0a3ff7e81so138559085a.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 02:21:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745486506; x=1746091306;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xzXZ2sQZ0fuZC4M7pch+4US5mpXlHFEAEEK/BeG4woY=;
        b=AESG1gtXj6oJPIf7CnKIDOanwVV4E2KPVWAi1inZHeR84YqbYcYQJvGhtq48ZfB3h8
         9m8GX1OpeqBanfI9fHCf9ot6EkaNvKft0i5dq8Lw3//RyTstNwQCfMCff3BzhjMJjgAC
         1qnaWTJ68lTfiESNk4Ul2S4nC7nglFLNci/jgEna38bTuvYw/ND3+C+LWbTi5ehxLBOw
         tzR8nAaBpMg7cJOZVJHxQXnv/DKGh/Yib2jJdhleF7xwSjLN9FG6RPBIJ5WGIhn9eVz6
         IWpiTrfzoDuzBuSasE8hHFwwNnmdCj/hrDpiRYSVe+7wHyq6mfcWdH+Bc98dtyccMah3
         jC8w==
X-Forwarded-Encrypted: i=1; AJvYcCW6DpM+kOAg9XCSZX5e9NmEJfTCbxxRnWxYRV9BodqctxtA/ned4xXubLqLBu44ZPObmxO85v5TOD3m@vger.kernel.org
X-Gm-Message-State: AOJu0YwmRh5mZyBpOyENlpEunfDVk+V4bXptuzK34Kagd65qV3YkvGbq
	qOliAmKEs6FuxTnKid5QCU2mxGjuulrZULDgmZOnN2wP62hJ+Ox+UfC0YvC2jFmpP3h8Ecxdg0r
	Sbeld7CLjas4jA8PlH3Qy1QgATZi+afVSVyuN/tRR/iLP+g6AP1q18EPqvEuu
X-Gm-Gg: ASbGnct9rMKfZlQlnKJhlkrQVGoSWBfpNoT9Vmc65kwZoENCzAsIHJAZjsFGRV4uTvO
	3DHK4A/ko6TweJnGA0NWXQItYk8HNK9Or2GKQc9DdyOUrGKUJbi2aa6PZ7KYQHbjwg2XWfLnDbN
	gbiwR8zUhGntPQYD5ZHJ9IfeRaiVGGwWPOEk36kvKJ9f+H4nawL0dubFC4Alt994vOi+E2XZkbp
	/DJmUO1HTOZj8W8D2OkGDQbbn9POI+Y3WGAiHfjoj368NiOoZhJgUPchsjBf83mmkACDDbpBYpD
	XiId5d0xFxkQfeTTTDMDxUzbM+DTJiIMdLH4WyZ0LX8KLIdPYGO3EjBwgtQTZIt+pexae3KPFXo
	=
X-Received: by 2002:a05:620a:1929:b0:7c5:3c0a:ab78 with SMTP id af79cd13be357-7c956ea73aamr256991285a.14.1745486506324;
        Thu, 24 Apr 2025 02:21:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7mFBXzRRSv9QJD9iHy+ibiIGa9pagdqpuIXwRTp5W2woKy22E/vHZGvaQczZ+I70l+2H9+Q==
X-Received: by 2002:a05:620a:1929:b0:7c5:3c0a:ab78 with SMTP id af79cd13be357-7c956ea73aamr256988685a.14.1745486506008;
        Thu, 24 Apr 2025 02:21:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb262e1sm163072e87.34.2025.04.24.02.21.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 02:21:45 -0700 (PDT)
Date: Thu, 24 Apr 2025 12:21:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <quic_vgarodia@quicinc.com>
Cc: Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: qcs8300: add support for video
 node
Message-ID: <47dtgkfqcpalixg36vxcurkmh5z52kdp7rbcvwl56wsyjsisdo@ylmmrvwde4nz>
References: <20250424-qcs8300_iris-v5-0-f118f505c300@quicinc.com>
 <20250424-qcs8300_iris-v5-4-f118f505c300@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250424-qcs8300_iris-v5-4-f118f505c300@quicinc.com>
X-Proofpoint-GUID: hx-kLgyZAitVf-a_Il5nd3rgroE4ILNV
X-Proofpoint-ORIG-GUID: hx-kLgyZAitVf-a_Il5nd3rgroE4ILNV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA2MSBTYWx0ZWRfX/nVILjxK7m+G YE4/55/Kpy6EJLS+L0oWuMs9pzlbGbbNRMPCX6sN/LC+a6McWO+Dc7FNZ89bpEFha7zT1eyHqL5 XN7abE0Z0hV+UK4MvRA4z+bJJAo9P5U0SvKEkFHtfZfPHymdVnh9kQisSS7jrQcHJjUjD12F4u8
 lcbutmBcWvcqfkXg9czCuBU7EpuyrDDc3WpHKYFndmn4Xa1PFz+jXWPaBFAINHQczMj0IRxHxVY kADBItYjBOxq1eWqF7VIqs0FLs+9xdgNbhiJpzXgwMzwO0e2iKQbfQzwfYvm6RvuOLEJ4/P0LlO xo2bR4RmafezsHFHcix4Udri/rUUhuwBpJtwKJOoNLRMrdPtNm84o9Dsbsf42374D7p5JKkTZvY
 zxx4rhiXswcBsZjkEVvL2huu75XRYfLydw5xCuMMGQ36kqlrHjbXubWzV1Xed1jVx/HkpFCD
X-Authority-Analysis: v=2.4 cv=ZpjtK87G c=1 sm=1 tr=0 ts=680a02ab cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=7jjsK61l1hG7xBlPe1EA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_04,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 mlxlogscore=816 spamscore=0 impostorscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240061

On Thu, Apr 24, 2025 at 02:20:48PM +0530, Vikash Garodia wrote:
> Add the IRIS video-codec node on QCS8300.

Nit: you can not "add support for the video node". You can either add
video node or add support for video en/decoding.

> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 71 +++++++++++++++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 

-- 
With best wishes
Dmitry

