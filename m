Return-Path: <devicetree+bounces-180067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74179AC2887
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:23:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2EFAA477B5
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3593298257;
	Fri, 23 May 2025 17:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JxxUg6DM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1AE2980B6
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748020946; cv=none; b=lQO9YSWlxE9sdsV3jY8vQPwH3rsuCIENvtamoKLlMlVySyY3o3M4YyLgIKBu8OBKBnZ5UltBYYqR5Dr1KInItthMNw4Y9fWcjXeHL8OC/r4TzS8ynEZRLSB+MAWg5AE3fYWo/Fjff6M8TdyBVNcy6g04eIWFODXjsAH4ZOtFELc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748020946; c=relaxed/simple;
	bh=ciVfyX4hXuuw2wqjD9Sv4gEA8a9rO8kGTuisbQ01LOo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jvTE1ycoi3T7jSnMAy/Irzmnr7ZI83EdtUgCTMkIhofCK/A1Shekac/oCxKHcAo4EjXQSF0SHoVSpowOLVqZ+I5262mbeMSXAIJDNeIH5K3GcYMiXh3W64WWQ5tWRaD0iCZLOR7h3mxSIPR847C6OxfgBl4/h4zEDLOq+p6qqvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JxxUg6DM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NBKm9O020598
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:22:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uG3JqnGXG+GKZ5KgytOXKsg7
	GoHCQnfSuXFijLHgzo4=; b=JxxUg6DMCh9y+lYdqYpKLFpaqt8cdCay+Bga62Yz
	Dy1aqjKUUZcwZ3TqoQSyidpkCUPWXIJARJpQSUHySC2MvWMwx021wFPRbqJOSN0R
	YSoVYKhdn2nqwk2mz1DHIjwYFsLQ8bluEUBX6B7hjh5XSEKAV8L+9rJkb8op93Pz
	nax689/D+/fqv0rod4CgoSv9gkEMPcsbLrhzjGuu48jiNRVqlMeLwMIOW9JjbVok
	YyCvTU/l5CCaczqFn3xx6uJ06gSEqCvlCgzG3xCWpdVRZmSvhqN91veSGfXt+PMA
	XPprIcOc/F39PES2gMz7b38yq03imVpQv9m5G7IlOIEQag==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s9pb94ew-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:22:23 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7cd06c31ad6so182987885a.0
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:22:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748020942; x=1748625742;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uG3JqnGXG+GKZ5KgytOXKsg7GoHCQnfSuXFijLHgzo4=;
        b=aAsG/eeJ5+qvbSeuZa8ahGV5EdmQ0skgnubyspSlu3SCtovzIkQWRp8Y+3uUdwRzDy
         ly9fDNHXDZEjvQ44j7UzSOSF4T90XthBk6Y7W7qcVfugzmrv6OKbhBXUzlu2fbSwdW58
         WFDnMt9ouW15/ZFw16S9pK9dLN3dwl1bkwAvXH1Rhc867PykVlHd+P236RWywddqB/r2
         Cgg+nB3AOWfKQFEe5/vsV+/hRCx8VtyXsPFFPnUI8dfyUw9GEP1V2PiGMPeoNzTCmtSg
         RrGoainhtqMibAGvYP3eZy4DxQfeuQXnIkV+OEq0ttN+B8gaVvpC8+D/iwZNuL5DSUC3
         CE+g==
X-Forwarded-Encrypted: i=1; AJvYcCWOOzVPqhENnBjqszGVxgHQbK9mxhhcFaPp5Ijo+4ck6ybX96ebO1dvAenz61cbbHGj+HjPzwRYj0P+@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2KKewHd1yoMQhJ6jtzjLsgRQflGiBGRtquK8l9NTwtvhd3WUQ
	oELfB4z60lcx11scJDRr9jvPj+/PBNzm6k+Y6eKUrG2u+hDQuJNEY6+izc7bOXzAai3T0LkY0w0
	v8md5O2zAi1zPgzFIJcqqKmuvD1Y4QeIdr2HKY7fipoliZ6wPDHZdYFMRvSc4CUHC
X-Gm-Gg: ASbGncvoeUtM88uoqUmgyDvuAvJChyRKFF6yBRcwowdB7RA03gPVTQDe+3YSAg9pLeD
	7nCLMJBXoeHJzW5eazf1YMt1oPFU6SHbkUWHAr07lzcS6KQ7JPLqJ6nZptCcr5Soel9J7Z6HwSb
	pOJlFNvPsSOgyTVyZpsNNEGoPHgfLpebYdX4HYqdsM7QazgjVljlplseVh3OGk+qRbpwF/vRXcF
	U25ec/6g7NHXhEzcsNCWqAf/w/YBJeKRLMCwru+ROp5OtTKHsLLeRudfQ4uRm1nvEEblUVrCVBY
	bMKsevCccH4pCMlo2B+Gv3lSTKVWIT5rB/Y01nop/6QwShIEcIqyZe0SkC1AOLYKvM5WIC4+GiA
	=
X-Received: by 2002:ae9:e40f:0:b0:7ce:e8d6:37d7 with SMTP id af79cd13be357-7cee8d63898mr242633985a.4.1748020942719;
        Fri, 23 May 2025 10:22:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGb4AgEZ5EQJODwKjLBL6jIuNnzrRc6oSdGR9gV5lYbBxOO+Jvrxvhp+BmkpjZgFdzm38wzOw==
X-Received: by 2002:ae9:e40f:0:b0:7ce:e8d6:37d7 with SMTP id af79cd13be357-7cee8d63898mr242630985a.4.1748020942377;
        Fri, 23 May 2025 10:22:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084dc632sm36587211fa.54.2025.05.23.10.22.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 10:22:21 -0700 (PDT)
Date: Fri, 23 May 2025 20:22:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qrb5165-rb5-vision-mezzanine:
 remove camcc status property
Message-ID: <ls5rfmlqbu4n7tkbw2onpmd57t6yfxjmocccaqhpf65j3xowis@ryec2y2afbkx>
References: <20250523092313.2625421-1-vladimir.zapolskiy@linaro.org>
 <20250523092313.2625421-2-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523092313.2625421-2-vladimir.zapolskiy@linaro.org>
X-Authority-Analysis: v=2.4 cv=WJl/XmsR c=1 sm=1 tr=0 ts=6830aecf cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=PyysaQbSp7gYuLE0O40A:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: hKoYCkMTv81L6FAYj-_R0HsFlMSFMsvi
X-Proofpoint-GUID: hKoYCkMTv81L6FAYj-_R0HsFlMSFMsvi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE1OCBTYWx0ZWRfX4D+nK16anMsM
 /NN2r4oSTTzrQhEn4YZHcB7oIoe8HrawHFTfwfGBe/x8X0ohy7oksCXD3HbhhdhwLPVLK8qTeYH
 E0NAcAbfZ7CzBB0pph9JjOcL3Y9mJocH4HynuxHELD61mgdk93HAEsNCR+H/iQm3AzJ2D87ivZt
 hBWGRa/4RJXwTEuRTKhj72OWcpPvuEsx4ycn7pMpiQHwUjv3i6kTGNFoGG3hWg/ukPWl4h6nQ7s
 wolx15NNUmw1EqQoyeT74QCdSsN1CEX8MTDj0FFi+vO0B7Piz7r6LqB6LfBuFxPUPYOG4cn6Lzc
 E8vGG1ei9mgjzTH1wrw9vwIdyww37nEqZA1z76rfUQPi091JqFmWDmRcQHiFjRKnXdspUEBsNZg
 nIj/21TCphHMxQORPe8AT33iFL5Gd7gg3OOIWehmjqUFu3Gv6aw0FVjyDfoO6wkicYlbxx7q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 mlxscore=0 adultscore=0 phishscore=0
 mlxlogscore=724 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505230158

On Fri, May 23, 2025 at 12:23:13PM +0300, Vladimir Zapolskiy wrote:
> After a change enabling camera clock controller for all Qualcomm SM8250
> boards the explicit control of the clock controller status can be removed
> from the RB5 vision mezzanine dts overlay file.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso | 4 ----
>  1 file changed, 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

