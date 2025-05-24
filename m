Return-Path: <devicetree+bounces-180191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D76EAC2EEA
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 12:35:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3B4F4E0184
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 10:35:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CE6E19F49E;
	Sat, 24 May 2025 10:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SnSmAJoN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8964A1D
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 10:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748082937; cv=none; b=l+Ormo7uMPKQFD4T9sgx59gsJS+hIa3/Fcb6S7xbXiKzvcH8zVHd+kMFl9gCi8kYRN658+a2uYi+bF5Q4Pfnur+jDps/IoJzBvi4PZdcwu/BceR0AhFKVPKN3wCT0Q8y/EG4mzyTyAdRPJoy/UGhIuDp6bkwJhBBoZsKjvlzXGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748082937; c=relaxed/simple;
	bh=OZhl91a07hOgsA4p0hKb14Ewboy7ZEblmiWBpURg4R0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UCiqhuvwM3CIBh3c/8OzA1qDA5CmN3o29eiWjr9xrmGYCzln0D+SEg4BZ96Q3t1H7+4RghBH6CuAY+swttGozyVBhDuiVidpITHemtTON9YRmRNqD6QRiEOtf9kYrsmPSYe+BUHhxBLw91CG1xfAO6iH37yAKE0S1OH7BEugstQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SnSmAJoN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54O4EONC021444
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 10:35:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=s910d4t3uAcCDBtNH1k1u5wo
	FuAjdXlwK36avK/w0QE=; b=SnSmAJoNNsjvO6NakI9HPPKSqEqdridWQV5jIiC2
	ORl5w7Q1iF8vf4CXqpri7jEMa2iXqduQxmH0c4hRVci49LPmSPhWsDQO+qME/EBj
	IoXOuyQiPOZovAGKmeobFqbmHySlpsYdqjiWheCOyMA3wCIc9gbi60rDOeJzH1Xx
	EmtoSbUOJx9gGIErhfnn6AfgnhAXUPVbbzMHjkFNjLAm1Q80BEN8QTay3kHgcV4v
	awXnnKhDVlrtkuOKkRYNJ9Ek50eaJgX7DSqbZTwScIduGHDDqYheiL4n7C9sju4Y
	IULBTLKS2ldAmkYzGnD5+nUhaWhmWOyZBXNp5upfhnGYYg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6vjgfrw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 10:35:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5f3b94827so107777085a.0
        for <devicetree@vger.kernel.org>; Sat, 24 May 2025 03:35:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748082933; x=1748687733;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s910d4t3uAcCDBtNH1k1u5woFuAjdXlwK36avK/w0QE=;
        b=vGEYQHz0gzfssNb8OyAmyBgacX5HfNbG0obAiuthQyvDtsU3eQhKzlpSJFEo5qVEkS
         HLvdTqTM7+J9yO/jHjtvIsOwSvN15nKCiykDFzYpxxLhXrBqySzH4/d4ibiFSewKdBEC
         /5e++kqsAujPZUmLnISjQwyQPH+WV7worcUZaMJf9LC011YBMO/+FYGhAf3IDRv0n4/z
         U567jZGPBVFcrnruIKyuepQVkYLfCQEPUSCOOLp8Iku3+dOYkyWL1tBwJVxU1r9OmjC0
         Dg9NNmZyHIv7K2R3++FC+BH22H6o83C1gBtlm1GmDeZ7TKncOif3XA3gEuB1CcFxDWgt
         JtbA==
X-Forwarded-Encrypted: i=1; AJvYcCUUsrRICV9SfNjPB9ybMU/E/CZroKXy0rFwWkfqZmfgX1gTNFhHFSsbuorOStwXCSkZA8GOJColt0MI@vger.kernel.org
X-Gm-Message-State: AOJu0YwKNrbHHWMoDwKSbPMyd1hRxoG5FFMipdV9t4Ua93G4O4xXIUG3
	qN9HObPRRsdmUKtvVsXvBZcOgsboy4qcv1NKJD9DNURSo+InV9th20clnzdCPvQ6b97+rOG9SsI
	MdxBR7Hz0KhDE+P+K+2cchgpnzLR9ai/55HuzYwgpwLjVqq/U7W4Tgeq4IOv26i42
X-Gm-Gg: ASbGncsPSPE35pjHqhOVkeuwzeYZLvphBXuLvD+Ylrx8JYWEmPrdkbQhA3xUiyMh3LG
	vEwt9WoxT+Iw3oLxlzTh64XPJDCldVKoxYtnUXa62FE9syDzb5D6kAD96r8lUtZ2vYEW742ZP/E
	uakP2538w7bk5gEV+rbzgHiVOLsuHqTNhPGnJrMOeoeWv8cUu3CDAPvX+5r5bat5GWn1q84ob2l
	JTTmaPBuk+kpcLq/RBIOR1RjAlx/a6W9/qaKZbyJVOKJ27gSqQNyKecBOUB76kNhZ7ur07VuW4w
	ih0P25WuUx2snAOTbjWDXftIEnxQE/ZMX/gbhZGXcQL9SMDmq033dynXS6GNfz1ylpNkjsH7cic
	=
X-Received: by 2002:a05:620a:a488:b0:7ce:ed86:3c53 with SMTP id af79cd13be357-7ceed863eaemr218620785a.29.1748082933589;
        Sat, 24 May 2025 03:35:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEF54RXqasfEVT4XH9aPqai1f84axB6EddNRJRvq+B+ZJJBfE+JCiW7NP+emGbbWXvQuq8YXA==
X-Received: by 2002:a05:620a:a488:b0:7ce:ed86:3c53 with SMTP id af79cd13be357-7ceed863eaemr218617985a.29.1748082933254;
        Sat, 24 May 2025 03:35:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f2fbf4sm4280072e87.70.2025.05.24.03.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 May 2025 03:35:31 -0700 (PDT)
Date: Sat, 24 May 2025 13:35:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        linux-usb@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 4/6] firmware: qcom: scm: Allow QSEECOM on Lenovo
 Thinkbook 16
Message-ID: <5dkielul5ere6rgzog3kch2gtccejrrom5obujnfm7uop3czcz@kyppckmrlqny>
References: <20250524-tb16-dt-v3-0-17e26d935e73@oldschoolsolutions.biz>
 <20250524-tb16-dt-v3-4-17e26d935e73@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250524-tb16-dt-v3-4-17e26d935e73@oldschoolsolutions.biz>
X-Authority-Analysis: v=2.4 cv=UOXdHDfy c=1 sm=1 tr=0 ts=6831a0f6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=gxl3bz0cAAAA:8 a=EUspDBNiAAAA:8 a=GTs9I9JaY0s41QFpxpIA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-ORIG-GUID: RlHGNWRindW2YHY-F-QgVJBVyGL8KGOi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI0MDA5NiBTYWx0ZWRfX5LukTh+Mf9OS
 ScgHBomWaiBi5wG5/qsueRHTh7AunkjmsSlX07jpkvjp2w93T3tULlo2VwzWFE9XkzrJbP5TKo6
 9KBBnZrWPVqvxMk1OhqjsZuEOiFGupSU6W036benHbhIxWnMJT6IFTbLxFKVeJmOKDNFsVaQBlv
 /2JmwSPBQ265RPV1k6wmIbqQpkuoLTKCa9n4eTDTaoHaJr90sRq0uTEc+ycTBEPktCEmP9BsF1H
 XQxBdRlDnZHNBiSLrh/YmRscUBmPhNedZq+aM8G9gT/nDL3jFFHt2Cn53FwKpcasoh5wJ6DQUuj
 LAUiyl2+F0Y62ll/sYZRWfYPl5BkCm/+nWcx6/B7ozVI1iKkSCtj7O0m4UEzGw3ftpqONAMs7JS
 iEiyaTVgEWLUwjT5IU2cTv1vvqlpF8tnUp4SBPSA9jXg3PtZBKnOn1agmvxhxZf00iTfWt9v
X-Proofpoint-GUID: RlHGNWRindW2YHY-F-QgVJBVyGL8KGOi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-24_05,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=821 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505240096

On Sat, May 24, 2025 at 11:19:11AM +0200, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Allow particular machine accessing eg. efivars.
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  drivers/firmware/qcom/qcom_scm.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

