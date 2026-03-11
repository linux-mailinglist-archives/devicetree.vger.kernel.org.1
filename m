Return-Path: <devicetree+bounces-273985-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GQuLPxCsWlCtAIAu9opvQ
	(envelope-from <devicetree+bounces-273985-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:25:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 428CD262143
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:25:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E26433427712
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5572B3C9EEB;
	Wed, 11 Mar 2026 09:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="plq45vbu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dWlNVzX8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB4F346A10
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773222411; cv=none; b=dt9wg488bvnQF8dItQ8+3GJMC+Klr2UlNUJp8i2uRb0EGLn2WVWPVyWnBgjK76+tkgpXxjxIrZ5vED7yFOYbMV9WTKq4e1ADVDx0YA+coaD8HM/MeKmgkmrGbdsgjfAzGjrhO8/Sb6+q8rjgUz7AQzF0JoueGsIJY1BAXwaY7Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773222411; c=relaxed/simple;
	bh=xRVBcUcPQn/3XRwGa/LJ62R3q+1u7kG4HqctFlCN9Kw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mfKj2Ga9Zwmrn9i5zZtWM6sZDqLj4/JOAbapLCILNs8lQ5n8tQx+sp7zxwzfeyfHdLsHKqlbzZF2EldaNGJf21wi826B8ZCRdxLzgQX6Z3F7HAIWc/4W4NzfsKjk4sLp+BQl8G6DmMv51ttzpaZxnR2Qg2jgzbop3lAH940knI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=plq45vbu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dWlNVzX8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B6ZiQ61439630
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:46:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GAqPvw1+mNYrygeKcTD6WH5A0ur1DU2x0eDKSc/2zAc=; b=plq45vbuOeZdbTz2
	YBRBl4dde8USmvzjrV0gLoJ9v1z7Yu79CoT6b2Z595ySVwRpzVEn3hx7NL7JDijA
	v/iz3DF2TUus1h+dJPYDBvNJu3qvGWExYrgpaSLNEBaR+XGyZnkDge0V0lVbeAbI
	WoV39tWsTrmMvAEOqXrOykPZ/mcIbGKlSCT9flCiv6LyGsGOgjF9bOI1mLm1oFzH
	B/IM0UEwseJfJvXwUT40BDvg54Y8Vbmr/iLcxeSFz5HYRolVor7rPIAPUzhNx94H
	LeipY2dPqCPRNTxPEOi8OGhv/ZWKopidr/BfmTKKdcnBCyVow/asVBqkCBT1yJf5
	a3FASg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu38ygpdc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:46:46 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-829ad972df6so2105528b3a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773222406; x=1773827206; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GAqPvw1+mNYrygeKcTD6WH5A0ur1DU2x0eDKSc/2zAc=;
        b=dWlNVzX89bye9ldvn5tmCJDnz2HVD4yiKJrGsbc+HRzI/XJrKHfrc2IcVQwbsgcK+t
         Z0gDCHzDW6y4W1CJf8EopIkS1R6g/hYQvVcouDUjM6MQODmwcGUcQnKpPys91bCsLh6f
         glGDBI936Y7nP5BNsrN9YATTQB0HfMafmvvWPjf1bSTwokrD2DYaxKXFkUKIkFb2M1fQ
         5hITU/nVSydJcrc1Bm2/EKUeFpw4YpQw1GwSILIJDcvLhCWy096VcqUhdd3EHFrLKmxE
         XDTEStdllbJeHkGZckWhwHGC4OhrCdrih6SLAp5N0rQ80/9HRYk65YS9LPiasPGv1f3D
         9W2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773222406; x=1773827206;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GAqPvw1+mNYrygeKcTD6WH5A0ur1DU2x0eDKSc/2zAc=;
        b=C/eTMww56NlL/esnJjfUaxjSXLR9SGklGSI9AP0GPYByHnBWfV0SaRI8ovHpQZ5ZnZ
         GOhjIVhxgNko3O6MNkYpPXjymdKqA6RwLGEhzvX/zdmz1unZ40MgJD3GcTUUNKDFrkDW
         38/4Lx/tDyH++7fMB4wHCkV9dJz8HaK3si3olICidbpqrUlN6ppsiAnqNPLwpbPuezSa
         R34lM57nt7pN/a9lKMZM79sLou1stCc508FwHXL5SbBOI3uOwJXYUOdawVEjOurrmv26
         YDW0gc9UZpmqCm1sRDCsiaKrqpb+aEmBEXxgdgRd7ilnnLD62lFb7Gkh2XkR0hPaMz7F
         m5ng==
X-Forwarded-Encrypted: i=1; AJvYcCUTutYyoLM6zwSBGvl17ofYpQ2/AHwtrF2PzuqZeSFAC8IjfCQmQHfpmL6vdWhQNuTTK801awjtJjlp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy18TK5voaaPuogmtuxQ+jmhprWCvF/2h2SJgZHGDtwwKnG3qcv
	NgUhJbnBK1IzDhqoKLhjI0hL5QcKYy/rjjPSXRZOyceHiAdDsc2mke9T0mushc0PqiLmnEIbeBh
	rPzXd3GlK66PftfjKs1r7rS9kYHrTEbT1zYC3mBEiFp8MkVq9fhNlIIGhY1yu/L1F
X-Gm-Gg: ATEYQzyQ5XHhs88wmZpC2366li2396iVJx1VfB7I/BPGXx9X1NOqPmbqlkx3fo4ELct
	P+a1Owsqj7BB39vFehOTS9W2nOImJroAKy5EHPwLq5COrOFlJwfX/ghqq5SiQz0gEGb2s33AEqe
	1q0JQ6ZPR4j5ZFL+lz3mTQr4NA5OZj72TNUMNa7hF74TncHQCZmdQaob+3JIWtIcwG2vDSBENDv
	SPpku2XzVyCyD0ulUxk1Nyw77QSCOgQEGrweClUWS82Z/ZYf4FJthghmd9AtA3V3RkwK/HFNp/9
	tTMa/81E1ALspJZAKG0gIraH2RtOYrgblncDauh7gIDdbAV0c5HgtQOlIA8JGw096mNx/nE7sr1
	+Nb5Hg/vRxvaC2sNSF15BnuR7BwZyfibGwsv4TbdR3RFdAPf6wP0FGRa1wXbdMurb/GwisEZJKU
	jeHk8FnJN4VlrRL45g7yYiJ0+nQlE7cfaHjQgnxAIS8WYUgn+DBQF1K2xE
X-Received: by 2002:a05:6a00:1990:b0:829:800b:9d6 with SMTP id d2e1a72fcca58-829f7250204mr1685295b3a.57.1773222405955;
        Wed, 11 Mar 2026 02:46:45 -0700 (PDT)
X-Received: by 2002:a05:6a00:1990:b0:829:800b:9d6 with SMTP id d2e1a72fcca58-829f7250204mr1685271b3a.57.1773222405481;
        Wed, 11 Mar 2026 02:46:45 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6df5ff0sm1677403b3a.21.2026.03.11.02.46.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 02:46:45 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 15:15:51 +0530
Subject: [PATCH 9/9] arm64: defconfig: enable IPQ5210 RDP504 base configs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-ipq5210_boot_to_shell-v1-9-fe857d68d698@oss.qualcomm.com>
References: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
In-Reply-To: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linusw@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-mmc@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773222347; l=983;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=xRVBcUcPQn/3XRwGa/LJ62R3q+1u7kG4HqctFlCN9Kw=;
 b=46hwhX6Fzw1ORCbsBk9ce+pweRqE9HfyvYl9JYwhPPyKeDFkwXNmr5mWVbAg+j4pTHJbdVwTT
 qb1r79eB42vDxit17ARd9vUNhYfNk6Kyt+cNm8jnJO4pzFxJlBimfBB
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA4MSBTYWx0ZWRfX/Jf/we6vEk2f
 fhzBGN2PHjbg+eBjt6k9+Rnp8M+ByoxI6yLz1UhsUrbF+ov03YNe1Ig5wTqQ5WxzTy8S4Eek7Q4
 dAoHActnBdY44O10R1DPzF88NB2tJn383g22L1mxj7TrsPm/6QW+L/TrxRx9IfYV7j9v0h1O0ra
 LfdDcHP84nigXOyHs8t3dZrlbq+t6n6zNRH2t09EMQELcuJdxVcZHvmJ8o0zKCaYrT2SFYUMgMU
 T+0qKdurg031Ytcs40rLKTHYvCCJKd3A/TAnJIhVKbDZmPxLUUQkV6IzltLZjUm/DldL4zvpRse
 Q3EK7DD5P/X4cjpv5rZNiLLnQIkYsJ0VPYud785b6rxYz8bz8XOYbFjTSTbuPIz2JTqb+H+q/uE
 7y8vO78mSst8SfW9+Mjlfss0AkdU9cBOHVoZMDot24nnySwi4kfKflj6iZz5pxfSuXgcJTbqq5C
 BPRITOlEpzMHcyzF/YQ==
X-Proofpoint-GUID: VbUWgmj83LFKzIs5UWifwwZbuj989d4_
X-Proofpoint-ORIG-GUID: VbUWgmj83LFKzIs5UWifwwZbuj989d4_
X-Authority-Analysis: v=2.4 cv=Cq+ys34D c=1 sm=1 tr=0 ts=69b13a06 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=rO3wVDe-YCVyVCuK1RsA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110081
X-Rspamd-Queue-Id: 428CD262143
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273985-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable GCC, Pinctrl for Qualcomm's IPQ5210 SoC which is required to boot
ipq5210-rdp504 board to a console shell.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4ed70ab7ee854038fa7a756d8b650a609258bdb3..59c748efc1ca8d6eb7dca19011d2a31d926a0d43 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -649,6 +649,7 @@ CONFIG_PINCTRL_IMX_SCMI=y
 CONFIG_PINCTRL_MSM=y
 CONFIG_PINCTRL_GLYMUR=y
 CONFIG_PINCTRL_IPQ5018=y
+CONFIG_PINCTRL_IPQ5210=y
 CONFIG_PINCTRL_IPQ5332=y
 CONFIG_PINCTRL_IPQ5424=y
 CONFIG_PINCTRL_IPQ8074=y
@@ -1476,6 +1477,7 @@ CONFIG_IPQ_APSS_6018=y
 CONFIG_IPQ_APSS_5018=y
 CONFIG_IPQ_CMN_PLL=m
 CONFIG_IPQ_GCC_5018=y
+CONFIG_IPQ_GCC_5210=y
 CONFIG_IPQ_GCC_5332=y
 CONFIG_IPQ_GCC_5424=y
 CONFIG_IPQ_GCC_6018=y

-- 
2.34.1


