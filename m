Return-Path: <devicetree+bounces-238634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 46548C5CD58
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3A5D44F2509
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C0B3316182;
	Fri, 14 Nov 2025 11:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gVvHs68f";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="asPVUWye"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7495315D50
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763118846; cv=none; b=GQYNOghMGY1L70KDIHIiOefd0NadBsoOjQbPbY+mVuNBhbNnA0XrbTW6UZAc89aBeiEUAsndGZrU1mR5qVPyjxuqR1p47SYYvgmavLDmc0P+EZ6AUDNsyS4nEwvIZFy0PGUKXbUOdETKpPFZgJi9FHqpqt9as0HplwNu2SNbPJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763118846; c=relaxed/simple;
	bh=V+dS51fPEN8iYqeNK6g62gPi3lGcfovBDulti49rEi4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WOsbwQtdhCvO7kcvNo2ItKL5kCt4hgHGAaPKfc+I0ib8XSvma9S/p8/8662Lzec7+q35oUTe6o9sbILpj6kSXS/Ykym1c24Mn1HBOVM/vLataYEzMHQ10lfHz7RSwYQfpJFD4r1eMvzThTCALcepXF0pwgoTBj+vSuNvfu/JBs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gVvHs68f; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=asPVUWye; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE7ntoi1745596
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:14:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kBgfVHJi4wRQDnUdYnW3q9cP
	j+vyalNxx2jUW3VhUC8=; b=gVvHs68f6cWZ0RY0vuK5G8sKJ1jSvlZXRaahAXje
	e07OrVWXuLZ4N0amHuFzI7MQyO0sTN9mStHBYqw5G/eA4jDgymyg5k1IGoqShdxe
	ZQIdFOGY5hHavlX8Dm1e8Bo75O1RgnCK4bXtwdAyhY45Z8yTRl530RYDeUNec/vk
	hvvgf3X7djXQ77zgNo7YmfPbT96YCdCTUksr9nqap9XV+BMPqqzt2JWB8q/PVzek
	U5DGwj7UTpqU0Yh4dcHi4IJtrUmXdPWoybbevrY0sdjl2h+kOFzK8b3hlh0NbSeg
	/KGTTUrcLMB/eEw9OAe4jUq9KLXMu9qsCEAWKcMlVmGYCg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9ehy7t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:14:03 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edb7c81e0fso52152311cf.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:14:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763118843; x=1763723643; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kBgfVHJi4wRQDnUdYnW3q9cPj+vyalNxx2jUW3VhUC8=;
        b=asPVUWyebbXFpY6WWup1eOhCG14xxkUJat9LRRVdfn6bJj8eMo2eC9z0cyQwKj0raH
         WFJihQ30bNj+HkU1BjQWlkfanPQTLcHO7Ey0JzoTbRqy09P92qpciH/RLfoEvm5SIcMH
         cAvbA9g0VAe8ZJ73Wq9dMcioNZ1JWuGxVj3FfTKZNBcHfkEraP7mIUCwf0jCYw6Y+U00
         duFn/RvY6P1eaE7T+V4vgnBCcVkC1vtQdQ1eaxVlhNI+WE/mQnWhMSk92oEgBURFrdW0
         ZxCeDYPvUCfD1vwCU9RUKiox8CVGo07b8xJLAZ7PQfL7gf5jKis/DMkaE5h3oKuF7Hy7
         MLjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763118843; x=1763723643;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kBgfVHJi4wRQDnUdYnW3q9cPj+vyalNxx2jUW3VhUC8=;
        b=cnNhZZN75w0g75C9VH+muYUBiMMDtfG1YOvJvgUxtpi9bGrrjL4QVrxg+gKE5kyc9h
         UjR1HPTjDxyjEVGunqZwHUWRm0TRbP+AAWdvQX1QUzJfmRNkiS+n8hM9yxGLAjaESPND
         VFf89wTf+C5Zt2b4GgP6XREilbgX3NmyjLzUrUpcFnI9DE2Td1JmR5R4nhaReFJoF9Z6
         xGLqmN6RbCBqvJ2yWgkRNFU2uuw2SYyPbTMQ22qwRPjbPwPhA01o4TOCCnW0XkSeZtDi
         YEXx+l7xzFfNxoNAC5EFC2GPDKbP6+NJCLyPbXApSNW6vgKe19cBM+L5EUQTLXqu50UN
         cnHw==
X-Forwarded-Encrypted: i=1; AJvYcCUWTG+Xnsnm+MNhpSqUAPK2IVoYzCdS2QZsh2U8/PgeilJUMz6Mv+dvDqLLW1q5TpFrn4MwHN+6vDYL@vger.kernel.org
X-Gm-Message-State: AOJu0YxckJ5t1PiNWjA7R26J8fXbi/8UM2Ux+axrmEJiPIkTGk0aiDy9
	pGg0lTDKkmgsP+B2Bge/KgpGQCnjCnSYhkW71S+PqwC/ZalNCxRGOO89iGme/50KnvcCpOMhCAj
	li0sx8ub3skFVEr1C4nX0zjh4pHpq9AUUb7ZVJn9Qm9mk2Ks7Wxai8auOEs5QzcZQ
X-Gm-Gg: ASbGncsML/vX+zNrB4gwIAI68e+QiJVENgheqU4Hkf4l6zwP1tu6jxt1iotGChel9P9
	JyUv5oBTt0T95YnuN62n+nAislmQHCEOrj6Vhiv3DCbWjoJA/aHgUm6/Ae4rvaTT6uCLzVFOs3J
	qm1fB8SliW7gw6D5yM9xel+912Kca0UHOjoDJGOeIt+d3O4D4w7KnX/9hLM+xnUC1TIXjMqU1qd
	leiRutMQqvNwfC469ftHpeGKRSTJ7p+q3akD0Hm9ELXCCeI/6v8n+2P6lDyRL4GtH5uQRFcASES
	LwJJ39C7p45lVPwwtzTXbVs9DfEhIvjALRQVr15Db/6fjdwMS1Izg+Vrj+Q4TuRbvf9RYnVB+7M
	Z5onvLF4YY/Ij/68leSIUaiBEwBSidXYnjHtqhWBjeEHRFPRnEuBX6hLgeesC3KUWDIrn4zBLyc
	pgymPXz6thGEIA
X-Received: by 2002:ac8:5a8e:0:b0:4eb:a82b:bc2e with SMTP id d75a77b69052e-4edf211b77amr34756201cf.58.1763118842762;
        Fri, 14 Nov 2025 03:14:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE1PkMK/O7Uyb4oQnSt889qcAcGtx0IjtMdylt2HwrmdfrdBAiJUXbkOImNXQ16DQ1Fku6/rw==
X-Received: by 2002:ac8:5a8e:0:b0:4eb:a82b:bc2e with SMTP id d75a77b69052e-4edf211b77amr34755881cf.58.1763118842303;
        Fri, 14 Nov 2025 03:14:02 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803b30c4sm991455e87.31.2025.11.14.03.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 03:14:01 -0800 (PST)
Date: Fri, 14 Nov 2025 13:13:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sdx75: Flatten usb controller
 node
Message-ID: <uyd4jui4km5ub656gbsqciowcl2cwiaobw375wdljgruapja7f@2boblerk5eta>
References: <20251114061553.512441-1-krishna.kurapati@oss.qualcomm.com>
 <20251114061553.512441-2-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114061553.512441-2-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA4OSBTYWx0ZWRfXyo7tYzFzQ1Tp
 Ro6YoqVakbRF39OhrDiV782u3nK18w4I+I8Bm99wA+cRB1jP1OKdbC8r/pKO0hDirMGjYcq7Lwh
 IH9ITB3DCRJy5U9vQVxcmkuXzt/ydRp+GVKdad9tVsxe9m4LmzdXSJ71hu4K9hc/9ne7hgaJd/5
 scNKoX4cvdVVJ9lttjKhF+c6T4nZ9lO0z5SjnopDCd34NH42X078U5v8cFVmVV55B6zp0WKEjA5
 q66QHYryHk9bze+S5/8gjSq75O754XdieAS6hgpmT7T66kB5bnggaGCp+BbivXlFiN+PpzEDn/X
 S2KvMcKu5xzDikS7qgbD3q4NkNcQ3Y0iW3oeh9WrOEIZI+e8shqPocQ9oFy6/avflQWk8RcHEEx
 A6JKfwM+f1hXSaHLIR8y8HBwH8HtMA==
X-Proofpoint-ORIG-GUID: C00RnIBg67aT92Op4zZRni5_qg6lftxp
X-Authority-Analysis: v=2.4 cv=Afu83nXG c=1 sm=1 tr=0 ts=69170efb cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=a-SOv6l-G2yjWGANBxUA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: C00RnIBg67aT92Op4zZRni5_qg6lftxp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 impostorscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511140089

On Fri, Nov 14, 2025 at 11:45:52AM +0530, Krishna Kurapati wrote:
> Flatten usb controller node and update to using latest bindings
> and flattened driver approach.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sdx75-idp.dts |  6 +--
>  arch/arm64/boot/dts/qcom/sdx75.dtsi    | 66 ++++++++++++--------------
>  2 files changed, 33 insertions(+), 39 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

