Return-Path: <devicetree+bounces-209429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DBFB371FF
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 20:15:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB2D236163C
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 18:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF129362089;
	Tue, 26 Aug 2025 18:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MP3y2rpz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2916B2E2659
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756232118; cv=none; b=luc09V2RykRr2R/tQQNh4MDtQ75bznMi7GukUPJGR1elAXsmkA71Rs+21Rcr8WiKOwMFC5z9bJJUfTm1bVNI7cKDN5inXaxn0p3ACYf4DoRPIUjt0mHPAzv7XWD/eT2G8msr8Musy4IbhgGp+HipMhvpfOgKrPiRUu9kbB0i3Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756232118; c=relaxed/simple;
	bh=CGQhTSMseq2qj3ydE5N9CekJ8RSug+pOqb24i6ooj/A=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=Ll/+XWzqhZfENC9YK0TMbdF2XS+8ZILjnrcGoRjm91HRQIDPdbmfvueFtyw/f1sp2R36Pavdcv2DhEjXO/9ha397Nigwn8cV3YbYE//loRrsWPG/rXbaCrVOi/p148WIhrw5LkGUzYsg4GLa3B/zAdAQ8ALi/YS3erd1eL32b4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MP3y2rpz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57QCe12e007038
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:15:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=4qKaRv93h1EZgasc06wcC5
	9SjsAa9rH7JTGFWDeitdc=; b=MP3y2rpzz4nQnlzYzLYDXwYhPV9AqXjaNpLR5J
	Ll4N29CfrTG67vIW52sDPbGip06N9MDKidsIey8Pp70+3zebokDiWsc+lkflNatk
	RISlnHMxv0kqgBeeU8+0+njysLEQPZ/QRBcrd1jgmtLEjBByvSbDk22uM2sUi2X8
	z52t/xU/aFwfPuMhn4zKYxHHfZNiLg0N+2nkGVtPGc8EUv5S1LekdwwTlhnD7c6b
	NeNgvQD4SrefmB0Hd7xOD+YcaX1/1SS7S4sryqIwSg7PsxuTGzzYr0lvRO1p50z2
	qQB1U7jLSWtjZydbdRkMFsHBaIfXwgnRuHh9OOGyGkvcZZvg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5uma2ed-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:15:15 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b4c33f88dc1so58988a12.3
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:15:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756232112; x=1756836912;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4qKaRv93h1EZgasc06wcC59SjsAa9rH7JTGFWDeitdc=;
        b=SoOWtv++imkoiWztEXnix29IUDLNIwWD/LXODf/D7JbvgUWFfcBBPp+5vBZgID3hZY
         7IvOfntzct87n4Bird0GEIY80ivsogCaENo6qRJjQG/k7PzkQA8C+s2mwu6lHjyx/crj
         PrApYM6rVMPZLntP38UBRrhKMePkC4uGYOixoo5hw5tXlyDBJ1uRtbrz4jpi9iY55d8p
         ljowKbQpB+yfnov6rbiaVoiuydPz8rjJyfnGU8QqGrzZZq/gJ4bJenVMakUql1ol3/jJ
         SsIYsxARA4W7LbSuQ1M2KjkkzMXyze9QIC/iBU+O1abMl4jfnUTNywm2RyrGdi2vfQX2
         xcUA==
X-Forwarded-Encrypted: i=1; AJvYcCWAHUvfeR04qajMwQZgFQhpds4CCpj6+BO9LMMoSBBd3GKyMrdvI42gN0/qtzo045PcbofYYsUvKkSt@vger.kernel.org
X-Gm-Message-State: AOJu0YyZMbdk4/vLSpGJjtwmz/k0JJxYN3nHdkimHuOZmedyQCVBf/wX
	mdLIiMjTpvfQ3GqPBzMHCn3a0Sy/6XDLikWuHj4CB5hbxp31XmqRXlqpT7XFkKOn40AJD42RAYW
	Lp8z8SvNxsbvULs7Re2NpuLAM6iicGeU0So/mbrxUMLoIT0U81cltZy9ZcItv48hW
X-Gm-Gg: ASbGncvfXtseXJLO866JyTcAJvbED702UtM2FL1EP6AyKfqj3z4IWy42Pcy4eP7aKZG
	deYzysjxnLxDTbr2V5xI4Qd4/HqvcN3NQkDTd81Iv6BHtu7i7qjxrVk4yZ96r+GtwSRC39Llj8o
	S9ibG1FPtbuzstJO8yPW6iIKfk/7vZpDZ8771E7mQkiblDVMBZORs/JdlTIU/FlwQpttWrz2hD/
	MFcg1DHAZp7ByURCtCgGcaAjj5Saqkkd5GDcGqtqvHJsYvdYYBy+AmcIewVbM38lKF5JtH6Wirz
	vhZEZnuye1DAwn0nIOMDlsJ0j/H6//S5/x/hA/N8kj651ZO0s4lLiZjGcjEGV+3sjnjmYDs=
X-Received: by 2002:a05:6a20:3d89:b0:1ee:cb87:79f0 with SMTP id adf61e73a8af0-24340d095e7mr12851683637.4.1756232111881;
        Tue, 26 Aug 2025 11:15:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAOUipjrhtI5wo5iCy//W00zdRD0rUuIpHC7OEY+INkwu7tSLAVDPeyoPyPkBf94Oh1aR4bQ==
X-Received: by 2002:a05:6a20:3d89:b0:1ee:cb87:79f0 with SMTP id adf61e73a8af0-24340d095e7mr12851660637.4.1756232111359;
        Tue, 26 Aug 2025 11:15:11 -0700 (PDT)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7703ffb47b9sm11065536b3a.3.2025.08.26.11.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 11:15:10 -0700 (PDT)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Umang Chheda <umang.chheda@oss.qualcomm.com>
Subject: [PATCH v3 0/2] Introduce support for Monaco Evaluation Kit
Date: Tue, 26 Aug 2025 23:45:04 +0530
Message-Id: <20250826181506.3698370-1-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=VtIjA/2n c=1 sm=1 tr=0 ts=68adf9b3 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=OP7YlZzrarwTRlDwEmgA:9 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMiBTYWx0ZWRfXyoGdHZbGJm69
 ymRCRNRIG0Rt638I3WyqUpjlal7wj53d6J3W/4bYNnHPddBW7zoWDnqtkuD4qPDmE1K/oT9ig3F
 NCZ4kIUgSE2fm3+XlNKwYpv6CbjrzNBnEvJDpTc6ZepnR8PsSskjbIY5tFto/pzlDw+q73szjEN
 F/kSBnmBJE6v3V6uxao5eGWYq6Ltf6pyNuHJ3Pz23FUFH54l6P7fGlKL5X83lNiAAzRhNFDYLj2
 6K+uDVz1zWvugt6MGs7iDWZTB4d4inL+xVM95AY4+3LphECDpDHpHkgKfkjBC3FW9p5PRRu5cTw
 X3zl6FFRl3REPHekz4ji97ZfO0Iq39MrOkNA0SJxUg+z84J4P+PNxwb8WGNmQm+mEGH29PXMyDN
 9DjCpxJB
X-Proofpoint-GUID: yim2-J9mmnFIL80XshpVBwgjBOYylg0V
X-Proofpoint-ORIG-GUID: yim2-J9mmnFIL80XshpVBwgjBOYylg0V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 suspectscore=0 malwarescore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508230032

Add support for Qualcomm's Monaco Evaluation Kit (EVK) without
safety monitoring feature of Safety Island(SAIL) subsystem.
This board is based on Qualcomm's QCS8300 SoC.

Monaco EVK board is a single board computer (SBC) that supports various
industrial applications, including factory automation, industrial
robots, drones, edge AI boxes, machine vision, autonomous mobile
robots (AMRs), and industrial gateways.

Dependency:
  - Revert commit b5323835f050 ("OPP: Reorganize _opp_table_find_key()") to
    avoid regression introduced in linux-next (20250825).
  - The ethernet PHY QCA8081 depends on CONFIG_QCA808X_PHY, without
    which ethernet will not work.
---
Changelog:

v3:
  - Include changelog in proper format and make it more verbose [Krzysztof].
  - Fix subject line of dt-bindings change [Krzysztof].
  - Move the H/W peripheral information added in cover letter to commit text
    of Board DT change [Krzysztof].
  - Include 'qcs8300-pmics.dtsi' in the Board DT [Dmitry].
  - Enable below peripherals as suggested by Dmitry and Konrad to include more
    peripherals in this series itself :
      - GPI (Generic Peripheral Interface) DMA controllers and QUPv3 controllers
        for peripheral communication.
      - I2C based devices like GPIO I/O expander and EEPROM.
      - USB1 controller in device mode.
      - Re-enable Remoteproc subsystems ADSP, CDSP & GPDSP as fix [3] is
        merged.
      - Qca8081 2.5G Ethernet PHY.
      - Iris video decoder.
  - Update the Board DT change commit text to reflect the above
    newly added peripherals changes.
  - v2-link: [2]

v2:
  - Address Bjorn's comment to rename the board filename and
    compatible to monaco-evk.
  - Include the bindings for monaco-evk with the existing qcs8300-soc
    itself instead of adding a new SoC binding.
  - Drop remoteproc support as qcom remoteproc driver is currently
    broken in upstream [3]
  - v1-link: [1]

[1] https://lore.kernel.org/all/20250623130420.3981916-1-umang.chheda@oss.qualcomm.com/
[2] https://lore.kernel.org/all/b376d130-2816-42b1-a8c1-1962ee0c2cd7@oss.qualcomm.com/
[3] https://lore.kernel.org/all/20250804-mdtloader-changes-v1-3-5e74629a2241@oss.qualcomm.com/

---
Umang Chheda (2):
  dt-bindings: arm: qcom: Add Monaco EVK support
  arm64: dts: qcom: Add Monaco EVK initial board support

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/monaco-evk.dts       | 490 ++++++++++++++++++
 2 files changed, 491 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk.dts

--
2.34.1


