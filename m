Return-Path: <devicetree+bounces-223988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ED9BBFF6A
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 03:28:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A76254F2F05
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 01:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B44F61E5718;
	Tue,  7 Oct 2025 01:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OlXMoU66"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7A81C5D7D
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 01:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759800486; cv=none; b=pmZOmn8npmXg9e/idYc74MHSG7vGBe5yC4EU2JSNQ1j+1OPmvXQIEX+1rkUgieZijr3CZpYh8YF71esDHO/yqvBTuueeRmUE52vABPvoXQJ4BhFmfazTZLww/8Usi0wdj55ClJ3h5oxUlLe/5F+YfOvWueOeeNQsfIX5a54XRO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759800486; c=relaxed/simple;
	bh=4ualLk1DeZlEWqfWckWpbEx0sirQm5t7gARFYSVy84k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sn7PpC67SHcbLtS6ITsRTw9Z2X8rK7EHj4ivyIuEwcAqTCI6DOmls3R+KK1L+veNiq6f/xOziRSGBzD95m4QZBDV4D52D7QZ7Rx37kYttVoex6wpbh0+EUvNQJ5AhpBVMzofCclKqdMuXKUFMzFaNWKI3NOsCNC0b2aeI0fpAbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OlXMoU66; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596FP20r025798
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 01:28:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=i2Wck2j+6o7Lb4Qgkj6MN4x7
	UQxZYVDXXZmfJzy/gQY=; b=OlXMoU66GWfO5eZBg1onhe0qcCdzcoLKfwG/Wa30
	qhrX88P/JBS8XLvDm+nxwYn2lASkLj1Tk4rrACWYWjEn/KDK2sB/6zARQkaPAjCn
	PhDKzJMOx6zLbxza4CcHM6cBjkRI0H0uPIGJmNpOHZWAekbmSsOsgr74nVthpaDF
	M/docPEEpBj+nClSsHQk9SQH4EGumkMvh9mjaTTwvu0OUCThv+yWCVPvttkqzi9p
	jI0lBiKwsgCZUYGruyxeDmLgiqVtR+vjWSCcqGpi6PoDm/Z5oqp85g/ZrE/1QMFi
	3GLLZkSuu+p2t8h3jw9jDGYTJeIfWDZyfpjYpvjmxCF8Hw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mgd0hbyh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 01:28:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-829080582b4so1307496685a.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 18:28:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759800482; x=1760405282;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i2Wck2j+6o7Lb4Qgkj6MN4x7UQxZYVDXXZmfJzy/gQY=;
        b=YqRm+/TQZkY2YRQa6xIz9Zi2ElB6+yNp3gUduj3gDj8+WS2bdE6WnLFGbd+CqnAxX2
         ZjnVwwt99SwssVazVPonjASmMD2gXtcY1lFS34/kV0UCYnq0u/7BrvRPaTWsa8qNqGCW
         qfZpC7hbbmE+nicznU42LLSzrMrnYvTw9+0LM2Azp+xklzu+Y1/1q1Ri6avl3mUzLZje
         0+sfEijNzdSBCi/K9GNLSjtoc9FV153MgZHaLZREIbooKSSu0YhTZu6mXMxw5YlVZ1qN
         G0LXD3g5g0e/CMmmFHygCNBMuAgGvzG0ABx+doTFbpqYLwmd7pQm4gyc9NqHtm7ZFXsY
         4ioA==
X-Forwarded-Encrypted: i=1; AJvYcCWbxvhpn3uKI/xE5LbAQONj1U6Bek3EmlZgGenVH7RiQ1e9ZJhemzcvBQtiHU0hhf5VzTir+++kjkZy@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3CYOUz5UeKiqSYjvx4tXdD8gfiHoM3LcG/+qbZz+IkEt3ewF+
	JFQ0KhoAgVtiUFsDQ8UY6bpQLb4WX+VNRyHxcnWEvdQgOZMU2lbFjQkGUemfyBPFbbPEpdnMLq/
	wPdjAsL1xqnNGAOW+LGnsnZw5fn9qHjAFQpx2Hu+Plp+ne256DY7z8ktkL7Y+kJwr9aOONL1N
X-Gm-Gg: ASbGncsMTEJZo/bYGKuiYAgczi6a+Qro1OpcEaGsXj3SU8WzFUHntbJQo/IftisR1iE
	LVHSlCTBiTApf88XdDQ6VRXVIvJWe1FU8nFrYf7GOrC5TjLvXKhERCGxlf98Z3tBnge61feyAnk
	wTJCZf/R116krUxXjaCFtah/XYsQzEaEhS0QXvVpfWCZ2+GGpMNDuPequk7DuBEkRZ5U1lCY6Ix
	iRIjkQp8jc3gZM/uq+1P5cTPVi3hUxd1pExKcb5qDBCN7Vm85EuJk9kkTvnNhZwLWL1NauWTNNU
	Szsb9XH2jvX8akmTdSG8/5iUASDiuz39n+SwVZtmykJB5e9A3d5dVJJ6AZ6E1qH/N8ZBCLNOGz1
	unj4UARlvhMnkmYu4GA/pXINrr5xGEvFu8TUy/86QjfqMv3onVdQ+7lbMyQ==
X-Received: by 2002:a05:622a:5c17:b0:4e5:6d3e:d769 with SMTP id d75a77b69052e-4e576a4668emr191842871cf.7.1759800481768;
        Mon, 06 Oct 2025 18:28:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxfeNp2wWx3PYGTBtbjUe4nY/+LVjFKId/qxcvUtH9OJG+jhOdfQBv8YVwQTtsYrG6Pr+XnA==
X-Received: by 2002:a05:622a:5c17:b0:4e5:6d3e:d769 with SMTP id d75a77b69052e-4e576a4668emr191842691cf.7.1759800481346;
        Mon, 06 Oct 2025 18:28:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01135a82sm5548587e87.39.2025.10.06.18.27.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 18:28:00 -0700 (PDT)
Date: Tue, 7 Oct 2025 04:27:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingzhou Zhu <newwheatzjz@zohomail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: Add support for Huawei MateBook
 E 2019
Message-ID: <uehcbtdwrvkkluy3lszffukozmumbxbltbmdzagwd3ecmlp6an@lzeffmk6fx3o>
References: <20251006121456.26509-1-newwheatzjz@zohomail.com>
 <20251006121456.26509-3-newwheatzjz@zohomail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251006121456.26509-3-newwheatzjz@zohomail.com>
X-Proofpoint-GUID: 6wiaFfnzntmCs3xmF5E15d8qchR9OD9t
X-Authority-Analysis: v=2.4 cv=T8aBjvKQ c=1 sm=1 tr=0 ts=68e46ca2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=l4nIPSqNMi1mnKGloYcA:9 a=CjuIK1q_8ugA:10
 a=zgiPjhLxNE0A:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 6wiaFfnzntmCs3xmF5E15d8qchR9OD9t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMyBTYWx0ZWRfX/BZROmwwNmli
 TvdGHOVJJ8AIJ+9SqMLUAoOj02jW8s+wv6OkwbTae56Uo5ETosVW0AC2w2k1sIFmDl6rKiFeuw8
 MEtzu0LuvMy02CNQLQcyD3SWJhwC63kM28yYhWCJ7+a5aVXM4E/L4f6RviSshWkEbr0HaRVvoa3
 rAVW0C2TReeFddWYE57cnYQCUmrqWzTBMvrmKV2+99EDlJ7slM0ZdBBxXN+cjYIbSoiqEk4o4zZ
 pwGuMCFIYtsHl+lLQaKO1redF3yFXxfHqg6Qmdm45ln8Faaaod536XuYKgdNax0Zdo7Cr2lzDBn
 VBlA/youLEviATMsUQTIQKWXjG/m0G7ILAnryhcny8riIa/QcPmd47h1kw4tay1jdXM57T++oB6
 wpRnIdqBrLDxW0Vkt+XkK8IevwhZmQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_07,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060123

On Mon, Oct 06, 2025 at 08:14:55PM +0800, Jingzhou Zhu wrote:
> Add device tree for Huawei MateBook E 2019, which is a 2-in-1 tablet based
> on Qualcomm's sdm850 platform.
> 
> Supported features:
>  - ADSP, CDSP and SLPI
>  - Volume Key
>  - Power Key
>  - Tablet Mode Switching
>  - Display
>  - Touchscreen
>  - Stylus
>  - WiFi [1]
>  - Bluetooth [2]
>  - GPU
>  - USB
>  - Keyboard
>  - Touchpad
>  - UFS
>  - SD Card
>  - Audio (right internal mic and headphone mic not working)
>  - Mobile Network
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

