Return-Path: <devicetree+bounces-245530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B41FCB1DCD
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 05:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E35C130038C2
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 04:05:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B2FE27280C;
	Wed, 10 Dec 2025 04:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j4ITfTdx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LLN9pENA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB0379DA
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 04:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765339516; cv=none; b=GYneFFD1XpnaA3agMdKLEz38yH9OSkUicqaOVW/rwXqodkxr7Cop+D9JSt4DROEnEBVXYqZ7E0lBf2QO9+nCQphQ1KccQbkkZpxvM0qTRKjNL/GQLHCJkQZcs4RPGo4k6+K9foWM/G+IKc+Y6ImObi1ncO76phdyM5bfP0WkFi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765339516; c=relaxed/simple;
	bh=lwLQYwyax8SWvdaZyIgy12S19bZwCTmKfOxCJXm86nI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nQlZv3OMXc3sA3ze457Z7wnfNZGDe2GW5RCNLYeVDMcVjvQA2YGjPCxGj4cXa9FyoHAunyTwOYfK8Qn46hvTZ+YsnOedjI/55SjxN3S/H6phHomhmcsM+Otk2XmL3gjiT1nB5D1hjyQWQtrdUHj91Jr4zz4lUz2D4wbNun1BQys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j4ITfTdx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LLN9pENA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA3LHDp1416799
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 04:05:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jMXe+9WvRnEW6OAXDTrVPKJc
	7LR+z18srNy4uA6ZXFc=; b=j4ITfTdx88KNCAGeFhQ4Wg7lKpFJr22RaUG9jGvB
	sN8wsJqyf5Wf8vrD8dm8dztlCnbx4zeRL9CUPeyqaoTrG26KM3GIClDuS1pHKd8n
	YIATBpDq8ajf7O/v+Wt7Hkw/zJ+ZinkAegp6PjGRUOx/wKwDQPnDu0vykOG2cp6U
	vFnZUtvGbvoM2/d+CS+t5ZxqaD3vU+zot9xNcCLbkh0RS27lXa+gddBS0AlQ5Bh0
	JBMfH19M2Q9bjObabB9q1+pXzbmMuKubC/+9+wX73rJlasKoqojsFJASNaXd919Z
	DY6J4A2SIwYkuAEuQpBtYJvpTg9yA8WSWvPWAIMTsswN3A==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axrhm9rvw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 04:05:13 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88041f9e686so163226596d6.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 20:05:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765339513; x=1765944313; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jMXe+9WvRnEW6OAXDTrVPKJc7LR+z18srNy4uA6ZXFc=;
        b=LLN9pENAF5v2SmJKOqadT/pB+nNrV0DZgsBkdByH4HYo8mlKu8TFIl1Ur0MBKx93bO
         TO3ZsHKwOtijYyNsmnn82YMipbPbsD/jTuPDkyghuYLH5uLJl1d0VQxyKw+7Bfi99Hg+
         dnR6rBLML5NtPWy47RRo6MgYHlvnff/BD1yxLbS5Mc9cm3k5SoflZhcE9zkJ8HkgILJf
         /yr8SvW1g62BspGiylUikZo2PUpegcsq8zhBdfsgV/YSfcPiFYbj2SK9OrS3R/lDPi7k
         pUlBxaeRVNcdP3wA6TXkN8Q5yU3YJdGM5zWxtqqr8PIzv75FHUSvqA8D/xOkalP8eNqc
         Ok0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765339513; x=1765944313;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jMXe+9WvRnEW6OAXDTrVPKJc7LR+z18srNy4uA6ZXFc=;
        b=BKN/72obEOWZDaXp76DfC9ObnKHtvz53I3lkaIqE9b7HvvWnkEtVwro8n5CT2DIsQe
         m/vdGipmWXC5MDsvSdDoAFo9/gOajMppeAbQ8nL3rtlpVXpT50XJ5FrH53wRbDtb05IN
         QcLXF+SA3AOsCL1puXKhR7o2UZ4oVBtnzgvDQr7WhqDNG+c6qZwJmsL9iM3m37Ber8bw
         xROIHuQfbnKSyhi2uv/BovEAVZQI9gqRckQjdm6d5rq+p+tKLIKnGKUx95XT+DW0ldF3
         zo5ddTdWpyXuOwFeUrD2XIxc97rANYj4rZyjNB+HPhXMxfSpw6OiH7NeVND2yEwIdbHp
         J4CQ==
X-Forwarded-Encrypted: i=1; AJvYcCUv/pVyJLbVl7l96AsnglH8/dJ2eO6N7z8pVk8G+mVpWaMg96GKIlk4+S6wcZrM4Yfhf7P19TmKhaM+@vger.kernel.org
X-Gm-Message-State: AOJu0YyeEHH6u5rlQUT+rgJM2kEJlZWFc5L/D0viRoRBi4lEiwQOy2KY
	fH1BUaWb8mq0s3hBky7YJphuffI2sAqQ0K4zyS8pTsAmfiH5YoTS+Ka8wbvNip/rYCyaDbgGBGi
	3G0TOBDTbHslWHzKiSXLfiR/CBdXc1izOswwk/rME09uMLYKfXoi3VUOcWPAUkHy9
X-Gm-Gg: ASbGncsCb02cxQgybVCV05veMP+Fpm5lwynvoA5fByQezu2uQTdmJPqBfy1LnMa1sRU
	1189e6LS5XkKawxpaUQCKAEQAbA9FCg8Vn8j2FPdAUMEk8eNjXlFud/1xnel9qq4CGozQs/VCQj
	C4V8RQgls5N/RYjs50dR2oMh63GOayGfMXRdMFMttRV8z+/kQQxAoDxdIA3yXaBy0bDfpg5B7GK
	Rn527iy6/mtnoQ/GCkl0JqhjzLPXnTQC2t0JcPVdSMS3zMgdj3wIX7Js+xVc0stqAdWQnM3y1gj
	lM9VzqemgDnZbL2R0a5ifSyWcukAzP34rDKjWtsz0LBFyfCaBya2ZBJe8A+GMG8/nqZHpSmPp6S
	X/jSLPaKUhg7n9xhZxnW5hseCV7a/E9QtA1QiGz9s1MQLXxpaSCk7/yRhAjtqWUJof6/JOY5bRr
	kCKW87u3JP6jKgdqMGH84rAcg=
X-Received: by 2002:ac8:6903:0:b0:4ed:b448:b19f with SMTP id d75a77b69052e-4f1b1a99b2bmr15628791cf.51.1765339513007;
        Tue, 09 Dec 2025 20:05:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGURYeDIes9ouTLCB4hZposKZkETPB32W9fRqpclujgON8/agDaN9BintIrj5+IQ0zaMkUomw==
X-Received: by 2002:ac8:6903:0:b0:4ed:b448:b19f with SMTP id d75a77b69052e-4f1b1a99b2bmr15628571cf.51.1765339512620;
        Tue, 09 Dec 2025 20:05:12 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598ea05b34csm1365961e87.101.2025.12.09.20.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 20:05:11 -0800 (PST)
Date: Wed, 10 Dec 2025 06:05:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        vkoul@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 8/9] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <f4xxep32unq23mqmtdruj3lxp6t2qdemyilk73cjogj7tz2hmp@ypqdwda73oiq>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
 <20251209-linux-next-12825-v8-8-42133596bda0@oss.qualcomm.com>
 <4f3og44prqjjxsiy5lwnxam3ikqylvmk3m2ofsxoa5byczhs56@3uvxjtobddxf>
 <586da917-6ea6-4b99-8222-7c49a5452451@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <586da917-6ea6-4b99-8222-7c49a5452451@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=d7X4CBjE c=1 sm=1 tr=0 ts=6938f17a cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=PBfNxXwbQfs_KfBYZo8A:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDAzMiBTYWx0ZWRfX5Ys5kXzULozE
 LU5CWicl1ETfVO9YwHRFghCKhhVfnxfBos3rX5U2ooHWCxHv6EMRZKf2QlpefBVMQd2j0GpwrGI
 INnujlVsXjTzvXE2MMyTVZ7V7jxU/Dfp9v6gMe91vife8WTj3sQOtbQeB9NQSFsgo5wvHZw5Usw
 WtVYQkQFTGLP1chM8qmW5aTDcBbDeUq0uWvosTegmA6HWq4M/dkAaqgl4k8tTwiKcuMWsOTsxfe
 PkOmhLkbigcmvl9UFF1YNO18s/iq+RQGznrCryuu6dlDdyRaUzFg//CA7l/LA4S9IlSY0Tq2hPD
 M/6RqOz+sDMCvh/N85HpBQqIJY6RhgfxIbWO3gA+IFlHiZmcrY978VReEDXw6ttGCoSSlSmy0UE
 unrPcDSspLE0oRn4GSFCjZI7GVhCLA==
X-Proofpoint-GUID: sJ3qjcKZwS0HK6w3FlkxVpcpR3aCov-P
X-Proofpoint-ORIG-GUID: sJ3qjcKZwS0HK6w3FlkxVpcpR3aCov-P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100032

On Tue, Dec 09, 2025 at 03:44:23PM -0800, Wesley Cheng wrote:
> 
> 
> On 12/9/2025 3:19 PM, Dmitry Baryshkov wrote:
> > On Tue, Dec 09, 2025 at 03:09:44PM -0800, Wesley Cheng wrote:
> > > For SuperSpeed USB to work properly, there is a set of HW settings that
> > > need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> > > these settings follow the latest settings mentioned in the HW programming
> > > guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> > > new ways to define certain registers, such as the replacement of TXA/RXA
> > > and TXB/RXB register sets.  This was replaced with the LALB register set.
> > > 
> > > There are also some PHY init updates to modify the PCS MISC register space.
> > > Without these, the QMP PHY PLL locking fails.
> > > 
> > > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 285 +++++++++
> > >   drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
> > >   drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
> > >   .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++++
> > >   drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 ++
> > >   .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 ++++++++
> > >   drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
> > >   7 files changed, 1212 insertions(+)
> > > 
> > 
> > Does this work without DP tables?
> > 
> 
> Hi Dmitry,
> 
> Yes, it works without DP settings.  I verified it on v7 before sending it
> upstream, which did not include the DP tables.  On this series, I verified
> that the QMP DP block is initialized properly on top of the existing support
> for USB3.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

