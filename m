Return-Path: <devicetree+bounces-230226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6AEC00BDC
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:31:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC51B3AAE03
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61A6730E0D8;
	Thu, 23 Oct 2025 11:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iXtv2thD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2C7630E0CD
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761218976; cv=none; b=E4e3NJZYLFU3NT4mP+AZMiaAFJobqbIw3F0hTd20DEYYi6ZIVj9baYTUMwb/O3ZkuO4LWk3zupraiSPUYXfFmWYNPhxoMhGc9KJ651FLsOjw01+k0uRom93g5YfTEqAW+tTOzO8YRdgUPxj5c7DwCebNBC/JbVhALZGejb7baMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761218976; c=relaxed/simple;
	bh=1jDd8Jo+Lv7AsUUim4V1DT0S98q8LzCRKW9vJCyfXzw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aJi7uCCAeNnTNbtnlgxDGeoFS1kMAAwTZLa15GhR1qwuNYyCBtNq+mHUxxD3pgCZoXHc4sAqbf3sDr4i1aJt6Iw+glNN+yOFgbDHxS4WmQJY5CS0v2oTgezWKTE4nsp3jocjejZYiZDOLQuyCawmg4bEVdlN6/TNDK4MTP3WXe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iXtv2thD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6GZcU016466
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:29:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=uIRW+tJ1sHh9tj17uy8X8x7Zj3ryD5FfPGl
	NlKORe+c=; b=iXtv2thDlKf4FPos8+PsKBw1o7i9eT8tarlGQYJLZPDDpLSJt2O
	67pJReCvMkC3KCMNvCwlJUVRgfPywQ4vgGqVdo+YVn7wxd49hj8ZTEx4IEpsIkjE
	hfITtfBCfsDdQHfwv/7kQhJZmTWK6ajcz5bAu6Kvq8FCuuWbjyUQ417YOqTVsSmp
	J58Ff7UiOP37sw8UmD4EBciw+X+ATRE2+fB9o/UAOHb3i5u+UuJzP6TXPeVjpP+W
	+H/G3fccBZPoqa5AQnKV20szz66LBkmbpnYxs/JIemnhy6O+NcSHc2RNSV72PbSh
	vC8M7r294omwJ7osqcR0LVhU0ITcf7BIXGg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xkpsdtfc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:29:33 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-28eb07797f9so2755515ad.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:29:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761218973; x=1761823773;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uIRW+tJ1sHh9tj17uy8X8x7Zj3ryD5FfPGlNlKORe+c=;
        b=fznXON0aEgpiRN2NrvczKf2SO3o24CN6UdxlnjCW+8R94jZgkKss1VP396xCsI9wLL
         oM5bRG/3p2uQOI/KzdXlaKThwj9OwB5npFZMyklTfjZxL/IvORaOx5q7lilj3K90aXr+
         nf4AxRH9k2YYwUNMr8RWN5ze09SrFaPuH4Maaka5AiU32HBC6/uqsVXo981Em8x04nke
         wj0jyzN+Sf23YlATtWQZR1zWBzzJ9Dy9bzHVFzLKUhAnClIqTccG4DN3I61dVykJMp3L
         2TboDiOXu6V+sti2TaSoumenOUss5TXYTQ+gb+tqFCFxcR2sDY/dMa5WBdbCLHx0rdVr
         kepg==
X-Forwarded-Encrypted: i=1; AJvYcCU1PeQQUidaj0XkNC8Z29CWXfNtqJdivD6o7eKdszZh1EsI7iR0cZyjlBgLNOscOY4lO7KHTY8Q7FMd@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3OcCwMSOTUGh3JrHEUnx2TdAFlkRS8r0XIry4AUHGeIyntCfK
	2TZU02gUTUYOQaFbOu3ZfvBVGDTb6I3Ai3wGecCHO41Lx4r+1cI+ORXJ3YKDsjjzKySZtkJFwPb
	3jmReO8Wg0gcwm8zabnXKmjxhdQVriq8rvPoLuHPtr3HuBX4BEW02NcgrWbxZaZI=
X-Gm-Gg: ASbGncvNFYBNwTAr4uUYuP79sex8bL9ZU0N1997vSaCbBg6H4ZIU7VZ2/8FnXL8aoAO
	FDpWdchqUR7u95C17tqKZbMYYUmFqxz+tscYjfG0TxznAMCxSiQOcAO5Senr1Ip0gfM2gi4KkCt
	MisxK0YlacO9qrBm4TvkLsRAEntzDJT4lM2lyrwxKESf119pY1URrlfflP/+ConF1qQjW42Z48R
	XqhyGsdlVxHS60t9NO81sQXvumaXATPMem+Ff1HE0jcQOHZbhtpku/5r/sAryHg+OyAN840rwQ0
	HonSqZisD2ACphHXLNt2odtjPjQsrBlJBnxIYFL9vxJ6iBSzwzNcVYHIIvEqhDr9XUrBtOZgVl/
	o446sCat934TqRu2PtKCW6f1mRA5/IA==
X-Received: by 2002:a17:903:f87:b0:27e:da7d:32d2 with SMTP id d9443c01a7336-292d3fbbf0cmr66008055ad.7.1761218973063;
        Thu, 23 Oct 2025 04:29:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHL+TU70n2qTyvfs8ktt+I8r3/ZZAeRdKHl1cuECS6O6kimjZqydFi1762GpAmBkKwHt5XsA==
X-Received: by 2002:a17:903:f87:b0:27e:da7d:32d2 with SMTP id d9443c01a7336-292d3fbbf0cmr66007835ad.7.1761218972688;
        Thu, 23 Oct 2025 04:29:32 -0700 (PDT)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e1231b0sm20438815ad.97.2025.10.23.04.29.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 04:29:31 -0700 (PDT)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com, Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Subject: [PATCH V2 0/4] Add SD Card support for sm8750 SoC and boards
Date: Thu, 23 Oct 2025 16:59:20 +0530
Message-Id: <20251023112924.1073811-1-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE5MCBTYWx0ZWRfX1ixuLpx3tPW9
 T1hQsASoGXOO9odnNkgV2DjUYfo70Sl5qf7TNM7hNDPpIbx14XunIw7T6daykGlp78PFc2KF6es
 wBruMOJCJ+PUUz383Du5DCiDnGgnUgKNMQDLfX7mU1cWuwMzb+5dJaZTNLfuZSx5H9hz4K5GUNz
 8EAMCMWgJ7kLbQuGsqLFzUWZqCPR/BzRFHSBXY13yUDm9qGBDiiTTeiRPXZP8t/Lgo/7d3J9hy3
 D/gm2Qx1e4hqjuOSq82nK4KekpcBvm79a+UcNohapCXDw7joa30wxOso0UhMeCVHIpPS+0akwgB
 /9r+nrZUgj1ZYZM/UqSAGZD9ZiEq1B/SYFYB6X4MMe3MlrFNsBCT6+Bu33xzYNOJicRf7ktYwQT
 0NGJlo26yGkmSFzVv+9qebdGq43X3A==
X-Authority-Analysis: v=2.4 cv=FbM6BZ+6 c=1 sm=1 tr=0 ts=68fa119d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=3Kx62KuiyRAImmK_TA0A:9
 a=zgiPjhLxNE0A:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: E5rsKl9OO5ZJ4MCG4JBFHLqK0ar83zj-
X-Proofpoint-ORIG-GUID: E5rsKl9OO5ZJ4MCG4JBFHLqK0ar83zj-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510210190

Add SD Card support for sm8750 SoC, including MTP and QRD boards.

- Changed from v1
    - As suggested by Konrad Dybcio the patch into separate commits per
      board and did formatting improvements (e.g. aligning < symbols,
      placing each item on a new line).
    - Addressed Konrad Dybcio comment to use SVS_L1 for opp-202000000.

Sarthak Garg (4):
  dt-bindings: mmc: sdhci-msm: Add sm8750 compatible
  arm64: dts: qcom: sm8750: Add SDC2 nodes for sm8750 soc
  arm64: dts: qcom: sm8750-mtp: Add SDC2 node for sm8750 mtp board
  arm64: dts: qcom: sm8750-qrd: Add SDC2 node for sm8750 qrd board

 .../devicetree/bindings/mmc/sdhci-msm.yaml    |  1 +
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts       | 16 +++++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts       | 16 +++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi          | 68 +++++++++++++++++++
 4 files changed, 101 insertions(+)

-- 
2.34.1


