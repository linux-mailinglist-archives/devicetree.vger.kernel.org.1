Return-Path: <devicetree+bounces-178411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A23ABBBBC
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:00:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6977017C5ED
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:59:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2F90275867;
	Mon, 19 May 2025 10:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nXT8/90U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E9B274673
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747652337; cv=none; b=MYKyaoXxmbyILyuJshB+765mNFZ3WQ4hzkZtALRMlaMKUPOjgtBa8Jb8DFnZi1NaqJMcm5T5MoXSXhEXDPEyNsR7t4PDLxz16+4R9kohJfQmA+0hLgIiBif+ihHN+pqNyHJ/ZOVYoGhTUyp7DXS13rc2QH2bRfcgxUaCAKbZSmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747652337; c=relaxed/simple;
	bh=O68Yf4MVfSbvrTGnH2tyPtJDd/D9PTw/7oag6m4b3Hk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BM7E4+HJPbquulgyB4mvhJZiNgS80JLzuR7AKa5sup6cNCXF4W9OaTKQLUNkWG/gas3YNFuddHOoLB+q3mquf//RgBpymvFzqOBGg7i0+eMa/+gB3p89Yif84mR1eTEtoM4MXPAi6YehoJUQu+lZXQ9BLZesYmpjl25VkGI0NEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nXT8/90U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J4F8ob014393
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:58:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VqRNS/AP2L0HYV/XzQMxzhswyBS2iB5hSp0sUNl5kjs=; b=nXT8/90UtPNYFOVl
	lO89wI7YQKOORwYNbXDwpUcHcHCYJEEnnNE/d2sZ5vcwuHD1lFP11G1pUGwuApvn
	crn7cvzPlakbrP9FtDv28Tme1qNFW5ZXiRzXro63fVro/1EzE9y+ORx6CdZU5kVi
	rEfcFJbXwaegQ5suYLTplGNyNMYqWGlfiH3DZS897k6cc/FtEa/We/gu8MTjqb9C
	ADDaqr8EiaX1n9jIdugSl6TqJSdZ0c1Ye0BZhms2r5FATXD1L/q5fPAZ8SoXha6p
	tBpVWX9dOeQB8usjOVYApGbmeeIfE4fEajD+zFGFF4Z0ZoRp0tLj8e/dMAwXwI6X
	kbx81w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46qwenh5ax-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:58:54 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f8ae0417b6so76296756d6.3
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 03:58:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747652329; x=1748257129;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VqRNS/AP2L0HYV/XzQMxzhswyBS2iB5hSp0sUNl5kjs=;
        b=jcgTE1k8Pgl796I7lYR4bU7X1EKu4FJtk6pNLPNsyS7qGdRC6zQTI2tZlHmedZzXB4
         bBs+qJH3VQsZtz6y7AnGodaaPssge2E3GJkWXNXK9VvwBGY126pnLg3Yh1f4iX6tPLXb
         WeBH1Y7MCBbKJDKSK2Dgs4H1BJ8TzzL4feeaL0Un8IyB9D/dx2MYrr/Pm2ALYa7Qkrlh
         kZ1XLC10juAxWkw1EDGPPixG22IXbJaI+JjsL79hCAjUuAceM6Wf4ti+CzPQ63L1SRe8
         0tiRYAMXt5E/rcpRt4wfVyFWQUn58J7zJcLqWR2uJq1DKohLedRMcnq6maoIDzjfHyrJ
         SLTA==
X-Forwarded-Encrypted: i=1; AJvYcCUO586CyC5RhuJD2djnFuo7ZRbeMwVxz2TsEPTzehKQuvhQcrpgyu/LVQQTZG1SvRHcxPEwYgwjOqru@vger.kernel.org
X-Gm-Message-State: AOJu0YwbbGD1ckaxbb2lLdu084nrBsqS4r/ZFoU6YbQtH8BUp8G0Xncf
	W6BHZzRDUw5yEORWy++VIACTT2pUHmhP1k0D+R5KWwFnyBI+K5cM/gSiop1yIbqsSeagHEDMZC/
	LezsbfcOlMyo8/gEOjYjTV153JsMl74qRCERbATel35GIeXMGKFOQKK0B/0fNqO+i
X-Gm-Gg: ASbGnctnPG4+SZuT2z7aOZX/81zmC4qCbaa/qjjKSGDmvqQHIJtgl7mpsRrI/3dq/Dr
	2kph5A1jq9XCukMARvdlHmGAUEzYKb2VE3CkEkgfT86/Z5Kt1zh5AnXCN10cpyP9G56LVAwhS8l
	LBw/z87O8kd6qDulfh/w/xtHTegWfWOOLDI5F7k4txxpw+k89LhrJ+27OA+KjJ5o/iiZnv22WcA
	nRxZn82wViARWZbZaENTMBlA+M/0HPE+myjbRcYTELH5NiJbZ3PhlQ2EjcGKJKEKTScAVM5HqRo
	QFtyxyeZ0dXepk8sepqe/L0b9sLzBXWc+U2D2KIayC+YOjM0blqDXgrEDldLCaqK4p4zm1VUREb
	tiwuiAOlbT48ruZnFx5PmKw7x
X-Received: by 2002:ad4:4eee:0:b0:6f5:3b8b:9115 with SMTP id 6a1803df08f44-6f8b085299cmr198057876d6.33.1747652329510;
        Mon, 19 May 2025 03:58:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZ8hMq2kgsgTEUTk7YggTkRUuA47iDtbotHwLHe0Dgywfs65yOnHSbIBuW35N62G91KOkcXw==
X-Received: by 2002:ad4:4eee:0:b0:6f5:3b8b:9115 with SMTP id 6a1803df08f44-6f8b085299cmr198057586d6.33.1747652329096;
        Mon, 19 May 2025 03:58:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f314a2sm1801140e87.77.2025.05.19.03.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 03:58:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 00/10] drm/msm: add support for SAR2130P
Date: Mon, 19 May 2025 13:58:34 +0300
Message-Id: <174637445761.1385605.10286310480029078025.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250418-sar2130p-display-v5-0-442c905cb3a4@oss.qualcomm.com>
References: <20250418-sar2130p-display-v5-0-442c905cb3a4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: x_iTLOZMN3q6fjlK8DwvrqqiH74zw0U8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDEwNCBTYWx0ZWRfX0t8K6KZUeMft
 TX3VvTY49t6foy9Rahg5784Xzmn8ABGs/rhDCezsVPWsAvgOk9PIA34IcsQKa4XIabE2j3bVCAJ
 dPFgwRyun7KjzlHATABltARqgZygk0N+jZirvMsyTNsnfSO1mgIBNbuJI8gjifZpLA7o4riZ9ht
 cKaKcWL0Cr5h2vqtCAx245T+4L/SN7D/1knPR31Sq6yhjMZ1ljpEp9/bTxlXAxh1yOxCpcVnbVI
 y9UuJbV1yXibMK6nfKv30PMrphVtQNM92sxm24sdSXImwhU28ddZu0pzlbbHuAHloPtG5sAOBzu
 ej1ojCrlPTlgOX70FNz3+6iCWbM/jJ8ojzR5fgGIbLvxz9f5v+cqn515V95Tzu963d53PYNdt+U
 +2stoHPQNmO2Kbin+b7A7kn242DKjKp5FufkyEmhDVsq/v2KIc+XLkPNMfRqiHTGVISkdjXz
X-Authority-Analysis: v=2.4 cv=Wd8Ma1hX c=1 sm=1 tr=0 ts=682b0eee cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8 a=iEGPaXCqe01J9_RIJz0A:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: x_iTLOZMN3q6fjlK8DwvrqqiH74zw0U8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxscore=0 priorityscore=1501 suspectscore=0 spamscore=0
 clxscore=1015 mlxlogscore=850 impostorscore=0 lowpriorityscore=0
 malwarescore=0 bulkscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505190104


On Fri, 18 Apr 2025 10:49:55 +0300, Dmitry Baryshkov wrote:
> Add support for the Mobile Display SubSystem (MDSS) device present on
> the Qualcomm SAR2130P platform. The MDSS device is similar to SM8550, it
> features two MIPI DSI controllers, two MIPI DSI PHYs and one DisplayPort
> controller.
> 
> Note, due to the technical limitations DP controller wasn't completely
> evaluated.
> 
> [...]

Applied, thanks!

[01/10] dt-bindings: display/msm: dp-controller: describe SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/b341da1172fe
[02/10] dt-bindings: display/msm: dsi-controller-main: describe SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/3c70c9d0a99d
[03/10] dt-bindings: display/msm: dsi-phy-7nm: describe SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/262650e71854
[04/10] dt-bindings: display/msm: qcom,sc7280-dpu: describe SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/759fe7181723
[05/10] dt-bindings: display/msm: Add Qualcomm SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/3096209b7a62
[06/10] drm/msm/mdss: add SAR2130P device configuration
        https://gitlab.freedesktop.org/lumag/msm/-/commit/1e7cbfea6624
[07/10] drm/msm/dsi/phy: add configuration for SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/8e63b2075e01
[08/10] drm/msm/dpu: add catalog entry for SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/178575173472

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

