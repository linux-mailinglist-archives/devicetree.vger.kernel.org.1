Return-Path: <devicetree+bounces-270394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFmCEHuspmn9SgAAu9opvQ
	(envelope-from <devicetree+bounces-270394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:40:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A5E1EC000
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:40:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E568830659DC
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 09:35:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 159E838C43F;
	Tue,  3 Mar 2026 09:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JgFqto/l";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZQ0gEvGZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59FE38C417
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 09:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772530540; cv=none; b=UmI/l3RJs0tKNhzl2m464+6F6yENwaEjx64QflqB9yJxKhjmNWb5oALXNW9/sf/XJbK/dNYQzGQE3JeyWkCLXvjH9EQS6ZtVactoUZlOgY9cr0O6IFcnOaxtiWtDLbW5VWcEIeoAI83kVFOGRxwtn1ib7wJq1cl8pmKiN4L29L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772530540; c=relaxed/simple;
	bh=wEPfc0ygU2GYfoP1v6X5uIwJoeoMWGQ0SrsE83Yt0po=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HuHEaMvVfe5OFQr846QuvTwRAFuoRzLBvK4ghY7dUPOka4StjGm/M39708JtUlACNUt6kVscUOtA33sqlNPrHLVrSE748ki9KG3cSBXTy5uuIWM+S/0n3jDu1yB1X644cAyOhVNu7cUlTUQonH3kKobtrUwwkk0ZsWP0tHYN03E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JgFqto/l; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZQ0gEvGZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6235fXWh2995968
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 09:35:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=pw9OXHUwWpHlSsYUeP25ZF
	lkTojQSwDyCD+RcTmM+/E=; b=JgFqto/l1ccQj7jTlUjrjnVlqkxN19BmnOoevc
	lGfU8DSaz6wpxYWkoJs0mOOa/fbc1nUeVPK+TgLg78bCri4e8UgevmupSNVsBXTV
	e30oY02GySLVieMbaoJyGt7+DgDAeHFH9BFWC4w39WOI+URtLwOv7SD/x1Vf2BOJ
	oSF4bjuJcrmbfoD02cRZZI9eqsGRXwwDqjsvhkqYTP+2gZZmYI7U+U5wekrBU2T2
	JWv/BcP1URgLO8LARnLm6P/QXGn7kjwWnMChGDdTuqR6oHEC80os9bhZp7C/j0ZD
	5aF90rrSvhnjAULRbOly1ijBvfiMbdv+H+G65MZke9gCbVJQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnh6uad8g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 09:35:38 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8274bb61b6dso1903819b3a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 01:35:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772530537; x=1773135337; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pw9OXHUwWpHlSsYUeP25ZFlkTojQSwDyCD+RcTmM+/E=;
        b=ZQ0gEvGZ4OOJ7AhYcQCnkv/bARXUTEIkTBLT+j/fM+0w0othXdmObSBHfELzbp63r5
         q114LQJvuNY8TR3b25LURZjx200DM02EuhOem/MkKiumF36+ZkxyUhV7Luu8rO08HbqS
         UnjgBrdVgS1ZuZts7eGM8xGW50lKJUrzV6qmruH3z3dVBjW0bc3urmJODl3s3rFR3m9y
         BvV6nOh5CD1esB7LGQMe2vmsmW8wUuDQvMwirndqXY0F/nevvPO+aMVx/fZv/4ZG2NMA
         5VOtAExWMIm9dfOElSwV3IBPxQWLGHB7oEjCT2aPkHdoxEpEJoZr2HfB0ucNVYhX2Ocp
         hSJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772530537; x=1773135337;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pw9OXHUwWpHlSsYUeP25ZFlkTojQSwDyCD+RcTmM+/E=;
        b=EG7oSntLhVtWeDGlchZOzifAYa2bjf9JIM+9zvPhXUjOu64lvKTZnQKMysebBN+HWr
         g9OtcebCWoQnIxbcXZDTe+qi9HxjVxvmKGhPBQNMUPIuqiQj3+ZT07nYwvREK7T1/UmU
         GaNfJNxpaLy0PZ0k6WyNKshI0UFr6dTxHcCft1PFi08obC9Te92D/h1FYLRNXDNqgTnT
         ZLZMeI78nbROMwF/R2K7s6nXNzNam8tYXQ2ef1OKkcIx4K1KiUXT4nLA7eHrvNH++U/M
         t6+wdwzatAygPQpTpk4IbzBCCvjyubxsFDVyIneIS07dBQyuyhJii0fAge4vk7WHSvg2
         MRFA==
X-Forwarded-Encrypted: i=1; AJvYcCXNUBUdupBJU25EjJ/C8lX61GvACO9m1K5GImi8IXKpcCQwdpMxzqaEnUtZfoJw4fxq1ZMfS4Ip1oV0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1MJsJSnwB9YNDY9Edln+fvU3rKiyllnPMBxtS3q80QYMqxQbT
	aF/ZjuclohCzREi0Y52W7MLBu9LauKc0t8xYVRfjRTAdp25nlnc8djG6kZrry7OGNmdNhUu06GV
	FsheEgJZouVr0J4/KsAFUiUA54MiWQQQN/Tzb+J5Ajp9TCDg8CUNg9y8tz6Pcmexkz8V/5xT1
X-Gm-Gg: ATEYQzzkghUTfqqp9hX5qsiIj2kOWkCUD+jNwwoYrlxS2QcnUTLhS7Sc9Cec4k5adLU
	iFPkcr+XQ1gKQz1E1FO75owslEk5ObIAboel1o7LAquUUzmgeGXOblUQ7RIS72nlVFV8yOqvQvW
	poZlcODG2wl20fV0ZlD1wQah4pcZHzpRiQ8gwMK/IQKLUXU5Jdrh88Y3Caz+kUBl49PHO62cz0l
	0A+fbHchZu9fSE5uUyWfkn1Dvu99WljA2LlzyQPdNV42DJrA67nRtjVNxyg7lx/VpMkmx7KoDr8
	f7ZHihXMSL8m4eY+ups26A/X0+VSQWPXdLwnhFTaEJOVjcOiEm/9zFs+QxSkTgpIh4Om5tn1e4D
	IN6M75xkYi4YtqDcB2tH1Zzy2Rvv93UwAip7ibebPX01s8w==
X-Received: by 2002:a05:6a00:2e04:b0:821:a7b6:10a3 with SMTP id d2e1a72fcca58-8274d9e67cfmr13924045b3a.34.1772530537269;
        Tue, 03 Mar 2026 01:35:37 -0800 (PST)
X-Received: by 2002:a05:6a00:2e04:b0:821:a7b6:10a3 with SMTP id d2e1a72fcca58-8274d9e67cfmr13924010b3a.34.1772530536689;
        Tue, 03 Mar 2026 01:35:36 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739ba6275sm19644212b3a.0.2026.03.03.01.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 01:35:36 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH v4 0/3] Add support for GPUCC and GXCLK for SM8750
Date: Tue, 03 Mar 2026 15:05:24 +0530
Message-Id: <20260303-gpucc_sm8750_v2-v4-0-2f28562db7c9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFyrpmkC/2WNwQqDMBBEf0X23Mg2mkR66n8UEdlGDVSj2Rpax
 H9vKr31MvAG5s0GbIOzDJdsg2CjY+enBOUpAxraqbfC3RODRKlRno3o55Wo4bEyCpsoRaW1Mlo
 b1bUIaTUH27nXYbzViQfHTx/ex0Esvu3PJfHPFQuBQpMqsVK6pIKunjlf1vZBfhzzFFDv+/4B6
 Pa6QrUAAAA=
X-Change-ID: 20260217-gpucc_sm8750_v2-866576675fa0
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA3MiBTYWx0ZWRfX+/tuT8kL5AOi
 6s5PQVHsq8kN1MhyRVIjZ4O4+r0sGc5UAHhwwBxid9zeGko8yiHa+65DvulAU2PUt59EwIpeBfz
 WNqaeC50kYnkMrDSe99JUpW7NeqXDZvvWY0O83NP3hhBG3Cpt2n+NCC7BjOCwxEPDjU3RqtztK2
 afW/greTcoHAp6g7c/dldsXz4XU8vK8eRQoj166ELUqON/cfgxRdK+F96UPI4YDJr4I4UDG6bOD
 Pj56HtPBte5ncWruOB52uSIiyyuCnhQROjj9JdElURNKu+3gLBqt8J6SgucKluEFWQbFXGHe0Nh
 ckD/e9EikngtCf/+lTMu6chhpdc6EKTMTKG9NF8mtN8se+9Gp4rO1YaYsN1/P15h1f2qBNRK5fy
 w3GjqW/fW10zflkjs9CwchaHz3mLuIPNxJ+rrsnbE3FTf4v1LVJtWLC4M8xzWfIvpW4HvC2yj2W
 HKP+VAE/sb5eOUoZZDA==
X-Authority-Analysis: v=2.4 cv=MuhfKmae c=1 sm=1 tr=0 ts=69a6ab6a cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=TW7xPe3Xj7hOj2XzWEUA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: lIgLj1kpvxzs8qodOUlaxaajyCMa9B0j
X-Proofpoint-GUID: lIgLj1kpvxzs8qodOUlaxaajyCMa9B0j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030072
X-Rspamd-Queue-Id: D0A5E1EC000
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-270394-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Support the graphics clock controller for SM8750 for Graphics SW
driver to use the clocks. GXCLKCTL (Graphics GX Clock Controller) is a
block dedicated to managing clocks for the GPU subsystem on GX power
domain. The GX clock controller driver manages only the GX GDSC and the
rest of the resources of the controller are managed by the firmware.

The Graphics GX clock controller is a reuse of the Kaanapali SW driver.

Changes in v4:
- Add RB-by [Krzysztof] for GPUCC bindings.
- There was a documentation errata update for GPUCC and updated the
  bindings to capture the MX and CX power-domains and required-opps.
- Update the compatible[qcom,sm8750-gxclkctl] in code which was missed in earlier patch.
- Add the 'use_rpm' for GPUCC.
- Update the power-domain/required-opp handles in GPUCC device node.
- Link to v3: https://lore.kernel.org/r/20260220-gpucc_sm8750_v2-v3-0-6c5408564c3c@oss.qualcomm.com

Changes in v3:
- SM8750 GX controller is reuse of Kaanapali SW driver, update the
  bindings.
- Remove 'qcom,sm8750-gxcc.yaml' as it reuses the driver.
- Cleanup the 'gpucc-sm8750.c' to remove the GX clock controller
  reference.
- Add the corresponding changes in Makefile for gxclkctl-kaanapali.o
- Update the device node for GX clock controller.
- Link to v2: https://lore.kernel.org/all/20250723-topic-8750_gpucc-v2-0-56c93b84c390@oss.qualcomm.com/

Changes in v2:
- gxcc bindings: remove double colon & list the names for power-domains
- Link to v1: https://lore.kernel.org/r/20250708-topic-8750_gpucc-v1-0-86c86a504d47@oss.qualcomm.com

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Konrad Dybcio (3):
      dt-bindings: clock: qcom: Add SM8750 GPU clocks
      clk: qcom: Add a driver for SM8750 GPU clocks
      arm64: dts: qcom: sm8750: Add GPU clock & IOMMU nodes

 .../bindings/clock/qcom,kaanapali-gxclkctl.yaml    |   1 +
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |  23 +
 arch/arm64/boot/dts/qcom/sm8750.dtsi               |  68 +++
 drivers/clk/qcom/Kconfig                           |   9 +
 drivers/clk/qcom/Makefile                          |   1 +
 drivers/clk/qcom/gpucc-sm8750.c                    | 473 +++++++++++++++++++++
 drivers/clk/qcom/gxclkctl-kaanapali.c              |   1 +
 include/dt-bindings/clock/qcom,sm8750-gpucc.h      |  50 +++
 8 files changed, 626 insertions(+)
---
base-commit: 350adaf7fde9fdbd9aeed6d442a9ae90c6a3ab97
change-id: 20260217-gpucc_sm8750_v2-866576675fa0

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


