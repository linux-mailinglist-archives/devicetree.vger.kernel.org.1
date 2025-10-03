Return-Path: <devicetree+bounces-223566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E09DBB7FD0
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 21:37:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7F7A64E1E5F
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 19:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F615221540;
	Fri,  3 Oct 2025 19:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bq6WpBaF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C24175BF
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 19:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759520265; cv=none; b=n+TAMNTnCU2JNGS/Y56Q/7us8Ag0x5yS2bO2CgLK88AbNY9g8XPA2evUF4rXWxXJxNRELOPOhkUp/rJ07HOUnukWIDrdw+5xRELybMrbD9zg6XWpF+TuZ9xfsXxPLylStj++zwu/cZQkQCdY2IT/ynzGXFAhYi2sl6o4cz71n1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759520265; c=relaxed/simple;
	bh=L6p/x9voTECqLfOdeh8AIPH6YGnYNQuYZvz+8csEnOI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YtlB1BQYTU0ssMH18aLBEIxEy7jMON0H7gUaEScoB2diPTL3o1IbuALiSajSrPgGBRx2KmR5gISQNPc5xvcr8OLRX0OTUv4H6CGS3UFARFU0No97ntZVAUMFqNjS8QzNMkjQYwqC+03RUllVNHukIcelVbHjd/p1bo4Or6AonPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bq6WpBaF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593B2e5A032113
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 19:37:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OFUrlQLsepMyX0Jz/227i1kP
	IOkJPXkGhpbqceCOZDM=; b=bq6WpBaFk+06wBJwEH0qnWtIXDM7XynAj2EhI00p
	0F0yQKrOjKuG2uD9IJDjX3fBHiA/AaKQV+r8JNIpbKckfk8TYGxHkbyXxHFD1TQQ
	w+hr0slZQ0fTTFBO+3SkLT43KmmQKQFz2paiI0SRuA6ap1+BGolkskmA4+IjF/3M
	R6pzz/sdzb4rcHEmX3yjh6TK2T3RH4kNuVQLCp4qzO9qa6HbKYatKVTiieMWl2HA
	X0vwvwlKecuiNMH7e2u1y+3lScRfaLlQ/4Bm0+/OihQTqQ/J3L9Elig2wr1mH7Fw
	6q310s/SQgoSlUVmROT43PxGwKt/UW2Cejt1kDRi00ksbQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x63xnx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 19:37:42 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-792f273fd58so47838706d6.0
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 12:37:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759520262; x=1760125062;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OFUrlQLsepMyX0Jz/227i1kPIOkJPXkGhpbqceCOZDM=;
        b=i/6BIgbtcAwgmJUh6ENWyxR1mbOyb+UI6QBxWdVhdB+hmZ/WHkdRl8KDZgixLeX9+R
         m/EOzObKbqktiqh7Tgg0SW+DSs1QiIjaCc8/BYbDMINYVYhPasoAIj4174/itHENJZau
         PM5rVRsfv/We4p0sQZTL3nKuH3aaT3cFczEahwW+rHXoS9PYukeTN/KannGbKt2MkFam
         k5ubAAo+Jyq33qvBOssoRhuCfAQItewySYOSTxf0NgKqLJdD+ENC7+w32tEg3hBSyL5b
         eMciaD1gxOZIeIQRG/eZGnSqazEgvLIU3FgGC9BvcPxABfMssRWmzT1r04NWzAL7v1DV
         io7w==
X-Forwarded-Encrypted: i=1; AJvYcCW23fDPDVZ9pb4B/TWxrdk1i1YX1yVr1aCGRUaXPD8fbqJH/+9+r1Dhd63PTslFA+FCp2LQGtOY60xk@vger.kernel.org
X-Gm-Message-State: AOJu0YyUsKPw/BrzCn+goJPL796nt2dcEWWTu2ZApnzaXNzY+eJoXYKI
	4eT8W1+GNO7WlgdKz3ipns0POmNKmlk+G05S6kYs/P3tJI402oV/Qcmdquo0MKUXdshwvtdiJJi
	v1OBYVKWcEHcZnPYIeQK2giQ1Fs30f7Y2wcg26BH2cZiPfX5zazOYD1Da8RqLFz8P
X-Gm-Gg: ASbGnctpvdsfbelgutd9F8ROzU3k9iMsFEc8SFGV9lXaTqcvg7TfBKVSCWNlQpDgBuh
	dGu4ojw0OxFfG5QutQZb3meKYwyVZNI5A6VOPapKBw5EDaRglmTG5XnPGNJ++hVMqWcRQtXhlnQ
	4se6mUpOhQyN/8XLyZpD3T4qYIJVNIW3M2arMIK0yQU9NSZLs3AuEaVnFdBxdGvG+Cit1eLV7Bf
	ar+ATIIv0Qwsr2OMK6JMc97pTCGkVc2CNGmcMNxbYw7KQ6JJNQtIwIz5wEkbsM6CjlrRNLDYu3T
	26Uaw/K9xErwvkSRAd9HIKy0vcIVpPTy1mItE7j6f/xEYmojfprEzOyosFyBN+gRs7u2/rd+WwI
	dS7jzhKigVKf+QK0v0TYwa/9+TvLpkAkCsdtAmOOBHf4nHXzhqvpbaS0COg==
X-Received: by 2002:ac8:5fc4:0:b0:4da:207:f0f8 with SMTP id d75a77b69052e-4e576a418f6mr52319061cf.11.1759520261976;
        Fri, 03 Oct 2025 12:37:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJeAynDi2ixAidT7oxs33QpSn6Idl2n/OrcQ46tde8eNgyX5FczSTYJrNB/bEEPlCldm/kew==
X-Received: by 2002:ac8:5fc4:0:b0:4da:207:f0f8 with SMTP id d75a77b69052e-4e576a418f6mr52318751cf.11.1759520261512;
        Fri, 03 Oct 2025 12:37:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01135a82sm2103189e87.39.2025.10.03.12.37.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 12:37:38 -0700 (PDT)
Date: Fri, 3 Oct 2025 22:37:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>
Subject: Re: [PATCH v2 2/3] clk: qcom: gcc-x1e80100: Add missing USB4
 clocks/resets
Message-ID: <rdmpmfvspa6kjmwedpouy2nndl6okdrb7q2eenvcvpnnk67wp5@56fxgwfc5t5w>
References: <20251003-topic-hamoa_gcc_usb4-v2-0-61d27a14ee65@oss.qualcomm.com>
 <20251003-topic-hamoa_gcc_usb4-v2-2-61d27a14ee65@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251003-topic-hamoa_gcc_usb4-v2-2-61d27a14ee65@oss.qualcomm.com>
X-Proofpoint-GUID: rK2G5K6XAh2K16zSO-dI5pA_SgoKnLni
X-Proofpoint-ORIG-GUID: rK2G5K6XAh2K16zSO-dI5pA_SgoKnLni
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68e02607 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=vYJjhQUXXu9twL9fmf8A:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX7waO2mUePI+/
 i1UbgMG6oQEky3AwOgeaivOVETGrh7gBXg9bb/3TQOpxNfG1x2farrjn134V+jAMcuvn8mec2eP
 HV46ZI0Frboub8bBC445MVhAi/j3Zje7j3lNstgRNAHlrDERUPGwqqVSxuQ52r79MiB9M7zgWfz
 DNdv48mN4XyHNWZIC99NwHKBSHcTHjZ3/B3JIoBzVQR4oZN1PYtwOqADTJbSB+HbaZYhlenbxzJ
 GaHl2ohOgX9N9mDkAIGhXAFKx8k/sTiR44/9BGGf5GaLThTa/VxegVtKbloE+hGoZ6FGH/OyFzz
 yIndpu0HtAqYeAdASz8N12KBvZ5P9UL19xk/d7hXxwiHgJ9mkeBmabV3rZ6K2rumI12DNGh5+2H
 ZJGTwOa/jmur33v3wwniOvcbkYYnag==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_06,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018

On Fri, Oct 03, 2025 at 08:14:39PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Currently, some of the USB4 clocks/resets are described, but not all
> of the back-end muxes are present. Configuring them properly is
> necessary for proper operation of the hardware.
> 
> Add all the resets & muxes and wire up any unaccounted USB4 clock paths.
> 
> Fixes: 161b7c401f4b ("clk: qcom: Add Global Clock controller (GCC) driver for X1E80100")
> Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/gcc-x1e80100.c | 698 +++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 681 insertions(+), 17 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

