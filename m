Return-Path: <devicetree+bounces-273983-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHpHAyc7sWkLswIAu9opvQ
	(envelope-from <devicetree+bounces-273983-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:51:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E3E26146E
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:51:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 25595307E858
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2CE33C7DEF;
	Wed, 11 Mar 2026 09:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LE0H3ja4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MKH8pyau"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093C63AB288
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773222401; cv=none; b=BJHVTXhh6iVFWoFcRW9EZLnOfzVOhmcR3mMmFO8aAd2jb+/KanMVyxSV651GLTY9sflXTK1A8F6v/faCK/fov2u/BSuGp2xW9ygoczsQYD7ZGrfOs0eNu0Dso2OtO5Zhi+KT5ytO5r0o38GS3CN312qH0Mu/ar+n8pkBHC/DevM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773222401; c=relaxed/simple;
	bh=D4FTk1Dc6ZZyZyyYwyYFZQ/PqkaMYdH1kar/R97d2u4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CiNkEZTt3XeTyKgDxmoHJmjeJHdDMA8nBTeEXePKX52YQ/yHr0TQreX1XX/Ikc7ii7e29D+fUurRyBFil0sjqz0PoM2pzhzQWcU6fbt75GyJdmgG1NJYYCy3s5L4R0Q3Fsxwdewe0GpgTkDJKxRmOtUfw1oEoc/WMvv/gtPJ6A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LE0H3ja4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MKH8pyau; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B9DExS1572935
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:46:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n9S9Oesm5sQiwmkIMcRlV+iU3KxqxzSjhKdwL2L+zBI=; b=LE0H3ja4bH0H7vP0
	r4EAfLW0IdOHoNjJ1P7XcijpEqt9reMhI+unoAXLpZ6rIvWAlDlSRBjBwBKcgKaP
	MPiJGzbXdiU6Xw8akUzRAtkMNAu6orcCop9zEp937juBCN2ziFbiEKWZDjmxe9vv
	KtnMu3T5xXbxmodeRMfZ3iajiK6lLEhqY0V6VOUweaD546MLjzWDZepcQ3wKHrRD
	BYKopEBYyxv6DrupXAwqSOZzVAS2TUXlL6KmXlyFDqLNmdGO8JCR8UQ37zA9HnX3
	Oq2LvTStn7NSC6/udCYRsZEEBF4230pPVj0LsMX9HEIOjDISFLhEmb1L35u84UF4
	O8Mvnw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqgkay5d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:46:35 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-829b20cc6faso736017b3a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773222395; x=1773827195; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n9S9Oesm5sQiwmkIMcRlV+iU3KxqxzSjhKdwL2L+zBI=;
        b=MKH8pyaukgKUuMoKzZBgJe6X7f4JCOwbd0Uyc5uMQKrqCx/PVjgQ7wLvBrpYtZKPbW
         xJargAOEfQ/3hrxBb5YvyrwyGXLXcWcQc+pDs2Y+JlpRZTbFY7VOyQnb9zA02vwEBVZ9
         bqTA9xfkhOkwrF4bWTxTq24asBnpPRjle4PiAmgoC6+JwKHZC/GaDk/p2iHNEWucJ7Eg
         bpApJdRvQK+3mOj9XRVLNoKGzCQJEMdFe2bCOF+nov67GEvWe7w6YPkCewg9WtPODzTy
         GfDCympusQkYiboRGTQkqNcgHt8ksVA3eNHwW25Qacn7mWYgbSwrJw13gHTLrZXIDcD9
         BsjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773222395; x=1773827195;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=n9S9Oesm5sQiwmkIMcRlV+iU3KxqxzSjhKdwL2L+zBI=;
        b=itiBKRt5xWJeRLbYSuSB+oDLwqpnnlbhxY2sACuyER5UjrGXeyvkf8eyOr9OR1WBKs
         c4dMyOuLU0nUFjL+eB9iHWyBKvfiuLVm1W9eGg328xpbUyOWz9VPXqyJDhJPh95/Sska
         V3LOX4OOabZRIAdgXdokXAjiOKEwYg6ecIELMasN3cwAWlBkwgC9xwE1EyTZnC6FVSAF
         tb/P3sZE0acuVf3b6IyLblAnESPUccCGFBVT+As3eKNWslOHchjsgzwmrgoJ77vkDD/x
         p1raLAiQEgUkgdmwRMYipY7DiWpnDbm8/fa3Yl4kwYexGXr1PC4MF9wwfN3IZJ9hWDzy
         pUYA==
X-Forwarded-Encrypted: i=1; AJvYcCXyBt96dLcqWQszEv2baagR31RQA+AuJonmfsG0PgsLlYcoEeQ/mTrTibDynzYm89mvcc0NJ3CkaQzn@vger.kernel.org
X-Gm-Message-State: AOJu0YyI5xIwsrQb+/QTKL/p/2ZQqMUuyNzyBqnZtI9SLWXdALFZDdg7
	PLSEKB6tVM1cGgdOt3LQRTZ/8JoER/s28tgx46tmkGi19xYkAklEpYYYpyKBPTfceqxut23ODbd
	2HZBfqwnHt1gjhqG/ydj+amaEPYcPL9HdWP8/wEhRqGiRUP2uTcfZG6LImcx5//K/
X-Gm-Gg: ATEYQzxmhEZorH/xTgbJqeDSpmrrBGYDUT7CKLcnFXgQySkQzYFaR15HCf7JaLLgmKi
	m0DT7vmIHpvfqLdBG55uI+KWM059hXosamSRs0xmsScYWeL8Dv6h1VtoLqEg3Dr6fiBlx7yH5Lq
	AsoaDdKUqaqsfivniLwzjPNRY3rwllwo7ewb+Hcpiqcq0TQ78VUHjOyf0SVjiV9dcQku3fKnfqP
	iaMsR1/a7M5PtHdD6FZadR0MhT//BCXT4RAcn5sBAgRuy30yqZoJ8uU064E9bXb9pP8M78HnmM5
	+p4IndZddVrLeXjImsKj87L9e8zxEbMEU+jGBD0j8NKn6sP8u8GY8+ELrfT7Kte2eKwnDtVlXz6
	wCAw+gITGy/R/GMaTZf4kLR/3OCnJMIZ+5Xub3+AmQ4ltXUrWDvBbk/hjvYW5DunlJ6AqGj7EON
	Nl82Cmyw24q97opFFeLfS7AnNgYRpxW9q6eySo9vB9eFMbiVXjd+5/sO2n
X-Received: by 2002:a05:6a00:1a90:b0:823:1bc7:ffd8 with SMTP id d2e1a72fcca58-829f79ae018mr1595227b3a.9.1773222394447;
        Wed, 11 Mar 2026 02:46:34 -0700 (PDT)
X-Received: by 2002:a05:6a00:1a90:b0:823:1bc7:ffd8 with SMTP id d2e1a72fcca58-829f79ae018mr1595212b3a.9.1773222393938;
        Wed, 11 Mar 2026 02:46:33 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6df5ff0sm1677403b3a.21.2026.03.11.02.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 02:46:33 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 15:15:49 +0530
Subject: [PATCH 7/9] dt-bindings: firmware: qcom,scm: Document ipq5210 SCM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-ipq5210_boot_to_shell-v1-7-fe857d68d698@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773222347; l=853;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=D4FTk1Dc6ZZyZyyYwyYFZQ/PqkaMYdH1kar/R97d2u4=;
 b=QebNZs3WsL0Br+pxni1jb4Njj6XELEcpcYhGX9Et/T0vK8D0o74pZoru2uSLhEMn4P/UNRjyH
 Tl5Cm9eQ2N6BlxfEbn/07H5Pgwe4vWrVxtfvJdL7WsgBmazFGCDi55Q
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: cThHsQvjNS27ndbDpqy-CUJ2EffFgtIH
X-Proofpoint-ORIG-GUID: cThHsQvjNS27ndbDpqy-CUJ2EffFgtIH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA4MSBTYWx0ZWRfX2MjhBiJNb5e7
 Dt7sR1HcROW342ifyQEaX1H4pb2SqYFw2etXZrZYx0Hh5DmTvag2re5EeYvWNmBYUV8tyU1GURb
 exRSOXewhQIJFaTJsH97F53dhNhX8V+elG71axTGuXXOhJDkGMcaZ6rTBFy+z1IZ56KJK2RaUZ8
 boNuIs1YRAltacz3xlSqaShjixPkS7M6UbiCaK8hD5DbSir1E7Lh0KoT/IYD1raS2ywBI3ri7cT
 qcJwG8Y/Bl85H/AtdQMqE2arOJrHoRyUyyzsKY4LgDWfLWYBih/Xgo6ol0A5iXbMPEipQynYcbL
 D7LxxJQSLw26LLvCdCU2TnY73/THip6zbWpq3MDjIts6M7Zl5lQRcmm2u+yLeoXl39oW1QFyw++
 ORkSYhPC6HOcZaSZpIxFrvM8kuahUQ4WmBs+I317iHsC/kKV8PL9EmhFRo/YKamZWvLxjOvroEy
 g/lwaGyAABw+TUX4trg==
X-Authority-Analysis: v=2.4 cv=M4JA6iws c=1 sm=1 tr=0 ts=69b139fb cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=ND75c01xaBhBG1K22twA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110081
X-Rspamd-Queue-Id: C0E3E26146E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273983-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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

Document the scm compatible for ipq5210 SoC.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index d66459f1d84e4d99c7f72415d08bfdaf1d701948..6d9b71a9b9b3fefd1951b963f34942243aa48ccb 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,scm-glymur
           - qcom,scm-ipq4019
           - qcom,scm-ipq5018
+          - qcom,scm-ipq5210
           - qcom,scm-ipq5332
           - qcom,scm-ipq5424
           - qcom,scm-ipq6018

-- 
2.34.1


