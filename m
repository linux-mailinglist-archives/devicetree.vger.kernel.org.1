Return-Path: <devicetree+bounces-158553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DCDA673AC
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:17:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5AC8E1731AD
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 12:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64AE8208983;
	Tue, 18 Mar 2025 12:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LQW8Mgan"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB68C1EB5FB
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742300275; cv=none; b=kykHYvOTL08w0ejVDbMlq+riBEzgA4nxrnZfu2IimLfpLa+odQBZP8g8aXvzt0KKE44cDRf4JKdb5ERYnYUknylSJwJlbvSgu+aEgAKvqHktQ1vbjbSbrPTSSzBefttn7u+BSu749H/I9GbhsMUlw5tisqwyzQRyN5U2hs2D1bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742300275; c=relaxed/simple;
	bh=mNRjA/pQf0vSzY+gbkMftRS4J/HTfpU0Q/49/04Xnsc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uMGxq1lTd+XWbDqBnH3+IxNRJxbhMt2EgCvFYRe++CWmyJo6Qt9BcHtTxUELTKZBt5m7NvpUKtALXcGdP0sDE4fUNcIxauchQU72ZcI/moj9tNFFfKvhYeVjtSEEh02yMrSEvQHpkZ63bBE+HfdwBgJNzot/aj4Lj4U5cTxZnuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LQW8Mgan; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IAbZ2o027206
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:17:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FaaCN1q/n3kjQfPqICNHxVDL
	1mCCzIPacgi5zEqisuI=; b=LQW8MganX/bSqJMTX80JL/g4gJtfrPh1JKfpjZ19
	q64aUn3bocVCCL0XROtkvcwFD2VAfY8AisoTQNcvodZh2bQOQ5RG7VQogsS45D8q
	OobdY3EFwWYqZAPv5ZD2k9IOmddEYWdsVt1EVLd2EEJHKEewEXyYNdxacuFQMH7q
	Ivq7XeWZvcAEoCxNnC5WztUEEsVrLa3lDVZ6V9FrtPdJkXKisYjTT/7F1G8PWy2v
	EXNZY6wTqohJU9Jk1UcQkRb/7aay3c30yrD3YGPlriTZwapbO+9cEvJiDevm4HoN
	IFcmG0etoCmLESBMAF475MfL2gAI1S/hBiKHdYnyEKPErg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exwthrcc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:17:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4766c80d57eso102789111cf.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:17:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742300272; x=1742905072;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FaaCN1q/n3kjQfPqICNHxVDL1mCCzIPacgi5zEqisuI=;
        b=KimCmgC25TbU4xyQVVFmFkWW/A1KpYW+hJhtBR+sddvBQ2jO9QRDtbfyeTFoJTNVXx
         JreOifB14bRz9cj0SKmB5uB7BPkcxnEae99xv9CR3DZXbUQjtHUEyMmUI6Ujo7CiOYYr
         mOHC0egGqRnFUsj1Q4l/W2wJICTAa+dvYOwSWNzJwGV75FvikmArDwGyQqvfqwHoLCRQ
         EQAWvVIIeKjaXKayuLxJcfLKotkAMpUBjF5nRQRaS3TEe0kGzSIbPlzXg6v4NPz7INx6
         wcr8eTihgMQHsyVU++JWSr1vQ/zHtcyc+e35LKkgHeLg61lxOBMLhFauBY6qVny3uoYA
         l7rw==
X-Forwarded-Encrypted: i=1; AJvYcCUl9hM0KTqssKwIRjuw8bcrfhaxEqC3h4QkB1mDRJJJ9BjmoKhgzzltcDb4vQwxOk05IqFH5cjcqYQh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8IFTwhFj1i2k8yR3MReMkjojX96P3aDGR49U5TSHJi9nRIjGs
	xzk737CEKiWo7odGiL+uclUq0eFnY0aaybXLKZZdI98XhFb2RN2RbP3Ru+KxGkencBophmpaoOp
	TrfR/DvEHNrJG+hHJ9buYmrO7QKLbvG+2WNSt5A9IHq+HWUmeXay4oo5SXbB4
X-Gm-Gg: ASbGncsp47w1+CxCQSRYPol/q7yYQr7wCAs0egg9D0K+NjQGB2b7TNSfAh0DRaNUxzb
	Ah9S/zvjSNayOdK3OMs1YG7xSndFGsD+J/2eYhME/aFiPPcJNsyQy5AyQf+dhj9wblgnJKEn0tW
	kxfryMIvWGvDeXrjhIZyoiGW2RxU69NmZnfSXyq6161+5DNaGyCfE/6sbS81D8JGsDQMqmBNtrs
	7JfkZt8ABnPFfMIZDO6xWDaXNYE/RWnHmaVCzEkpr4Sbd/XiVFIVd7Hkl4Fm/ZJ8XBVHZxUEd7T
	xRxIejAeOIevwukvGlak4VbljkQHzs5ANEPh0gfCdzahvM2LHj2LsR1dTlhR64YbhpRrqDrixtm
	s1xM=
X-Received: by 2002:a05:622a:453:b0:471:cdae:ac44 with SMTP id d75a77b69052e-476c81dfaf8mr248672381cf.47.1742300271831;
        Tue, 18 Mar 2025 05:17:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPpyCMBm/+FHacTciTYh4rtRvXfyv+VeST5ueZfSRLIXQQ10PAbp2U7DCjEI40J7DQsicDmQ==
X-Received: by 2002:a05:622a:453:b0:471:cdae:ac44 with SMTP id d75a77b69052e-476c81dfaf8mr248672001cf.47.1742300271483;
        Tue, 18 Mar 2025 05:17:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a9525sm1640499e87.238.2025.03.18.05.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 05:17:49 -0700 (PDT)
Date: Tue, 18 Mar 2025 14:17:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, Kumar Gala <galak@codeaurora.org>,
        Andy Gross <agross@codeaurora.org>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Andy Gross <andy.gross@linaro.org>, Georgi Djakov <djakov@kernel.org>,
        David Heidelberg <david@ixit.cz>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/9] dt-bindings: soc: qcom: add Smart Peripheral System
 Interrupt Controller
Message-ID: <fr2s2ndjzyd2z7m6bsztudyb74a7rdvunehb6qfu6ar3s3i7hf@x7fap3clhlbe>
References: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
 <20250317-fix-nexus-4-v1-3-655c52e2ad97@oss.qualcomm.com>
 <20250318-dandelion-aardwolf-of-radiance-695fd9@krzk-bin>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318-dandelion-aardwolf-of-radiance-695fd9@krzk-bin>
X-Proofpoint-GUID: jWfjRJcNsIdYXSQk9MT4JpkUuNFhQCBc
X-Proofpoint-ORIG-GUID: jWfjRJcNsIdYXSQk9MT4JpkUuNFhQCBc
X-Authority-Analysis: v=2.4 cv=UoJjN/wB c=1 sm=1 tr=0 ts=67d96471 cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=gEfo2CItAAAA:8 a=eq-DVYtN1lDvlgNQnWEA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=481
 phishscore=0 adultscore=0 clxscore=1015 spamscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180091

On Tue, Mar 18, 2025 at 08:56:46AM +0100, Krzysztof Kozlowski wrote:
> On Mon, Mar 17, 2025 at 07:44:38PM +0200, Dmitry Baryshkov wrote:
> > +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,sps-sic.yaml
> > @@ -0,0 +1,38 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/soc/qcom/qcom,sps-sic.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm Smart Peripheral System Interrupt Controller
> 
> Interrupt controller should have interrupt-cells. Or this is not
> interrupt controller...

Well, it is an interrupt controller, per the name of the block.

> 
> Anyway same comments as for previous patch.

Ack


-- 
With best wishes
Dmitry

