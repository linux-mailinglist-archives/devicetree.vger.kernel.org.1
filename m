Return-Path: <devicetree+bounces-200157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D869BB13845
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:53:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00BBC1887278
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9A142571C3;
	Mon, 28 Jul 2025 09:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FY7JmOAK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E27F21FF4C
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753696056; cv=none; b=GUIhRnuK9i/g6wZagpGeqAZQBVxOaHgoVZ39s/5bCh80wkaoK0+dRLOF/1mAYCYJ8XMSgoYbxXXGx9Uh/ufBepcTFKiDuNeFAEEhfM8mVibJP4bEZH9RNy1B7cJ3LTzXrvyd7ShmTINACe/ryQf8Ju6Arcp9e7gE6MDev3k2QlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753696056; c=relaxed/simple;
	bh=V5v51/y/EDwGpe5nPnEeveCat4hEczx7n5xKlzu2KBA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I/nEsYyhvRwYNhsmQI5pcbqubW9nsUiui9xXQFEl6WfJflMS6lpyIklh5Dt8RrmpPrjHxu8emqYgHW8+cpLFPVZliwa8OUFr5WUtFNRTHeGzhVZTkIuJFWatN5csb9pTcaaUlaJ9K5xLz3YR6OV8xBxbmXHGneEM4yk/BSmmOVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FY7JmOAK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56S4s1tt011676
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:47:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=b9Lab31gEFp/hDP2GVsnvv+B
	yECgPDDTBcTF566eV/0=; b=FY7JmOAK8K89eLGi/UkgJAJ0dqy8rM35QIEd7sDL
	tyJ0KWGVmtBi2QyffYEmDu7egvhYhTM1YHGUzxNbSaxclh0FH9/StjIB/6zwpn7z
	KfH+RhU8ZBmUccKkVRr7jlo5Z3xPKE64aU3OsGbtHsQ/fmLjbNcU42qjX3Z+sp6p
	K5ggEY5E80WyNceoxcMeCQTKu/MVamoh2u1YcLodlcpJGHgG0Y/Eaae4oglsfzZX
	OAvUS/2PoYz5GDu7KDOTg9fjpNe0IskQ1D6lGkHmOJdm7kZCvD/C2WILdcN21KXb
	fHRUq6kZSJSM8G+XRMDmpHcWYAHS0+09/sqHcKGIlVoUKA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484q3xm1xq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:47:34 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fb01bb5d9aso66103026d6.3
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:47:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753696053; x=1754300853;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b9Lab31gEFp/hDP2GVsnvv+ByECgPDDTBcTF566eV/0=;
        b=dO0NZW5HB2/YHIBh09XAOGQL3cjOLmWUu86ADM3uVsrGc2QT6fd9ada5gUnb9h+MUK
         GiBWa35rQQdK2Z/HHmg7PxyIus6wmr1UkoTpzGHhiLHBXFSTIY2ESuhVjdJmCYEaFi7y
         0YbCv9nBdpk7iFQNKxVJkjJ4NoqmpL/qDGFfw7WGmdOv7qF2EM+RamVmZwT0p6gkViMV
         EtU9C6haJmpC9ZnHNPdUIKXOk60m5yiK9Vv0XME9ks7tgNXHfvkkuM2ueNGGuZXk3NC7
         5/+K28X3VLrYo4iCZEpvRyYSu2EJVjWyXmeSLxB/svcoGcvXOKl0Sdw9Ux8E4Pczkgm/
         igJA==
X-Forwarded-Encrypted: i=1; AJvYcCXNFRQU4gRav5IwVY7GP9pkyta/J1FmzNIWUv1rseGEsXG8ZednqDQbwp0jemsF/5t5jtBOQaQmiBaS@vger.kernel.org
X-Gm-Message-State: AOJu0YxgdLq8setndVkjoJMZMpbXeHjzn++B9xfi3g80dQs1Wb36fPVj
	gON9BlbP6MDy6UgRu5EWWsdfT7Q+7dGcHkxUGINgs/FSG21RdpyPBurnyDihplEhI6TZQPkC55v
	Tk9CMg36GxuJo8QBCdg2gf9GrqiArXGaGHhgrXWFM+P8dsXbwjTL6dBjlia5C/YP3lE2kmHSj
X-Gm-Gg: ASbGnctty0892ymxzyzj49DX4G8a2rwfLC13IW4sWfiNPlFtHHyhpdYeg/+NTPZYfm1
	KSrhnoRDKchqans2ivq9eKkcOEXS4ONowvuhJFbLB8WPqWqgOq5SvbGEW2FQGjtT8pqiuZqvDGz
	tabLS5KGMFi6X2UO4uG34lS4EnQbUV+jbRYbX6oiepScTTftCyHiliZQcIjfPz3YLwFVWQDDGFm
	4YByjDEnSMvFA7UU9JesVJga0I9Oyp+6u23nqME1Y327iXi8DAgUdfbNQLAhK3OSf3zDMOuN0U6
	snYdx5q6/BpivqZQdsmqyRM29E9D2Hd2nsPD+zl5vUJbIreKz26J7p1XtoBACtRE2HtJi2swZfb
	rT61cnX+BpD+evFChd0nXK7ARz8co6uN26S9wA3/0oznLemgA/eXp
X-Received: by 2002:a05:6214:29e7:b0:707:1ab5:3787 with SMTP id 6a1803df08f44-707205a898dmr117877946d6.30.1753696053048;
        Mon, 28 Jul 2025 02:47:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG86xL83cEvXn5rUOfw1+S9RzGG5TSNJ9B4gIrX/EQyKkUkuVDASfMailmNVSy39NbPS3hl1g==
X-Received: by 2002:a05:6214:29e7:b0:707:1ab5:3787 with SMTP id 6a1803df08f44-707205a898dmr117877706d6.30.1753696052457;
        Mon, 28 Jul 2025 02:47:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-331f4297067sm11596761fa.88.2025.07.28.02.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 02:47:31 -0700 (PDT)
Date: Mon, 28 Jul 2025 12:47:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: qcom: sc7280: Flatten usb controller nodes
Message-ID: <eqj52yo6ke6pfwgbldztmxhm33ut5qs35z6fs77uyvyknngrod@2qs5e6san5tm>
References: <20250728035812.2762957-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250728035812.2762957-1-krishna.kurapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=JovxrN4C c=1 sm=1 tr=0 ts=68874736 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=OKk1g8ew7IGzsuuaGm4A:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: JQa_khMfuJItfHuE76uklfUAVUxzkVoh
X-Proofpoint-GUID: JQa_khMfuJItfHuE76uklfUAVUxzkVoh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDA3MSBTYWx0ZWRfX8PKQsi2SsvT5
 SZ82L40BespIb6c+7Ut7Al/Piih98swNCeVn4nTzsXwxgPihuNn3QP1z7oCHy6GcnmD97x1zTGn
 rS3BeMlZ85mtdeZpuMJ+Tf8hLexy8BoLRAAT7qc6rqbnqcswYJQLQlXy8ee0NklxrxxKeW4IrIl
 HuGzkzhjutSbR+CvB6eNmauV6pVPJwjpPJUMc5gmmvukZGbWnZZ4zdUDptxRHGVTDOiYL31TQf+
 FHP6PqvZher1ZfJ9tI2J8x/JW92NziG3UyL96t6080ITnXOBZlDfkW0tSfK34YmaX1081yOUtAC
 jsENO7TqtT7IA5ogUN25VII6LVuL7JreGyALhIWb/7DsoYrMl7l6cXXSK2VXa1GSjBig0fQWidi
 Qdku92DBoNBh1ZL0uULZ2jim/01h3hrfFtbWa2ZTDDlcI2x6bFnhOh2al+s8lIj7pUkpYpe5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 bulkscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0 mlxlogscore=412
 mlxscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280071

On Mon, Jul 28, 2025 at 09:28:12AM +0530, Krishna Kurapati wrote:
> Flatten usb controller nodes and update to using latest bindings
> and flattened driver approach.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
> This patch has only been compile tested.
> 
> Changes in v3:
> Fixed dt labels as pointed by Dmitry.
> Fixed DTBS warning pointed by Rob's bot in v2.
> Flattened second controller as well.
> 
> Link to v2:
> https://lore.kernel.org/all/20250725050216.526327-1-krishna.kurapati@oss.qualcomm.com/
> 
> Changes in v2:
> Fixed reg base address
> 
> Link to RFC:
> https://lore.kernel.org/all/20250720072125.1514823-1-krishna.kurapati@oss.qualcomm.com/
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

