Return-Path: <devicetree+bounces-255230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C4CD21760
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:53:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8B194301064D
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 21:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CDDA39B4AD;
	Wed, 14 Jan 2026 21:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cdg50+QP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GVVcLm8A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902DC3A7DFC
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768427581; cv=none; b=lurYdgYjq9dep1Cv4xgsychzKy8OcXGH7lBInwMIePvXnePUVdGWKeQaE91JzzU4CGWoDepAX6GmxWCYlRq+I1K0RWpEEA/NyflSNxtTekBsceSMpIFM3dr/8DXijPkxlZB3Tm57J42IU8ULchbJ9dMFdWSOWtdflzx0whfUOWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768427581; c=relaxed/simple;
	bh=UUEf5rAfbiLQj64m+WE8UuO45dPfSZfsIrkA+XZUuUM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rbPzCLWfNjKTTMDfGoaGSz+iILmivk9n3v8NZuoR2jTABz0H1k93g4TwGQ/YXg4Kd+br7lBbZmJDAx9svGD2F+tA0/87d4jI/P5hGfOk5FEoVcol7OYxt5y/T5JwajNsuPiJvSQns5tEE5L1C5PjHABBUCJNkEpx4QGWPmYqmO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cdg50+QP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GVVcLm8A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EIDdKN3460026
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:52:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mXXKzKH61dvsjX23qk92268u
	au0Rcf+1wCgw2oxpBt0=; b=cdg50+QPM2UrSJnw4EKTFZ3MBOQQXKj7y+xxhw4G
	4JwflThEcejK5TV+Tkd9/DpEqvG0tEwn7ztNiJYCVOtIgSwiuSse8aIjt4kkdFju
	bDdRaHfJHAoKIGCH6OAqhOM8q/rNOq/+6UY/qG1TpLQsJhMdyhyMwz63MaYfrszM
	kRvRs1/nPqPg0oydTKIxWwa8NsF9XjijNO4aWmdOeWAiBt7ZXau1+g85LEKS/poN
	jbO8y3k/pBras+4T3vfR5irCW+ZM+R0tTHBS2Aca9Qbec+ULNcbMV2H31oen0q/x
	66XHGmLbmgbgGBM2/IMBsYcQ3+sVIKJxOM8Z8+Z679mtYQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpg848jnq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:52:53 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8bc4493d315so77118585a.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768427573; x=1769032373; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mXXKzKH61dvsjX23qk92268uau0Rcf+1wCgw2oxpBt0=;
        b=GVVcLm8Aa6HW/dXriYyJ8TwpO+lmDTpAwYHhyswmfbXm2tkVESAtNOlu1+xDdbMbC9
         Q+yowDpYjpE8Yib2+VOkeICrcdZq5oNkr41I5uDyGp4r+ZmY2JsqaTjzunT7vHyHlU2i
         ATcrdbMw489s7UCJo9fL6iVZnd49LmkfX6ZWyVrWsAkfpzJt5JmyGb/vYPTO7ievi1IZ
         aROXh1sH3cz0LDQmfWCDjZmY+dt+ixsGbOMfuL9UWQRzRhAFHh8UsRAXF7/t0pql0m5U
         c7BQuUuJjPKtYkRPf2+R4gKv5OLH+3qCuPcfg5tzML1eWxaJpHpAnYxVrldUAKvAus8E
         SuyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768427573; x=1769032373;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mXXKzKH61dvsjX23qk92268uau0Rcf+1wCgw2oxpBt0=;
        b=Au1w/PjZW4q2JKIr0UdO6ZFQGGKoH2kukOd6To0q3cRsikwk8OTKXE2LS8iGRTVlRK
         JvJgUpoatCgAmd1TC21zjRCWbAJklIWvMLfIGZz3dUMTjdNdg3TWeOsOOQBMDA6WpS4y
         /uKJBeroRZh+tKLvLP3bbHE9kwUMYUeL4E7OlbpMhY/Rdnd89XfdXWmDCRlOzrww+G3T
         k3x2t5cF++LFlEmjD9ESPyUm2qEY5+rJP+n6zJBp84iL78gMhUB3mz8Hsd7FJ1lM+2qf
         4vQ5DZNvnZ1fNgEdBcyYA2HOC1RzJNvVPlM3D9TJ8oLCv4WlBmYiMiIw+uq+X951SGQS
         cTQg==
X-Forwarded-Encrypted: i=1; AJvYcCUx+DLPxLrRBImZ2hAZ8WDGMj88vSJa/O31ute/0UD1O3SGf8Khb4v0MhW0vcoJQVYMqw6J/iB5AjGQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxTdRvzYqh9cToKpvtdGUXCsQb4CO0HulHrTrcSqgZNHXfCrUdZ
	QZ7wmmF563jgP4v6IaBca+zPW/d5IFqhOPMuSqG2wSGfHN9ocGrfM5+rCrbdLTAmB+R1tu9Fh0C
	yZz0H8P4lwDhh5W5Dy0cVsyrr2i8iKhYUN5AU3/LXIx4zWZoI2ZIMBROzIvRWS/5o
X-Gm-Gg: AY/fxX55y9Xz7FZMEEZJKEBHU5Utu/ycoLgyxCsHf2YFC7fugwpcwMskfhiIu2Ih/SN
	ad8aWxu/ol+JOHPsRFROD1hZNq0AygH6p8BnrvrskeqNGD7QdB85bzJFhAvyKyE+K7UiY2sCP8I
	yDb1EAQUB91VBNTP9YdgTcN+0kKXkMH7me1KN1Fr9sgnfpcYsy6Sn8PyCY6HZwh8nXu24wsah0E
	E+z0cRaEVqYF/ZAvj95RnNbzlriwfmmnLxVXtrCp/BtQvaaLz12tDrgpyup/d2ug70xatMJeYGs
	I+WwV6NXY4k0JVJTSWVNHhq5+W5rHoxbY49J44upABLvtX3PWZWAQAdkHfkwCldfX9e0vO26Asb
	35u1b5gJeXgqJVWvc4VfOZRlhk3GQsN/njnDfe3lunGHZzrJvMuwesDZRswE8ObfJXTzlByA2td
	5mz6s8AKbhMekAsil2GclzbTs=
X-Received: by 2002:a05:620a:19a2:b0:8b2:ec5c:20cf with SMTP id af79cd13be357-8c52fb05526mr581401785a.9.1768427573010;
        Wed, 14 Jan 2026 13:52:53 -0800 (PST)
X-Received: by 2002:a05:620a:19a2:b0:8b2:ec5c:20cf with SMTP id af79cd13be357-8c52fb05526mr581398185a.9.1768427572535;
        Wed, 14 Jan 2026 13:52:52 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba102088bsm1061646e87.31.2026.01.14.13.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 13:52:50 -0800 (PST)
Date: Wed, 14 Jan 2026 23:52:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: Re: [PATCH v4 4/4] soc: qcom: pmic_glink: Add charger PDR service
 path and service name to client data
Message-ID: <4xmpzkerelzmetkobjw6y6okazwyipocrg74scfeoh4l3nd5qd@huhap5cwwlby>
References: <20260114211759.2740309-1-anjelique.melendez@oss.qualcomm.com>
 <20260114211759.2740309-5-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114211759.2740309-5-anjelique.melendez@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDE3OSBTYWx0ZWRfXzhWCkk+fQlk+
 a04va+ua0oIny3BcOy86n+4L2pGr3KeTlta0WL3i7JRfNL+fwDaKQu38t40mzcFJ68m14icPIZn
 n1RGvXgWrUakUOuNESGLXhPBKMOFLNkNv97T2ZlYkWFs4VxybMldKzfx5yAxq99iNfGIEXQx0BQ
 FIQg9ydCz6zq7yqmzZe70Z0lBcot4YUUt508m1s4bO4h1hGx/BeEr4OxgzgSnNBQR31NHSH6RFW
 Q5pOm/6PumWkg7lUaNeOIfIh6Kjn5uQ1XkshGuOZPZGCEoLNofowFdVx8J3vCmU7HNI5WF6uM9i
 VBoXZ63YV1c5ki+Vshznbd+d749Ms2VexglqPkf+BUAgBm9XsAm/dSL+ByvhdgmskGArRhJ8/ny
 +7aKuo1GiMnUMm1nAMUpUEtX9U067T7KrOSAuTXWhbQ0nmjh79kvQ9BUG5LZtlJZJtddmHWTCcJ
 +FyX7Xi0fVnW0s57P3w==
X-Authority-Analysis: v=2.4 cv=IO8PywvG c=1 sm=1 tr=0 ts=69681035 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ES-LWyGZB6HvuNGBYh8A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 2boWNRKjCz6rr-khf7zNnu2_8Jps8xt0
X-Proofpoint-ORIG-GUID: 2boWNRKjCz6rr-khf7zNnu2_8Jps8xt0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_06,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140179

On Wed, Jan 14, 2026 at 01:17:59PM -0800, Anjelique Melendez wrote:
> Currently, the charger PD service path and service name are hard coded
> however these paths are not guaranteed to be the same between SOCs. For
> example, on Kaanapali and Glymur, Charger FW runs on SOCCP(another subsystem)
> which does not have any specific charger PDs defined.
> 
> Define charger PDR service path and service name as client data so that
> each PMIC generation can properly define these paths.
> 
> While at it, add qcom,kaanapali-pmic-glink and qcom,glymur-pmic-glink
> compatible strings.
> 
> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> ---
>  drivers/soc/qcom/pmic_glink.c | 66 ++++++++++++++++++++++-------------
>  1 file changed, 42 insertions(+), 24 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

