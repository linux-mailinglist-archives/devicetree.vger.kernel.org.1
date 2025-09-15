Return-Path: <devicetree+bounces-217098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B68B56D29
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:08:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BCEA3BD6D8
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 00:08:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 954FF7E0E4;
	Mon, 15 Sep 2025 00:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dS5O9eWp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1467B533D6
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757894909; cv=none; b=cHLCNQbaEdrdlsCfKXDy8+Wffp5fqUarRJ5482sb+9v1s8s0mhtmgrmOOv4OaOmzsSus0MHeHCsXKV8kJH9hQHQto18gbnlA0XlRKWpCQpZtixXqvb8+vmPioQwJxSwsazLUpTU6pCpOqGW5pIuNNUruim5IFlV11WRwatCI0aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757894909; c=relaxed/simple;
	bh=w5+8AtP73tAF4f80M4jzv+Fd3m1mwSzu1c5/Mxog6IU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AMMIb20KXb0hPTVHBtjJVnM//d+cmsXToswHDVm/yRTU5qbn5MRfa/EjqjSsxT3wR4Nt0EvvCLHdUPmMCsNF2Wo+BIANmxFAjkIFDuGPSkMu81uz8xuvrORIWxNCaAvpbNpHsida7hwDokQI9nVp7D8KDWAklMnr6+pyAcbPDhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dS5O9eWp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EKxXii023725
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:08:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jhHQJ2FaZhjbHowvbcKpjMEF
	Vjk3jYUMJhk+fRucFz0=; b=dS5O9eWpq95Bj7YN2/hf0NUR+QUi9prvfH+97CGM
	wGLciooned986w5e0IsJ9fbTgJwG/pNgegL8JTzuY6TIwMjBB2uGTKJt4HpD+ipd
	M73z7oF4ydGllcKJYHhxh1qbSax51CwmOYo61HvMOx2Z2XB034BntzdilBy5Osk/
	ILstF1kthGk8yJAhRRgbyTR7Bb8b3q9bHTJ/xtojxzJBoZ7SlAi6orW6lVrAbtvr
	os3JHoV/nwZJuaTlA4Ehe0ZPxS++rfrrppvwq938nqzYXQGEuy7zwIR7XKVzqtPe
	VG9dLEK6vw6LQ7Z6lE5+8rWGL1No9WO+7sZxWOcE18oTaw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950pv2xnv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:08:26 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5e91fb101so108504551cf.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:08:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757894906; x=1758499706;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jhHQJ2FaZhjbHowvbcKpjMEFVjk3jYUMJhk+fRucFz0=;
        b=YbFIpJY4KsRioug1OqqGYhhPGcqMsaK7hV03Zg92o0qBTuAUtiSWZx6wVdUjQ/0Owk
         mEm72X+bph709mh1K4HuIiDb7WdEfSDg256QX7U+clv7bEzjsrvf/iEHak2Uky9bz2Ac
         UuWaIkFaE+15xYd1cgem4tUl9G4U97qzBJRh429WcLqjcc4cyFnz923fcTdgEyh/BZYy
         ceHlZAaO4gt3cLl2yLukwMOphQJXBRxss+LnZY3bWb78V2vp8cEIKf/9Q4r7uydGpKzQ
         r/w1ZBrepE/Gb1SllmXEeG7KcZl7wAG954pEJrmRpxh0vODJdYH5Mw2JVezimfrThc5j
         ky7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXWP2GX4ZIwZurhR1SYnb9RiakqivDElphbLD0nVi0wOBcL188YSdlXDVHB0//4sOmsu7PbW3eqDWHM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1HGu7w4b31l7OGG7ENaJ+y3ya2+3Q0Sy+UQdFywqDL5o5sTFb
	emy+vIzEEYVp+j0uZcqU1UoIgu4lv05tcLwCtH8PCEXsCgb1p6ZOnj8/NJQNYxylHaH6oEYx4UZ
	NorhS8mZnbu/m5S08d07f2OzZ2bbmvo6kCgoYIjZjsNy6nL+9ShmhJl60Kp7nRsSLHD9sEHAm
X-Gm-Gg: ASbGncujHEVTet+EAHQKnWWvGKzvEx2OTwWWC5Q/KcAnvt8XYlHmRmhjujAZB6kb8ZW
	arbBDYKnUYKIMKW1etM+Awemrg/L0XT4J9rFzWKP1K+m1wMr65RaPZVzNiriE3j/yONdoIgYoHR
	ld7SHgpV6wC6ogqTvedL4dOmD4RQE7eSRcBMnarXuOafDvMmFjUJuKYWyaww6JlJbM+gbq3KPgw
	J/47gqCUJTbYzWOjWGicGcnW3cH9WzPY3552IR8YWaza1pP5d8owle9d24qE225Bmmb9eVbxKRA
	RgWcMK/DuUR12ymW6y71Yu7+kxXmh1TkNQFOyiWGdsvqqal2SRiA/M8aFVLTY6pE/rviC4TGuNk
	Om3OPZJ7nCPxHOSByfCTWWkO0Dkcd+nbn+W/dewsVjw+vMmhQe/8v
X-Received: by 2002:ac8:7dc7:0:b0:4b5:eec2:fa with SMTP id d75a77b69052e-4b77d05c20fmr145396171cf.62.1757894905777;
        Sun, 14 Sep 2025 17:08:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlzWL1Pn7gtuuEpIlHBZn+SrnRj7NK/IECY8KYfOg+8dAVUiEVUigMgQ3DRWqq0FAo6LUpYA==
X-Received: by 2002:ac8:7dc7:0:b0:4b5:eec2:fa with SMTP id d75a77b69052e-4b77d05c20fmr145395871cf.62.1757894905336;
        Sun, 14 Sep 2025 17:08:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e6460ded0sm3264619e87.105.2025.09.14.17.08.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 17:08:24 -0700 (PDT)
Date: Mon, 15 Sep 2025 03:08:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Antony Kurniawan Soemardi <linux@smankusors.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-gpio@vger.kernel.org, David Heidelberg <david@ixit.cz>,
        Max Shevchenko <wctrl@proton.me>, Rudraksha Gupta <guptarud@gmail.com>,
        Shinjo Park <peremen@gmail.com>
Subject: Re: [PATCH 6/6] ARM: dts: qcom: msm8960: rename msmgpio node to tlmm
Message-ID: <nudo46pgp2uaegztcpvp7iu6fuotkp4hjhpl3qo57jpkjr7dph@5ypen25l4xnc>
References: <20250915-msm8960-reorder-v1-0-84cadcd7c6e3@smankusors.com>
 <20250915-msm8960-reorder-v1-6-84cadcd7c6e3@smankusors.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-msm8960-reorder-v1-6-84cadcd7c6e3@smankusors.com>
X-Proofpoint-ORIG-GUID: Hw2CZXoqf9kQwDAeKUenzIKWJa6PKdqH
X-Authority-Analysis: v=2.4 cv=PsWTbxM3 c=1 sm=1 tr=0 ts=68c758fa cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=wxLWbCv9AAAA:8 a=EUspDBNiAAAA:8
 a=WfKvcdoTxDYLXQoqPjMA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-GUID: Hw2CZXoqf9kQwDAeKUenzIKWJa6PKdqH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyOSBTYWx0ZWRfX+2nCeUXr05Fy
 lcMiG5E7I6qPDhM2Ck2kLfjX24D45DPQ9inS4vhxUCwQBbno2OQTnXuggLT1fegoVxh1ORAz/07
 26cuDCl81Kt9801KLzMUwb68vXEYOb/0HhAcj6pt1BJrdeELn66bPRz1CVDFElqKlQYkz9eGeVC
 PYyFQSn8pX4/No9ysJ0owIvm2t0yAzVvDmbL/oOnt+i0LHsA/okANpMpmSBP+0CeCbYLtRgXOoz
 IaGfaJWb1Sx2CKSUvj0B+qopCM5rVXWF2mJJaLoBBYfSVdUwoEl4EGtQD27KlppH2wT0ybbXPzl
 BK4OxKMpK+x7vtP8X9UlGY2bfVb88TpYfTKHs62zX37ZqHYHTKEEBnEQ+zUs5FMyiYJdrKr8KUm
 EFrsnmeJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130029

On Sun, Sep 14, 2025 at 06:35:03PM +0000, Antony Kurniawan Soemardi wrote:
> Rename the GPIO controller node from "msmgpio" to "tlmm" to match the
> convention used by other Qualcomm SoCs.
> 
> Suggested-by: Shinjo Park <peremen@gmail.com>
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts                | 10 +++++-----
>  arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts | 12 ++++++------
>  arch/arm/boot/dts/qcom/qcom-msm8960-sony-huashan.dts       |  2 +-
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi                   |  6 +++---
>  4 files changed, 15 insertions(+), 15 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

