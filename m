Return-Path: <devicetree+bounces-223204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4ECBB22B9
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 02:52:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20BDB16EAE5
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 00:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92137EEA8;
	Thu,  2 Oct 2025 00:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CVEd9Hyi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF537C120
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 00:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759366316; cv=none; b=SMR5Sw/3kFasnsFk207ILA23BypXPUN5j48kGPUTxBg63HmxDDKnLUEf55JuNincxD33h3MSVi3U6J2mZ1FoB/2WXVHlr5pjGRzy+jyi7or5OoeRy/WUHuBqsBPCSB6txQnz9le77qmRojOt6/z7J1da9p6zLcif5AskZViEGf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759366316; c=relaxed/simple;
	bh=xXe71YIonX/mx6fgkbEFp8qhQU4Ld2BTPUxSllwc/As=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NNR43tXz0kUAgfdaf2JCQw81fpsy+coDpHC96dYTFJ8CMunTe6KCQ1tKOpyqIxIcM8Fc6W/4JhyjSc1JNguuJJ6Spnq8ESN0fhjvCORs6OtcrEO9oCX/Og1IUwLjYDglc4WihRSIfpgq04gp1Z055ZEdC8UrkV79zFLv627eaaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CVEd9Hyi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ic5QX008476
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 00:51:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=93heGJe2ZgckPIR8dkGPHK7H
	vBK4psoY2YpacrDOB7M=; b=CVEd9HyiwuMsIJ86DLi1VBtReg2aL5Q6khNwceFp
	pldsTYldByQ3UG/VrXe/rVxR1PzP2/h8hHipiVoMnzyL5ZX4uxRO2z4lIjhbG4A4
	HqLZb3nJEHaR8owB9ZZ+hly4GQISEmT7tQH0OacvJ2j/febF/GmI6lzf1P6x4Y8F
	CNZvWfGLupQuDPcMDmbXiIr9raRtz7M2qL6ZyRvPpZAB3yL8wz1JR2txUTW0rJLU
	bcH2ue97LDR1n91lFerirAgR31qS/r01H2pUmoZVs91OxXeOw+Q9VF/6TNMycbNg
	nWkKf7O/xLvw7YEFOtAQmYau7jZd0BeCxwa9jOlsDnRHBQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fppr9pwj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 00:51:53 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4de801c1446so12330931cf.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 17:51:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759366313; x=1759971113;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=93heGJe2ZgckPIR8dkGPHK7HvBK4psoY2YpacrDOB7M=;
        b=LenoxPAKVrBDZJH4pYXOKHlJzh8JqljZEKt7oOwsaLj8EduSlpZGhDFh0OfqeEOUhI
         bTSuOH7EJl/mVgaqmu4TklQpWQHH8XPkVaMnr/PnX6Vn892ePPyr43+uBtCKTuKm9zf/
         mNfN4Nnsjdg54qtWoljBLMP/MB2sOi2XQT8y2YkEy1eELmmKcEUSkJHo4jyjnLyKAG+z
         r9kkfq5wZLKFpAXGTDXiKD20MJFWaw2uj9rFwdfa32d+/M6pe5D40StNH0E5kzt5s0DM
         cURpyP8JDA6mdhe6ofB54hmiCxlaEGAZNXKjXZ3naiBGECjG67aHW5TFeE+R9WDM7WrR
         1njQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtrQhDh/lxbau8HtIRD8YroyXpFlKmUiosy5hLg46edIa6hGAWfmxUebz84oVxWlwEWRmKY+oKoqsB@vger.kernel.org
X-Gm-Message-State: AOJu0YyaOKAksw3jiQH+NAGFrGRACH9qdggWaW2wvF4yVUNP7lQ42KE0
	XrCRAjIbxeBcKuTLhclYKQf5+I2WD58tnU7uLSgbXQkMcfr+IhwHrNefp0HJ0KgvzHGycjBwfxp
	WbVOBZugT1FG8SXY1NI03RUicNXfVbzddJPBVVeYlOWdf23b7YnAOvyJAoKWh2gTJ
X-Gm-Gg: ASbGncuemyxUUEz70meDJ+2QXvuwkGPn7uqiRqRiTEhhlYEfCGb4HBKfb2STg4ruL4V
	eGQqC2FxKyUU42FMNs+7dviu6ZApvIe/5WkALSOZAUeR8NgrT26RmFpTXQbR+9TfzydLW3J5fN0
	db0yr9LVyMntRhmXCdECgbn88Smt+AbYeDxoplF7tDJAeVCqBXjQG5YPX+DvlZGxe64iwj9rTJS
	mD3PwUbjIaKBuWbnWbn9WpxU3J3EoxZK0y/6bjU7BvQSvhg1rgQad19UD/NO5MspWNTxaf472Fv
	HxFS9+O3Zb62vGSZqaJDioH6MJY8lQcJw/r8hUs163CIdOOlFmu/wZErmmd6J7kBtUhj/TwBa78
	cMzxR2jtAvnH6glL/032pSBQGJKWGUkwqldQgso4rSo6pe1Crj6sdC7HXuw==
X-Received: by 2002:a05:622a:54e:b0:4dd:e207:fd0 with SMTP id d75a77b69052e-4e41ed0256bmr72706291cf.74.1759366312966;
        Wed, 01 Oct 2025 17:51:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXI3nWOwvyiG/7c7UPYGB+PIhFFGHfgFBcRu47k8DhIj/7J/AoI8j88xAGAc2I79bW1Uyxcg==
X-Received: by 2002:a05:622a:54e:b0:4dd:e207:fd0 with SMTP id d75a77b69052e-4e41ed0256bmr72706041cf.74.1759366312534;
        Wed, 01 Oct 2025 17:51:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01124a05sm342036e87.16.2025.10.01.17.51.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 17:51:50 -0700 (PDT)
Date: Thu, 2 Oct 2025 03:51:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/3] pinctrl: qcom: spmi-gpio: add support for
 {LV_VIN2, MV_VIN3}_CLK subtypes
Message-ID: <tkbhfudaa6oxo2ox6l76vixcznfohwmditqj7nsc2zdb3rxqkp@lgubwu7j6v77>
References: <20250924-glymur-pinctrl-driver-v2-0-11bef014a778@oss.qualcomm.com>
 <20250924-glymur-pinctrl-driver-v2-3-11bef014a778@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-glymur-pinctrl-driver-v2-3-11bef014a778@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDA4MiBTYWx0ZWRfX5sDVGElLujWp
 VaWzMiHIogwKNDHzPB5ccs8hBPScOXXE6c3gtsV6WJe46OTX64P/vtf3BTYDNYET3w0195hGT2w
 SjtgMv/lkoctZnurGQp41pHhrKf0eohTTiDEe75pWL6nIOoJai+4jfeFgIP51I3NcCGTy0gtj1r
 DjN337oAnMGPIyZJjlUZYn/btG6G2FFXUmBObpZdgnhX3LQ/D9V/QoI+d7OiwYq8+jDPXDBFbde
 MJ4XjcZiGueIVaER3j+prE++K4yh6C1WJxzIXCAFyFpCoXYftF+St/wK7wvlTToz8w4d7JIjBe8
 JuODJLzlkkVrk16YMEj9Rb0jXUjWjCBOBRF4PzHPutoD9q0V5d6nJoDyLilUtrttmRNtD7xKsiD
 yd/GuNTotTINWb9D+MTDgVFg39Q8cA==
X-Proofpoint-ORIG-GUID: MkzOlVCIaTDdDXnUkMqIK2CK2pHnTt5T
X-Authority-Analysis: v=2.4 cv=GLoF0+NK c=1 sm=1 tr=0 ts=68ddcca9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=_mxtXHsW1hB_9kt006IA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: MkzOlVCIaTDdDXnUkMqIK2CK2pHnTt5T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_07,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509290082

On Wed, Sep 24, 2025 at 10:31:04PM +0530, Kamal Wadhwa wrote:
> From: Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>
> 
> Add support for SPMI PMIC GPIO subtypes GPIO_LV_VIN2_CLK and
> GPIO_MV_VIN3_CLK.

Nit: Please describe why, not what. What is the difference from the
existing subtypes?

With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> 
> Signed-off-by: Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> ---
>  drivers/pinctrl/qcom/pinctrl-spmi-gpio.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 

-- 
With best wishes
Dmitry

