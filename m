Return-Path: <devicetree+bounces-269555-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIBbC73oomlG8AQAu9opvQ
	(envelope-from <devicetree+bounces-269555-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:08:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7891C31CF
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:08:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 82E763037F22
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF4D643E499;
	Sat, 28 Feb 2026 13:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HUzRA9aA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CMsixIw7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9773E43E483
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772284090; cv=none; b=RTIZUuued+yDuARFoDF1VXbgJnVBpKWHPXubvCb2FjgFENby9TYE2M5b8lYqOjnj9dlQK3h9MiC1HjENoGLe8mcchAk8AfUAdWTlYTN74gO9y+GkjD4u0UwMKImJ1giF/qJvLVv49U+x8ni51TtO8LrqLTdqSrW47yX72Uc+eUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772284090; c=relaxed/simple;
	bh=NJY0pV1M2wbLb1nUCS7E2d5p5eFL3304bkjkgwf1c38=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=cDu3krIWcFSf2w7YMzCL1MjJ+nG6tD9bGJDKhlt7CcPI3xfegM8PjsRyVR00wvAywNfJJrOGBvi6k67sPcQsaKHG9Ppr+ZlF3JFTCzW78u3Ozo+4rFVXcFnnYtNKAO5kTE7rFFLIjNCRJaohK+lgQu53QddVraYvUQLNVQnISUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HUzRA9aA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CMsixIw7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S9060D2088026
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=cDVs32k9ynqEJxcjg53Eng
	DrY+pNd17ly0JDQCXesfE=; b=HUzRA9aAKDcXxMsSuMTZS010F0jfwmw54gSHtF
	oapIN5fxAwyjykGlRgO+edSABIWGUmN4k0zrNRpJPxZij1NliHL++OpK1fZjaBs8
	O4C7I6tqqIbXqL49y6ccirEViTA9e0Nsy0JjQA3NXRa/q5SP4GGs4vKMI/YNnWFt
	diMG6P8OtNgL4EiUUHGZXM7txhXxzb3fDhyVBCWwHHYCo9KQ6lsHr+7tuRlun2W4
	dl88WVsdC9mZU/2UKSpI/IqCunJzSerK1v/porgW6VLtsoOyZbE0NE6YwjJVG63X
	hpdPqjHLU/hJTMYk0DiVZrER6EHLdr+oQsf9ru6SQn/U+u6w==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgrry4a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:08 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b62da7602a0so1848904a12.2
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 05:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772284088; x=1772888888; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cDVs32k9ynqEJxcjg53EngDrY+pNd17ly0JDQCXesfE=;
        b=CMsixIw7RRExHKYwpKvRF5sjS2+7ZUTYIbNmovTVBCSibCr+5+Mhd3Y5vZSLYQCUl4
         4rqZB4sd1ybbLSb2VN6LJn2bC8lj6ISN/4gFjpcjAaNyZBKzueWZ8Axt+EYFSB1ZHXPy
         xdsKppCHkBSSxubdLZlyjd5YC+YUFuSZvmdZLCFoRty2z0DoXkL6FSN+Jkc5PyzbWIIf
         CQzB5xwyBKIRxwt3bGeBCUMCJgsDK0T3p68/+ZfEFt/PB93G//qbSnm6Ff5PYQrtVkKa
         vgVNY1XMtiU3y1MBDefnkMKhIJoHgvDK5EBVq4qcRJmtKjOaFE22goG+pRczXo81M58V
         BgQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772284088; x=1772888888;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cDVs32k9ynqEJxcjg53EngDrY+pNd17ly0JDQCXesfE=;
        b=m8zqdtK6C0j6Qo6CXSpEM842GE2UcSeaJ0uLfRgquzMeWRJDQtf+WeP+6XPdNlnQwK
         NEnn+jl41eKTMPdBkkrEwAkCuZxIkax0XQf0lFqNdXjqdsf/WJu4BjVLEbo8P0lKZZvp
         1GM6d6+P65zM4+FIM/wBCssXGj2p+uen1qpjlRM0Y2HJqTy1KB8OAJYfjZ/YeNegUVuR
         sRSoGcoDFl6GIDPRBUH5jN9dfERtBEEchuYe+j/POoGCvGSkth2l3dW+iFVsrfUFtqeQ
         hNg26pN5SH1/i5ayyNvc78OTVQS+grP7mVqdCdov9XHJzCeRxPG9TNR4vc5PF//GRJpm
         RUxg==
X-Gm-Message-State: AOJu0Yz51ANHi4LM703XKss1IvCBC6IrPrIh21qcqNGJ/1medwOoo3gm
	VTFDwmVIhPWReH0MuUlmAVdpRU9AcZt7l0kYtc6+iuUN+tKFvcvqIOY11ba0X7bTZ58gfHoJx4l
	kbHsq/RIDysTpvPQBjilGZySV1NUMwc0oWfzIW4Vd7esYs0u0fZewAiPb+nfR63zd
X-Gm-Gg: ATEYQzylPdMLbuB8zhwiuDfKhu0nXMTo7ndusZmwXAFIMNjltiJP6YkNwMLqpUtM6dt
	gZWJPLFCmNRkSanjHoJMgmMgPsJQkFia9M3me2C+r+nOzIUHmaXsqdTrflxfQ1tekcNgytDyIgY
	vLFAZSKLY75e6zpCnsUYl4sARP6s0bdvaFBqpRyQvaxzox6ddRMcx7GywwnOcqhpz7Avrh1zbxy
	fJbE+uZfo1QzKd6Gz8qwa4n1Y52YH2Fn5BZTMMAfed/Ci6aHdcKooRBNGlnYj4hg80Bqm0qAj+b
	tRf9d2m7feqcw/sQgenrgKzHKmCZlQQNqqFBIrL4ziO48Hqr3IkppReNuSDl3yXBpRLH10vaZiS
	La23oO3eHKU0C8eYCcI/LHYdWbFaf2fGU9V7qkL9foCQm+7w2ELllDO72xatT/4dQ5JCgxIBuV+
	t1xtXG/JQC0PJzpfzq+VovucuSeudYYO1mhl2Ixo6BW22aMOcTpjfezIsw
X-Received: by 2002:a17:902:d48d:b0:2ae:3e43:4673 with SMTP id d9443c01a7336-2ae3e434cc0mr15564895ad.1.1772284087659;
        Sat, 28 Feb 2026 05:08:07 -0800 (PST)
X-Received: by 2002:a17:902:d48d:b0:2ae:3e43:4673 with SMTP id d9443c01a7336-2ae3e434cc0mr15564535ad.1.1772284087124;
        Sat, 28 Feb 2026 05:08:07 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69f996sm83947035ad.50.2026.02.28.05.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 05:08:06 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH v3 0/6] Describe the IMEM present in Qualcomm IPQ SoC's
Date: Sat, 28 Feb 2026 18:37:59 +0530
Message-Id: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALDoomkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHUUlJIzE
 vPSU3UzU4B8JSMDI1MDcwMj3czc1FxdS3NLy8RUcwszQ3MDJaDSgqLUtMwKsDHRsbW1AAvai6J
 WAAAA
X-Change-ID: 20250702-imem-9799ae786170
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772284083; l=1941;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=NJY0pV1M2wbLb1nUCS7E2d5p5eFL3304bkjkgwf1c38=;
 b=OtIYOnOqtwtJsDUdSolaiZeTazCKsv7IQ7+/N7hkglpc/YYUZ/1OzH/fMqnE3+FblNgpYyKuJ
 kTA3k8GUZZvA1IyjNu78FMQff3icxphT+7Z5cNQ3h0XOreLPej4oZ1G
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDEyMSBTYWx0ZWRfX4pVzzcAkUGOd
 WhrJJx3kj4DUFQIfDL+CU4hDmeZcwJN7kV9MHwSJus1z8sH5oAcfWMv1IKsH67tX1nImnyCpi9y
 6m/Mq3O4mYHjgT1lSmrN0FHmr8W48mmMKt7cJY0p8URLUFDXLvy09JIAcIvhP/QysKTC1YBDD+9
 MQfD+3RkTLxSm/S8uQlwyvceELldDrXYae8srlM0HjpopOWBfMCM2g+LQ0E49cIoTg8JWmpwfwu
 ULKj+aFbwx9qEaY6SYs1tP8bWMIu0wHIDQp82UC5HiJi38tKmoYF6c1pIDMQIXmWLJ15HPNm59k
 RF51HvJUNkAN3LLQ5ukjO1XsBJI86YfEewpp1oCv9Be2CIGu7hIPe7nakEa8Pz273jt2g01IhNg
 Y436XdD9w7PvsDmU1K6ogRQ0QTOpNSj70X0jpj5mA2PGAEVSXlh1ht+jdeAx8pMQDBS0F5pSwbF
 +gMyG5/h92Sd+0oBSMA==
X-Proofpoint-GUID: ahWMV5p8BE4e6BaQSJNdKRmyoMO6zcrr
X-Proofpoint-ORIG-GUID: ahWMV5p8BE4e6BaQSJNdKRmyoMO6zcrr
X-Authority-Analysis: v=2.4 cv=Zqzg6t7G c=1 sm=1 tr=0 ts=69a2e8b8 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Yu0Y65rDbttY8LA09AQA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602280121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269555-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9A7891C31CF
X-Rspamd-Action: no action

Qualcomm IPQ SoCs also have the IMEM region and used for the various
debugging purposes like storing system restart reason and so on. As a
preparatory work, first describe the IMEM region and susbsequently add
the required features.

Across all SoCs, only initial 4KB can be accessed by all the masters in the
SoC, remaining regions are access protected.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v3:
- Describe the IMEM as 'mmio-sram' instead of syscon and MFD
- Dropped all the R-b tags
- Link to v2:
  https://lore.kernel.org/linux-arm-msm/20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com/

Changes in v2:
- Dropped the IPQ5424 support
- Sorted the compatibles list
- Rounded off the size for IPQ8074 and IPQ6018
- In IPQ6018, use 0x0 for reg instead of 0
- Link to v1:
  https://lore.kernel.org/linux-arm-msm/20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com/

---
Kathiravan Thirumoorthy (6):
      dt-bindings: sram: Describe the IMEM present in Qualcomm IPQ SoCs
      arm64: dts: qcom: ipq8074: Add the IMEM node
      arm64: dts: qcom: ipq6018: Add the IMEM node
      arm64: dts: qcom: ipq5018: Add the IMEM node
      arm64: dts: qcom: ipq9574: Add the IMEM node
      arm64: dts: qcom: ipq5332: Add the IMEM node

 Documentation/devicetree/bindings/sram/sram.yaml |  5 +++++
 arch/arm64/boot/dts/qcom/ipq5018.dtsi            | 11 +++++++++++
 arch/arm64/boot/dts/qcom/ipq5332.dtsi            | 11 +++++++++++
 arch/arm64/boot/dts/qcom/ipq6018.dtsi            | 11 +++++++++++
 arch/arm64/boot/dts/qcom/ipq8074.dtsi            | 11 +++++++++++
 arch/arm64/boot/dts/qcom/ipq9574.dtsi            | 11 +++++++++++
 6 files changed, 60 insertions(+)
---
base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
change-id: 20250702-imem-9799ae786170

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


