Return-Path: <devicetree+bounces-224010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C62AABC034B
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 07:45:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73D723BE34C
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 05:45:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3446121ADC5;
	Tue,  7 Oct 2025 05:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zprfjm3E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6494C6C
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 05:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759815902; cv=none; b=fSSuxCM5PoF+5x0BDzCKgcjLZLcQV6shryazpVwquFJIfeOOjxv4R74/aou+q0Grq3CzVS4d3Qav6Xjcb2eBfgyuA3gmmdUiMSp1eLaARlVExbGmeZQXi1Rtg3EVQDDak1LNnNj6jw01hV+qJaBTKHOJ99HjIt1+zcoTo+6yGac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759815902; c=relaxed/simple;
	bh=lpVzjcBwOXM4SN23tt4fC4BA7Luy5Tc4dyql00/KvbU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=AIrRlRBm30GMk2yWUVR0s3GvRxh75UqzOuSlktYtvwTNhiFolR0TvFB8K+/IHPmZ1ns0B4SH8tkyUbrG6Ae/eo1MAY0uHXqVCUhnvNWCxyC4eNOxjq3EwgTRjFA1pUixEGpIavFDLTtfJSYh2dbDg8+EvijQsMJetjykKiENJbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zprfjm3E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596LKhX0017906
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 05:45:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=KIJxcpMYEnmG9XD1E/vZXymkquIdcw8T6Th
	rEVdfbdM=; b=Zprfjm3El4N+LzprHmpDA31d9ZXA+SJfAUUFr4zpz/RHl93B4Xt
	pko78uyV6E/E6izruKojrzlvmQEqPXSTIa42gFE2Nqm3pJJeX0g6PksGcHE+s+c6
	lIu6ncdY8kkuCqsqVg5fIAWbbaAGXMQIV5ICiu3dBDyPvVCn5XwDHsEwV1tu6YAu
	7U87cZDudEjLg99hmfp38O2fKrl64s45ZUQK6DgOquY7+vI9JMpNVfkRU4qN9YhC
	Zk4PqYgflilJzq0rgPoTzxGsrmO6JdMf3kAWNQFUTg3RxU/Pp80N5ggzRuXoX3oh
	EnzLnNtc8ZBTSb7fnMbBWIOuNmN/qmr317A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mnkprxu3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 05:45:00 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3383d1ce439so1880477a91.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 22:44:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759815899; x=1760420699;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KIJxcpMYEnmG9XD1E/vZXymkquIdcw8T6ThrEVdfbdM=;
        b=GZ2qyVRMCigPp+OqqI82n9vcMmtYYHpeYNvPDcvgJ2Uk1WMJ3A6lBW2a7Ku7S/hyyW
         dg5J8ppt2/aJZ/U5uoMhf3qBxB6JELSystqNwPZ0DZJdN89UOAW0nImbtTtWHVsnrZ0X
         ok4Z99tD1/Kcym1iSxnQiDc4f9G0tDDAdN5HBu7IBjCOx1iXMqVM6UyQi5dAlDZZUJeX
         VuKdtP8ISEcI0g3FNj5EUEeokW0QkFcfqgQN2h38sxUG0uTn7jaa2B/yq4ZSxHRFWhf3
         4ld9ah/efHX7cY6oSsixUZYETaNS/UVfhWUKqD+Ng1fI3GwLWVww+mreInIpGURQLWA6
         a5zg==
X-Forwarded-Encrypted: i=1; AJvYcCW+x4k9Z2w23Ep5VDThkw7Pl40vn4dFzx6kH8NT61XlI+J8JwIY5Sa3Az+dAV5BMfbgZT16uTx46tB5@vger.kernel.org
X-Gm-Message-State: AOJu0YzM8LU/X4W8aPXHRmmtFm08NQhTAv0L/fxzH6vRmIgZVPF8Zvp2
	WcTWw2LjZ4kR7R3+UrojyWnMtnJsz9+rMnKqhWziabNXMYckdv9679Lz2NDbNea+R1se4fK97mr
	PU9QcwQjKClSfqLkyRpKr28vAlebqVInK0hArHDiqNbi0mGV9D1KULcUeuoCXPDc=
X-Gm-Gg: ASbGncvECaLDCVPUMMPXwO7Wt18dFWo6xbB8iiXLTBO5VulV+T4vZYtz9vObgA/ir2w
	bGP8t7SVyn5rYRxxJnQN73KyIf6Ehe1qn7t1KBW9oOBMgBqnk7RwtbczPM9u47ErZz1JsFV1PfS
	i201BMEHBAYbJLWBNqUrzEnS8FOnhLhnRGWerqYlfLy+cDo/0R3zuDewgiNJpKOM3iVc2r6+vTz
	RaY2lNh5JYzg5xJzSzFs7mEMrKx8DqvOlFX5CtcLwSvwSgJ8FGbdSWVNXuec1ZVO5dpY2yYlsCa
	2y9nwnxoQ0r84YrAl4tLYQSOyYPClMS3vIc2QyyVJC2rMmi3KxVB5GAPvYZ7YbyTbo16cSF5pbo
	c
X-Received: by 2002:a17:90b:3b86:b0:330:7fd8:9b05 with SMTP id 98e67ed59e1d1-339c27a2520mr9699653a91.3.1759815898959;
        Mon, 06 Oct 2025 22:44:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErGc+yIrFJKtSY7vYdT2RQdgafbYIfgt1qp3puRvmqRiLtMmkJVl+tUt+GE7S4w+S4kSKxag==
X-Received: by 2002:a17:90b:3b86:b0:330:7fd8:9b05 with SMTP id 98e67ed59e1d1-339c27a2520mr9699627a91.3.1759815898418;
        Mon, 06 Oct 2025 22:44:58 -0700 (PDT)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339ee976b81sm502624a91.6.2025.10.06.22.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 22:44:57 -0700 (PDT)
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
Subject: [PATCH V1 0/3] Add SD Card support for sm8750 SoC and boards
Date: Tue,  7 Oct 2025 11:14:42 +0530
Message-Id: <20251007054445.4096630-1-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: O6us0impXAe6OBy5_LigOIKCkpOisF-p
X-Proofpoint-ORIG-GUID: O6us0impXAe6OBy5_LigOIKCkpOisF-p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDE2OCBTYWx0ZWRfX/gGUaQakZrIv
 1SXoSC7puoQAd744cQqdSQR36FI+89DAYBt2DYDieCxJ7T+MuQJi5gAL/1pjui4cwTZYuJWlGtc
 r7flHL1OSvWFLfaXTBGmqQoV3q/6rxMcuEKADSimyBZz4prRUAjWAJuCRkb/AXlCHhRtuUiOrMQ
 nwZHjd2LaME10bP+vfmYUcIUiiNatuBtvJC8tGMtr1enD0yB16X/LL/3sVv+l5eIHYaejSyakRj
 mRs8FsYdfn0E32qGLhrDqM4h6Wpr8xmgaHRqYEvLJaX3Hm17c1jBJV5Saysi/dxzdKxnY+0nFGY
 vXsOtgUO1oqD00cMlqL+BuRfT3w6L3rbof9+ba0wmW3CiKQtcupvLOHDzaaiwzyVWEhMqnxD3TT
 0IwsJtVGu9ylCrHFShTbqPGJ9oTMsw==
X-Authority-Analysis: v=2.4 cv=BuCQAIX5 c=1 sm=1 tr=0 ts=68e4a8dc cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=F0tEe3Y5rRK-XVa5dUkA:9 a=zgiPjhLxNE0A:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_07,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 clxscore=1011 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060168

Add SD Card support for sm8750 SoC, including MTP and QRD boards.

Sarthak Garg (3):
  dt-bindings: mmc: sdhci-msm: Add sm8750 compatible
  arm64: dts: qcom: sm8750: Add SDC2 nodes for sm8750 soc
  arm64: dts: qcom: sm8750: Add SDC2 nodes for sm8750 mtp and qrd board

 .../devicetree/bindings/mmc/sdhci-msm.yaml    |  1 +
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts       | 15 +++++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts       | 16 +++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi          | 63 +++++++++++++++++++
 4 files changed, 95 insertions(+)

-- 
2.34.1


