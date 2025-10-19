Return-Path: <devicetree+bounces-228512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD6ABEE7F1
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 16:56:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1FE804EE1E8
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 14:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 614232ED86E;
	Sun, 19 Oct 2025 14:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eVrfCPYb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27C32D0610
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 14:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760885623; cv=none; b=WlzmSQprqnWVCO2SKOFxXwZY5qudSKTDEaEguw2zfT3qwQs6dOetOmCD7kFdIYdnbcmjqLFaegNM3OvBJSn4pHwOc9VbaTDhZcZjm2sRwVVDXEtg7tPoWfMsh02F5xje0liiuEZj/oGa+yLBgZFeZhv3+8S1qRJtkh96vkg0ock=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760885623; c=relaxed/simple;
	bh=v+DNIJKC7LVTEFir6s+qL5nG6oYv9UZBgPlGapUsziw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J7kVaD8NrY78EaxBQUlKsbQJOMb7Ko2hfydlTJhtcSVM8bppxLs6MfkH9XFHIsheVrWMM+6nCSJPHJ8vWYm4veB6kFgGJorQCLoiKRpxzRPM+4GD5+E5ais5RgCS7i27CJ1Rgf8JA/Nykc7webWu4mvNJxSPdDyPsZMd35J01bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eVrfCPYb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JD0GsR009291
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 14:53:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=A24maVFATESsTlySoqTQhxy7
	kngNIH/LwnVSqaac+uw=; b=eVrfCPYbRz/fMbWC1ppsBPH4Sgwf2vftsGKpSwmO
	R4loZ0N2FOSYWhCh7NTUmxYRXVc8Z9G36vfEe7TOSSCU/1L17yGoQK5e3TEgt+o0
	AZisXhWb1r94l1v5nMqv7PhgjQxU0bIQ/S00TfIFD+KSYZscHV2sIACHOJkxQKh+
	JWkEbrC2hyDDrGGCxBB+W/uNwwQ31lhNr+al72GgxRxnSPRB/pNCe1/GlfVcui74
	CWdIdCIy7RNztMGx38Puib7dGhw4q/uv2AROR/SmpLSBrAjGUyCOFyRy5V6Q5niB
	kZxgOzViuCge83M9615W6VISstmn7wyaMd5IvgLxHiM+QQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3982g4g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 14:53:40 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-87a0e9be970so131056736d6.3
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 07:53:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760885620; x=1761490420;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A24maVFATESsTlySoqTQhxy7kngNIH/LwnVSqaac+uw=;
        b=qFPn4SUPOR8XPQtwPMmoLznlaHDAMgXUhpiFXPa/vLobqXDeweVR7Ecv1C2UYGZf+m
         hGMJL+yG7J6YRtiUraf5nW0DtHlu+TVzYNTtkUaRIuQ+h4pHq8qRDbUEiHh8hWmcb9EX
         avdmRbcUOmyDVKqi6TTra7Wj7EeerEgTkQlHhOFzNEpTu4HS58MVs7J9EQGcIJ0Atosl
         TSfj1IAZSPtPiRSBiLTlsMuf93RBgwDffN7CJTIGYTm6aGSe9nrkXctMbSSwSNb+aSYU
         tIPaIjjco8tu+nYT0x0IlWE+xCI3KGLK1+SfQ6X1FefAV+TD5xa3Rma5sHAFlRDiwzHd
         +zrw==
X-Forwarded-Encrypted: i=1; AJvYcCXGlGNi9de8aSFQe5nMFVglFtTIZJE0G3bc76vt2A4oM4JJpJAODVQnz8fyVUuQlRjamaJGtJFhPGcN@vger.kernel.org
X-Gm-Message-State: AOJu0YxKaF4sKEDLMHZOdMJeG07nnFCGoNwDSMiRdrPWgp3HhK8w8Ewn
	5GbS4REqCLUW8RarTLLOIFNXI7Vbv8z1KxbDxssub8d+G71EdUNpaBHZpNsg2oU9JiVnK5qNsrf
	2FCuIbv7R7bsEH8sc6WCM6RKDPab47NFEZRa5OBy+Q7bnLbykj+6EoQgZd9AxoHSK
X-Gm-Gg: ASbGnctbTHN0ZjSVKrttwGaMHp7Wn+y6acNOnGumH51jyNrESh8/nP6Mr8w/vA2ikYh
	vKtwsVTCfsxsy31t3p9bnxFVGkuwsqT+pXJqOtyrXiN4MxhjTQTnLStDlX/ULJPh6RpT6ru8B7O
	cmcf89p9xfm/xfGUCrvfGMKkTZioQgi/jqvmXsVTYxmrNRrPI2oyHD6kwOpDhXRNJGJLJXiza3N
	ZHVRUSnwVU5ILfPb5VffNPTLubrM/GkzGvw55cXcMk5/2uxitls/7Vk2jnRqqEVYf3fJWSj7F0i
	Ge2p4HVMJLc5DOfZFGl56D8JEYIS4NKo5acOwLgYbmEZtc+nL8v+SpDO6Ic8JLta0uBRxwtLLUc
	2luMtdEviuY9QpYM6+7pC5O6nlWpyTyDttM+R187aMQ5ovW+bEL5MXW20Tbq2L1+8Xdg5JgzO6Y
	bSsCJtmOxhgUo=
X-Received: by 2002:ac8:5710:0:b0:4e0:24c5:5137 with SMTP id d75a77b69052e-4e89d3627e4mr138238621cf.51.1760885619630;
        Sun, 19 Oct 2025 07:53:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHly3/EfmiSEOivc1I/hknQKtS52LSHutywrccRSqCRSmyWqUn16HN5RNyUGYetTlLKDXSZhA==
X-Received: by 2002:ac8:5710:0:b0:4e0:24c5:5137 with SMTP id d75a77b69052e-4e89d3627e4mr138238361cf.51.1760885619115;
        Sun, 19 Oct 2025 07:53:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-377a95789f1sm13418781fa.41.2025.10.19.07.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 07:53:38 -0700 (PDT)
Date: Sun, 19 Oct 2025 17:53:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: David Heidelberg <david@ixit.cz>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Amit Pundir <amit.pundir@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Joel Selvaraj <foss@joelselvaraj.com>,
        Sumit Semwal <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add support for Pixel 3 and Pixel
 3 XL
Message-ID: <r6icx36qpns6sf6btjtjssmjsmkmcvtgq4jyo5yeiect5j6tlu@pe6kfmdaxlbh>
References: <20251005-pixel-3-v1-0-ab8b85f6133f@ixit.cz>
 <20251005-pixel-3-v1-2-ab8b85f6133f@ixit.cz>
 <n4xims4y5sssqxkchg2tikc7idkzds5ru7ayidcgxdfx77je2d@qo34qucbebnn>
 <a5da8d40-f194-4fed-9118-037bd39ebe2e@ixit.cz>
 <st7oizyyih3fnsi7jgcp47pl7s6n3gz2rdcv7iryftol3bqvxk@buam77hiqnl6>
 <1eff5dd7-5229-4ee3-9856-ae61b4c82f9d@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1eff5dd7-5229-4ee3-9856-ae61b4c82f9d@ixit.cz>
X-Authority-Analysis: v=2.4 cv=KcvfcAYD c=1 sm=1 tr=0 ts=68f4fb74 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8
 a=hOZ6dJPvPovaWAsPY_MA:9 a=CjuIK1q_8ugA:10 a=dK5gKXOJidcA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyNSBTYWx0ZWRfXyZMxTZv1FnSe
 PNcSlr2i69uwXCd7FZnDsrZTxjVr6a8VNJW+ltHa66eUV7YDRyai5NphdMZsOP1WwDiTdtypUjg
 Dsws5IyBmbXHLxbXoEllSMTESG5FgrFt+dxGu9XHWOn/efCPyiiLjPOgAQDlPyTebwOnOc7gpOk
 Z+W+V+VT/JbcP2TLTGSiCSxsivLoBplf9Ap/2U+iskIssAx5XatcXrRjqIhNyY2y3mQ43dUf8wv
 fTWak2mErnuwCr0EJkJHxZJWLmcEiKJ2gwzFhVzf0TJxykc0+ULh6A6qWBCVv4FCNPQ+1p7rDCe
 dFS213GTBq5B9+fEf/rOKoDGkcFuQdRdLsbvwZoVZ8xjUZdgan25jiwZQAM9fUVGZuKwPXbg+VJ
 HUv5qaTRJSRNyCRhFKyW5uPLqqxN5A==
X-Proofpoint-GUID: 8-DvMk7--vXiDOWB1T0TTciMBAdx-Ew7
X-Proofpoint-ORIG-GUID: 8-DvMk7--vXiDOWB1T0TTciMBAdx-Ew7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180025

On Sun, Oct 19, 2025 at 03:02:36PM +0200, David Heidelberg wrote:
> On 19/10/2025 13:51, Dmitry Baryshkov wrote:
> > On Fri, Oct 17, 2025 at 06:59:14PM +0200, David Heidelberg wrote:
> > > On 06/10/2025 00:03, Dmitry Baryshkov wrote:
> > > > On Sun, Oct 05, 2025 at 03:16:29PM +0200, David Heidelberg via B4 Relay wrote:
> > > > > From: David Heidelberg <david@ixit.cz>
> > > > > 
> > > > > This adds initial device tree support for the following phones:
> > > > > 
> > > > >    - Google Pixel 3 (blueline)
> > > > >    - Google Pixel 3 XL (crosshatch)
> > > > 
> > > > Great to finally see it being submitted!
> > > > 
> > > > > 
> > > > > Both phone boards use the same identifiers and differ only slightly
> > > > > in their connected peripherals.
> > > > > 
> > > > > Supported functionality includes:
> > > > >    - Debug UART
> > > > >    - UFS
> > > > >    - Charger
> > > > >    - USB-C (peripheral mode)
> > > > >    - Display (Pixel 3 only)
> > > > 
> > > > No remoteprocs / IPA / GPU / Venus / WiFi / BT? The firmware is
> > > > accessible to download from Google and it can be further repackaged (but
> > > > not redistributed). See [1], [2].
> > > > 
> > > > The phones share all firmware except for the bdwlan, so hopefully you
> > > > can add 'Google/blueline/foo.mbn' to the common file.
> > > 
> > > Would it be acceptable to use path format qcom/sdm845/$codename/ e.g.
> > > qcom/sdm845/blueline as it's used elsewhere?
> > 
> > We have settled on qcom/SoC/Vendor/device/ long ago. Could you please
> > follow? All upstream Qualcomm devices follow this approach.
> 
> Sure, in next version it's done! Would you be open if I sent changes to the
> existing firmware paths for sdm845 firmwares?

Yes, please.

> 
> Thank you
> 
> > 
> > bdwlan should be sent to ath10k ML:
> > https://wireless.docs.kernel.org/en/latest/en/users/drivers/ath10k/boardfiles.html
> > 
> > > As I'm looking at the Google scripts, I assume both blueline/crosshatch use
> > > same firmware (which makes sense, as only the battery and display is
> > > different).
> > > 
> > > David
> > > 
> > 
> 
> -- 
> David Heidelberg
> 

-- 
With best wishes
Dmitry

