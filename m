Return-Path: <devicetree+bounces-193170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B43BFAF995B
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 18:55:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1EDC3561CD7
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 16:55:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C83FA1E5201;
	Fri,  4 Jul 2025 16:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e7mDgnjY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601502E36E9
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 16:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751648147; cv=none; b=TXHUYvQXTgWKU8BQTQynGkLt5y+kzlOCdDwZO9Ysz5HlJghcLf/9e8xI7z/39ZxOymnL5cCD1dt0kCLyFoiMwZn3+D7s29k/8hnHYqlu0UJfvjQu2z9Ov492tkN79ogGOmr5G+ir1HM9Jl/ziPXWs63kRyNo8NI0LqagAidLPj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751648147; c=relaxed/simple;
	bh=p8i7XLYBzXGzwkf5jb0FYGDs//dNhAE8WOsatbFWV00=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EyiMFrqqyK2sT6fhKdCdF3f+SUCTSdPP3tSmRyd0w3YWcW0rBl4HcizCyv6ufEGfsU4saIwPfeUBT68c37C7rqE7zAJGM5VtwtTgXFwy8JXLwORu0WknhGrfiNjtR5t9ymYv1iF5ifMmbQF5kTAl7AOXJ5FPjYpI7hD3JM+W02E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e7mDgnjY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 564AQcxC010069
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 16:55:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uGJsilyKHH4Uj2b3teA8OQnh
	5JhrzwNB6QZ7/ifZqDk=; b=e7mDgnjY9p6v+RF8+fdZG7rJKnTa3Rd/pugvpJa0
	H/sNW/r5qaebMSIf5akCMH+2/w6vTi3YCP1Pv1NzSWuN3Qu4uzIg64PiFZOsYpMo
	j4c3RU+/rQraBeOmHp6bhLgmzwECWXO3/bxE/Fsfdbnz2Q3idtTKLlNRAR45OUXs
	C3Lw1TgpAfSVKp4KNl2/MGCBA6ydVcIK0fmq2P015qdDkOl8ZWFHJowvuBm5zawJ
	h0QJv5KZRQWkn3yVT+lTsyZd55kRHE2T0/OfRrPCvp5XdKv0ptqAD2TBrTnHXm0z
	QoQylJqZnvaWkDbVUsNhgVTlvkhNqlhfN92gpAIo3bgW0Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pd6w0yyy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 16:55:45 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d3d3f6471cso177658485a.3
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 09:55:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751648144; x=1752252944;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uGJsilyKHH4Uj2b3teA8OQnh5JhrzwNB6QZ7/ifZqDk=;
        b=ofNy6obAk+TgubAa7+wHk3YMPR/2bxCD0pE5bzHI0HBmCRdNcWWnEwbYx/iiq3w5mP
         1tIifUHcYh808Dd8CH7J6srEzmnFAq0u0qtwTDtW6xgF1guyZXrd1AN97+zZKhaC47g9
         pNe31ZyWHXbYmxdSR1VjAwjAHd5LLEdJZDmB1e8jAD2lsDdvgeImbIZRgruDHhLSjFuK
         IRAS8+s80cjsTAuOP2pMpHRDdrjeVh0l6mq/5oFqLyQtWLyZS//+Bva0RQN/LHBnmJvC
         +QxblFPrD97MMkRFWW6YSuZdfCcbNLP7HF6VyldRBgXb2F5x4e1QqGD10HX0thoGfr8d
         kmOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRxjGqQYXJdPyi0d0Ndl9ofztt/jf3QXqgg8NtLSM2IHdPGtv9/9hdAeCIWk5kiU2FqR7Fo2oOadbC@vger.kernel.org
X-Gm-Message-State: AOJu0YyV+lS/NFfc43jN9hhI2DAE4w+mS2Nz/UYwwOASeEUMNZXOrHKG
	iIOs5IpWGrvq6fwSz8gQM6DT2Sx5YTaxPoKkpBmoR3hJNyKXku8ARtpDSLvFoOdntf8QX/iVrTT
	9CLwUL22R5/UTFfq5/F/YNUJDN2ITdcoxCYIH7KljcBORJC3aKPoP4jvzEXXzoEhx
X-Gm-Gg: ASbGncucFTCNZY+b2p+8Fe9K+3oomFWZu6X2XD2eCiFk0Y+z19Dh34JlnYmiC/ZR1xW
	RnX1dOP8OZSjzaKlJX74vEu9SQjfH7edHRZEfJE5MRxg8EISXSOcjFBoilf/Pe1YYjbdBVmJ1eA
	BzJqSpn30tzUEH5Q1iiEZQv0/OHOzahLxxBrM0i+WwwwYiqur+KM4Ui7mBQP8u3TB8GstF4ISFh
	n+6ElVsu6Nd0m5dTV3J/sUC8Ww/TBnmW+tVzwmGAqPgPAaOq07jL0Z4GeAKbyLgoLeymDn5VK7t
	MgyOeK9joz5ZPituPyqltPOUC2ixAA8n5+IX7+VQ7Ayi3TK0a4rLxfb4Fp38iM6E79j0d9cxOmK
	JsB1FphrNRbPK/wLbStsrMXCUQSk1/mQFBR8=
X-Received: by 2002:a05:620a:7014:b0:7d3:8dc9:f438 with SMTP id af79cd13be357-7d5dcc9df6amr531553585a.17.1751648144302;
        Fri, 04 Jul 2025 09:55:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEaVzA4IiTDSX6gXdnqwfBeXXk8lV7lfbEhBooGVKmi3HCndngb+lBjt9BZPHjHEi0TGBN+EQ==
X-Received: by 2002:a05:620a:7014:b0:7d3:8dc9:f438 with SMTP id af79cd13be357-7d5dcc9df6amr531549385a.17.1751648143880;
        Fri, 04 Jul 2025 09:55:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-556383d924asm304261e87.87.2025.07.04.09.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 09:55:43 -0700 (PDT)
Date: Fri, 4 Jul 2025 19:55:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: srini@kernel.org, amahesh@qti.qualcomm.com, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
        quic_kuiw@quicinc.com, ekansh.gupta@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 4/4] misc: fastrpc: add support for gdsp remoteproc
Message-ID: <dw57fgjv667bxde72vim34263ak4flkb5z6lfqzhtwuorm76iw@h4lmizln4rzc>
References: <20250702025341.1473332-1-quic_lxu5@quicinc.com>
 <20250702025341.1473332-5-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250702025341.1473332-5-quic_lxu5@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDEyOCBTYWx0ZWRfXwJc7+5aalxvJ
 ZKy8jgz+o7KmJ0wGXiHAVz9gNIVGtTbre3PQwlrjQp2nWl8WH//GD52Ypmz1r0Icw/rVDkMkdea
 T5d4MI6INY0m8UCqYrKoqB6mAORVXaRZfmVvli710ND7C4FEj++PcRyxW4cfCplP3n96Winib7i
 oNcTOnZmyo9/cFCnS/sw1oKcraHUP9QZW+0xXUlomRoQrTcyMavLhIW5It0gChupZAZmsL8y+om
 kX57oAW97g6mOR6RwJ9SNR15HNNS90fTeCOKieZerq5KuU2gqLniXGNXopKF7JH4PPp60gZJnvr
 F3mGKAQHgcFhOGcLYUiNCjFDcwKsUPwrRXDg6914rS6pGMLdgfLiFtqNY1Ti4J/C2Ll7e+6x7/1
 SDKXf1TDnSjwiAMWDHKqaLu7U2y+1eTd2GBGh7PpSMXDUU6F6DUJe2dd07SWusEwE6W+71QM
X-Proofpoint-GUID: FHJwobDNR27uC4-KECiSM0WqYOtxFikD
X-Authority-Analysis: v=2.4 cv=UPrdHDfy c=1 sm=1 tr=0 ts=68680791 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=GMwvZ8BIopSWxJjz0OgA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: FHJwobDNR27uC4-KECiSM0WqYOtxFikD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_06,2025-07-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 mlxscore=0 phishscore=0
 mlxlogscore=758 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507040128

On Wed, Jul 02, 2025 at 08:23:41AM +0530, Ling Xu wrote:
> The fastrpc driver has support for 5 types of remoteprocs. There are
> some products which support GDSP remoteprocs. GDSP is General Purpose
> DSP where tasks can be offloaded. This patch extends the driver to
> support GDSP remoteprocs.

Please read Documentation/process/submitting-patches.rst, look for "This
patch".

The patch looks good to me.

> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  drivers/misc/fastrpc.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 

-- 
With best wishes
Dmitry

