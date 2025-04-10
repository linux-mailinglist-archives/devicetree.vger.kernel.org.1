Return-Path: <devicetree+bounces-165120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA66A8375D
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 05:52:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AAEE19E14C4
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 03:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB5C11F0E3E;
	Thu, 10 Apr 2025 03:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YYpSxRfj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6067263B9
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 03:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744257120; cv=none; b=T2+H5I103zeH7g5C27Eq8NVVTB+YlQl13tYrMTKNvvFuQEDz9AmehT9QEdKMVoXbpCDQK3AmAL+pLS3WA7cVwe5NFtW1jOmHFK3L6HjVtxeJuqNeoKlBqfS6wZN1+4AplGfLNDuEYEjVpzNU6WbRHJsK/8eEtrMLOChpiw8tJ9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744257120; c=relaxed/simple;
	bh=G40xwuuhEalaAtAG84j+mCKLB9Fl0PM0jvfPEOlJ9G0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y60eDrC3aD8u8/iuXwlPqauyF/qc9gaQWJc807ScPHtAqsYRTSnGsFu2Mc0jIwvKQNVdUa7MjV1EcSSBjjUvy+M3tKtFAwbTl2mZViq2bM2qHNph3GAwsJaMtQ78blv4qdHoBKEj+tM6YBlxgnqiLZ0wZRdXEbS4siK1bHIY4z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YYpSxRfj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HREu3015007
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 03:51:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZIvhTGg/PtZD55HriLCLdOKV
	idFTqZ52LaSgqOaJPpA=; b=YYpSxRfjdZYDuUzVK+T24pH9t0rIRm/Jh1Nf9ElF
	fTwLhRVXnOt0bH4Ub8Shil2RRBgkWCCIuuMX6zX+/fEaxcOTb98azuNalY71oDHL
	dZzwjeItJiCk1BKH2xaW/d1cRJNFhD9mC42PDddVXOWRRb4Q47CoieIekb92D9eo
	eGIIrdZP4orb1VBcHDDfBw7lsTuntxR9CsuZkqx4vKf5kiteBc2Q0m7/u6kL4qOa
	dscyT3I34VLfnRyPU8XBWQbI8MPxjPEJ5PPyLAtzBWoz9GtNu1EMAXvKNxAK1q0z
	G/TI0R6bAIfBS+yp5rGbn1rUKHXLvBYzc7zy7jn5q34FDw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbunhq5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 03:51:57 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5f876bfe0so82289485a.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 20:51:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744257116; x=1744861916;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZIvhTGg/PtZD55HriLCLdOKVidFTqZ52LaSgqOaJPpA=;
        b=HAK9Aw3YVtkz6WW52bXY5vhQBP6yGcsSUbCn5C+p8i543MgGBHMOMWySpW/FJQssuX
         5JLICWBwupuUIHs62Os0+tIZUPYF/3RoqEdSg4yB9BDoqZOQuxBQunNlv1TU0ILD3uO7
         JPA/Rs+iCSWRx/10l9TOFpHjBZV4/7nTsstaL/DOAymJ+H7filT2HqiY/kHRJ+zsm5l0
         OqNRB/rp/GE1OBer+syIdNz83Ng7ZkvLKx+4+ZnCCOJ51ghyGO1DpwfdJV5Jmaj6Uluz
         jLBEb5uwN/7HbOW2h6nCpP5XhdUwQIIWz6B5TTB7INuweRPMHSVe+F6EKfxdSx60/LQh
         Pfpw==
X-Forwarded-Encrypted: i=1; AJvYcCWD02MAM6ZIguDV9/8lbfH+jdk8C+zu+iOEIqX/1bbnMbzdqKOyB4/1QVMaYLsNeDxVeJz0X6g5ims8@vger.kernel.org
X-Gm-Message-State: AOJu0YxzZHcbInUbrtjvmHlKZ1xll/sMm8iIbi//U1mnTYvdUkY85Kia
	plkZqR0ALnRoHdvqTftJDBZgNjxYKm4/2d79+fsbQVWX8VQF6CrwIQJF/rrdNzp+W2yR2Fub/S+
	TVGhJDrGTNdNGz97Ml3zUrOSsVy5ziauiw744qE5anZTAne7lsZNCfJa17nTq
X-Gm-Gg: ASbGncvOCmQCIvHlAlb5KY8SxfQ1KP+8sqDA4+pCqnyMZdCHDUCCGaBGPq6qB8uotDB
	wv0jO/S7WI9NvJBhqrsLPvLFBKSk1JNEUnpjWdQDZ5HOA/0BeywCJJljyiNfn5RWH9A19IcBrLh
	5sjYxEVIqqki/O0qFy3jXzBsBZEcBJBkokkc3OJlbMyThR4w5XnUSJMhEW7v/XIA3TGYVF/jD/K
	iTZPT0Oi2K/XFl4pFHx+zn0EBvDgLsPy1zJl51iSlViTLOqUeCyuf1+Lu0PfFrNawXmI+cahm+4
	sIxFTZSeLFakX3PX7kIZBtgAASixeUT6A+j4HLod86lJbg9fk2gIR5IVy5SPlRQzdn3fLqf9oLw
	=
X-Received: by 2002:a05:620a:430c:b0:7c5:562d:ccf8 with SMTP id af79cd13be357-7c7a7654791mr194628185a.8.1744257116368;
        Wed, 09 Apr 2025 20:51:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjUtZgiODqub0LOS4XW9ZoeqBCnVVTAHVxIcf7QAzzKM2/fq/RcPifjbgDnTwXsLNvS/I/cA==
X-Received: by 2002:a05:620a:430c:b0:7c5:562d:ccf8 with SMTP id af79cd13be357-7c7a7654791mr194626285a.8.1744257116020;
        Wed, 09 Apr 2025 20:51:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d510b73sm28262e87.185.2025.04.09.20.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 20:51:55 -0700 (PDT)
Date: Thu, 10 Apr 2025 06:51:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stone Zhang <quic_stonez@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_miaoqing@quicinc.com, quic_zhichen@quicinc.com,
        quic_yuzha@quicinc.com
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: qcs8300: add a PCIe port for
 WLAN
Message-ID: <47sed4fhrqqtjfa25hp2nenlcw5jn3s5ejcb4mw35agfmpol7y@cncy7tipi323>
References: <20250325075331.1662306-1-quic_stonez@quicinc.com>
 <20250325075331.1662306-2-quic_stonez@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250325075331.1662306-2-quic_stonez@quicinc.com>
X-Proofpoint-GUID: EJsaEK3FACZYapCUfQvy2tyyN8GddyLa
X-Proofpoint-ORIG-GUID: EJsaEK3FACZYapCUfQvy2tyyN8GddyLa
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f7405d cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=TBYT5JYlgfXD-NVwRcIA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=909 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504100027

On Tue, Mar 25, 2025 at 03:53:30PM +0800, Stone Zhang wrote:
> Add an original PCIe port for WLAN. This port will be
> referenced and supplemented by specific WLAN devices.
> 
> Signed-off-by: Stone Zhang <quic_stonez@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

