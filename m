Return-Path: <devicetree+bounces-246782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 15209CBFD72
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:53:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E1B2430166CE
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:53:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D14CF327C07;
	Mon, 15 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A5YPUuW/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="imgyVjQJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A38325717
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765832033; cv=none; b=DIRtgxy2ZJvLYkpafOMihL2o8lG5bdnyIZB71zZpVAar4xhnYsE/9wfG0JOiwbo8Md90cC2VW/BgQ/PXQ4V3iZTexHRPogb6djzkcwK5A9CDtO8n7M0UiRCjSlqhAIwugdXwOsk1C67Yh1GkOfBhlMiJhYwC7KicOwnhrpW/4ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765832033; c=relaxed/simple;
	bh=QKfdTtB9jsJqpAbAZPYl/K+4Ds/KScd3T1DNwwUd2pc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=StBrgcB3KyYeksauFi/ea/k2yxu89ynoSpkfFEe+H0GnSgwbkCRStpF74PkaVhG8zH2aYlEkE8DR+Bj/b5LCZQLskX7WMHwm4kzBdHK4bo3Y7Rkl63flhlSt1+x/BZgKTBGoMdnlmeuNlCydNqeYS7xWDnk2lXKHtbKOWqwNYN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A5YPUuW/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=imgyVjQJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFGhcAP1131508
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:53:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=T/TsyWJzD5iXI53eher+jj91
	fa49Bf82Hz1fklQl6wE=; b=A5YPUuW/HQT5YkbWP0p6vSMTHbU80jsm+XXFj0sX
	NfrRYS5Ocr3MrUB/sSZ1XmsxxhMOhpBk2FN5+xfgPJrGukpdeEbCxoK4XOqU9Kjz
	lqZ5G2/CMHIK+pQ691LBLMMJmg1+cOHDwKQMuKwq9QqYOjK/0fvdx9Hx76nn+pML
	Y05JsCdGvrcJBxD1SX1bbKb0REL7wJeot4ZWDjRTn22Opte2lHUC8V74ayanTgcT
	ChY0XQz1SGqveGjYXa5wRryqfAmLWxqFm/LTCZ7VY8muxgKgNJIaHmbnc5Clkn3a
	YLZXD+VUdN7YVLV5cJRZcrxdS5pBQLJzpIWJljRvhNJbeA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2p3u8n57-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:53:51 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee3dfe072dso101856171cf.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 12:53:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765832031; x=1766436831; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=T/TsyWJzD5iXI53eher+jj91fa49Bf82Hz1fklQl6wE=;
        b=imgyVjQJFFdxEy7dcnhoDBc0Fm/vpRoVG1WnTjk+yqAcOGCl89DtQVfA38cZBuvsEn
         Wxb9UTl5d+DRYps6uibNYjvi6kgH19osJdVMq+7LwcPtKRg7W8EI4uDourtxIIKpycZE
         ydxT0qDavAlRdlBXZte+GmV219iO22LHW3i9MyL8SiLA+lAe9yV6VS5Dwj7WO1mCQbib
         ZiXVLsgzCa42HFz9HSW9JRQE6M7WOP3FzhtD4gAIe19PVAXcz+/7oODFCZohR6DyY9Rq
         ehrcKv0fxRDb7eN1zpc/6na444JBMTmuinSn7KASMtQTGH+l26RtBpu0g+kkA7FOdBlx
         Ec7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765832031; x=1766436831;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T/TsyWJzD5iXI53eher+jj91fa49Bf82Hz1fklQl6wE=;
        b=ZbvyAdF3zonVUHwV9Kufz9QrpGCc20boJTWtin+RFUFp99MgK9+RVCmi8joLLkBD9U
         JtzODElkoJIQ/NhvH4ezmYC1FUy5rXm2iYeeCakS9IujPYs7w2xPgWwtvZ12y0qdVHeu
         MxcIyVo4OOHeNO8A5MQTsCKR2uFAndcde50seUfCWk3sTX8yyFnjDCoccaz0ebCg2nBn
         u/IyAKnOQME6lgEBRS/YOZ/kAK9GkiW/0zlJKmBp+CllGwgu6nm5tP8JRDFMZp26YULE
         2lhrmYMeL260UX/RA9ugpZ6d7rDJi0ac/6O1QSofqs/y6Io9LG795fIRjr+w63PDIviO
         MmWA==
X-Forwarded-Encrypted: i=1; AJvYcCVDywr4EC9OlqQ0hnEmoQhDLsnJO68rc9ifwC968IPwnR9su4GWonfyagJjL5zDy4ITMX4yqSj2ZQOR@vger.kernel.org
X-Gm-Message-State: AOJu0YywQ8+CiCtoGel8FLg1SJlAeryA2A0BCIbbAsoeO6SuJ0cjErZ/
	8bxGVpg0Z9Ru8cTfvehqFO1ypc3XV50QZpoQ+YhVbkK5GQik008Q55ChnFOjwH/3wuA1kVsGftl
	jWAj/5OtlM9Rw7xtKbdUWlPWih2ocTn0MMnujG5gWZtdMhRMB4Y1rrcIjqkKNTqFx
X-Gm-Gg: AY/fxX7FTz3P/6dJg0y9GZnp5DhlK8QOqCGcwJpc+Z2utIDjtENHKMUmt3NAzXh6e2Z
	qv8gW08kN5r4//T1kf2wBCtXCwsT4jyVmz/ACibU+xkJEzo86Y/TbSmPnxWFd384huWjmhpsBQs
	pmyZ/+P4y8Ebzg1E3F4q/34u12MHiLWxEeaT4kCclvFTI7LFwMIlOjvly+coq0HrMWr/QyX/j+T
	CJQYlQJpy+ITv+memmMMMkIpzJTJi4lOhmaYs8okp4GkdOf/47r1zscLEv5pGD+amyERCOaahA8
	iMoBbF23US5H/c3Ljy6n6Ijjwt74nC1xanQF5aF9XI8gUP5n0kq7kBPd86uEG0OV5o+ogS43A7h
	OBAhqeQ+dtHO5e5Hpib0Td6jdUhV66bbtKay197qZo0LIYMOnn/hAq6k5d/p6JSCC7eHZogaMqN
	MbSg000OfDzFs/V5/+7YSjQZg=
X-Received: by 2002:a05:622a:180b:b0:4b7:9506:efd1 with SMTP id d75a77b69052e-4f1d04a5965mr142206731cf.15.1765832030674;
        Mon, 15 Dec 2025 12:53:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGUNA4qOYmANAfvN6yXIfWAwa4vMNCBaoGyJr5ijB7DJd+cJVTwWlugyRk84pW6j9Q4YgQ5tw==
X-Received: by 2002:a05:622a:180b:b0:4b7:9506:efd1 with SMTP id d75a77b69052e-4f1d04a5965mr142206561cf.15.1765832030259;
        Mon, 15 Dec 2025 12:53:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5990da1a743sm139507e87.41.2025.12.15.12.53.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 12:53:49 -0800 (PST)
Date: Mon, 15 Dec 2025 22:53:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1-el2: Add the APSS watchdog
Message-ID: <wqhgxpijztpnsxhmh7ed4xmrn3bypvyflcry2t5pawbyoca4dd@pn5gh7gh27pe>
References: <20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v1-0-94ee80b8cbe7@oss.qualcomm.com>
 <20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v1-2-94ee80b8cbe7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v1-2-94ee80b8cbe7@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDE4MCBTYWx0ZWRfX6V/VFu0RuH2n
 aejyqiJ57sASb8eq6S9RPfTmKljYFKzFuYlq7gwnxELtKQcPkSUhKfDfghNwsbxZrz5RsFN45yJ
 /VT0B0nhwCLL8IpcdT1UHiRv+TDsi4ShzwYfKPiWyKn9/XWbaYzsbdtmT76aWq1wD/mOZTOtnkb
 inSqa7FFWWb76v5ENSPoSEc+4EnOQwKBQQ98zVDISAG3a4lio80BNIQPjceau8Wci2Vivw9OJVj
 F7Zwv3fcgEQ+uiNl32IN/SxHUA8xyucRy1BZ+zCEVKvX9sb7fvQXaTrANAxnYNk17ppQ6GIZRzh
 5cUq2KIaxBLOxQ9E/JR0YQG6Ohs1GNu922/bTkQLArdj3MTXeVdZOhzlHfdX6WhucWLjWVpVzoO
 XeUQbw5vNYpZ4tac+ycv90/nCc3sDA==
X-Authority-Analysis: v=2.4 cv=Q/TfIo2a c=1 sm=1 tr=0 ts=6940755f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=SdC5Sa7j1MJPWwsnmbEA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: 1d4tosUzDFX6aaGPiyVDR4TKeOoESvHk
X-Proofpoint-ORIG-GUID: 1d4tosUzDFX6aaGPiyVDR4TKeOoESvHk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_05,2025-12-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150180

On Sun, Dec 14, 2025 at 10:49:59PM +0200, Abel Vesa wrote:
> The watchdog support in EL1 is SBSA compliant, handled by Gunyah
> hypervisor, but in EL2. the watchdog is an instance of the APSS WDT HW
> block, same as older platforms. So describe the APSS WDT node in the EL2
> overlay.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1-el2.dtso | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

