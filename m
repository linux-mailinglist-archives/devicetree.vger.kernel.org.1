Return-Path: <devicetree+bounces-234216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4870CC2A4EB
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 08:25:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0187A3A4718
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 07:25:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F7F29B8DD;
	Mon,  3 Nov 2025 07:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="csGGL16V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aCCHHFHH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5E829AB05
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 07:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762154744; cv=none; b=CfWuA1cps4hWIQQAODhdUtPfi/gry8D6WV2Ltdk3AW6wJ94EO2w1zBYOkrc2F9/opLg5cBOG/PJ+sfrwYM2DTCbeHAJfQUoAC4uxZc/qC/mH48O02b6sZi4lCj7XX+8VZJprlGfO2cSt6vXSiEu+K88r+XVD/s9kuEM6utiMIl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762154744; c=relaxed/simple;
	bh=DZHDaet5H0XPWYXMQUHXA/gE6KYkGCbnRYLfNcGq9Bk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=agfg3d8sOuVkI7d5XAPsjDxJxSu9YxQsEP7m7mtTkKrMdgEKIsZAZHYWiiTnlbFrSLmOt9VTXW2A5UbgFowmqxEnVtgx+S6GvJoLip5y+m0glMVshev5kDkPkslMxL1C1F6nOywap085RXIRLap+tWjPjWdMtdM2k+UDLdyp4RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=csGGL16V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aCCHHFHH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A33DNEd1941200
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 07:25:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=6mARpm0uTWDa1LpiHjtXdo
	8OkpNCqBx9yA2DYaEgi/Y=; b=csGGL16VKc41O2xkoj9r0PDkzrBD1bBuvcCi6o
	P6KvBqD+h8CfkFh1DdPbXwrsNBzAm1QQixmh2RXPcQ9QzPBzSDEfPU11NrnB3VNp
	WvZOXCG2GeCZwMAnSnexagS8K5P9fYG5XxwCMKjWkdoscdPhTbIezFABmVoOeENF
	Xe4YA8KhymAfYMwSHK9sproIawXF+l9D2sEv9LQe6gyBbAhIjqG5C59ZurXjk9kP
	PoWwJCWB5joZTGI5sANyU3ZU2QyKKrRWp1jATdIdC4c/o2tEF/FoOhom/TJ7b1zX
	Rirw+f4aFM77kLqtIrGX9t6ZcStN6Wjp9+6oURtGfHHMQ9SQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6m9w8hn6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 07:25:41 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-33dadf7c5c0so4933477a91.0
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 23:25:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762154740; x=1762759540; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6mARpm0uTWDa1LpiHjtXdo8OkpNCqBx9yA2DYaEgi/Y=;
        b=aCCHHFHH4zLJbmxSWZ2jbgkTcB9aDc1vJU3QcdxLpVJ+TP47FtlcmZqjligdCALPGD
         Dnn7csnxEL7qn8a/9zCccZQCLDUa1Eu9bNmjCuVpAMF9FxutUUgeogM10sW8Hn9CnaK1
         TvH55OLutLVmebGHPbLJbKzFNeCaJ1p2tZOyM6dFJyJmZN1bDihrWe0TN/caZms7z2In
         cAf+dT/FeAKx5x+B+8D8KqX5EElMz0QO8vW76+Cm8zLnHuVlgaGdf8QbJKjG5cbBJ/+e
         ZrYvGQnz90H/HuzwQGCdPKF/YASFyVR4xCvSd6pzkolgSqf/eIbsPrilyqAK7kb23ugO
         R1gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762154740; x=1762759540;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6mARpm0uTWDa1LpiHjtXdo8OkpNCqBx9yA2DYaEgi/Y=;
        b=wz+kdFPgEaaYOotrJH4vC6+TTM2Aav3VjaFojbDzuHyHlQGRuVgdq2J7dqqnSsG0Ya
         4dXRMfFqLUe9soUSRkLwddiC/LtE2vgWjIk7IiG/5p6g8Y65iSjaj+8HVXpqCOxfcMuP
         56rmKRTpD2w6hLjH+CRJnFrUG+yeJ7KGyzplumB3gmyi7J81YGVvBgZcyakRylOr0bqd
         KnFdT2IEHc6MOD0vS+Q19fO3YEDNxrmDnJaKgG9dlJYiageErq0fqw3MceBGAw1jEbdT
         ZSz4BgAfUSWegw3cOF5FJQ4muBe+Rt86qqzlpioBXcj0g7G8WRofzKAvcaYWyJ8p45q7
         zoDg==
X-Forwarded-Encrypted: i=1; AJvYcCVQ7J9lt6ryeVZRL7a42OnGMAUjZWEC4WXfj2/0KeQd1Fo4ryjSJuADmOd2Gk8EnJpZ6KH0SUYji4b0@vger.kernel.org
X-Gm-Message-State: AOJu0YwyJ7RmBagQEH/M1m3wSMAiMY2ySdgQ//2rL1ECT6axe+LpC5bu
	l+AzYVBYLGTm4RE568+KRmeGTTB0BtXmQJypErfP+I35Gf91YDr0BOn34pi/+20hvZZ0B9+HAV5
	L1RtfeKiIR+cI0pqwYFf5osX4kCdMcd2lbz9Z90pZCSvjR9Ag5tG4AjDLpSGwnFk5MspqZMP7fJ
	Y=
X-Gm-Gg: ASbGncvoOE++3JTZnq9xA3C5O45G96cJ3aagkHIuZs5naV8/zjraIqMjHGDXxvHlGsz
	Co6Gx8sPLhC+G3PKHDF22B7yPsqzhaJZnDytx3krgDkL6nRs8NNj5wLn9rWBrst1vVbm72jhyG0
	FR2l+AtD53RSJHKieulXCdTnX+lJ/HqeXchnQSTGEU/pahjfD5TDkvWXj5PxLlud3q513bXAUdL
	XepgxAVuvC42doH/AvR54SpCJJAIjskvuPMS1Vqg+TGpvF8CFGA+qHfPT+bZBtlz2e5vS0MUJq9
	4rcLnVGiOz9Wh4BD2t9bpzBO1WyJ16UdW/0jbqS2CCWnSn6q21ILwP7fnQc2gRoKMCdP3+imf2N
	jNO/Ir2Wm5Q6DCTjUGU78NBt7Pl0gH0mqbH0kFZbrF+joMrZG0g==
X-Received: by 2002:a17:90b:4fcb:b0:340:68ee:ae5e with SMTP id 98e67ed59e1d1-3407f4f4f2dmr15252054a91.4.1762154740322;
        Sun, 02 Nov 2025 23:25:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHIogl4z44jezViAAx1MU98InfK5jfa4aPzqrgAbWCjMClQmth9zjC0AqN3FEPEem4xkSQvGQ==
X-Received: by 2002:a17:90b:4fcb:b0:340:68ee:ae5e with SMTP id 98e67ed59e1d1-3407f4f4f2dmr15252022a91.4.1762154739842;
        Sun, 02 Nov 2025 23:25:39 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93be5ed9e6sm9350951a12.27.2025.11.02.23.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 23:25:38 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH v3 0/2] dt-bindings: soc: qcom: Add soc related bindings
 for Kaanapali
Date: Sun, 02 Nov 2025 23:25:05 -0800
Message-Id: <20251102-knp-soc-binding-v3-0-11255ec4a535@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANFYCGkC/2WNzQ6CMBAGX4Xs2SX9SU3w5HsYDqUtsFFa7SrRE
 N7dgkcvm0zy7cwCHDIFhlO1QA4zMaVYQB8qcKONQ0DyhUEJZaQUCq/xjpwcdhQ9xQGNa45eGG+
 FNFC+7jn09N6Nl7ZwZzlgl2104+YpDr3NRuJnyp+9O8tt/EsI9Z+YFQrUzuteN6LXQZ0Tc/142
 ZtL01SXA+26rl8WTFNvzAAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Eugen Hristev <eugen.hristev@linaro.org>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762154737; l=1306;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=DZHDaet5H0XPWYXMQUHXA/gE6KYkGCbnRYLfNcGq9Bk=;
 b=0OtIOaj6TzUuFhNonhwpLng11jHH4N9beAet0/Y6eb/6Z5r4Wx2xwNaiGqfkrC+gvXOINzmBA
 tW+CsJgL6EuACCwLA1RpIF2RguVa6H1SfjzWYSUO8Jxl+qOoavTC4+9
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=P7Q3RyAu c=1 sm=1 tr=0 ts=690858f5 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=aUypyU9Tpf83F15FXRYA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: HvreOqQ09hCNOwNo4Oc_Ozn2FsRcLDmZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDA2NiBTYWx0ZWRfX36/65QvdphMG
 ezxlMwDrvdqCAAsmcfE0dyR3M/Jh4hy2s3rVrBWBCG2BTx/3I3U62Ib9ZUve8fSioGs9fO1dSP9
 hvCN66kHagk6cj8DDKncjIXPAZEwURNQemwZEaxzZfAauWWs9L8ESdRY0vz2OtrMSCuzJdGg5BF
 7BaI9BC9rMg2mO/QOlu15qxwlXJDugpsXkgPJgqeZT/vzTVh8Ru1WS8jx1qE2sSloqJHg/Nhvsu
 hPnaKvuHpQruK25bAuxn2WC54TejIjddyixfHVs/T7C6+yd5510ciBfhguZrMQA/2Ca5uDfVD5i
 jSOTCB30dw0LvD9/mfCEtOIjCLFEs/MI8xcLi73QMoTrPa7hPUOGAa07clZhtJCk/OgNv678Dkt
 Xc2vZTpNE24EfbMhIJHF/cJMmWDSrg==
X-Proofpoint-ORIG-GUID: HvreOqQ09hCNOwNo4Oc_Ozn2FsRcLDmZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 clxscore=1015 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511030066

Add soc related bindings for Kaanapali Platform including IMEM and SCM. 

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Changes in v3:
- Fix capital letter in commit message - Dmitry 
- drop changes that are applied
- fallback to a no implementation binding qcom,imem - Bjorn
- Link to v2: https://lore.kernel.org/r/20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com

Changes in v2:
- Fix capital letter in subject and simplify commit message - Eugen Hristev
- pick aoss_qmp change from https://lore.kernel.org/linux-arm-msm/20250924183726.509202-1-sibi.sankar@oss.qualcomm.com/T/#m4bbee2db112a471cdca7aa63477b7147691e6852 and rebase
- Link to v1: https://lore.kernel.org/r/20250924-knp-soc-binding-v1-0-93a072e174f9@oss.qualcomm.com

---
Jingyi Wang (2):
      dt-bindings: soc: qcom: Add qcom,kaanapali-imem compatible
      dt-bindings: firmware: qcom,scm: Document SCM on Kaanapali SOC

 .../devicetree/bindings/firmware/qcom,scm.yaml     |  2 +
 .../devicetree/bindings/sram/qcom,imem.yaml        | 77 ++++++++++++----------
 2 files changed, 43 insertions(+), 36 deletions(-)
---
base-commit: 9823120909776bbca58a3c55ef1f27d49283c1f3
change-id: 20251102-knp-soc-binding-5c96d05da015

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


