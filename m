Return-Path: <devicetree+bounces-173240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BE2AA7E4D
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 05:42:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4931F5A1594
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 03:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D24DC15E5DC;
	Sat,  3 May 2025 03:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jCr5IQO2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D34D15666D
	for <devicetree@vger.kernel.org>; Sat,  3 May 2025 03:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746243755; cv=none; b=uRen3SH2+i6If4ye0nca3ctDY93AFS67mguEvkPYA/j/sNyFEG+VzriEKg2od+/obuDlDj6489hF93SJnMgk5VjR4k80SJm+uuEjQQgccrywWRQGv0ImarVi6RJaCnRzuQf6wXwf7e/1TxnZ6CuPKXD9N3Lp588fp44eTyQsykM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746243755; c=relaxed/simple;
	bh=TkkRyilM/Xl4HPWcvgGCPNhnNyWDjpgkbNVRVFMLfRs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VtSObF4DujUvu+NTQHYIPdulCx5l9TIO5gKN6QO4yFLxOx6OSbGwclNKAGTs/KTgciProDmfVDgFUsvy8YvKoOAWNLYJh5csD0rVDXMogQ/0Y9Jco4j8Nzgp2Drh448NEkH3OECKZDCcsZ6Y1JudInfgfh9flfu+S4x9+DnOAR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jCr5IQO2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5433UqEn002010
	for <devicetree@vger.kernel.org>; Sat, 3 May 2025 03:42:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ud1Zry+uy6eSvXZsdMraDHLmklsGChP2Rw9rUoNSRps=; b=jCr5IQO2EEmLmuKy
	36z9ZruB1n/EOHql9qJIam/8azBLCVKNz+jgim/Yp6wMRcfmrD+IfKx/wYUFFc/q
	m7Uz+boOx19VSOuVRSpY6wwc4qULDAItwGxQecTxX8xKVoG8eeg0XvCDK0vqWkdX
	++ZUmeuB3ymK3TZwS5kM8BlKgSZP32/NqymFBALl2OlpHTf/UnZ8r3JvrafmCnpq
	3naaydfargx2KORVt2vA0ft1Y+ovUE7vvSbbWjbDm29VUs4p4tOpwLKdV7ZiBJ5U
	wqMzxHSqTExDys9JmJJ9DM25QRrscSJyGEz/8bw7xnljt4haHk3nnkobo1XCMXav
	+LTeMw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46da55r33d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 03 May 2025 03:42:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4766e03b92bso49025011cf.2
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 20:42:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746243752; x=1746848552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ud1Zry+uy6eSvXZsdMraDHLmklsGChP2Rw9rUoNSRps=;
        b=ggAHcfLdMS3DZ2hDltnSmD7BX6yw7sptqd/aq8C8zoBWBZqYLyVRhxBX0pa6EnoNIh
         7v4MD5QPXHiY74rgznq1v+ET6+8HpsZfUi4ApBiX21j5krSW249r3/HoKd1haQjHApm0
         BJ+X3hO2oce5a6DxvTpVL5Xswab09XHTGJZidD+1O2KsXBzAf2Fm0VlKFUFChwiVuZ2n
         6GeV/mAq2O/RCjOKNB4V77KcKv6kFNt72j0le2q8Jpp8J5rseLOAPxrHGwJm2u54naZ2
         Qytu+2Zbb167pbT23C9eiLLZ5utvWqO4CJQERf3MlBANFaFFsy2SoHZ01IhLgWrdLgkp
         a98w==
X-Forwarded-Encrypted: i=1; AJvYcCUkZwX6a0QewBqq5EPhWXIR9qmnwFK3cvrhRoGLjc9BUbjeobABlFYg5XTZpOBZgyWBpnn5M/gGsTBW@vger.kernel.org
X-Gm-Message-State: AOJu0YyByCo+UhTGYGT1WfAgjpnmj3CoTtWNfkos2zTvBxnM08ZJhz3d
	ekbpj15ekXA8YyrmULUgjpZXvZCb7kJVipIwg5e88R8Y85BGaeQCKFLvKEDh1Q1AQ/+w99i3Kwy
	kO5dlTbd5durhmcmvV8XORuTplkjUAxoLO5eDX0mvCkNQL3iCKGzkmLODRT7Z
X-Gm-Gg: ASbGncvWeEU3UQ6UzoAEd52M6QvjXa7qU/Hu0Kcx5krDS1wWoQJms5j+U5yuz6v2Hj5
	UMzLBTgQj0ohDGoeGHuLxp4v3dIBm/qJEg/EQAHpebTICnYl5b8oT3YHb1YOaJGWekUnM5KpM+0
	fVpvqzrkiCtgHe+BI6pr2QGp2JRTyqNtF61RqJ4liCG6qEUQsLr/CjNYoHqlvdwcZ2saVyFTwxL
	NZ4Fj2YXvLikQwdQUXSED/dyhQdDjq/BqO1niTaOcvUiYY78yCH51qf/hU2E0shaoqvGUg/+bQm
	PBl/cBpix57Iwy49DWvZAYB6/C3I07MC2RcSR7Afdyo4CmaMgQ9+0L8YhNyjX8ufOoH5embKSDs
	Qu/HZjT8o+Q+X33GopMAXn2a2
X-Received: by 2002:a05:622a:307:b0:476:903a:b7f0 with SMTP id d75a77b69052e-48d5dd6c5ccmr21879381cf.49.1746243752255;
        Fri, 02 May 2025 20:42:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyvt+1+zYIndHZpLi8F8zPvraugqfDj70RqV4gmfcPam0xpV0vxN2pw6vmnVAsOhUglqWHKw==
X-Received: by 2002:a05:622a:307:b0:476:903a:b7f0 with SMTP id d75a77b69052e-48d5dd6c5ccmr21879191cf.49.1746243751942;
        Fri, 02 May 2025 20:42:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94f6613sm611338e87.217.2025.05.02.20.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 20:42:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: neil.armstrong@linaro.org, Heiko Stuebner <heiko@sntech.de>
Cc: quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Allow port dt-property on two leadtek dsi displays
Date: Sat,  3 May 2025 06:42:28 +0300
Message-Id: <174624368046.1030946.11578549216447987395.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250430082850.244199-1-heiko@sntech.de>
References: <20250430082850.244199-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAzMDAyNyBTYWx0ZWRfX2isDyabDwOax
 FCEv7o13d89EjKy6kVQ/2CZS4111xO8O1zTYqsQMKpbtQKMbVPIYoJ98ujyRVINgxGzlMfIL42+
 2aAOstfxsLMylworLzaJPnPyAdnfVrFl6jnLU+l7R3Sd0cT8G9Fj+4TP4CeyIu+m2BIqdDwo/bB
 4h1MQlxuzBTCN8yunvcaTuT2jup+K7BY0nawW5gxMHGMcV3tlkoqd9q5E3m/Y+wfAGGEXD0ISZD
 fgNhUbdxmPSvSfbEoofokelpbShabgdgkyVfEZ6OA5WOXmhBK4LrFExoZVIwN9WFJy3UxMViYtA
 +jKEol2ftqMMfFIWPZyQNvyI5m50elKaO2fHvFDKafHRpXP3/lKrU9B/46wJ3nFThNnrY9S5Lh+
 gN7sgHY1sfbsJsKaxh0J82X2bd/ybPvt5ae8YuI3wde3wzWB6gyB7hBhvw0QaYMg3Sx/wyVx
X-Authority-Analysis: v=2.4 cv=M9RNKzws c=1 sm=1 tr=0 ts=681590a8 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=uWS4MBAKGPj7jhiRaqwA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: GBQVCFDsheZQOs-oy9jrqqbQgaYESkAL
X-Proofpoint-ORIG-GUID: GBQVCFDsheZQOs-oy9jrqqbQgaYESkAL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-03_02,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 mlxlogscore=662 priorityscore=1501 malwarescore=0
 mlxscore=0 bulkscore=0 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505030027


On Wed, 30 Apr 2025 10:28:48 +0200, Heiko Stuebner wrote:
> Working on an upcoming board dts, I noticed a dtc check warning
> about the port node and at the same time the kernel-test-robot
> noticed the same warning with a overlay I added recently.
> 
> So allow the port node in the binding of two leadtek displays
> to fix that.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: display: ltk050h3146w: add port property
      commit: bf0636f4348e098e2338eebbe42d7780c58a1195
[2/2] dt-bindings: display: ltk500hd1829: add port property
      commit: e782ac936941cff4c5580bb5cc2ec0e91468068c

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

