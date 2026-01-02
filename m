Return-Path: <devicetree+bounces-251048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5ABCEE44B
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 12:08:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2546B30054BA
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 11:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6933F2E22BA;
	Fri,  2 Jan 2026 11:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YF4n0+us";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a2URs6Qh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADF742E093F
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 11:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767352081; cv=none; b=vFDMMkgo8yBHQCady7zPyjAMKSmctaR9w6JUXJqq4lPkOh6JamBtpMKzkN5JNhy4xyWsEaA71cRimbg2bYL/oNxhi5RN1FKexQaUbC82rW8yyRNYa3OyeB62qvUAqEfBPhxc4roxmgUsLagkqns6tBFtEPEMI4NygCyqq9hmNFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767352081; c=relaxed/simple;
	bh=Pi+yvocHj+68iN/I2FwxDH0VlEMhS3eGuQeKsHtkHgA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=swp4wVulcEyrigcbtjse5Wn5Wq1Gnasnwo6KyHSyRmOWOJqSH8A2N36LUUxd5aQ5ffEONtRr+xLULIi5r7i3YNX3aJewx2MPNl59ZKGcnSxkfufT7vTT3bmjytGXX71Tg0hMSd+GB/b09eCOXkIC2V5xqwKVErMhqTw+IuzcqTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YF4n0+us; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a2URs6Qh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6029VvYL808917
	for <devicetree@vger.kernel.org>; Fri, 2 Jan 2026 11:07:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=I3SH9GjIuBNMGI1J47ulzY
	/2PEEo5Dto+IZW5r/Jc3A=; b=YF4n0+usMep6pBs5kbpIkkGzV7r7SmmwGUUzFt
	gGHC1NfUzyCPGnwQvcRQzJYmkhFha0fpJTqgXRZ/nBZZ/N2d6nLJMx4Q1YHKjFRx
	inCLEcMK5xJWplkMSmKc2Agw4pA/2KBAIwPYk6UNn+qYtFEqRgx1NhBa3nWVUA4F
	g0JpxPh4ig9EDJKvbSn0mwvRjegV6sSKmzVIV7nm7qnAmZ9dEX9umuMsFfPCma/Q
	MdMFKSuQxGmtKma0BbDJ3AfokzuNikjtLMtevDu8u7czlE8CyVl0JSxBOU/msZIo
	LEZ0CzO3JcrR3dtRAEt3JYGKhA2/35b9rkiN5jEHNueHwQSw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcy6am6q6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 11:07:58 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c48a76e75so26210160a91.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 03:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767352077; x=1767956877; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I3SH9GjIuBNMGI1J47ulzY/2PEEo5Dto+IZW5r/Jc3A=;
        b=a2URs6QhPmEH8VsSWfIfQBBg8HAsKddgIh/rVyVP4ToMfvKWEXuMh3Y4dDujl7lGON
         xg+4rydjgWxZ/g5j4aNaigWBdFtCZVqGNtd9PHvi38aV3O+Ra1o4coL5D1ktz9mFgYAB
         4inmgv8RrXrs8GgxltOWb2TgjPr9vF7CWJtFND6EzvTs08w0UMtJXrye3IJLmUJqH23q
         fzho5hdFpTn67N+cUD+wh3fhvv9/uhTRwDu6a022BfyEmOx/3LRLey9tufqazhkMnu63
         pD10KreBVKYjvFfAmi1tE1eZa4Cr5BQV7RDgmyGXOFFJ1GWtNLPUSlUfzZCsKG5WlQAD
         rtIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767352077; x=1767956877;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I3SH9GjIuBNMGI1J47ulzY/2PEEo5Dto+IZW5r/Jc3A=;
        b=os+0nfdCYgT0mw2tcCyub9EAp3QLuuw2F0khTA68NGpbOLuyOWHAni7o17LXsGV1df
         qKK5IO2Zvg6jGu2V/KKmGakYZmSoU2AChqIMIvfbbsUW4T7ql4TcNMpZknnQ6p/yBV4l
         HQP5o6u/+NOqHH+xU39aMrXOijQ5Ie1jgrFmstNmn4Tlz0hgFHMIemxEDXn4ocyMcy5a
         JiH+k4In+ZE9oLjZ9pe4efUkzcHzLlEL1zZmQ1hvS7b4In3BDM/PQxwivtkaX7tVroad
         mhQSOm8XsfSZbXfL+zHSUUcxuqcKoGIeJPi/7SjnPS7VTWm9eoH3la0gW+hYPQUGeHvT
         rBjw==
X-Forwarded-Encrypted: i=1; AJvYcCWdsCGkreXfFZpEeb0WejSQidKPk4ZfhbbUEBnyCZsJOKz3WXi5T+sML6FfArTLtBzKHkFyjF4q7jyc@vger.kernel.org
X-Gm-Message-State: AOJu0YwQAZutWK/6FQQHbjNWsc944vAkjYoWdtJ+CiE4ugXB/GvL5i3G
	rgDz1GSv3HL1IMJuy9/I2NfLVn0yVR2xdJ/v4SLu6oodmivaAN00Dom2fu2oKRPwiWMiCCVaqMy
	OzCdUXFxOur139DcfOtaqpp209XEMGKuFCk++kepWdMhE4xQBq6IAdKZJxhRhn5Bm
X-Gm-Gg: AY/fxX6lqb2gmPK/+rfOgPNxYg3/wSfhh0yF6RguO6sft1LXIOBQxKoqjwFslF6oB8p
	l6V3APY9AWcvs/hP+lZPoZv43h8d+o+HxyqGLPFH/b5WZA49ETEgbwtzGTi6F8jghF14tiN/2z2
	AnP7iVY9Siy4HuxWNhMyKV5pPzDgfI2RpkeP8rCxFnPCWVc4RDHwqEpoOvV7D0y7ieTqsYcVvb0
	zZMZ+45ogyOrRLrAWccojCVM2jky4uSe1Pk6LQD9EBpunSaqY5HmyTWlTe3gOHc8qkfejqEMnn3
	iUj67/btneuw3DRLAPog+lTcBxMdj22t8gv4BsGFe3L7NGpYkeyQPC4HSN2SFyGIN6qls4n24Gr
	k4M05ZE5WXh3x1ztc0ONU+sI9zcbcHt3wG02Ef5UVN94ZJXlgW1U+CwXlzGAcD7K/W9BChjPFYg
	==
X-Received: by 2002:a05:7022:ef0b:b0:11b:8161:5cfc with SMTP id a92af1059eb24-12172306ccfmr40591176c88.36.1767352077321;
        Fri, 02 Jan 2026 03:07:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHnED6W2rIFjIWbPOJ4rO/6iEuR3VwGmmCPYaPaegYOMEiQWFQGUbmjAC4d4NgVomn4obQIcQ==
X-Received: by 2002:a05:7022:ef0b:b0:11b:8161:5cfc with SMTP id a92af1059eb24-12172306ccfmr40591138c88.36.1767352076691;
        Fri, 02 Jan 2026 03:07:56 -0800 (PST)
Received: from hu-ggarmidi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217253c058sm157431107c88.11.2026.01.02.03.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 03:07:56 -0800 (PST)
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Subject: [PATCH 0/2] pinctrl: qcom: Add Mahua TLMM support
Date: Fri, 02 Jan 2026 03:07:53 -0800
Message-Id: <20260102-pinctrl-qcom-mahua-tlmm-v1-0-0edd71af08b2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAmnV2kC/x3MQQqAIBBA0avErBtQExddJVqYTTWQZloRRHdPW
 r7F/w9kSkwZ2uqBRBdn3kKBrCtwiw0zIY/FoIQyQgqFkYM70oq72zx6u5wWj9V71E1jtB4sGe2
 g1DHRxPd/7vr3/QCeAnCGaQAAAA==
X-Change-ID: 20260102-pinctrl-qcom-mahua-tlmm-433644bae64c
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <rajendra.nayak@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767352076; l=1125;
 i=gopikrishna.garmidi@oss.qualcomm.com; s=20260102;
 h=from:subject:message-id; bh=Pi+yvocHj+68iN/I2FwxDH0VlEMhS3eGuQeKsHtkHgA=;
 b=/z9PbatxY6RggGC/eKZaTw5QeB1W+/cFfsAwwXKFbSK6rubbDzkYeTjRpmY3PhJwxKKvs9WY2
 nCdtyqVN5/lA+yaCpdDvONmuL1k3n2svTJSixDt/s9FpMXygOOu8Opo
X-Developer-Key: i=gopikrishna.garmidi@oss.qualcomm.com; a=ed25519;
 pk=TkSjNEhrfsj90i3wkABTZtAjLNr2cfYsujaTvyOIDsE=
X-Proofpoint-ORIG-GUID: -aBmTZk7DOJZDnWE2djaE3uiTPyTdBbL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDA5NyBTYWx0ZWRfX96MHhcdTCWJ4
 u4mSnJ2JNQbBi0TfsuN2DJw+SbItLYk9hvj6soksBJjlfHb9JOaMebF4mFvKn6pZ0u9q7NmvlPj
 4l1Gb5hpaU9O/SiDHTSuTwD8qidUQ/p1g+pYhuySCcgFXZeaEuoy8V1sAgqhjvd8PvuOzSkhVIR
 nCfdeqnxlKEbW7ppQS78eHwyWpZw8152QZUtqfO9YViuBCNXTSFDCnDcOnWXo3ID08/IKpaOmky
 bqFxuXUfKLbtS3exjOe2fAAaeaK9QaMjltLZScRYzl0Pglw8ofR89CuaLyA0XujOzhjAmQjj1hc
 5AmiLYL9wfQo/iI/Bm+EX60EB5Erdmig0OrBxZshDH6Xpqt8PYHpjRLpni5XDHulWXaesh8lhvo
 AZEohVac6kCVcubtrW7R7gX068DmO3+/KMaQ2tDrWpCqUi0goMiST3GxDq7y1NIvGA9IFN+4kQC
 pCmjdk1QpU3lOffH5PQ==
X-Proofpoint-GUID: -aBmTZk7DOJZDnWE2djaE3uiTPyTdBbL
X-Authority-Analysis: v=2.4 cv=J9GnLQnS c=1 sm=1 tr=0 ts=6957a70e cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=4Q-EQNNWwN3BBnYOq88A:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-02_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0 spamscore=0
 suspectscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601020097

Introduce Top Level Mode Multiplexer support for Mahua, a 12-core
variant of Qualcomm's Glymur compute SoC.

Mahua shares the same pin configuration and GPIO layout as Glymur 
but requires different PDC (Power Domain Controller) wake IRQ
mappings for proper wake-up functionality.

Changes:
- Add DeviceTree bindings for Mahua SoC TLMM block
- Add mahua_pdc_map[] with Mahua-specific GPIO to PDC IRQ mappings
- Add mahua tlmm soc data
- Enable probe time config selection based on the compatible string

Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
---
Gopikrishna Garmidi (2):
      dt-bindings: pinctrl: Add Mahua TLMM support
      pinctrl: qcom: glymur: Add Mahua TLMM support

 .../bindings/pinctrl/qcom,glymur-tlmm.yaml         |  6 ++-
 drivers/pinctrl/qcom/pinctrl-glymur.c              | 43 ++++++++++++++++++++--
 2 files changed, 44 insertions(+), 5 deletions(-)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20260102-pinctrl-qcom-mahua-tlmm-433644bae64c

Best regards,
-- 
Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>


