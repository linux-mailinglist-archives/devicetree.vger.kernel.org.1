Return-Path: <devicetree+bounces-171618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2D4A9F595
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 18:22:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 075A61893621
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 16:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB50627A137;
	Mon, 28 Apr 2025 16:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="drqJPcga"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F2327A91E
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 16:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745857312; cv=none; b=Zk3QQNc/EW2CMDqP22fnQpmXzKmW3PpDCAamjIgjpdHmhawNvFVst5sYKQPm3jIhbSIA6dMniJ2HuRevFfAyi/mifz4hV6p1SrKtZHizLH+xecvGpC+I2gc5SrVeGymTtYOOkYYpBYLqsImhZ3ytU/9mibUvEk2a2eCfMCvrL/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745857312; c=relaxed/simple;
	bh=FAk+/hIlJrLqvDt63zVfUl7GDqkiGBuO0+vRufRCo78=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N5mlnRUopMKZThj6V5w3P6/WaZzOTNZOzkIZ+87ogejWHes1JZuY6uNZaLxC1lSG986/7K0r8IutDHqSUTYArI/hdBfGYwqjzyKcgso7q3zmLYN4l8usZSASkZxOQrkqwkRbldrbBOQ3rhQzhKvCDHs+0oYZuLaB/OpKu45WXWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=drqJPcga; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53S9gIHK023077
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 16:21:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zhk8zfFYK4MnpIXkJbMSmC3IFiPYjxX4pByTlAx/9gI=; b=drqJPcgaOkfRvzbc
	q3Z7ZGrv42FsrIzKBCTn1tF1XqfIhOtPdqFUnT35mIocHjCauHomlDpn69PU8tms
	eMGFSGoHDWDEf7A7V9hsq2LJ1v9/f67WnY8aHWql4Wie9NRtr4TwPR+dQ/x/50cg
	V8cLTRb7tFFJDVtKheVEkiGbZtYIa4AZOdsmpLPbABaelNOdxO1M80xif8/rOEPp
	8TapgnnX4LSdm2nLdH4btN2gBtt+OqAW7sZL2mCE+MH+UefTJkw0duv5+sxxyM0n
	zDcXpX1zt9MbQvcpl2CEWH8gTCq38GZLna7oibbcFfVT1EaQhqvohxzSHI++tgRb
	qecozg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468rsb8pu5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 16:21:48 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6ed16cc6e39so105122876d6.1
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 09:21:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745857307; x=1746462107;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zhk8zfFYK4MnpIXkJbMSmC3IFiPYjxX4pByTlAx/9gI=;
        b=XJqENTiNnppAwZ3p4kDqI57znN4Np9aAYD1HD4FMnJe9eK/s7Edu2AwQ3P7SJBEm2B
         9t1r5txdh3LrW+s2uGv4VY2tWy0CJ3LPAX5VewyFgtyTLeNdU285UD95UOGx0jbv02Us
         +1MoOJiK0IX+n7rnqG2oV5GX7a6nijfuUF/s2D2nF0tdr7UeYnkOECPJHSTGhTiUoaUP
         HrfF5SRTz4pSrvlrz8ClBN+4FXSmjlJr4Wk8zsmgJ1s786IuuInOXeDgmq8kiY2oMAHw
         rz1oGIJt/bclX1VJXCw9ovWinGPNAqERksfbJdQaIrjIqTDRHHVmfFseSMCWtTQv/N/V
         1LRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwxkv1rVNpz9o4C1ekE/9MibSUDWZ3e/KLUiWlVE6+2lUlJy2lEAQJNjF5z8UrEjH+NEuJ4TSx6yMH@vger.kernel.org
X-Gm-Message-State: AOJu0YzV9jOqmH66WS29t+9F9oOkzM/o2sxO9ugIL8cA1JyPzMzeh0PK
	JaJZSUeIgc0+xRBc4W5olPG2Ooa8/Txj+/1PABF7fy0QkBQyPDVdE6ohTC0MgraO+adm42vbLCe
	a3ZI7h2dQlqWoq/XHMF7GTc1SUfVCvn79Th9XeIu4z0kGrOdqjut14XxyFqqA
X-Gm-Gg: ASbGnctPWc0oEMt8aFfL7lwwRSFQ8smCD5QcY7mjAgmpXFQ5WmZ7Tzc2KOTFPT+9ask
	EcEX5advXBCXAEThgWAs44fFLh62NF/PlqfTj3uH9RaIQebMPvXi1BHZMVdNWXo1wp3+Lfber6G
	8WcW0ZpWHF7jWryTTxpmfow5pcu+wdzYLX19CHfoypOHovaqderZ8nFEetkmQGLCRP+5tRO5ptk
	rnR2QMv3qxmi0DnV061HevVO5AJap1ouw/pcOSlDW4RUUav3f/0oJ1GvZqEAw/hDINrJ9UccQDh
	S3MUsEdZXq2oVc6MW5qWIWxXTujetCjK+k48TcSSE6l6p/b//xlDFYYVzrAHQ3BXWiMX1RawnHU
	=
X-Received: by 2002:a05:6214:19c4:b0:6e8:ee68:b4a1 with SMTP id 6a1803df08f44-6f4f058f110mr8388536d6.8.1745857307492;
        Mon, 28 Apr 2025 09:21:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIYoaNvRKG8//OnEjJanG3jFa3ZUwfVxoxZBR/HajeaP9e2qMwZlbuXIpdWarKogjDWjKqsg==
X-Received: by 2002:a05:6214:19c4:b0:6e8:ee68:b4a1 with SMTP id 6a1803df08f44-6f4f058f110mr8387916d6.8.1745857307149;
        Mon, 28 Apr 2025 09:21:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e8fd2d823sm1057195e87.194.2025.04.28.09.21.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Apr 2025 09:21:46 -0700 (PDT)
Date: Mon, 28 Apr 2025 19:21:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: msm8998-lenovo-miix-630: add Venus
 node
Message-ID: <vxwbzzds4lkixt2zsvjwnmfk22u3mmvp3cqk36aak2thomyagu@znr6b7gcue6w>
References: <20250425-miix-630-venus-v2-1-cdfca385a0c8@oss.qualcomm.com>
 <CAOCk7NrcpwAnUKcVsc5D03Aazt=qWLZB034xa2FH2PF9LuL6ZA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOCk7NrcpwAnUKcVsc5D03Aazt=qWLZB034xa2FH2PF9LuL6ZA@mail.gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI4MDEzNCBTYWx0ZWRfX/WwQQ7gxuay0 A6ddS3JdJWZ/kkzcITyQ6xv0iUQAg5PdmlTxeEHqU6sFbl+6+ituaoqRjhbZgjWGd+DaeTIeMWF u3aIAaDibAzxb/05Fmyb3nMjaHjIFrmkk+rdPm7O2ltpCtsvvwNVLWrOqi4L3yjbd0ArjJepfrZ
 Fdk+7cUs7KtY8ZNis97yWWSdbRrl/gl/yU90PIQywZdEmG5jq+6QzImN045R//qsdz7eH3n0dO2 jXF5uZTxQ2zppZPr49Uj4bNTkqlYh+/PM1mxspZhXl9b63iuS14Es1ZYR9EfzrMpgtPdK1vnKNM b6RpO9I21yE++2eORa9aAZqO+/4zLBQYY/aqOxGcVFZ9t/0r4XH8eJrVYZS7UCSOoTkU/ImYS4y
 eyYBIEg+EiO510xK7AfIJn4LOy/4w1kPkAQnRGUpWrJTn0YoGBSs0iIm6kunH5e5Yw97ggaK
X-Proofpoint-GUID: KGMYBHq-U0UutCKtcP3NuborMCdZNkfN
X-Proofpoint-ORIG-GUID: KGMYBHq-U0UutCKtcP3NuborMCdZNkfN
X-Authority-Analysis: v=2.4 cv=I8ZlRMgg c=1 sm=1 tr=0 ts=680fab1c cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=uAVbjTU27lTVuhHKzXQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-28_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 impostorscore=0 mlxscore=0 adultscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504280134

On Mon, Apr 28, 2025 at 09:40:52AM -0600, Jeffrey Hugo wrote:
> On Fri, Apr 25, 2025 at 12:28 PM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > Enable Venus on Lenovo Miix 630 and specify corresponding firmware file.
> 
> I'm curious, how did this get validated?  I didn't think there was
> enough infrastructure enabled on this platform to check that the
> lights were even on on in Venus.

I must admit, I basically checked that the firmware starts up. Marc
Gonzalez worked on enablement of Venus on MSM8998 (on the freebox), so I
didn't perform a thorough check.

> > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> > Changes in v2:
> > - Rebasde on top of linux-next
> > - Link to v1: https://lore.kernel.org/r/20250408-miix-630-venus-v1-1-771c330ee279@oss.qualcomm.com
> > ---
> >  arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >

-- 
With best wishes
Dmitry

