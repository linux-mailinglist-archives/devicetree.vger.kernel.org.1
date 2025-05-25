Return-Path: <devicetree+bounces-180358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F00AC3586
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 17:54:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D446E16FAAD
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 15:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0FCC1F5838;
	Sun, 25 May 2025 15:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UVYKBR3M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0954A1A26B
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 15:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748188475; cv=none; b=UJA8jQBUrcrGmAKLXXwVo1EGxJcvkSRkEVipBr5gPt4GLhNBhiT/1QFLrUm9XqakDlv31iaR/gqeTef8G/CYqBH/kACsWhZdgdGv8l4jDsVvRz4Bmt0G63NQ9Dr78mCXJtV9Hn2IcExuIJRL15xvcg3sFXeKT7ork9UcEEnlyl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748188475; c=relaxed/simple;
	bh=5AKy5fjWPhJ9QV2LypCv6sCviDz3gCv1vUKjaactCNI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=q9DEUZ2Okro36eXBzZtn2tsK28G2GhXiEqruS0mug+t957FSJKIlZOa+dY50RK4sr/mo2wYR8z+EQmVZ2R//vhG8rfWBHgInfny8eFDTRckqKM/QOBL1Ndaig8Vo2zV75KqloCRspVmtfPgQtNTl0gNUt2I1X8SFLPyl2hvsADc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UVYKBR3M; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54PEq0Pr001628
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 15:54:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=sJKcDUQVcORFj9yrTysGK1lUuony76p+nyO
	J++9P3i4=; b=UVYKBR3MYIJln6qRIRSkf5urCOc6c95DyvL0MXVdEPSHL+mUslH
	JprE/S+6qzF43rhJm3xL0ydyyk5NhBWnnufjfv22ZGmK2j1ZFjH/v57fIdMZiIXC
	AIe8idknqPFvpnQaGuProELpvEUuuOUuOiPJCEWqalG94GD33BjtLE5kpbCFDq1g
	RvBtbaFeLZX7NFPBO4FFl2GZN2vhdpLSf95yYmg5HShhsTTyGU7hxS3/iRK8EtKH
	e2Lnby1z6aM4K0lEoYluOla6F3IRZL/8Lhy5EFBsH+P/JNI85wpKOJUSoMH7JZfy
	dWDAbM7P2Wk1A7uV4zURLD2njRG0QB7eEOA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u7dc23fx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 15:54:33 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b26e0fee459so935482a12.1
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:54:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748188472; x=1748793272;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sJKcDUQVcORFj9yrTysGK1lUuony76p+nyOJ++9P3i4=;
        b=Li5xAMTy78vBdEltjhKMIlpmyrRlo0braNTKHGXDRmEPj1k8mcmmJ2gffnGy/6GU7n
         nmllv7Mk8b8L8UciscyiV9ilFb2FonKVokxTP2ihTsEa0hhfphQdq0F0s6nyLcKuWKww
         1GIf2qhmfKsFodD67elK55z3RFQBNM6E/t38fQ66e0ILg5Mt3JnT+8fJ8e43QspZxJae
         C6+QS5aMfNwdh1Xod2UGS1o8wfVzQYvM1cSHVACnNtSOlGLyboGBbUXvj69Fwj2AjZvp
         w9zj0KLWrlGJllvf0GHyVVm0KKhi6MYtnktlZFB9+FedeF4wR4+jZOrmSam1OQkF554/
         dJGA==
X-Forwarded-Encrypted: i=1; AJvYcCXJ+PX49MvhPHnWQkbaFB0P4EAjbInEWHQz0+d+g3l/UbtxAz3IGFUT3JqNUKXYoSgI80wsDK+kyOcA@vger.kernel.org
X-Gm-Message-State: AOJu0Yyjt9t0R4lOvY/x6gc5zFUDnJXmHAFvHPg55fRnr3vI1ByoLvpR
	NrY1j6bK/neV2CplJFtz62AGRGOUMpClYYnla9aw+/mZHLsIk3a3hOlla5VgLHVFDeeT4A//RMN
	M22OtJoGfHh2FiQbq0NNQXHBbLhlnbtdHR0TjAWFokg7g82DeO0UWlxBX8LCCFLGm
X-Gm-Gg: ASbGncvuqAMqUZUBKP6p7zekFoYiX8rvao/wbbe/3dQnoijE6gKP2OVHbtHBSbX8O1v
	72sLO6iMzLQ2bBwd/PMJAJ+9wKbquIaJVLlkKIGHP+QoyqwNc8icSr65Lo3QJoNh1UuXbMoVK+e
	EwerTJ78b1C1kBxmMBKjOTt2wNRB/cGXWMn4rlJSth5nJHxWbam+ZfIGEBoK3Y6IHyxkZxCaJu5
	HeK0Wuc3nJLrkYWALJiKy36qF5N29zCOu8lj3/vPeFLjWGONYomEDWoPlbnfWQS0t1U99WhmOgK
	noAFdz6mqRVX8K2OktPHtHJU4j8cR2jnRH5H39B6T+5mdKpp
X-Received: by 2002:a05:6a20:6f8c:b0:215:d1dd:df4c with SMTP id adf61e73a8af0-2188b571a1fmr10112530637.6.1748188472117;
        Sun, 25 May 2025 08:54:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtYN5afNoqrSTBdKB0G11sEGq4ECVlIT30ApclIhLBIdZNZzcv9oS8JRiOcaZHnxsufMmAxA==
X-Received: by 2002:a05:6a20:6f8c:b0:215:d1dd:df4c with SMTP id adf61e73a8af0-2188b571a1fmr10112505637.6.1748188471733;
        Sun, 25 May 2025 08:54:31 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a96de11csm15634488b3a.31.2025.05.25.08.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 08:54:31 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
Subject: [PATCH v1 0/2] Enable audio on qcs9075-evk board.
Date: Sun, 25 May 2025 21:23:54 +0530
Message-Id: <20250525155356.2081362-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: jW06DguE2xLC1KUhm7aGLASguPSKoiTD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI1MDE0NyBTYWx0ZWRfXy7jfReOTBvIX
 +ohOxFjH9xLqU5Ci+OIhs06szkZBhapy5W2azYJqrOv3zIhyFEC6MlquKHuFue8dCg3ebxW8JfT
 6hb27gzEHXGfnFr8aXDGGcXxXTIGN183PJ8ypvglS8hvZu1XObfXsKQIEnr6iSppN4vqCL9woyB
 6A1xY3xxg6Nmoa/bkvtDuhMuXV2dLM5HW0duvp6qYSoTSQhnaiuMG8xkeHFU1YfbX5B/CQChL07
 rjgrJ6/BbU0t8gzHlltHCBsegILAmVKPuoZn+Dk93QlNrdRChA3h5d6ukRQUi/alBVyg6Kezsu8
 4wF3RXA3ajgsngZ4JB+chDVzUebF4Dpg9CrXko+IMjMwo+kzewgKVzqcxf5B2xHrRITnEDpOorI
 Z7WaUSL92bfAyIcivLrA+B0BdO3Q8IMwPbsR6rXYjmv9fsrnGhATwQy/5snKgmLFSxBbSMu4
X-Proofpoint-ORIG-GUID: jW06DguE2xLC1KUhm7aGLASguPSKoiTD
X-Authority-Analysis: v=2.4 cv=Mq5S63ae c=1 sm=1 tr=0 ts=68333d39 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=YkB-U3mbqUf8DnNMcaUA:9
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-25_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0 mlxlogscore=883
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505250147

Enable audio support on qcs9075-evk board.

Introduce HS (High-Speed) MI2S pin control support.
The I2S max98357a speaker is connected via HS0 and I2S
microphones utilize the HS2 interface.

---
This patch series depends on patch series:
https://lore.kernel.org/all/20250521140807.3837019-1-quic_wasimn@quicinc.com/
---

Mohammad Rafi Shaik (2):
  arm64: dts: qcom: sa8775p: Add gpr node
  arm64: dts: qcom: qcs9075-evk: Add sound card

 .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 52 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 54 +++++++++++++++++++
 2 files changed, 106 insertions(+)


base-commit: 176e917e010cb7dcc605f11d2bc33f304292482b
prerequisite-patch-id: 853eaf437b81f6fa9bd6d36e6ed5350acaf73017
prerequisite-patch-id: 6d9fd3e0257f120cff342c287774454aad2be2e8
prerequisite-patch-id: 736cbcd47d5e7cfcc53fcaa7da920eac757ce487
prerequisite-patch-id: 4eddce6daeaa125f14380586c759f8cb8997c601
prerequisite-patch-id: baac180e8715b5cf2922f79346440d92569704f6
prerequisite-patch-id: baac180e8715b5cf2922f79346440d92569704f6
-- 
2.34.1


