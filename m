Return-Path: <devicetree+bounces-230781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BE7C05AC1
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 12:51:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2773F4E25F4
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A164631327B;
	Fri, 24 Oct 2025 10:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C2yJjS/a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CAD3115BC
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761303031; cv=none; b=kZVeq3s8cBTdFc9NgdlSkc6wJKgSXN47dTixGj9T+p5BGCP4YjH5FEmRLi9R+etFosmQxKEVXPrIYFUkuzQ61UtMXGvmhv6hNZ6WLFjDqVNYLrABvtcN3E/KhH0vfvmhFcWhA7FUO+rECz7jwwszrA+2W/CGIf+/51rKgmAPDNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761303031; c=relaxed/simple;
	bh=hBfpYSbUdnlWTsvr+6iVKoFyAgicRcUZDbA7264mfvw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=tXlYnW5X1mJWAlWC2aDmzRlJFfdM7Hg71WFtgExCh7+AVvDP/BQ4HOMWcCSNE7C6CGb66OJGP6slmXMniJ0nk/pCl0f08x1gEypDGoNFsXZ8AR5TqmZTysy6814EBtKm/ibkqJ6UHYw8InhxZrNXyRn8JcWUcdMotUumFrEUdW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C2yJjS/a; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FODC021480
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:50:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=6NHuX3Ved4jhx9iPo+t4FNZicrm8s8ruSWh
	6+iigvtM=; b=C2yJjS/aDzwyEUl741orozy4cB0q3rg2p8KLC+4y8IEv0K7olM5
	w2mMh12KtMyiyfSTAzHngaVcB51e1iRy65JRJpdDk5fYzXNuPU/73wDYk6nQfowu
	bi3gAfaQkGCeHiav4x57AFVNmzeCWnZlYIEVqKfTlSnYBFII/oYeiextdO9rj1ec
	iNKBHUGdm10k3bCs4Rkf6EW5yaHBLl808EneFkGeHanAhUmb09I4jN45mwKk6x1u
	Kiax7a/Iac/7kpzq8ISS55iBFE3u/EUpZIzyV0TmGzX/uMjO508Jg+xeKXWDDuEo
	JCefEV0dp48BheArBvnHpqqE75Wt2EAQX2A==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w8bqj5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:50:28 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-290cd61855eso17604875ad.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:50:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761303027; x=1761907827;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6NHuX3Ved4jhx9iPo+t4FNZicrm8s8ruSWh6+iigvtM=;
        b=rrD4oI3jP0psTgNsc8DCA00tYEonttBefAlmxg3blRl209o5Wne2atZFz8wvSzmrnM
         +RYqjJS3P14LhWzxL484l43Xj8Ef0o1KApbTG1cW1r2uoqrf3R9HZ0X2HSuIejKVJX+o
         r3CrCTOIfuIlLkrfzUpYKARZNq9qtznayOoQKolkDsvKYIgpGmzOIcjz4UCfRpOJzQJq
         kakCVYsfLLT1F5nqnWFa8/KzsIMyRmXl1ap9OR/DmX/UU1iQOI1imRj/rKrO4s5Fa7+G
         ttUoWTg92vdmmJvIm0FL3RgMB2M5uFlMr2sOLFM12nEV7vv6a48XUxDd6dEPzOlPejtL
         d0Eg==
X-Forwarded-Encrypted: i=1; AJvYcCXuoeKjJ9dWSb7/R1XvvSXi6Nj6XM6IWXGZuikc7gqm5pNe4P9liseIMLKaLzO5Uoptw0dpBJXSFdJ8@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6O+fF2p+9z7FcZlEUw7JyidKam/NG3yehhsxUw/hioCl4cg2o
	QiZht3GOTL/f2QrUCJqhduGTWjUAjr/QgWi9Al3IDuP2PR5ph+mvnBa/2h6YPG+EN8zva/BFKII
	Rd4eQbPNx8bP8FV4jTn0MCg6JpeeGWTDtylNQ2yG+RsT44TTbLFuN+wYpLERwdgj+
X-Gm-Gg: ASbGncuO8qpHhb2NfeQ+AgyUS4LpIERmIuVaIFgnTJKTLfR3pwl1wAWhM5f/5FhGchD
	8SgpXZtBWWiFvEz8REuwHsK4GmVpCRIZyCvCgfh1EzNwqRKbThggnWpV0B3khWi6vCUzRYJ06nw
	53g7ZATo83Y14eQW6arippNlj80dxzQovxSH6MG+JB8omhuKZqBmtNxDl0dMrxZMnF/4rOb8cUZ
	PH3FX8SwHH83COPmEmQgTGiYJ/2nIT4HZqXGkpI2I0MfUp5a+88DXTcBCQk1hK0BEG2uOg/Z82T
	QVjWUDEvPqWTtD6wTyjViZ9swxvI0//nUYyYwmsopbzp99s4ZnC4VapBXiJpMRVWYBuzP07qRRu
	JTNo+7SJP90ah21cXxk5K+6zsCM4kcTb9epqo
X-Received: by 2002:a17:902:db0b:b0:24c:cc32:788b with SMTP id d9443c01a7336-290c9c8a77dmr356305715ad.3.1761303027499;
        Fri, 24 Oct 2025 03:50:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4SSG/itxqgnKdgGyiFrTllLTfNfrUJwGLhCc/khz0u7V03VEfJTQRXCZctfAwDYJoqUrLBg==
X-Received: by 2002:a17:902:db0b:b0:24c:cc32:788b with SMTP id d9443c01a7336-290c9c8a77dmr356305375ad.3.1761303027059;
        Fri, 24 Oct 2025 03:50:27 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e23e4b3sm51236775ad.103.2025.10.24.03.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 03:50:26 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 0/2] Add missing quirk for HS only USB controller
Date: Fri, 24 Oct 2025 16:20:17 +0530
Message-Id: <20251024105019.2220832-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX0Ae2FkVcH8V0
 qQ4P/+eMfLcV2bhzIaVV8+qvMt+QjeUngmKr/xOeKDuwa7CASkt8ayE3qF/YUj9xlmCjBePpiy+
 CmbTMI5lmIyFze3H6BwdxHAuXryMFyQP7j7W6ACC/u3wDzn9wFrDUwYxT7lItKpJjeUFWWNv41l
 zH4t0+wql9irQkhzh12McGZD5F6b5KY0kHzyDi6iDtxHHnz/7fzAu8sc9VoBDVyYJYm5sG+QS2i
 JFL3fxWdpvqh1zR2peqJUTccIadtEiHxxcEpQk6cBgIp9t9hbKGEiuM/y/qvmrlSR8SO7Kvz/gF
 KjyqVumk6OjCUx8xFMDhDv/lHZZ0aMQzo5H7I83g211mCwFo7FnEW8rb1cpyN+TU70l7Q4k7aZx
 IHEFIjUAxwNk9B/QESHYwQ5cAbuh0A==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68fb59f4 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=d1616NNI0-D16vPRn74A:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: 3gW62uDU5K9UHNvbvsSsxFNJilt7-5X8
X-Proofpoint-ORIG-GUID: 3gW62uDU5K9UHNvbvsSsxFNJilt7-5X8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

The PIPE clock is provided by the USB3 PHY, which is predictably not
connected to the HS-only controller. Add "qcom,select-utmi-as-pipe-clk"
quirk to  HS only USB controller to disable pipe clock requirement.

This series has only been compile tested.

Krishna Kurapati (2):
  arm64: dts: qcom: x1e80100: Add missing quirk for HS only USB
    controller
  arm64: dts: qcom: lemans: Add missing quirk for HS only USB controller

 arch/arm64/boot/dts/qcom/lemans.dtsi   | 1 +
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 1 +
 2 files changed, 2 insertions(+)

-- 
2.34.1


