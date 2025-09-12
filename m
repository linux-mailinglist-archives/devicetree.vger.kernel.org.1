Return-Path: <devicetree+bounces-216456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B57B54D58
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:23:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E8C41D62B19
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6AF630AACE;
	Fri, 12 Sep 2025 12:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N4qudoHJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA88D30AD0D
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757678964; cv=none; b=dKuZzvk20FRtbw0QfcJUAEAyLzpjBf1Ems/F7NmCr6HNyH86z7VcksldCjBYXyquqK3ANExk0on8EY/qFSmV6KQ4vorCxBu4wQgNc1PHWcRK14Hdf6uSlfdBR/w+fEC/yMwzcbMISP+k9lUl2E5cTTFHnid8iJu7mrtn8ZjG63Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757678964; c=relaxed/simple;
	bh=fts+Hs5q4CqZXfPujRbJyGAxy42t96v29pQ9JjRsBII=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d98qeq7bm252JJZkOQqAPbezGfK9dX/PZQk+ATgDcByAJq94hOXdKPjJPJMoqccTB4CzLYg4cwcDVXHt6MIVaprE9lCfKjvgLrIIA0E7z2N5HWqr7JrYZt1tBg22nrZGe8OYsd6zWLexGDmX+WdO9x0ikj7dRRqZWn22nNoc0gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N4qudoHJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fD7j017428
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:09:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AWecxXQ1HoSKQokJLzYb6tbb
	rzkT4uWaDcoy5VKKVeg=; b=N4qudoHJb3LgJAVQziaNCtZl0F7NfM5kABN0udgc
	AwnPkhRGctPPhNtrEqLj1TzlUOG7nqOcWGSmqBVNjTg6DCl2lMUA2s0tfzfC0MZc
	Fxi2T88hQ9TmuN2Ii1EiknR4CbDaDKab5CbHdp4w/UTqpA+DLbERlyEL6wN4Q68/
	9mBcuHp2OYC0JTRzDzirqGh0PLA2h1x8mt2KCFlWij0Wi3AQPDBYO0lKID6iXfw+
	BCDg27FiO+Fc+Uej1F+ZvbLM7+d8T92gEbNwOmwMQZ7uN2y8hE1PqR4BgFYIG/jP
	qf9YitCAwwqbtQ4uQqbX3SL1vs7PQMsE2V1rqc6ePsawUg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8un7n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:09:21 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5e9b60ce6so50618551cf.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:09:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678961; x=1758283761;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AWecxXQ1HoSKQokJLzYb6tbbrzkT4uWaDcoy5VKKVeg=;
        b=cYL4/KpTOcXAvrj+yL8cQNfzYPQHV0p7TrV7lnBh4LaUH9TZMH5NZ1fLg6zWHrxg2t
         QQAUCEHWno3rjnVMGWsolIVuBdZUtinF3Qc2a3MLHZYReyDbQdnA+sDesu1848u3lFh6
         KjyW5nLS+wgqobcvBtHYY/mMtIofBQcXZNZHR1okIJg5To2t3naUdlpOL9n4ciPHjX9u
         DLO2CJWkDzHXnkArHE6PW4w70WgJEM/eXroQ89qt9H+rEvvXRToqstousuBvxncHgoHG
         g3Sd6Woh85tvSAtGuMeuClYyGfJD7XptAM2bsR0rLq80oQnacrXfZmRmcI6PDg/vo7e2
         i3Vg==
X-Forwarded-Encrypted: i=1; AJvYcCXKfJ7cx4Jn9nfHOcAPiQDwFeW+kCPh6oWtZSn0Yj3wFRq/ErB9MbK+0hIvYXhfCjiypTJmCrrMb8Q7@vger.kernel.org
X-Gm-Message-State: AOJu0YzQcvmE8eRxRynewNBC8H+/lMTme9sIxzhZtduZqidSzPRdgNI0
	JxMtDCtNTfzr6kb36DSJWfEdggfw6EMKjfJ9hDITZPZxPHi4NslTe5gUFreCrn03o8h+M/AavL/
	EpGaS7K4tTnRMEf2s9TGkgkg+e2HhhS/Ol0aSBQ9pdIMpRB1ctWAX9uagtMnFstms
X-Gm-Gg: ASbGnctqPK00nBcaFx43RCzQfxcpF/5Q1TbIIt6mDb0j+5IxnKqhrFmAGSWLZaKrp+J
	DMzLAbxzVeM15wgLbqBQnfzo565PR35zQFnY9Fun/gbhD9QEOgl4fTKh+aY9b4w1zJLRP89nl5+
	MyILGNuguIzN7vFeNI9OUAnWZWfl6F06fN0lLMgB/Ud+CawtCAaKx/bxQa/QCwOLA+znXqnBUdQ
	gUJk+TyuN0gW/7qb4Co7y2rxEaOVaSYWOwm6dizPDMAZ6WwM7Frtj5mb83/d5r1xrKUXXgYVx8D
	3bGZhm4rqCv+C/5abXR0imeE9v5d5QNlNVFM1IqSBAwp4RsAuga2cgBgovp9PuExPX+6OglHEeu
	Ca9fuNRIiXEesOY+fyHezimz2PiTW8A6OpvyDif462T7eyk1Wy2gv
X-Received: by 2002:a05:622a:2b45:b0:4b3:12f7:8baa with SMTP id d75a77b69052e-4b77d044455mr32331441cf.51.1757678960510;
        Fri, 12 Sep 2025 05:09:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBlHDLz23zA5O+/vEKCN91ortJnwiUYeDorqJurL/VJ4hd/jMETJMt2eSQJiBv4Cvs1e54jQ==
X-Received: by 2002:a05:622a:2b45:b0:4b3:12f7:8baa with SMTP id d75a77b69052e-4b77d044455mr32330571cf.51.1757678959880;
        Fri, 12 Sep 2025 05:09:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-35062c8da78sm5874761fa.0.2025.09.12.05.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 05:09:19 -0700 (PDT)
Date: Fri, 12 Sep 2025 15:09:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 11/13] phy: qcom: qmp-usbc: Add USB/DP mutex handling
Message-ID: <q4dplt6fq3cneludcuhxevklaj6omeio3cjxw2owt4h3wistd6@arv23ri4cl75>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-11-2702bdda14ed@oss.qualcomm.com>
 <nfugwwknnlxls75yo5rex6ggu5nzpq6enyx6e6nfnfei3icxjg@t7dnzcfcjw4o>
 <cf6c2c2f-9878-4181-a3c8-9692423308bd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cf6c2c2f-9878-4181-a3c8-9692423308bd@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX57p16VvB7YoB
 9iWOc8hH/NyasQGO4xJuP8aE6LHULn9foQb00CKS6I2rnT3ivcvijSHtd0zgdneLf59xieEEhDE
 DYV6823VV0FaLEMDyj4XXTYIt5FLMzPDNR7/d9t6EzrqPKjbFFmg+wMRaJ/itQapDPd1mLbaX2W
 UR6EB7jtvmJqEiWjSMvKFXJGrrhbWUZtHyr0BwNNwm1j3plHqmS9VxsVMyXc+HVmBVwRlKeXvZ0
 5oDcLOwSWu7l1jjl1FqAKKr6TKzOXfDe8hYxCzvH9EZh7LUNGG4tNUByT1HKi/iK07fuFflx/92
 qeThecSBK6X7yQVSNMyQs2HLOyn4i0dMwf0JVsXiE4YFU0o8K7g8Txb9+KctHiUu1SuxZk9+LWY
 wbDwlDZa
X-Proofpoint-ORIG-GUID: JHXy8Ek_nU0ed-OPoxHWlL0ETvJTX7Ew
X-Proofpoint-GUID: JHXy8Ek_nU0ed-OPoxHWlL0ETvJTX7Ew
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c40d71 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=h6lld2rfrDIzuLPEmGQA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

On Fri, Sep 12, 2025 at 08:03:01PM +0800, Xiangxu Yin wrote:
> 
> On 9/12/2025 6:32 PM, Dmitry Baryshkov wrote:
> > On Thu, Sep 11, 2025 at 10:55:08PM +0800, Xiangxu Yin wrote:
> >> Introduce mutual exclusion between USB and DP PHY modes to prevent
> >> simultaneous activation.
> > Describe the problem that you are trying to solve first.
> 
> 
> Ok.
> 
> 
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 21 +++++++++++++++++++++
> >>  1 file changed, 21 insertions(+)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> >> index 613239d15a6a3bba47a647db4e663713f127c93e..866277036089c588cf0c63204efb91bbec5430ae 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> >> @@ -1061,6 +1061,19 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
> >>  	return 0;
> >>  }
> >>  
> >> +static int qmp_check_mutex_phy(struct qmp_usbc *qmp, bool is_dp)
> > mutex has a very well defined use case - a sleeping lock. Please find
> > some ofther name.
> 
> 
> Then how about 'qmp_check_exclude_phy'?


qmp_usbc_check_phy_status()?

> 
> 
> >> +{
> >> +	if ((is_dp && qmp->usb_init_count) ||
> >> +	    (!is_dp && qmp->dp_init_count)) {
> >> +		dev_err(qmp->dev,
> >> +			"PHY is configured for %s, can not enable %s\n",
> >> +			is_dp ? "USB" : "DP", is_dp ? "DP" : "USB");
> >> +		return -EBUSY;
> >> +	}
> >> +
> >> +	return 0;
> >> +}
> >> +
> >>  static int qmp_usbc_usb_enable(struct phy *phy)
> >>  {
> >>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);

-- 
With best wishes
Dmitry

