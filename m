Return-Path: <devicetree+bounces-178412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A670ABBBB8
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 12:59:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E66487A8DEA
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1070C276022;
	Mon, 19 May 2025 10:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ofkjOmZE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CE12750F5
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747652337; cv=none; b=G3CLyIxEntKq1pGlx4nobM8ZBxgDr31xltEHvAlylDnwTrJA4uhfZdOJfGkOyiOo2A8x+yBQJ66O8FMu/tQgkse1XAePLyc7sf9nTHJ6DSC6rupG34N6ryWwAfPjm5puo9iCcoGpmAposEClxd+cQBZ4/mhTJZPhFvkEweMM6jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747652337; c=relaxed/simple;
	bh=Skbd065aT0ZHQcN9uGka7V6r73b5ykLWPWeCTpFhdBE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CCOiDoXjzrAvZxxvd8ZbfG2U2TPuIZn0fy7vfcmmCztuhaTauk6CxR1Sohzu/R1nkiRCM+0JTK7talELC4GXz3zRpI9Xzn9+5IsyaY2f1FHV7a1GOEPJKT3C4g+Vr6/MB8wo2YN4qGzrT3Rwqei6NtN/ECST+WnUF7uKmyfhNoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ofkjOmZE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J9Ht4v026316
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:58:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UZZqo/joJUMTmddqZvrzyvK+OoeIHz4Jyy9kaXceNaA=; b=ofkjOmZErSlLIt1d
	mCkbYMVN6TGC+Zeeyp/dr2vOSNDHi5I7gYcJ4gAq4tHof7zmYPf/F4bkCN55suW3
	J3wsTvqI51Br/tQ/yLNYFwBYY49E3FX6M011ogCt7V0fFUsW3oSE2g2L50UfoLgz
	8hNaw9OjXQANs8i2P7IgxiDYqXK6+GhLFmz7arXhtKvbNAhv+ccPDtGSOk8xIsyi
	H/ufduINiGxfqdaiAQEBb/0jbg5jWEI/Tu1x0sXE7CdsbWmhTOTsOdtSSttFbV5s
	6MMsK4noJhOoArE2iKWgOvtgxiqGaEAsJ3Y5IFRZCiWnvoCYVPk04YxG6d93OzAs
	c1AF9Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjnym4g2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:58:55 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f8d4461e7bso10581376d6.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 03:58:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747652334; x=1748257134;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UZZqo/joJUMTmddqZvrzyvK+OoeIHz4Jyy9kaXceNaA=;
        b=Yq6yG1wzplyp8WSXbMZvxHdu0rDw9PqMsQvs+K7Zg0/28yFyKxT2ArOsMqihpD0eMj
         qAatu5EHltz1P0AtLrh5Ggy48A/I3xHEGLqRmXtsw6L/mbO+9UuVyCN7VfRz4hvrN5OB
         iZJCV/wyPo5BYTaMuqNuRXeNcedOOB2Yrnt5SG9V3x72cP2goitx1WWXuey+ejxP+aY4
         yDeMdYWJb2DSavYUQ1kcutIVIHth9iYgNTpgZF7EW7/Ym3kwh2KRBTtpXXvVNEC74WyO
         lw7EobMptyDxVQk9FqsVF1QX2Y+nIrBrBJq+V6kJX9bdQfWE3ltgrwyw0sF2+BPOSR2X
         oQxw==
X-Forwarded-Encrypted: i=1; AJvYcCWVxNW0/5nioKBCyqldJv0E2HQeM1fsF5oWckF3vo0gScWbpaWMCVn+owoSMZ1jTR01+uS4cK8ksfBr@vger.kernel.org
X-Gm-Message-State: AOJu0YysnGJOglYPtLbxPIaLZtcUsOhikqMBzKwme4320ItPqMjoKyJ/
	zxC5d/lHvsyTGCoA2VRPchtWhsFecrvMV13c28QscmjC7PGag5hz1dh88xq6YI0LvreJ4sTpio2
	s7yJdtrK/imGpIqRKn3wqdytQR6b7tgT6MA/s7HBAo+A2ITfN7wBLB8r51BpBXUR2
X-Gm-Gg: ASbGncuCoyzKcsB1/yJYnxmBvQ1FT3fa8JXPtnEJxEI1mZ1hFGXF8ZglTL1wuJ1Ly5e
	2T7HSrnq/WJn2dPy6YL3nIl53BJcQWMm6w+0U63YzWzo7x5KfNLdOM5Ur/IGwCwAHK4SWLn7n9K
	YsVVRWEVyQkjyF3I2oI5xyFRDsyiin1+fdHYbLs603TW2hZ33DL03TKMbu8wlwN+f1vgxMk2inM
	UkyPF4+S8yinpLAFwV1AGfrM1QwtrRm0RMVrMHvytvu9yLaSeIGr0gd+1vi8pgqyIIAxZrwT81c
	coEdXBK6sKA/tZZt5LuaIOzYU5ztbMLJVy3wqHDSOo771P6lTB78f4ctDxT7eMOsBS2zV8gn/Y/
	mnOs++FWDMJLg+/VGE33ib+7k
X-Received: by 2002:ad4:5f8e:0:b0:6f2:b551:a65 with SMTP id 6a1803df08f44-6f8b094f396mr220669926d6.38.1747652334332;
        Mon, 19 May 2025 03:58:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9NmA4hTkaWiWt1DG/4qc7GE2Tx99AjTx/JlvVe7S5Gwt2EQWgtvBoTnNLcaq/78n2BYfQyQ==
X-Received: by 2002:ad4:5f8e:0:b0:6f2:b551:a65 with SMTP id 6a1803df08f44-6f8b094f396mr220669566d6.38.1747652333886;
        Mon, 19 May 2025 03:58:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f314a2sm1801140e87.77.2025.05.19.03.58.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 03:58:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Robert Foss <rfoss@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Rohit Agarwal <quic_rohiagar@quicinc.com>,
        Kyle Deng <quic_chunkaid@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-usb@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 00/11] Various dt-bindings fixes
Date: Mon, 19 May 2025 13:58:37 +0300
Message-Id: <174637445759.1385605.15383087742490646226.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
References: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDEwNCBTYWx0ZWRfX0e7vXPLOCTmm
 HOTg9vsaFtLoHHP7GtODvY25Lb/sJmVwhh0GN3ccsMIuIEyq9iornFmZ6UhytmTOS9pdF9sUWVG
 9El7TT8dKIrsPoNF+XSL1b/5/CjLj0EIYdiMkIPj4/h0wN8kl2nW0XvWKBgyAq9Mdv27i4Ev7fz
 yqhSBvIJEoIwas30OmHUHO2FQCiMG12tp0RDFZumCl5ctiDISOAxAvC1Im1DV3I8hBCIDaiCTW2
 YqVp2RbsHPS3Ofbxlif8DFE//FBTkmEkYj+AJjeh+dYy0LyydNqGKBvb0RMS+dNCl7LLAI4j5fJ
 desFK0aTXzXqAtDjis+XHTVWRbDz7vk6ZItdAIJtAf82j7PLDUED9Yzr4toiN0hoMn6SmrQKbjU
 oPZ4fTyUtx1RpBZBnB3uCFCQPtvZXhVfacZcwZvZ9pI0VyiGTJzTSglsn7C3mfIJJFcDU7TT
X-Authority-Analysis: v=2.4 cv=Z9XsHGRA c=1 sm=1 tr=0 ts=682b0eef cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8 a=AprTATsQUE9CPNEuHX8A:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: vWUv76NLBB6PxZ41mK5ncZBEq9NEriKr
X-Proofpoint-ORIG-GUID: vWUv76NLBB6PxZ41mK5ncZBEq9NEriKr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=802 mlxscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190104


On Thu, 06 Mar 2025 19:11:12 +0100, Konrad Dybcio wrote:
> A set of not quite related bindings warnings fixes.
> 
> 

Applied, thanks!

[02/11] dt-bindings: display: msm: sm8350-mdss: Describe the CPU-CFG icc path
        https://gitlab.freedesktop.org/lumag/msm/-/commit/60b8d3a2365a

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

