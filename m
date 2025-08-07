Return-Path: <devicetree+bounces-202432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4037B1D709
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 13:54:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DEBBD16AEEC
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 11:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 439D3238C26;
	Thu,  7 Aug 2025 11:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fDzMOl7x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D48230BEC
	for <devicetree@vger.kernel.org>; Thu,  7 Aug 2025 11:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754567645; cv=none; b=nSOOTu9YhgYjgMJ2uQJXDp11FCAV+Gi059StfruFOUKFlc3Z36Gkv3CLlHIpM5fEIC76rEoszpi3sBdnNRdf+XA1Gltyxe1zBLNcrGR7mhUSOyxqDdvp2SHqOa3uck/2a7rZZG060aEiiLwKm4/rdY13mA97erucpywY5Qw49YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754567645; c=relaxed/simple;
	bh=ZZJ+58v5xVPIVDkFEIoUq75jX+V+PSTGi4Gi+0x9868=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NnTg+1/Ueb9+yaE1LKwy0AmBg7+e8Iw/5fyp4D1s3+zIURYf7XZkblOEfMsTPVN2GMQPfgIr6KQjPYmLgAD0XeLQ8vhnDMLa+G8nqedT7wqz36gU5d2NTokctoPfgPLa3L0EVk6JdM9IPen5EhS/Ba0nRcDgC7Tbv4RaLXSAA3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fDzMOl7x; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5779D1kW011786
	for <devicetree@vger.kernel.org>; Thu, 7 Aug 2025 11:54:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JmsYXKB6unnEWfBMH3uLtxy/
	JZx2U35Fps5OvfGfeC8=; b=fDzMOl7xqzlv7RYzExEPyE1icsp+4hkb+9Whd0jU
	e7PGg2yS3ezCbYrHaKmmIC4RapiJMwvGHJ5IywhH1TeZ9lXiprHRHKLmXUiuqVZt
	dcShI5rNTAMeVPpcJVFpNtD3P/KvQuhvxkoB38huTwb92DG5+kmF+0cS9bthmtsV
	MGga/q16G77lPAW1UAncjlUI3S+OhgWXBbJWzUBOozYVO8uLeL8faIA8tCME28X5
	1S8AXB6QyRH0DmhhN40mQekaOH7eL8FNCld5VP1Qut0+j1gCAM76O9oZFmuuZlbv
	CXoBPsY74I8oxMOfE9UD7Hm8wxTjkazXrLNqSTjk7mZ8tA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48cpvy0w4b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 11:54:03 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b096d8fc3bso20702391cf.2
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 04:54:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754567642; x=1755172442;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JmsYXKB6unnEWfBMH3uLtxy/JZx2U35Fps5OvfGfeC8=;
        b=X9CvqKCevFnxyq5c0KHbVKuxDP19X14BVucqrc6jfZR0nYBc7hyalPRY9v6r9/vyJv
         q1koMvvp7E3gtqDFO87R22yF0OwZwY+Nv/C0EcRW0N7B8YNK5PNAussL+RezHKsr6QwJ
         sxYxujJ+jeBsqlp7cDNUJ9E8cdogcZF/Ybhoi/T7rVPJwrjU31cGMj9ExUfbxuelbzOW
         JqVaM4O1U2p2L+tuyyCtryvRC/Pt301BPIztsJcjJ6bIGgXtHXtqSJh8WhQgDOGNeiFy
         7K5TO8JtKD9moJkeWcBDodyz/Wr4FgvEZ76IzLVtENkHMqsStYbkKtCpoNWANSlGLDn5
         vmig==
X-Forwarded-Encrypted: i=1; AJvYcCWjU7PY3cxPPJN39lcLJRdGHzSeh6KPZcBpRzrOZiHXUuO5wghLDCW5eJgf7aZ5leTNkgqy/5U07aAj@vger.kernel.org
X-Gm-Message-State: AOJu0YwymX2LScyT//wLoEO+N56X51y8gbW9f+CAdH8fPbVJadvmSV4C
	CTrY9n1i6v+4BFfxjVw0K6RsxeOqlVXlc29Ix5ubkGTysmtD2QAxKIScuUvLVbYsHlFRmbqfQbl
	IWQHiPtXDZP+/on9GS5c8W/Vp2aeT5IHMr+jNSaNYMS7mvcNyRd3fcG5diO+km/NK
X-Gm-Gg: ASbGncs9bxD5aQs8SLGZ4oz/krvfxwzwvVMFFou9ckWPc7meBWJWsqt7kfApdINTv37
	sFmzF7PV9svnj7qPmnlvYSHcsRy1BE0ZnUe4Moy/IEKmsMMJuBnVjGeamd/EJ5/EshQEAgE2wrn
	x320hYXghvvz944qviPe/CrxiviETetrlH4KkkC0tYLYVnvUYj4jcGXql1MsbrkAWRzlfqzZcFm
	TYH+AxpyARVmnmLCrDVbtkD6htjffm8AbgrnS7sxPASHZPmKjjCay5tXtTtM7qIwQQFLU4HZp+v
	4b0GX1+3wZ+S4R2F7YlPxODKv8X/Kqf/NMrzXPzkbTDCLl4et1T6AksQyCTm2vFAHJbVX0tbfMj
	NPBQXFgv2bLTLVdGNgxap4jtC1ku8gdnTlEl7nx9zysGLA+uPNVc9
X-Received: by 2002:ac8:5a12:0:b0:4b0:7170:8559 with SMTP id d75a77b69052e-4b0915a001cmr123088981cf.40.1754567641700;
        Thu, 07 Aug 2025 04:54:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGa8xjZrgk7JKGa+kcJ7fkcp9cBxJaas2DISbCOZ14pSOMtXEioAO7a/COluo9VEZGCXO56jg==
X-Received: by 2002:ac8:5a12:0:b0:4b0:7170:8559 with SMTP id d75a77b69052e-4b0915a001cmr123088521cf.40.1754567641205;
        Thu, 07 Aug 2025 04:54:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b8899ebd2sm2602768e87.42.2025.08.07.04.54.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 04:54:00 -0700 (PDT)
Date: Thu, 7 Aug 2025 14:53:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>, quic_dikshita@quicinc.com,
        quic_vgarodia@quicinc.com, konradybcio@kernel.org, krzk+dt@kernel.org,
        mchehab@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 5/7] media: venus: core: Add qcm2290 DT compatible and
 resource data
Message-ID: <pt7dlwbxcipukwc734ftspj6ekehtnzfwndb7rqx2ihpxqwyzn@m2pyqy6nugdd>
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
 <20250805064430.782201-6-jorge.ramirez@oss.qualcomm.com>
 <4chbcvub4scnv4jxjaagbswl74tz4ygovn3vhktfodakysbgy3@kukktkwd2zsr>
 <aJHgh8mon9auOHzi@trex>
 <ce9cf017-5447-457c-9579-700782f9f0c2@linaro.org>
 <aJRMUzF0GN2LFIZd@trex>
 <40d543e4-e53d-4289-9b87-5ca8c0139bbb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <40d543e4-e53d-4289-9b87-5ca8c0139bbb@linaro.org>
X-Authority-Analysis: v=2.4 cv=TJpFS0la c=1 sm=1 tr=0 ts=689493db cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=7TY_VEaP9L5SwCdglBoA:9 a=CjuIK1q_8ugA:10
 a=ZXulRonScM0A:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: kTFto0DyLxqVyZ26VH_0am8OgMONvxFW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA3MDA0NiBTYWx0ZWRfX5puYynC0FmzZ
 10xDKYakn0ISaPwzmlp40NK2nVRRo/skuCevrhfPwveVQRxjlJ7RgbXo3zrNDSHNSfmqIghGbpd
 Jjw6/kTOmwAGl5bakxohH0pbPrCIvdxC4mJSxbARaUSheQ9kZoeSmCUs2vkwGr+01G28r/iQGZD
 L3DWA5XCj9ML8K34QZgvXE35kLnNju7SBId4BGiURjEr0c90LUx/ZqN2o7aPlSPgRJt0DH/z5K3
 KetMKXMnrSsM7tNn/D9q2nYDResdd0fkNxS7YQg2/8PpXWSmJI2ujRPU0dGfqNsLbnBkAtnUx9L
 VD8EkAcCsoSyfoDhNf3/c4B/Bbr78S+Tw8Y64Y9WjNIHUaGx6LZvkLzTtfl999k6zQ93SRUkzJ8
 AfOfsg6X
X-Proofpoint-ORIG-GUID: kTFto0DyLxqVyZ26VH_0am8OgMONvxFW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-07_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 adultscore=0 spamscore=0 malwarescore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508070046

On Thu, Aug 07, 2025 at 11:11:31AM +0100, Bryan O'Donoghue wrote:
> On 07/08/2025 07:48, Jorge Ramirez wrote:
> > > There's not alot of value to the user in that configuration.
> > I dont know the user base but when I originally did the code (v7) I was
> > thinking about security conscious users (signed firmwares) who might not
> > be able to switch to the new fw release so easily (unnaccessible key
> > management and updates).
> 
> Since the driver for the LITE hasn't been upstreamed the # of users must be
> ... zero

The question is about the firmware side: if we support decoder for
6.0.55, users can get video decoding using existing distro firmware (and
just update the kernel).

-- 
With best wishes
Dmitry

