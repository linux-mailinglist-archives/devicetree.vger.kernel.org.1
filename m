Return-Path: <devicetree+bounces-239198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 844D8C62952
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 07:50:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 08F9E35258B
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 06:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7075431618B;
	Mon, 17 Nov 2025 06:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q67ZxEuW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RSIWIRs3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D87930EF64
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763362211; cv=none; b=pVhiM51WWvDTXAZZUumxH9s+nOuo2Z30mCf9E74giNX9M3VrI6qTCjIav9FXIt2tFCIbQlUNKcTt6N8yuJOPl9miLF/isAo/1TJL/a4NXzi9X1jAqUChljwnlVZj6VGCJgCxCfncHpy3LliN18fmipOb5czLhmk/uEy9I9LaDUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763362211; c=relaxed/simple;
	bh=z274ULlADt/lw2gGIxtDwND6Y6jAp5qc5uzGWrEpZj4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=aFZz6DAMEIq5+7QEHMmQ9AU6Jzxn+Io0dxT+I5D0oveAgSYpu2wQfrFbeepAKugxOErScJ4OUNNbXZOCDMJFtmZZSqEm0CKAAe7hEhKM0ACEwVPBQltmtwmQ8DRCbluxdCsPhSafsR7GAcrZS3M1g781BJD9LEL/x0kZB9EiTSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q67ZxEuW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RSIWIRs3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AH4nvmO3106691
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:50:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=zIUEWC9aTnKx8Mg2PMyUXn
	CjmFDNukOgtcjHjNMgTDk=; b=Q67ZxEuWDbW7WOlwbwFDxmsOao1BMJLgPllYP6
	oHQvF9FYEZ9QwVet6KebNkug75u52fIia+eDeriSMKh+UdTZvChvtf7+lLoVoL5F
	5bvUYmmam4CPR3KDbbImsoB1PQcRrW/7SGz+7Do6Ke1QHM+MmalMcmOZL0+yfRt3
	gc7KIyi7fSnL7tEktNCM2iawVI+XXINGYG7WHfwee0lnGuVa3Ucj8S/gSUBUUNbN
	p07tME3APQRTqwbQ2t3ZGswJeHb6pyYFC1IecOmea2XTw9PP18bqHg3nWc/Ousg7
	4jsOYyanpaX8pCPvFkgF6F8ccGiAVxzNSil5467QP0LdfnzA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejk1kmpy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:50:08 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2e4b78e35so309299185a.0
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 22:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763362207; x=1763967007; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zIUEWC9aTnKx8Mg2PMyUXnCjmFDNukOgtcjHjNMgTDk=;
        b=RSIWIRs37pBbxP+Wj0CU5+eQO2UcG8cQSEhNt1Mfu9RDekWDtLJ0BDGpyn7kSZzIgY
         YlFWZUfxz4QjC9Lmnmbi1e+JSqJMhAgkwMesas6+ziLyxLRDNh+tlMcHx4VAZNWw/gTV
         xKPtgvhUtGMu/bVZYfyyCi5BVKEE4Pg0obF0nmZBxIOS4SAnhx6w12iBKInAXdxxum0K
         kJlziaXquXiLUdL2JwT1Eey+GGlw8BrN1Q12WX6tRZQbI6pLtm1Ku1buMo/9hSMYSElq
         y1TfLBx5+ZXFDBU3eYnCMGVJgsmXVD7hoRLE4/LGEkcyLXML16VZS1EgOoCqNB89cXmV
         9iJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763362207; x=1763967007;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zIUEWC9aTnKx8Mg2PMyUXnCjmFDNukOgtcjHjNMgTDk=;
        b=uwDeEktJL+IN/CsUoyQDhAANlLCEPT35KuNCerhOIULfb+Qdmi5v5h8v10XqTxRMJg
         JobOGiB/xcd9EQ6oH9umD7LlZyVyNJbbyRWkBan92Kxjzk1qeyS4b/ok5jZZYwUsmBv2
         mkVE6A8nUhitvi5OESplVeYcadCZ2Aj+4Q7fwje7V0Hzffkb3jg3PVQ4/HyWgNrSpMs5
         DyeUKjAzr8VNW6jlNuEbJR7tNguRS5LBMkEeJ1sN0RzPQ/MjnjIhWsOT37JMFTmdGjwg
         p9OJzDqJJn30wuawUSSMd21U7kndqeSw4lys91dup6wVQqufYtJd2atf7nKPi+D6DEzc
         JzQQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1Drlds6p4J2dTWTCxC8/C6g5L7gIrJxwTjIwcwbtx3R1Fa5m7DhtYyYLo91DbK98HrnIcoYxTYr9O@vger.kernel.org
X-Gm-Message-State: AOJu0Yxed0gcc7q2ca7f8wnvsQlWAIXxqU2EHzm402fS5A29qm8k4/Fr
	UW7OpTT/rwxhSLcdwGSfvd/WwgRmILoMvrIW/FmN1lnKk7fHuq+NDz672+uxFcwB3i0JJtmnIw9
	K5u3r7MoP8RyAlyZbJZktDWtJG6lxXjXSheQgXbxDIFuDi86/Ffhc+Zb7J1llDKlu
X-Gm-Gg: ASbGncuJMAxlY5qUuQQLzYWPkvA/eMTHBCibB7VzTC768oeVK+/cVenQLKfW0eyFKBq
	4N8SidgYqp3cGkevENCnZRuuGPvV8dqt1+zMMS28GaqT8b874pZDujg0oYURh9HIalJAuurSuMi
	Fpkd888vx+LUC7limQ2IYiIgqtg3M4y2Bn8R28GE5qFhFUV/dyvf3bjrse+MRmyvrkCkjECoZpN
	P3yj2rJoTgGPLD4qWa5QlcY++DIJG23B3wWxzfLJPo6pvz/69BRvy77JgBxcNvmvCK6Hb42zQOQ
	AaEPj+9EcHOGTr5gR2dag45JiBH70o8azQP/U76QQypGL+1LsefycM5RL6g09hzc36rJXEH1agj
	5wHhCi9julHx0N8EI7d/4tOuOCsWFfP8/fPFS/o2lvg==
X-Received: by 2002:a05:620a:1a22:b0:8b2:213a:e2e4 with SMTP id af79cd13be357-8b2c31e8b84mr1512875185a.84.1763362206633;
        Sun, 16 Nov 2025 22:50:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IERIpb4ytfGZ6fVJ9ikfLVzznxfE12y/q2fWgMKF6V4xdzoAKRF5ntRaj/dBcn5aJsg0FsQHQ==
X-Received: by 2002:a05:620a:1a22:b0:8b2:213a:e2e4 with SMTP id af79cd13be357-8b2c31e8b84mr1512867285a.84.1763362204675;
        Sun, 16 Nov 2025 22:50:04 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b2db481f57sm498961085a.4.2025.11.16.22.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 22:50:04 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Subject: [PATCH v7 0/2] Enable DPU and Display Port for Qualcomm
 QCS8300-ride platform
Date: Mon, 17 Nov 2025 14:49:31 +0800
Message-Id: <20251117-dts_qcs8300-v7-0-bf42d39e7828@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHvFGmkC/y3O0QrCMAwF0F8ZfbbSZuvaDhH/Q4Z0baoFt7lli
 iD+u3X6ErgXcpIXI5wTEmuKF5vxkSiNQw56UzB/ccMZeQo5MxCgpJSah4VOkydTCsG9Nc4oC6G
 KhuWN24wxPVft2P7yjNM9o8uvZD0SuRVtit1qCrD87536QMQfsuSCo/HGZxaCg8NItJ3u7urHv
 t/msf8e6xwh/zZpaQoRwVpV29LUuosd1NLqLr/rg1I1VCF4pZWByNr3+wMF0WM79AAAAA==
X-Change-ID: 20251117-dts_qcs8300-c98a8592d4f8
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763362200; l=3230;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=z274ULlADt/lw2gGIxtDwND6Y6jAp5qc5uzGWrEpZj4=;
 b=Axw0/VQ0jXOr46j7Vrmne44qu6LbhQdsy2bYKEAt2UCTHaBGAOQdvPR57q5BNEG4bMPTjOngT
 B12/Qrm4Mm4DbA31JMseADo377KDzcIjbiDZLzXik3rQmF8XE3RPPwh
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-GUID: j1zygrc6d2cKvrNSTFTwO3Ow-wqmM-42
X-Authority-Analysis: v=2.4 cv=OpZCCi/t c=1 sm=1 tr=0 ts=691ac5a0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=Ki_nu0Frpaj405WCvX8A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDA1NiBTYWx0ZWRfXzIA4wD4GiQ9c
 0kCgVPDzzlpbYEjTu+AK3uXbSLl1Gi7hsycTg43DVpvzcr94RhDkDDT5Th155rEOodaF2BBz1Yh
 V/HeuVmgB+KdMI5HkVscL2V6XKXZOhpHBaY/W33KAKoQO/fzyOSlXRKzjHarpOVMP+vXQ4xJFo6
 sFfkjzLzDW7nkBmnB6oIIjVaLG+psL0ArDh/SKSQNBfv4nRuKXnj7/Nohr5mmqdqlawmKZnxyb5
 EwFLzswxjLluXX7xG6k5/8yE3lJcwymvkNPbOKijnmiTSF7Hybn0NssB2gN4XNKDQ1d2OuuBXfW
 OdVGKFRr6aab9oGeo5/tXVRbD8Ew00tmUCyqbeF8ClvWoU8zZh1+qQ4ToBsKfDJMv/zOzPTB55U
 p8a1UZIPZWE0A+fJjQ/FDBBL5zjc2Q==
X-Proofpoint-ORIG-GUID: j1zygrc6d2cKvrNSTFTwO3Ow-wqmM-42
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 phishscore=0 impostorscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170056

This series adds the MDSS, DPU and DPTX0 node on Qualcomm QCS8300 SoC.
It also enables Display Port on Qualcomm QCS8300-ride platform.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
This series make top of:
https://lore.kernel.org/all/20251029-qcs8300_mdss-v13-0-e8c8c4f82da2@oss.qualcomm.com/
which has been merged into msm-next, but has not yet appeared in linux-next, list here for reference.
---
Changes in v7:
- Repost after dependencies were accepted and rebase to latest linux-next.
- Link to v6: https://lore.kernel.org/r/20250917-dts_qcs8300-v6-0-5c862aa80f64@oss.qualcomm.com

Changes in v6: Fixed comments from Dmitry.
- Rebase to latest linux-next and remove merged dependencies.
- Modify DP controller compatable to use fallback.
- Link to v5: https://lore.kernel.org/r/20250806-dts_qcs8300-v5-0-60c554ec3974@quicinc.com

Changes in v5: Fixed review comments from Konrad.
- Use interrupts-extended to introduce interruptions.
- Sort the dp_hot_plug_det node by pin number.
- Link to v4: https://lore.kernel.org/r/20250730-dts_qcs8300-v4-0-5e2dd12ddf6d@quicinc.com

Changes in v4:Fixed review comments from Krzysztof.
- Add the 4 pixel stream register regions and the correspondings clocks of the DP controller.
- Change DP controlller compatible to qcs8300-dp.
- Rebase to next-20250717.
- Link to v3: https://lore.kernel.org/r/20250114-dts_qcs8300-v3-0-d114cc5e4af9@quicinc.com

Changes in v3:Fixed review comments from Konrad, Dmitry.
- Correct the Power-domain for DP PHY should be
  RPMHPD_MX.[Dmitry][Konrad]
- Correct the interconnects path for mdp and align the property order
  with x1e80100.dtsi.[Konrad]
- Rebase the patch to latest code base and update the dependencies in
  the cover letter.
- Link to v2: https://lore.kernel.org/r/20241226-dts_qcs8300-v2-0-ec8d4fb65cba@quicinc.com

Changes in v2:Fixed review comments from Konrad, Dmitry and Krzysztof.
- Reuse eDP PHY and DPU of SA8775 Platform.[Dmitry][Krzysztof]
- Reuse DisplayPort controller of SM8650.[Dmitry]
- Correct the regs length, format issues and power-domains.[Konrad]
- Integrate the dt changes of DPU and DP together.
- Link to v1: https://lore.kernel.org/all/20241127-dp_dts_qcs8300-v1-0-e3d13dec4233@quicinc.com/
~

---
Yongxing Mou (2):
      arm64: dts: qcom: qcs8300: add display dt nodes for MDSS, DPU, DisplayPort and eDP PHY
      arm64: dts: qcom: qcs8300-ride: Enable Display Port

 arch/arm64/boot/dts/qcom/monaco.dtsi      | 220 +++++++++++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts |  42 ++++++
 2 files changed, 261 insertions(+), 1 deletion(-)
---
base-commit: 0f2995693867bfb26197b117cd55624ddc57582f
change-id: 20251117-dts_qcs8300-c98a8592d4f8
prerequisite-message-id: <20251029-qcs8300_mdss-v13-0-e8c8c4f82da2@oss.qualcomm.com>
prerequisite-patch-id: 59af38ff68afe283dccd4295951153e59e512bfc
prerequisite-patch-id: 05fc429deb58c4aadd82f7d0d714af7d34d8399e
prerequisite-patch-id: 52ee61224c7589b2122799998a8e99829d06eb47
prerequisite-patch-id: f664581f48278298bc3501eecf637d1eb16dbf9e
prerequisite-patch-id: 465ab53516efbbe38f85409e7ccb3793b05402c6

Best regards,
-- 
Yongxing Mou <yongxing.mou@oss.qualcomm.com>


