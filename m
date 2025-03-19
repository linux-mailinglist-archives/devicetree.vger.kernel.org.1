Return-Path: <devicetree+bounces-158941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A306FA68B23
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 12:18:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55B7E16CC79
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 11:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B377325743B;
	Wed, 19 Mar 2025 11:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eZniLK5S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBD0257423
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 11:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742382434; cv=none; b=fr7LjXysANw6W79Bq/9A1R5S11r824fCW1RyFjobjUq3qYwAxlNOQbqOjKvnS7FkIWpqO81itx5r2n/JAC7WHZFpuzo5ktC9a8plYOUd7rTCt3jlaF75ulcTuJq86l1h4IcqaV7sk1odpLTvmMEu5Zd7bP6DSNMxlnhpt8xW5mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742382434; c=relaxed/simple;
	bh=eRtnfq5G7aZdIB6cxpkvIozQYT4hqFMByiFRG+lqLIk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O+jLKtRgytwl5sCPYrIY3JqhjC+zOB7WGq2vp6UF4QkaOAqjnUjn/7S8Fussn6qYoJSXdQibIdapdAgLlD9aSxswZ7XmEvNywshRzySYsbp85/TW1iv5G0SafrvBacqRzQLbm1pYkhh3lWmk6Exz6axMLJ0HezAddkeeK7wcIkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eZniLK5S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52J4ln1Y009939
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 11:07:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WkINzj//g4AQWdN5I6oKqNP0
	5nghNa/+qfEoInV2+gI=; b=eZniLK5SeHPdTvju6T3aKB2c0c6Syu4fMPc6Dihp
	8/cJYZetO3r43AHF0amnNeTPKbL3lfmbkYsgikWs+ZykfoB30G6Fz8pr8ROku2rd
	hEMPZSJ+CMB6zdwj5RiaxX7OCnVX2iPduLtdBOwpeTQHrPPFFNy0WpLCRweAUcgi
	iWyUX8ZmgRS6cg3oJ9aCxHiRPSWIZ3pA4FZ3nV+mLhNKuABQBeTlWIa/RUPWLPeW
	xRTXtqF5lDsm4WTOcLBS3vQI8JmKcZzCm49UDaDSOaRjHGfNlgc1AetqqCflMC9u
	g1nKyZodPkNI/b69c2pnkT3kqrq5BPNKS/eWUFrGTbTzLA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fdvxj77v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 11:07:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c3b6450ed8so1134794585a.3
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 04:07:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742382431; x=1742987231;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WkINzj//g4AQWdN5I6oKqNP05nghNa/+qfEoInV2+gI=;
        b=ja5RRKb6POy3Guairw1EsthoIbaJh1C55m6xM6Q88J2NTB+2ArDK0xvAWe6zig3A08
         vYWNeCdICitZiGqWldwmnItQwO1vHgR25b9FPFgOZ1/Bs4Ai8L7Jgu7iO3KoHqsxiyOu
         YDUrX9xcrL0uvfW2UPMvZqt8IHGLwdtXA25okVO0h6TeChI/6LlHvX3+YKH8WzD8635x
         bhi70gY6995TGWeLvV1vJoqRHdmrGYjn7BPC2e+PTd+Uylid/DkEQSsx5tivMHRWue0q
         CSy5rt13Ho+aRC48zN35NPWd5bvOB2zByQQqNJ8l5jEU9cT5IGYTTBI4KT/dzxwD8aeP
         EjzA==
X-Forwarded-Encrypted: i=1; AJvYcCXe6JnvRCauYlwLbvZg6Ph6SaBL1NbE55H9O97ajR55cb4mF0Pf6Hpo8ZEEIL+/fOkRgWnDdk+4ho+d@vger.kernel.org
X-Gm-Message-State: AOJu0YzailBDNycKNdDa4popFGXhWMomoTgvDxHzo9K95tBCf0KONG1W
	dnXzZfiu2+hRu95jQox5w4Wi1fAl0AozTvGr8D8kynKqGDJuGEhiWTdoGuPv8oe3xeOPWkPubIn
	Krr6KuTzUIagllwNTcg0fXVQha5NHW4sXGTDbBnPGgM8YmcH7o40krqvttlXC
X-Gm-Gg: ASbGncsJxZaKDbErWwpn6631j9WTs9jOIYVJaLE4xEGS4703dZeJ7gxQsqPYg1CMP9n
	Pmx/6Dyg/+NZk29l3NeS7I2Kh3KVtTLEqXlkbuBeTRq4HNjQ6EYIuyUCAMBIEpXhInD1C7bm8lr
	hhjfyjEl//yFrEo6uuUoRaxWZ97tTvop8xIo1Rc8aHCsSKRbQE8gU9uvjDy90otqLMUG73AjDa8
	Nco0qN+660VGp1w+lor65FDDfwgVxuWBwLno9BlwuAtJfVIMyB4iqUzA1D8/51nw8TODABhJn7p
	ZMFNh/AubLkwxyYpr+1TMGiL43ozPQwW5PkB5EfCKY9jEoZ+LRhsGyJQ1iC4KqnN2HDNRCCVowy
	31wg=
X-Received: by 2002:a05:620a:198b:b0:7c5:50dd:5071 with SMTP id af79cd13be357-7c5a8391431mr236547585a.22.1742382430951;
        Wed, 19 Mar 2025 04:07:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsG7eg8axClVP5k4HD+jCjL+jQM+Gse5YAXQd3q6Rvpx7WSfCpRzKGGy/Ceh+qmk8FKSjMxA==
X-Received: by 2002:a05:620a:198b:b0:7c5:50dd:5071 with SMTP id af79cd13be357-7c5a8391431mr236544085a.22.1742382430628;
        Wed, 19 Mar 2025 04:07:10 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0ea756sm22581321fa.35.2025.03.19.04.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 04:07:09 -0700 (PDT)
Date: Wed, 19 Mar 2025 13:07:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
        bjorn.andersson@oss.qualcomm.com, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: qcom: phy-qcom-snps-eusb2: Make repeater
 optional
Message-ID: <tbmte6hnuhafextazzyplec5xjuv3q365hqtvwcozhugb2loij@dtwfpyotnew4>
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
 <20250318-xps13-fingerprint-v1-1-fbb02d5a34a7@oss.qualcomm.com>
 <6yykvszzbhonc3dkwhva55arsdvp4hv4p2fo2vv6ftwr46httm@wnofgs4jaqaa>
 <Z9qd1GJ1418CbaOt@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z9qd1GJ1418CbaOt@linaro.org>
X-Authority-Analysis: v=2.4 cv=SKhCVPvH c=1 sm=1 tr=0 ts=67daa55f cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=opzT4eU6cpc3XRIv2nIA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 1DXurQNzX5lkLSvWaWFI1Hlj-5wiYC0U
X-Proofpoint-GUID: 1DXurQNzX5lkLSvWaWFI1Hlj-5wiYC0U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_03,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=673 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 bulkscore=0 mlxscore=0 suspectscore=0 phishscore=0
 impostorscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503190077

On Wed, Mar 19, 2025 at 11:35:00AM +0100, Stephan Gerhold wrote:
> On Wed, Mar 19, 2025 at 12:20:07PM +0200, Dmitry Baryshkov wrote:
> > On Tue, Mar 18, 2025 at 10:22:56PM -0500, Bjorn Andersson via B4 Relay wrote:
> > > From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> > > 
> > > In a multiport configuration based on the SNPS eUSB2 PHY it's not
> > > necessary that all ports are connected to something.
> > > 
> > > While this is allowed by the Devicetree binding, the implementation
> > > current fails probing for such PHYs, which also prevents the multiport
> > > controller from probing.
> > > 
> > > The lack of repeater does not alter the fact that the PHY is there and
> > > attempts at describing only the used PHYs in Devicetree results in
> > > failures to initialize the USB controller.
> > > 
> > > Make the repeater optional, to allow the these PHYs to be described in
> > > the DeviceTree and for the associated multiport controller to operate
> > > the other ports.
> > > 
> > > Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 10 +++++++---
> > >  1 file changed, 7 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> > > index 1484691a41d59a7eaf257ef44300827c668bf7e0..8897d2072ccfcaa5b4a510c17761dcdeed5bad0f 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> > > @@ -401,9 +401,13 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
> > >  				     "failed to get regulator supplies\n");
> > >  
> > >  	phy->repeater = devm_of_phy_get_by_index(dev, np, 0);
> > > -	if (IS_ERR(phy->repeater))
> > > -		return dev_err_probe(dev, PTR_ERR(phy->repeater),
> > > -				     "failed to get repeater\n");
> > > +	if (IS_ERR(phy->repeater)) {
> > > +		if (PTR_ERR(phy->repeater) == -ENODEV)
> > > +			phy->repeater = NULL;
> > > +		else
> > > +			return dev_err_probe(dev, PTR_ERR(phy->repeater),
> > > +					     "failed to get repeater\n");
> > 
> > Can you use devm_of_phy_optional_get() or devm_phy_optional_get()
> > instead?
> > 
> 
> There is such a patch from Ivaylo already [1].

I will respond there.

> 
> @Ivaylo: Are you planning to re-spin that patch set? Might be even worth
> putting that patch first / sending it separately, since Neil pointed out
> there that the bindings already have the repeater as non-required.
> 
> Thanks,
> Stephan
> 
> [1]: https://lore.kernel.org/linux-arm-msm/20250223122227.725233-6-ivo.ivanov.ivanov1@gmail.com/

-- 
With best wishes
Dmitry

