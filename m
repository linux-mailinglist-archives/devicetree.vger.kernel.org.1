Return-Path: <devicetree+bounces-182447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E8FACC46D
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 12:35:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5F141669B7
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 10:35:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AFF4229B16;
	Tue,  3 Jun 2025 10:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VMFYrqY+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91B8214811
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 10:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748946947; cv=none; b=YG+o25GKPMPMvPK+xJD0BIPArVrdkXiSZaANVh2evJmxBkHLKIzfR3WmGlG/nZQqWm5y8vqzXvRfcD+xx7RfF4Okcu8AqoAGe+FILZRYnR8ETFjt6bkkq+UU8ngNxex8JBDKQLD3CJIMjKQry0E4JFXkbwqV8UH1IKRmcv7smk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748946947; c=relaxed/simple;
	bh=8BSx8hG7e+Sa8wiL1xLVnVmH9RmhWOKPCzG1Q2KWa1w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ld/rrh8QKylJd6+uhwAzlRCJH45bWkza8Yj2R4Epbf6/L+fIaO2bvyzCX0yeHxJnrxdfDvyj5qAJukspT60/oQfE2do6I4geUcOXySnCycwRMs3WC+PipFG5hQpxqdHzRErpICfu0AZAcBD2RYitoKzOnUS4pQf8e3XCL04DBYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VMFYrqY+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5539JcHp007808
	for <devicetree@vger.kernel.org>; Tue, 3 Jun 2025 10:35:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ENKaMLcnNd+HsLvJhufWlAMm
	Y2ISC1qjYbmzZ02Ak3U=; b=VMFYrqY+ND1+jxv77tSBuqVeY2Krl7EEQjr9Jqjz
	vTaT7wgPsyY3cJ6VI12gFDtHLMKgaQOfHNfaJdriKnhB1fRn6dUfhVYfOMUInPZA
	+LrG7ltCNcEolV4aYwIiNjlS8zuiMmy4qmLcQC5HJ6wzLEBXgyl4lyC2ETWxnFnl
	LQdTyzw+wR66fC7nOOdhfeU3l+i7Lyzf7bWsab1wvQjtuKH7Jm8MgnWkHJuggWpG
	as7g3T09Hn6OIvQmvrKXVmc0GMJjV2VnLp1X++m/yaIDwWZbvcjPePVRicG8RBkX
	RQ/VIy0axCOIx9v1muMeBpIYjik5cLmLaPUmyojUQsQPuA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8st84h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 10:35:44 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fad5f1e70fso74335856d6.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 03:35:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748946943; x=1749551743;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ENKaMLcnNd+HsLvJhufWlAMmY2ISC1qjYbmzZ02Ak3U=;
        b=aDGicLkV4bSGb9S/Hv/PZT5TPg95YRCXGSBXv5FTliFyf4sekNO2sx4t4C9TchTb65
         QdlkryGCXpOMd2BrhmHNkkoGiQY6dssf/fowZBHycwxIqXbh+RtSIgMkD06K/LPW/fOo
         A3SEd4W4aFtF790T9PDlmXu730724tg2vh67vzPbhHRGb96VHc4N/BDBP4tA0F7+O2YI
         ffmASA7YmEMxMLgkm19yhNkt4+VW8lBoGx8VLJ5kGs8JnHEFrhmYuJDRzB3no5b/00g5
         5qd9vtwXfQdjRABvrG9AoElH4QsTR+0qsj6fazvZQO1LtpUmb4lHcAanhGQiSKqjL2ys
         F5ow==
X-Forwarded-Encrypted: i=1; AJvYcCX1mLHXUeMwW91DnsFKmCirERvcWSYtFROou/Zgi2THi7clQkJymXX9YCIS4ECwGtKvn5ar6t7fpiBR@vger.kernel.org
X-Gm-Message-State: AOJu0YwfKxyiSnMAXiMs6lxHboyVskUd544K8kbgU83KfU/d53vOzJwX
	Z+MJG/kopLIifRJeXJi+gMq9cbegRV7G/tiOh4cS8uxTJtPHHlkrbk3nA6v+tx/c5/c5VvIjy5A
	HMYPckOKWWJ5/zzhNbQ20kn4GpcmmuDdUHFR+g6/xt1p+zR0y3UFe0t6+OPWW/fmk
X-Gm-Gg: ASbGncvaIqiDbzhvIVA5R5e7MWvyXAtMd1JUUVjk0XQPsRFnJHGGK8IOC3Y2Fw66mfd
	7b2iE5tUl2NE6280RwAyuVWY2fLLGiLRYsEn5PaBAmwYjuVmRuVUZ5dIwUTlKMgiQb0tZkF0fcn
	Ccx/15zIzIHIn6k0Rq0rg1Yc4DVFLok0ioIcUGiRcNZDcVvlW+NNL8fYM+ClHMS2ebMOnhF3Tuk
	ZJ/YFO/LhTbYIfV+U7iVmOJAAnUg4VDchTdAnpDnuq5FMtcum8wRlIcCodOJNZQS8jsqPmE7iL5
	Jz65ZrbVIrD9KylkqFzclKrTb6feyxtNyU9nFcpRIM4oQonP/JGrM1C8qPBWjFZQT0FHscYBUBQ
	=
X-Received: by 2002:a05:6214:2a8a:b0:6fa:cdc9:8b01 with SMTP id 6a1803df08f44-6fad190b279mr276523666d6.19.1748946943300;
        Tue, 03 Jun 2025 03:35:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6+xnPN44BmihhZOTq8EzlP77OCBjKRSNvGyN14bFyu6GdHg2oZCIDt0Ztgee2827hAufidA==
X-Received: by 2002:a05:6214:2a8a:b0:6fa:cdc9:8b01 with SMTP id 6a1803df08f44-6fad190b279mr276522996d6.19.1748946942829;
        Tue, 03 Jun 2025 03:35:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5533791034asm1871748e87.108.2025.06.03.03.35.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 03:35:41 -0700 (PDT)
Date: Tue, 3 Jun 2025 13:35:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
Cc: Sebastian Reichel <sre@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 2/8] power: supply: core: Add state_of_health power
 supply property
Message-ID: <p5nxjuexggzxttislcaum7vomawnq5fncos7itfib6ysvy6a4k@d5ywmfpqyk3s>
References: <20250530-qcom_battmgr_update-v2-0-9e377193a656@oss.qualcomm.com>
 <20250530-qcom_battmgr_update-v2-2-9e377193a656@oss.qualcomm.com>
 <6oixvnhihgjucqaovkayzm6cpi35jfmtwmm67wa6h4nlmhr6w5@ggb7auvjzos2>
 <cd2964b0-e28e-4ddb-b319-9b65fb78b73c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cd2964b0-e28e-4ddb-b319-9b65fb78b73c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=RMizH5i+ c=1 sm=1 tr=0 ts=683ed000 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=gC4Pu52S1TLJhMqEWYgA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDA5MiBTYWx0ZWRfXzzw01UCJK8Il
 1ZLVfqNUMdptbojsSFEcTP6eXSGmPs6IvJjkLaA1HZCp0ArB0ncv8eoZmb97A4R1nObYg0ftlrY
 7UFx0yPZTnka/K9W1/QQHvo0jaSvF9g+gWFngQT7HCExv0gu8C4c8tyeSYerTH3KqeYYzcpnaWA
 9S96I90LzF0aXKLydED5h1WV3GAiCkgAh1zi3Z4r7/J1qN+FyWhRaKb7MJ7/95A0y8U3Q8puYbW
 ZwBj8InfLp+yvrnYhKZbwFVTpFG35etexQSJsrVKPanodCesyFMu2ZeEvb4lFheC0ct15VoN28c
 MKsJDgsb57Ei5wvenYFZ8JV8ivDDg0RfJSNRMJBBVoGwH6J6aSwmX5lk8vyuuLT15ame3rwy+F2
 sLLoQrXlWO2yBqkKZsmLWz4rLawzQz7+OQ6cM5MjqqFlGdh3CQvtDzqs3Vc/673USTFNmCX1
X-Proofpoint-GUID: hIGQpKftNKW49PaxeJsjN0Q4cJW2VJG5
X-Proofpoint-ORIG-GUID: hIGQpKftNKW49PaxeJsjN0Q4cJW2VJG5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 adultscore=0 mlxlogscore=999 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506030092

On Tue, Jun 03, 2025 at 12:50:18PM +0800, Fenglin Wu wrote:
> 
> On 6/2/2025 2:17 PM, Dmitry Baryshkov wrote:
> > On Fri, May 30, 2025 at 03:35:07PM +0800, Fenglin Wu via B4 Relay wrote:
> > > From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> > > 
> > > Add state_of_health power supply property to represent battery
> > > health percentage.
> > > 
> > > Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> > > ---
> > >   Documentation/ABI/testing/sysfs-class-power | 10 ++++++++++
> > >   drivers/power/supply/power_supply_sysfs.c   |  1 +
> > >   include/linux/power_supply.h                |  1 +
> > >   3 files changed, 12 insertions(+)
> > > 
> > > diff --git a/Documentation/ABI/testing/sysfs-class-power b/Documentation/ABI/testing/sysfs-class-power
> > > index 22a565a6a1c509461b8c483e12975295765121d6..74e0d4d67467500c3cd62da3ae0b2e4a67e77680 100644
> > > --- a/Documentation/ABI/testing/sysfs-class-power
> > > +++ b/Documentation/ABI/testing/sysfs-class-power
> > > @@ -562,6 +562,16 @@ Description:
> > >   		Valid values: Represented in microohms
> > > +What:		/sys/class/power_supply/<supply_name>/state_of_health
> > > +Date:		May 2025
> > > +Contact:	linux-arm-msm@vger.kernel.org
> > > +Description:
> > > +		Reports battery power supply state of health in percentage.
> > > +
> > > +		Access: Read
> > > +
> > > +		Valid values: 0 - 100 (percent)
> > What does it mean that battery has 77% of health?
> 
> I will update this to explain it better:
> 
> Reports battery power supply state of health in percentage, indicating that the maximum charge capacity has degraded to that percentage of its original designed capacity.

Which basically means that we don't need it in the first place, as we
can read capacity_full and capacity_full_design (or energy_full /
energy_full_design) and divide one onto another.

> 
> > > +
> > >   **USB Properties**
> > >   What:		/sys/class/power_supply/<supply_name>/input_current_limit
> > > diff --git a/drivers/power/supply/power_supply_sysfs.c b/drivers/power/supply/power_supply_sysfs.c
> > > index dd829148eb6fda5dcd7eab53fc70f99081763714..12af0d0398822ff23d8970f6bdc8e3ef68081a1d 100644
> > > --- a/drivers/power/supply/power_supply_sysfs.c
> > > +++ b/drivers/power/supply/power_supply_sysfs.c
> > > @@ -221,6 +221,7 @@ static struct power_supply_attr power_supply_attrs[] __ro_after_init = {
> > >   	POWER_SUPPLY_ATTR(MANUFACTURE_MONTH),
> > >   	POWER_SUPPLY_ATTR(MANUFACTURE_DAY),
> > >   	POWER_SUPPLY_ATTR(RESISTANCE),
> > > +	POWER_SUPPLY_ATTR(STATE_OF_HEALTH),
> > >   	/* Properties of type `const char *' */
> > >   	POWER_SUPPLY_ATTR(MODEL_NAME),
> > >   	POWER_SUPPLY_ATTR(MANUFACTURER),
> > > diff --git a/include/linux/power_supply.h b/include/linux/power_supply.h
> > > index de3e88810e322546470b21258913abc7707c86a7..dd0108940231352ac6c6f0fa962d1ea904d81c7a 100644
> > > --- a/include/linux/power_supply.h
> > > +++ b/include/linux/power_supply.h
> > > @@ -175,6 +175,7 @@ enum power_supply_property {
> > >   	POWER_SUPPLY_PROP_MANUFACTURE_MONTH,
> > >   	POWER_SUPPLY_PROP_MANUFACTURE_DAY,
> > >   	POWER_SUPPLY_PROP_RESISTANCE,
> > > +	POWER_SUPPLY_PROP_STATE_OF_HEALTH,
> > >   	/* Properties of type `const char *' */
> > >   	POWER_SUPPLY_PROP_MODEL_NAME,
> > >   	POWER_SUPPLY_PROP_MANUFACTURER,
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > > 

-- 
With best wishes
Dmitry

