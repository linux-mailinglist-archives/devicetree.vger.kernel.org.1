Return-Path: <devicetree+bounces-173445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6583DAA86FB
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 16:52:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7DEA17A232A
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 14:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F4E61B0420;
	Sun,  4 May 2025 14:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OAi652JY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA25026AC3
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 14:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746370329; cv=none; b=pggYv8/k0hTT0UUfSaA7PVBCzY6CTktrvpVxieHObqMVzoyvh+KMOCd+loDMFinbVtIW01JlhTxCcjKWUCX5yl/BUETUt1E1Rt9R64mg7YQ9gApHl3tmPvDe2kN8H4hWKUSdu86EyO5jsZENOU7ai9LMrUMGWIX+1MHNa5YezKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746370329; c=relaxed/simple;
	bh=cCQU1JvKA5nSLiAdJUlKkfAQRunXcvgEAyvWc+BTpH8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rXeBTOqBZ/t/ExFjdJmdMofGDePIrJACf0sxCWOY+fCcg1JZTre/moungNBFa19QQSJjStMWD7Bbt7WrDWTKpyP7ybK0Z57HHNl6eCikeo1XB+vjjOaKOr5xssOr/RKca6vSV5lEeXHSoJmBf8xoDf7qQML0+IPE1GKT/B94WWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OAi652JY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544Dt2LG008648
	for <devicetree@vger.kernel.org>; Sun, 4 May 2025 14:52:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=m83SZdAydqLM2NkATe6eUZ2F
	MEFy1GeBKkXmBHJv2kk=; b=OAi652JY7QUssxZTbVts4KAOO7G4CJcC02XGcJFb
	gcXteM3NLwPmXuEBHjmTLwRcyYJp9hyXMR7pmbif4VIh8L9OdHjT2hSpBadd/v9f
	kJE2CdtEEMkeCX7rMNKgdSWGrL0/InS3q3gBdhBz7tNRZBidKD4VCc1h+gJNehQk
	lWawK/o525vAdYGqyndFJf9LwnCSCQNu/SchK3mBfj/WgrcdnCb99Cy+13l/aTLf
	LAG0CFtvARdOM2dfE519ik918b3FcH2XPW6JdlbUjzhlUXiE/1O5xFwxBFcp5S43
	pEWpye47Y7y64pKfctrIYBMGY2l8BuiiOQOqS3G2fFOFnA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dafg23jv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 04 May 2025 14:52:06 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5bb68b386so485761385a.3
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 07:52:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746370326; x=1746975126;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m83SZdAydqLM2NkATe6eUZ2FMEFy1GeBKkXmBHJv2kk=;
        b=Q+LcGmMJrPjlZaeGUEA4UzuO13iwsfWAg2FMYwRvLzWxH3eH2c/WOgoVrGhJCrUfFL
         TkFxT/I7mH0zI5amPAxwgi1x/ytZ0D8CANBJxa8wZmfURAMfDLG4ph5hCMMJ3M875AoG
         8Vumten1MYh0rC0Ri4IJ5AM0s1qKJ7Z9NWdKq+NyxFsNdcOopTl8MItRPuO9Os1vuaQZ
         vqLsc0b/5mmx9GC12raJzXdig3xHfOWEBJpFH/yzRpzYACsvJnDwfrofroUTcFAXuTOT
         zcJ14Zoew77HIXdKbyRfoA2lnXRweLZZGQ50nvbIhDTopNl0ZJTVdQb+pH2QYCli+GEy
         rIMw==
X-Forwarded-Encrypted: i=1; AJvYcCUPizFr5MFhznWxjQM+UYWD2igr+deK0T4CWlClBPa0NXXkq2DGqubWL2dDlgpXQKsgjF9iiNSAjrzq@vger.kernel.org
X-Gm-Message-State: AOJu0YxIOviIpAeo+46J7xNsDNLSBaafk4FrXooR/xsH/vBoaGKkjiNW
	NKKAlrww3Y3CMIDtN1LcYpjX/4SEzO7FCDegT0wzVmaFE4W3F7C7LOCrtT0P6ciK1LOVDQeg7kb
	x18ua0kEO0KOL9p9+oeT4uNYtgnqoF+MJ7iS+2+K5dA1zHKtfTQrS1MgxQBZ2
X-Gm-Gg: ASbGncvxUtGgFRMetk3JoMnxt/WopPSJ1Wmk7kUU5z22cF3yeFbRWeRSXDeNvLCM6x9
	v5SznQ6yf6FF6WaO9I051h4h81/gF4ihON7hxLTV/LO7V3iQe0wOHgUQdw77S4Y6hlq9ydmNCkp
	i8nFF/+O4P58jICLHRlXC8O5Ebh8UVENvbDUSZQHqk3gkvwvVotq11DPw7Y0H7YyvZ1wtllGTMR
	M+nzYJKzXaVnTbNyAgSIuruLPBxNVKOfHxSPB/tdr2Y+p7LL93jRs2q+XK7Xeq0OJ2OYxfhhzAI
	zGx6tUCoNF0Xd8UbD9i/9iQZjAHg2/9hSFRi3D5ExF3xnZeVzizFUdzTGbEJHgUTJv3Vr0xRVy0
	=
X-Received: by 2002:a05:620a:2b92:b0:7c5:5339:48cf with SMTP id af79cd13be357-7cae3aa5b75mr725688385a.30.1746370325768;
        Sun, 04 May 2025 07:52:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjMPjtNhpIyjrKZzrhJw9j9z9DzHZIYlT7MKiqysN0RLMW7cC90IIwrON1/tFp4KvpBkcPoA==
X-Received: by 2002:a05:620a:2b92:b0:7c5:5339:48cf with SMTP id af79cd13be357-7cae3aa5b75mr725686185a.30.1746370325494;
        Sun, 04 May 2025 07:52:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94bf03dsm1267630e87.66.2025.05.04.07.52.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 07:52:04 -0700 (PDT)
Date: Sun, 4 May 2025 17:52:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alexey Minnekhanov <alexeymin@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>, Dang Huynh <danct12@riseup.net>,
        Alexey Minnekhanov <alexey.min@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sda660-ifc6560: Fix dt-validate
 warning
Message-ID: <2bftieu7mnct7lp5cz6flhuc2azz4enubm5dkecxzsgwhswu33@xvghahkj6qrs>
References: <20250504115120.1432282-1-alexeymin@postmarketos.org>
 <20250504115120.1432282-4-alexeymin@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250504115120.1432282-4-alexeymin@postmarketos.org>
X-Proofpoint-GUID: EQK07F_ZeKQaCxZRrF9mpQIRkVJfoP_B
X-Proofpoint-ORIG-GUID: EQK07F_ZeKQaCxZRrF9mpQIRkVJfoP_B
X-Authority-Analysis: v=2.4 cv=atqyCTZV c=1 sm=1 tr=0 ts=68177f16 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=Gbw9aFdXAAAA:8 a=EUspDBNiAAAA:8 a=dCBGrzmRZM4nFyVncTUA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDEzOCBTYWx0ZWRfX7XxxojUrBuiF
 mzBIvZQwMVW8fXxlzvEBwziOGCU0x0Nvm3+TF9oXeG/2qcmcUTcHUI7gdRdsgq5/x3amhavlIio
 DvQp+eBYsGX4psJai69lr/mYpRlqaNcbAkcaYrHiuHwDC5y5B1FZdtoedoFR7dqKDKau6HNFTDk
 RVyYxeeTK7Wc02pIM7d8+YoRqFoj0GUwtgbOh4M1ZGqgkcLbSV3ibVf3isL9wvzkE0NiYtj+ERe
 iJqYmddEidHnp8gYVzeak7Nyy3Kwx2+pQ5tgGiHF1AMzAe/4hPFabLrLVD3zhx9gbG5+SHEiRid
 gmBiVrIyfcVrcEkEV4hLoei9kl5+8Jpi0sFITaiv8PHUIpdvR9HyQeY/qpZmv6lz0F1ZnRa47qh
 2j8OXVOmTYPhIBYR0vsyObdyDKLninQNpppV2MStbzGCKKBaeGB+QVjXCJJ3H3Q5ss9iKeHU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 mlxlogscore=449 mlxscore=0 impostorscore=0 adultscore=0
 clxscore=1015 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505040138

On Sun, May 04, 2025 at 02:51:20PM +0300, Alexey Minnekhanov wrote:
> If you remove clocks property, you should remove clock-names, too.
> Fixes warning with dtbs check:
> 
>  'clocks' is a dependency of 'clock-names'
> 
> Fixes: 34279d6e3f32c ("arm64: dts: qcom: sdm660: Add initial Inforce IFC6560 board support")
> Signed-off-by: Alexey Minnekhanov <alexeymin@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

