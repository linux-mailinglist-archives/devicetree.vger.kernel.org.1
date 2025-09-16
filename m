Return-Path: <devicetree+bounces-217923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E789CB59B8D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:10:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 35A357A7305
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:08:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A2C232F77B;
	Tue, 16 Sep 2025 15:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bX1ydxqy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31A630DD31
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758035425; cv=none; b=Wa5C9/mefHHRImaDChvzbEXkLvAB2NabsMsCDDWq86JfeJBjR98hMBlqiM/04/AyMRJrJerP8DYhi/TtI3MkuaOu7wZqjaQaH3vDTbdMyb/h7E7v29WehUByM+7tQhoI3QVxEWTCLr7SjatUxj143om8nBIInwoT64lkkLbDOdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758035425; c=relaxed/simple;
	bh=jPuaeZTW6WYteNkW2J7/5OFdzopwcBsfgkccni30zHA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JBR0sg9CGqGrb/w2QsmCiLu0hFvj0hv8IDQAsnJtNd5O25icBN0u7oxkpl07r8aBO8zI3L1fa2/KcsK4xdOriIbGl67JwTLOGyveC0yvFZRaGuWstifPTKWSZi8usFnxkTEsMrfExAmJHtWO/SBr2PYyUaFQQdY5tJX26v/djWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bX1ydxqy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GA6AcN004961
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:10:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TcedMU3jn9IbGxGqJeuSafFA
	3N2TJP3yv0Irk8eYIvI=; b=bX1ydxqyAvzTu2umm2rKUkg2ehgygbfhrQnIRcNn
	mjyLCkfdrGd3wxo4Fg0SFXnLWogdcg0IvVVgUbbwXH83Ow88GPbOX8Y2TnPnU9O7
	s8tbWlkexCg3Udj+5WJruUXGLhdCzqE2zq0j/qMv3rPYzFcw2q6BTWFfrui0ttLn
	b+wdN/4O/vp0GU3KlIWt1P2b3xgZj5Krw1PobShUm4WtL8FQsoj38C+RiyBHFIzF
	FN8NDZnc28eQuzHtIKMYzRBvaY++kyULF8JTyFrtDnUkItawMt00OUfMG9/doeM7
	kXqbTv0DC3j1Mz+WdkEkBcQDInBrXWCrYDxXvqQluw7sYg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950u597w2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:10:23 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7829c46b2e4so50610516d6.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:10:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758035421; x=1758640221;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TcedMU3jn9IbGxGqJeuSafFA3N2TJP3yv0Irk8eYIvI=;
        b=w488ECBkIHT1MoGa8KfIVD18ecxgI98U5nNfpd3vBZ8lhxTVwVwd7p/WhocgcLva88
         Ig9sJMzaD/6JBklCcF9Dsu+wmNBbKtZ7AdOOFJZZN0nrI7QV4ycDOhhhRfURj3MXhSEq
         9+p1CTErnhgQEzsvqMFmxFtsq9m0MAy6sezfg1SwoANABgrKMT4oJ6gbbdEsoGkPdhGq
         +Ztx/1fgyZQOUxQqk/IcAIs9hO+si3OOGcDNUS0h7Bhvak6onjLPc+T6ygeySfgoxXcE
         r2/SgbQ5xBGJwKmGToYuR/zrYh8OR+4IED1VOlwcz+WvewyZ/9leO5dgCllJXvkbr8wk
         qgFA==
X-Forwarded-Encrypted: i=1; AJvYcCX/oX8sSHLsdMTmxd+iAEaWoHWImleRSG3hPp25JSL2UNg2AGWunrO0Ls2sj1ZJ2S9+O7ocq/rXdx4D@vger.kernel.org
X-Gm-Message-State: AOJu0YwmupBTyhbF0JrBgoIyj1On3JHr9uH4XA55rviK71+tljXNLBZV
	q6EdXfZq6WIRTpSICxVbsYUd5spI+HF+rnzyGDVUw4RuT0SAxT4QCCCByMDQPSHIuIWs7GGK0sy
	Rwygez+NRoUxpRZN8kC+jaLV7JGVVbn6mpsmDHWSzBlm91zDHRN2x0AXb+g4ahQ9M
X-Gm-Gg: ASbGncuUUjl+wqMb/NPA0CmsJd+4FEMDOBrMGRGFTlvi6hn4IlKEyAy4uRgImaHlBd3
	h3Lry/ngaB5IKEClzy7drPc03KXAOyR6kq7IUM3KJJ4NSCbj87y/Toiir6Mzbx/SUJe0tMl8XU9
	JWiiFe4Jiag437uM1w2Cyn175NzKQe/tSRwDNEz9IAEaNuOqNt6l+KNxOhl0Up0QmIrbwetlLwa
	W+xn/yOF9CgdsrvCX5VyVhrqk6DhY6GNse+GAaDMJOeQ/3zUFZaSBJlQk4Yqj0yMJsrJPzN+2Du
	+xmPXnDlvXdGOA6vAwb7dxQ7JNQ86J3nuluonizsGE/1XYehSNExTfICsXEmWdkL8FSITrvYkaa
	xvpjcbKm85GYupYNInHmtNYMngguhC5pfeMyoMVmyaxLNFyh/a9h7
X-Received: by 2002:ad4:5aad:0:b0:789:2556:f984 with SMTP id 6a1803df08f44-7892556fbaamr73641436d6.18.1758035421353;
        Tue, 16 Sep 2025 08:10:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnX49z2cSD36W5CA4tXYLLTMMMKW63qRA/5PsrZgN1RV9C17RW84jLlEaeZ3RADW+1Km6vqg==
X-Received: by 2002:ad4:5aad:0:b0:789:2556:f984 with SMTP id 6a1803df08f44-7892556fbaamr73640776d6.18.1758035420812;
        Tue, 16 Sep 2025 08:10:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f163f4c52sm34087491fa.22.2025.09.16.08.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:10:19 -0700 (PDT)
Date: Tue, 16 Sep 2025 18:10:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, linux-i2c@vger.kernel.org,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: Re: [PATCH v5 02/10] arm64: dts: qcom: lemans-evk: Enable GPI DMA
 and QUPv3 controllers
Message-ID: <hgkc2ifabxcvzc3ngxnenav7mposnsk3u7kvwhmo3yxbm37fsw@wt6uu3g4dynl>
References: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
 <20250916-lemans-evk-bu-v5-2-53d7d206669d@oss.qualcomm.com>
 <n4p4www37qz4hw75l6z2opeqks4g3u26brceyxi6golam7f5aw@raandspcihi6>
 <aMlXIdgavXT6Ndt9@hu-wasimn-hyd.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aMlXIdgavXT6Ndt9@hu-wasimn-hyd.qualcomm.com>
X-Proofpoint-GUID: 278l-GhPmjmysqiM6UtQe63O4tPqsafU
X-Proofpoint-ORIG-GUID: 278l-GhPmjmysqiM6UtQe63O4tPqsafU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzMSBTYWx0ZWRfX2EAYNv4a0gpz
 yA0deZpXwlR4amoJE661at+qDwMIYN39erjvEbpI1jRTaHYtzkMp9KcuHmkXjFRV46NLpZTafR3
 ofV/bvdMOWNdApFnvfRv1vLYqtQ0ly7zCKKslPAXNV4Sy5Q8ZcQJTQApxf/jmCRpmhko28/nhlF
 p3ohUSMMNaD0Kl9G/BzS7+usNNES8Yz7Z2vsFM82VSyAPx4cypNjTZHmeWM+p8pL0EiStiyWfIS
 0kCj0+4iEL3QB8Vb6O1yyUpg/ZaKNMKylRnqpaih+uVdqIqHMjYLyAa+pr7wUrg0hjuD0yFRmcj
 +/cVA79MkbgEKL4vkp5BqeImVqUP8e0vRCFGWeTs3/C+SpSI0v3x0nk+ruTsgavWzj853v8oflF
 8+v+91Yc
X-Authority-Analysis: v=2.4 cv=JvzxrN4C c=1 sm=1 tr=0 ts=68c97ddf cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=hx3DdL32n9YRypj0U04A:9 a=CjuIK1q_8ugA:10
 a=zZCYzV9kfG8A:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130031

On Tue, Sep 16, 2025 at 05:55:05PM +0530, Wasim Nazir wrote:
> On Tue, Sep 16, 2025 at 01:59:20PM +0300, Dmitry Baryshkov wrote:
> > On Tue, Sep 16, 2025 at 04:16:50PM +0530, Wasim Nazir wrote:
> > > From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> > > 
> > > Enable GPI DMA controllers (gpi_dma0, gpi_dma1, gpi_dma2) and QUPv3
> > > interfaces (qupv3_id_0, qupv3_id_2) in the device tree to support
> > > DMA and peripheral communication on the Lemans EVK platform.
> > > 
> > > qupv3_id_0 provides access to I2C/SPI/UART instances 0-5.
> > 
> > Nit: used for foo, bar, baz and slot ZYX.
> 
> Ack.
> 
> I will change it to:
> 
> qupv3_id_0 is used for I2C, SPI, UART, and slots 0 to 5.
> 
> > 
> > > qupv3_id_2 provides access to I2C/SPI/UART instances 14-20.
> > 
> > Ditto
> 
> qupv3_id_2 is used for I2C, SPI, UART, and slots 14 to 20.

No. I meant something like 'GPIO expander on I2C 2, NFC reader on I2C 10
and CAN controller on SPI 33'.

-- 
With best wishes
Dmitry

