Return-Path: <devicetree+bounces-159289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE3CA6A432
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 11:54:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1B4357A70CC
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 10:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0ECA224258;
	Thu, 20 Mar 2025 10:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QTndezSm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 881AF223719
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 10:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742468086; cv=none; b=D1Ox0i5H06pJtTz0YrOyoFFTNeQFW1uLyo2GLmKCwKZygONymSAPLhikyuA0Trnf3R9Y4BhiUrSBX9f0IcPXvlSIeGP/J4/GtYyPNmDxFFKTw41iFLL6NYiLodsDLEs9iuiqgALQwAFKocOsRc5sDY9diBURosWA9+oF6WCX68Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742468086; c=relaxed/simple;
	bh=Gzl2OAOWftrG50OaeVh+6u3yuNfq2LInxjiLaVChIWw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O2E1aBXRLTo8f2+R0/Z/b82p63KOW404wl4DKMSS5GDFXZwLvXtoTB9cRF1XbGp/nKXfQVO8WVri/wul815QiFJUMujmwJW3aGp2Fx4ovGjEUD0KMVXgVdiMZj5zaw7SWB8d7eq9SLTOBou0OFFGrA7c5uRjKwSPPT068XPMyc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QTndezSm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52K6Z63C017501
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 10:54:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9MSSpvRG+TcV9gNCepPHrW84
	i6zOiyJTCdB87QHlGkE=; b=QTndezSmxaQlMikf3B1wozAHStIREKiRVGk2iEnt
	qyPikNFdl/tDpwOfzEh/nbbo9eRkOMm5yIwYizDD67NSX7J0Hjm66O1bvQDO6NfA
	yUk1vZGxUZ2PgoY7XWE8cdNEcHIiG9KLOwIJPO7ZcUkZ0QHxqFvFTBZ3AUXbOPht
	wnLVrkt/FjAtymCeUpJk3Lmlba54awBkpaSpEK2pRj+QWvg8ZARjoGF6xy9OOOXx
	tg9E1zpV29QqyWeOLgXXU9gsGhr2WIeE6/Nnxdrmot7JnEIj5rMhLhBg5IUX+tVF
	XU0b+l7AfnkPlbvPkqip0KbIISOdMmb1oPuX7BRgl70bvA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exxbrje9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 10:54:44 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54a6b0c70so69200485a.0
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 03:54:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742468083; x=1743072883;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9MSSpvRG+TcV9gNCepPHrW84i6zOiyJTCdB87QHlGkE=;
        b=QUJNQaqlEW20kpJDB9JEL2TmOExVBSkj/LcBxkaKTdUToFTeH6fkWcB4cZqHIdIMl9
         NdmvgrfstlUroHxAzop1KnSisXmKROI0BbfvPB51L2t6U5KzF75NWasRTVHE5S/gM0FO
         q4GzmVPErlZ8ItsWAUPH8SWbXVS1yydhASZi2lHuyEEx15wuN5+AF2p8QnKNxt+7Jyon
         hU/9Z/4SHawLgM/hu2LQcd6jToGMC/vzYzNEcT1zQvRZPZV7E8SfkJWpxBxiY0LUbXD5
         fw9NCC0EZtA8f+O3NK3JqnHrUSx//AB9Nr/zT0ACGHTm5VoZ3tjtxhA1HhoUbu+Ca34K
         8Mnw==
X-Forwarded-Encrypted: i=1; AJvYcCU/CxdHffl5UZIzgYyf3DmUOCZPDxaWOpDnW+TD4OKOxvU+KDkX+ptkRZwTmzjireVqshx3f43JLim8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzfrl0/9HBo2sTPBrA6OYn4QR4I3XgI9RRIu7UI8JOVW/yczRT
	6ZKfsT41hb/3UOFQKCYVjaUnbcl/AjE48XzZc61FHdP6s8issHnmy7DsoWzrDXe04ZGWNF5yido
	aUawZnKDSPi1so3omsok0KW5HhMgFETXQ6o/V7l55Qjqb5ZFdrdY2vy7MOEHF
X-Gm-Gg: ASbGncuosx0R3rS1jZjQsgvEEI6xor3KudnEayfTJ4dukfhrH1J4ZWzpp32Sx8pbnbG
	YMrlCNt7qWvLTN/EvZAv8BKvOfIPzM8D8bLLfQVVd4xI2JhsblkznCksZkVPUp/AVIm7AiEgWjO
	cVdmhDBw4nLQ96/VfAHppTBKwoJjqBzm+wNaGIf4wUC2wjGvp60NSn+6kpY8zxNKlvSEP2PXJSa
	eM30Xx8YqKGr2OUZzqOlOWxDw02QOiD6Qna3Bc3XhH0EwUiq846mw0EvRNztUVpA7QMMohG1mB+
	V/dWDMZ6WoWxDEbE2ahuxgUjc0akQo4tAVdfq4jD6ROoo46qzP0qMWYoZp881lEJQzQ3fhwAvsY
	UE0o=
X-Received: by 2002:a05:620a:280d:b0:7c5:4463:29aa with SMTP id af79cd13be357-7c5b0d06405mr416386985a.40.1742468083409;
        Thu, 20 Mar 2025 03:54:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdFV9xVqcyjUuzTORF88R0q5+1pBPTL/vZj/baesC3onvB7C6vsCaH9ilw1XKWAk1ufOuWcQ==
X-Received: by 2002:a05:620a:280d:b0:7c5:4463:29aa with SMTP id af79cd13be357-7c5b0d06405mr416383885a.40.1742468083112;
        Thu, 20 Mar 2025 03:54:43 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba7a8516sm2247703e87.31.2025.03.20.03.54.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 03:54:41 -0700 (PDT)
Date: Thu, 20 Mar 2025 12:54:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        srinivas.kandagatla@linaro.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org, quic_kuiw@quicinc.com,
        quic_ekangupt@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sa8775p: add GPDSP
 fastrpc-compute-cb nodes
Message-ID: <mgtqgzra5n4tihgyrvb26pyzfcsupliorc4hvrmh6j4l2zw2gv@ozfjoxdolle7>
References: <20250320091446.3647918-1-quic_lxu5@quicinc.com>
 <20250320091446.3647918-2-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250320091446.3647918-2-quic_lxu5@quicinc.com>
X-Authority-Analysis: v=2.4 cv=QN1oRhLL c=1 sm=1 tr=0 ts=67dbf3f4 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=X77NXM8zCmOlsI4LSM8A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: H17z1U-QuVtFE6GtrmDXO2n1GIlhEDFW
X-Proofpoint-GUID: H17z1U-QuVtFE6GtrmDXO2n1GIlhEDFW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-20_03,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 phishscore=0 spamscore=0 impostorscore=0 suspectscore=0 mlxlogscore=607
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503200067

On Thu, Mar 20, 2025 at 02:44:44PM +0530, Ling Xu wrote:
> Add GPDSP0 and GPDSP1 fastrpc compute-cb nodes for sa8775p SoC.
> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 58 +++++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

