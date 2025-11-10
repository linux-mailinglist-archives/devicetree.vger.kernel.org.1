Return-Path: <devicetree+bounces-236568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CB4C456FF
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:50:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A95E23A9D51
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 08:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2C2E2FD1C1;
	Mon, 10 Nov 2025 08:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cMQeIyyP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ihQqJkIh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8783C248891
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762764624; cv=none; b=S4i6R0SW9ZL4V9krg7+iBmZEr0thhqERJPjkbCHAcXPtTiqB0EFSB9nrkKEfeVIMYEVjK7Bp8hPijUYz34HNFuR4iw2563QEOkxEDU9yaXcW7INLNm35Jk+yNqCTlGWtoPjYzmooFw+1RGgvjt3uYhuwzvcI2WQmRBu5VLMBmxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762764624; c=relaxed/simple;
	bh=IhbfKHlJWQhalv4pgjr+NZ6u+4DphMJWdXicn05Jm5g=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VFVK/lgeVIxb4DHpLuG2lTWmI+pTYdjq1e3EHsGxgRCqzHx2vbC6lXo8NtTN+8AGQt+JSCykoOXwQmL2snvRcQwxKiF4MU3GitTMRuUhkkGwn7RKjB/ldST0IEwcepCxhbbLE/F9qHB/BkTF0G/wBADKUUQgUTh2+oM+zFdc4Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cMQeIyyP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ihQqJkIh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA8deIO1621055
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:50:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=nauiFKY5347uNKFMjqIRfTHnnYyyhUF+2FE
	U6TjAE/I=; b=cMQeIyyPYY3UAGtBgMK5UQxEcV2xQyJB10TL6OdXOV0nlpImJr4
	eMnYLqGS2Qg21W+4zzx7NhFLUxNYj8HGvouWCriEhLAjOyjhMUIQGqqsrt3aG3i3
	theDxaB/6ThcHcID64mRf/qssWi0XBlPVx3xtW83LhZZ03rwGgLwzCIHmWJFDeSD
	dcBDAS2MPveNs7QcaPJV+N03GOpZZkP2jjLPX3iMyGVMrmyJW/hFH23cIlaXd5qB
	RnSJ400EbJeAKbWwsyWEv+vNx/nHU5SBk/FD2KhXZ5qW81b5lh8zJcfs9yWFOFvm
	O4i29A0DAog3lPxM8p/ibj1MZU9f6mFmjTw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xu9uyfr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:50:22 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297e89544d7so6200225ad.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 00:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762764622; x=1763369422; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nauiFKY5347uNKFMjqIRfTHnnYyyhUF+2FEU6TjAE/I=;
        b=ihQqJkIh79+8KnA22c3nmC/QegWt4jw3x/HF9vqcz/QahskTr7IClzloSEHNkwvmFG
         Kc06Bz3KfjpO8nyRtghI/cHFNmGTK9C0GRTXAspZOZwljY0wGm1F/2fxpxwSfXXGjZOk
         orXJwVua3I1GV20VBCu1Xho3lzO78oRiL7wyFHj0AxwjYiuLrYwMlDDeuiWf2HMmnEEe
         sR6zuxP4JQNiiWuJyFWfhYkUi9PpgpusU1yadbBzJxFX2RNIpBLSXsiv9YJ+xuM7+shm
         rQr5So/XzpyinsEZFnUZ1z/SThtOkgBNxjXXs6ZjYRanLUB9g1UMSrxa7QKFEaBr4Q3t
         MlmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762764622; x=1763369422;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nauiFKY5347uNKFMjqIRfTHnnYyyhUF+2FEU6TjAE/I=;
        b=W4FyNaRLepxeO9lHRCLsYGk2OJA8vfOmOONqwYRykC3qKyI4XJ9QT2Nm55JJb8C9EE
         G58e3Y6rDte9dH2j4Uxj+mvigeeVSZkXZgz3EbWtxdXzr2JEPAuqA486d7P87MVRhii+
         DcfFSHIprmJPridkymIw1B34Cp5G8CQ3RLw0bgjYDBy/KSq6A98QUiIKdDZ2zf0SntgR
         OOW7Z8GXqgfJxZo5h5eroQdhu/es9YxKpydfCNTOvkkJe2omAlB8IEeheXf9VV6oLQgI
         haA1kPWq03Fi74oxynwNxtTyuCjYYY3QZax7vs7TExnjDLhaNVZlsWieEcow0Mz+XYC5
         Ecng==
X-Forwarded-Encrypted: i=1; AJvYcCW6578p3yiqTFO3B7gFafU7sd1lUlIvMZdah4+FHTJz7UuWr4PYu+k8K2D+YlUHMi7ldcZgeSN2t+ch@vger.kernel.org
X-Gm-Message-State: AOJu0YxQYbURmhAITYjB+aNTbSuRU4mQ4Vd81fFX+N3w5qnk3XQb9u93
	gxTlkOkuZN8GTGdWB/f/1l10vPLdQPXZcyxAA90Xv/2hhia0aq5D6/2pSxhMi3MUaOqe4xWG7YQ
	en7yffHJ50Utdgh2te//Uv5CqCwzQ+vbZbTGy37lhYfbOT/R8xYm00ekuJ0DuwZ0=
X-Gm-Gg: ASbGnctjV3xOZFAiddDFstxfXw9IJnsFKXJEKCL4Ext8JdZmlw15mkBOb9xjGPxrJpx
	9ESMd54wm6nkKU9zvhdPVfmX4KfovFuJWhkE2uTBfVFXWc7gMp52Cz14sbIbqNw3P7w2CaESO3P
	+LZdeAfTPvwLPPoV8H5NAq3vZSQ/T7xx8qr+wbVx2oteUi2yToTP5xQ0QTkSDuGp3XxoXM2hgi5
	HXLbuo5dGftDnKjTs6oB96tMMK6PI2Mc1Mfrcc4V48nkBfUSFQJr2wDYeUb+Wq0DooFQh4gm5gw
	qpuymGjAYLoJhhDZ+PYgirkBadnekR8jS19nf6ZQ2r2uVdty/hf/4FlB3NomazhoI17ML/iIP0d
	VBS3pQ5PONba1QVXYP84a3C53AWqVfg==
X-Received: by 2002:a17:902:dace:b0:290:af0d:9381 with SMTP id d9443c01a7336-297e56cf5d7mr54606485ad.7.1762764622106;
        Mon, 10 Nov 2025 00:50:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG37pdwCjNlIgB1OO4HGZKFF6Bf3VVYGkGr8yEAut5arveKWY/cDKq0txxG/5U07H51uluGSg==
X-Received: by 2002:a17:902:dace:b0:290:af0d:9381 with SMTP id d9443c01a7336-297e56cf5d7mr54606165ad.7.1762764621654;
        Mon, 10 Nov 2025 00:50:21 -0800 (PST)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29650c5f94fsm138691365ad.40.2025.11.10.00.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 00:50:21 -0800 (PST)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com,
        Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Subject: [PATCH V4 0/3] Add SD Card support for sm8750 SoC and boards
Date: Mon, 10 Nov 2025 14:20:10 +0530
Message-Id: <20251110085013.802976-1-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: XPcEREEO8LuXYqAn1hyD-Wdx6y9izss_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA3NyBTYWx0ZWRfXw3YJ61Qe6R0H
 Eaa8sTyvqAoLmIAS8BKM8ZaWklygQnd9kOeCPMdLKcZa6ozV155CTWK+Iz1yGchJiGaGOhK8nCt
 BeJbDdIGXOE1730kZBVGO0A8ni7AajBE660f83q+ly9O38FjymvwEfZ72QzS/RaAVLkjfgxM2TD
 07F7ugbswLXzkqUZ9xD+Ifq6yiArpQPLxGmqhw6QWn9hMWw9jS9hfYhfOJCuJW49v1JD1fISMk5
 Y18USx7ryGKhITuCTfdjnWowcDjWSV/9zq7CqJURESTRTkaa2GV2mFZG+hfZfCfPOABCvvjU3ro
 nwLnhLpR7FuIzuJVsk8FAjX1ZjGZwCkLkWMPlbyHynZQFF9pBndw6hqgEd4/UjVGQB1p8LD4+la
 MPkbtkOVWSZ8ZPlz9N3lSbwNEj+xMA==
X-Authority-Analysis: v=2.4 cv=ZPXaWH7b c=1 sm=1 tr=0 ts=6911a74e cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=rfq7y1KLf-xer_pzc54A:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: XPcEREEO8LuXYqAn1hyD-Wdx6y9izss_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 phishscore=0 spamscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100077

Add SD Card support for sm8750 SoC, including MTP and QRD boards.

- Changed from v3
    - As suggested by Krzysztof Kozlowski refactor the code to follow
      DTS coding style and use hex everywhere in reg.

- Changed from v2
    - As suggested by Abel Vesa move the GPIO configuration for SD card
      detection (specifically the pin settings for gpio55) from the
      SoC-level device tree (sm8750.dtsi) to the board-specific device
      tree files.

- Changed from v1
    - As suggested by Konrad Dybcio the patch into separate commits per
      board and did formatting improvements (e.g. aligning < symbols,
      placing each item on a new line).
    - Addressed Konrad Dybcio comment to use SVS_L1 for opp-202000000.

Sarthak Garg (3):
  arm64: dts: qcom: sm8750: Add SDC2 nodes for sm8750 soc
  arm64: dts: qcom: sm8750-mtp: Add SDC2 node for sm8750 mtp board
  arm64: dts: qcom: sm8750-qrd: Add SDC2 node for sm8750 qrd board

 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 23 +++++++++++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 23 +++++++++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 54 +++++++++++++++++++++++++
 3 files changed, 100 insertions(+)

-- 
2.34.1


