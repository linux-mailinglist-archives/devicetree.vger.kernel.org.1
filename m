Return-Path: <devicetree+bounces-239382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 62041C643B5
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:59:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 1807328E7A
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89EDF2FF664;
	Mon, 17 Nov 2025 12:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YF5F/Q7F";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O8FYLKD3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B5724E4A8
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763384377; cv=none; b=lAvq1h56+N5fnbS3VLI2BcAQU99lt5+7PHCZ4oq8ioI6WthjL6FsmC0w2+bIxr/sHf0mFX/PLEE321/XmrYoaby3BSjkian6npiNSEKy80ya21k//ecUwbBPWDCI/FWSw74FsBJqkTNC+8m2NujSDhpIQ0R7DsEiCNAeT63r6oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763384377; c=relaxed/simple;
	bh=q9do/1ZhS4QMrOPP2+ib+hreTaowj5meGih6tEHF67M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jv4kokul37/IZ1xwnkzXl4zy3nl2M/TtYRdevdiFKPYKjtSfZ/G8PPKBtMnmQVHETOr34yPoYWIzBxpv0G4jESnZJNt497TVwdvwgy8aGze8wKTkqwfD9nbWbFQfGDx6FKBY+yUJYfCkFcW6O62k8CyGbaCqgyfaC+ZThH8cNS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YF5F/Q7F; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O8FYLKD3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHApkWl3920779
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:59:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2wBqwAqowlt5gdoPKzSt8gOue47EZ4DUPa251PXU7Ww=; b=YF5F/Q7Fs+Gxn51b
	5aELFM11Sek0/g+VcneEwqAQ5uwBoYB1sCRfkgFo1GJMYe3ES+HlJ5r8nOTvaEsn
	wdPL7rptXl0TGugVoUqB27zrwCaxQomX9njME1hDWQyo39ufVTdHeuKK/YVr3v+6
	a/71T/IIaP+AyWyNV/nS6rUmFq+wYTu+rjwFT2RDCmuWX666d/ll/4qltCByuMSA
	B+DUJxvyFwc784w6NnzwNnyohFrQhmZmAiMiY0cf9OrfE6X/kPIKJ8X9wrIdf/t1
	InGQLc5q98ug08XnHXZXn2OR4QgGaYc0/85q9MHKM3z+O2uOTbwujcCa9QFQNY2+
	kYrdDQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2ay8baw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:59:34 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4edde056714so5429611cf.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763384374; x=1763989174; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2wBqwAqowlt5gdoPKzSt8gOue47EZ4DUPa251PXU7Ww=;
        b=O8FYLKD3w56W5ZrKQMALsX0XCGvkqynLuxTQ+BwRb2ppezzhXpmFuqc+KoFOEdCsSe
         VtQZaNKc0/MKbeeRq5zuvPK2opoA8zvu38YwNS2PDJotOJFN/X2dQORUp2zzpkZDwqZQ
         ugrOMFE0d+6IdrRcw8fZv4nCa/86aW7PzD8XVo7WgD+rdZeZd6n+f/qZ/FBf559eAW87
         KD3VFv+8r/0UcwcbVW9O6E2DqVP7n1ysKxpZW3GYjTMwt6jzHhXGR+0LTq/g4I1I48Qb
         msZNTnaHJWnhXRXGG+Lo8AuXWKWDvOQbUftV+1GmkUdL/uJkahG+Gh7hpdPh7z5pkTlv
         T9Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763384374; x=1763989174;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2wBqwAqowlt5gdoPKzSt8gOue47EZ4DUPa251PXU7Ww=;
        b=OhXs6J8ljyGaloPvdlqu+xWoXyHzB0q32on6lQsRSBqKcetck//JxqBINmmqSvaMqT
         uWewVEELAqYDYc54otrADvayEuWVwtqZeh2mk3MXOs435j8Iqf3n7ol9/6zuX8oFDDEz
         mFjcv8mUCcMDz9J+LSnyFqTMAf62ySj8Gd9SmnMyw4zf5hHW5xAwPV7aZTREbu0wYIoE
         8LxYp4csDt/L3HdHEwWHeqOu+bc8hN6mT5yy75QoGo59Jm5uRvoNPNniTcH86onX/gMn
         9fmCVUhOuGsufzt2ibQjp+m6/X7XQGleOd3MfkxLv66/oMS0OOfhB3xggGRi2CxGz5nf
         5JKw==
X-Forwarded-Encrypted: i=1; AJvYcCVc6I6ocrgdieMITRFdolH7OUSbIpjI+Zf0p4YD4Y869qTD4lD9V7zvC8wLaXYAUA52hbCC/40dFs1e@vger.kernel.org
X-Gm-Message-State: AOJu0YzoYSRpN25w04TRKszzJveHVG4lobPfC0O6ToOrKJMpXIr4oZz2
	+eMADXImbLqAveV0wIRtEO4u4jVWnRDdxo/OGNowPQS7P6YIFJSC513yKiiMqrKPvUk2HWcIPnp
	pvwWbhF7T3Q9rbl9nu5KUFxkNkzplD63d+cLCdbBAp+VCae869C+HqofdbRfCLGBB
X-Gm-Gg: ASbGnct8/N5vtbnenxPKNM+UWXRvHECzMaV6/u8MVJr22eMTjrtTK91ED0yw2HrY3lu
	sciBOaMFBMR5yLbXXkjOGmh563VcxR5fHe5c6hjH0vvfAK5vrvyPZONJDHz20RAIj0S9KJAK9Hd
	1hz2st7c9cyRuXIAuRhg3hR4tHYO2+pB36nZCAGiJR8dFgTnE3jmq3zswxJdZlC6S4LFihHPPTB
	qavBgQuSroVYTJ8YpvIl6NZN5Zo9jVJSBCA+vm0fNyJB2L6DwhwuAWLwXbdLmtFnvMH6KNeYT8D
	FAIR57MP8sCszFoHJXIrNlsl1sf6aZcaLZk1k7RvJDo+qtwjniHQBcatjmqcwbfG0Ve9G1723gA
	Uz8ahXS408FbLwsgWtk0/uqq+HMbIPTJb3nZvVB0boc4/6Ohujsl2GVdK
X-Received: by 2002:a05:622a:508:b0:4ee:2339:a056 with SMTP id d75a77b69052e-4ee2339a1b0mr23147601cf.2.1763384373738;
        Mon, 17 Nov 2025 04:59:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHMoEnycdD3w70U1NmIvIEUXmP2lG17YpfSEEGfj8P8nU+BACdCGVpPpkv0IHj5+BPfSRPqiA==
X-Received: by 2002:a05:622a:508:b0:4ee:2339:a056 with SMTP id d75a77b69052e-4ee2339a1b0mr23147411cf.2.1763384373244;
        Mon, 17 Nov 2025 04:59:33 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fa81172sm1066827766b.15.2025.11.17.04.59.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 04:59:32 -0800 (PST)
Message-ID: <378c611b-f8c6-4f89-a3b3-6d8c22445e83@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 13:59:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: x1e80100-vivobook-s15: add
 charge limit nvmem
To: maud_spierings@hotmail.com, Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20251116-asus_usbc_dp-v2-0-cc8f51136c9f@hotmail.com>
 <20251116-asus_usbc_dp-v2-5-cc8f51136c9f@hotmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251116-asus_usbc_dp-v2-5-cc8f51136c9f@hotmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dL2rWeZb c=1 sm=1 tr=0 ts=691b1c36 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=69EAbJreAAAA:8 a=ucDlCoAaIB5v6D95Jc0A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: 12h6uMI5DDAkI8lwV8nP_Xl3bgiYTfug
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDExMCBTYWx0ZWRfX0LsGHGGcad3V
 2AzaweF5YET87KqsHTD+KpqDFZd8ReCBIZpwYR6awQIJOi5cbhieyeQqudDKipphyP/vwe2/9pq
 RLKdzIgMMWXgBOSmXVWTv8cI8PHOhJZc8jcHYYz2eAnC5shGYru7dl5HRIbFruXjKyaCfdvTk70
 h2oPRf7c2rTWoe+5wNqy4+0qIVeqNSKLGMGdLcxMtFNEMkyny5uKK+2PjKnihxprtvz3UP5h0HJ
 CAGn9EjsiduTxgLseyOOxhUA7kwrxy9wluEpAAtO32P+wGR26xv9PLOEGSf9hutIyZHQHKQQ9fk
 niggU5jBNCudo26YWk20h61PFPqU1Go/DP461IwCf+2I7SSX4u6DMTPqAaa4gENJW7AWW7zax3z
 sNNJfgLLDPwPUZZvMi8MPdhRdVwRxw==
X-Proofpoint-ORIG-GUID: 12h6uMI5DDAkI8lwV8nP_Xl3bgiYTfug
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 suspectscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170110

On 11/16/25 11:52 AM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> Add nvmem cells for getting charge control thresholds if they have
> been set previously.
> 
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---

Have you verified that e.g.

connecting the charger
setting the charge threshold
rebooting to windows
rebooting to windows once more for good measure
rebooting to linux

still has the settings persist?

Konrad

