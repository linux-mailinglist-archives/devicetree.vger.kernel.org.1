Return-Path: <devicetree+bounces-273982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMrmAKc8sWmAswIAu9opvQ
	(envelope-from <devicetree+bounces-273982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:57:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DE57F2617CD
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:57:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 76BDA3082082
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:49:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A10683C13E2;
	Wed, 11 Mar 2026 09:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ieCr6mOZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S7JXJKXs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A073C1992
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773222394; cv=none; b=aGPPH8yeFUARDzUWfmJDoHmB5jSh4cIVnJ9gTY6nM7NDldF7jua6G+6rS20Wso11Ne9db0ymzrPGhmP12pcXy7c94FZkZlx2rK3nVYKOZ7+Plq2IGPTKh4tex64HfLitLDapwwEZviXfCT3ojkjXlo9UqwplrJKiRlBes1g2lK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773222394; c=relaxed/simple;
	bh=IQmLRubc98sYLOJZBs/FSJfKQt2j9qNxxWA76OuA2lY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M0nR6YRNdHLx1nFN63DIxDkNzqs7837x083UvTwSBzNE/aFET5r9UE2Dz2zvZrfHnqVniyxnnrh372SbgX0E9u9LgbxF1gIvR4Ze9q9vc7VjNkUHGB/qUtLUF/62He1GMq5IjzpGlGOUr6NJeOH3ZsLIQ7saJbO+H5wYtYgqt8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ieCr6mOZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S7JXJKXs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B7YgUV508369
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:46:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tWAywvCGHxTAqEWVQVlrk7dlZA/OJH3Oi9lMQj0nYQM=; b=ieCr6mOZ+E4cVJ08
	V6bzprIWIiXuW0j46G2B4XFtuZl7GLIzd9InRRJoN07w9B1XkVpg7758btHjafl/
	H7Za7jIEJEhlX4POOvdKdZc/2+2AiQowXs+fUqFG7I2uTPh3UnmypmaNo9BCxOxw
	IoRBrXqEZra3uGWOnQ0LnU51okvoCVT9ExK3SWAGxQQo1qefk7oO3wDv+xtDNHWy
	XjKdJ7cMM7ADg1Jyl++e5ouO417xTa1/lqFUOCH/QuGgQIuPSHS9EjfcJReAfRVY
	zG1aYkWRbkOGzSvIDHrGc/cQXeAHZu96JdR1q8/ZokE4+0kIKHdCT/rSu78msU4j
	gJCASA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctppak7ad-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:46:29 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8297d2c1e64so2465900b3a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773222389; x=1773827189; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tWAywvCGHxTAqEWVQVlrk7dlZA/OJH3Oi9lMQj0nYQM=;
        b=S7JXJKXsx94iydb1zH/4RagPvTjFc7wh/VVYk4ad5HfksErL0/0LEXXrQKPtVefV/m
         eOijlBIEaWgN7DtbTw0Zj00tpCHFdTT1bIoEq3OYmiS4/M9Tcedf1JbZaQSo3dTcBMgj
         Fi2t9o73stz+yBlpsbWEsj3RErVDy082COX0SmQEoavgMOaq8+C/7W+pg2W50u32eqdH
         +yeCj9mZYCvZmMIMqbRvB4pBz1Rv+65bCrpRZtHip1EDkAAmHR8CYp7brrtcA9z5WubX
         vIzH9DFpCGXhBk0DROmAUtAia4+pYgf20YcXfDlmiDY+T+JMekMbpLo7IHhPD9WGKQWU
         +1gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773222389; x=1773827189;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tWAywvCGHxTAqEWVQVlrk7dlZA/OJH3Oi9lMQj0nYQM=;
        b=RpCum0+ukLjO4Jo2OKpeQyTTWDuPXdkbKT/y8mP70sa3jv09Bi2hplpTzLOmjKn4dy
         j23nfi2E+oOJVXd/e3mQKCci06qpPJ76+5ZjTvRW01gjxwtD94cZGHBx2NOgHFbvIc9S
         bx5Hy1Wwo+FcHNp0FxSmcKM7F5az/a3gbERK4EQEppF+Fge1DByNYDFFedDVUp9lvqFl
         FgV9MrlltVQLjhf0hrI+qYhPScnVi3SWU/AB/9mKOL6/o5EPS2CY5dERoFxuLrrl5mO2
         9UouzqZnY8Ik1AtXV1DMg/WFqsHPySWvmLFhs49jIkqYETHHy7Xkk9cIhQ869fNglnqm
         /FNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbcOzcCtm1h2pm2M+UxzkdrxFCLpavgAIpAwCmzfhhgftrF8lr8z4ztNniKkImn6vwiHFyOfr/EHF3@vger.kernel.org
X-Gm-Message-State: AOJu0YyKfSEG7mQDoLLhqbJK1xImU8Qnjt0BJjPTIoBvqxcB7Nz59Y27
	IuQgGHyzEl/P2PYP6BKyHVvAmAkyxd3VakhkWnnQ+akGgWtgJyb9UwiRY8rgBIc1YsF4vi0DSOl
	BeuxMxkeEiQ7aFdSybJuSZICAFz/u4eZBcCHJ85jhgANmeOp9aKEIufepebL6YCm4
X-Gm-Gg: ATEYQzyweQjBQz3+lxD76TY+Far5g9PBhlRIpOtiJ/5ddlrzR7wEfpVz3um0X1SEN23
	jNncfVZIEgclFMIhsuohAn/OzBFp53L3ojsqsguLVDD5tOTzOAeoULNPyHEUlhPvsSlGjeGdIRf
	4kQEb4t9EPjIUt78coxVjX4+9HUgDhjnpSAIeKiw3UK3awsefWK1vL/RrseOfF6LGtOCHwuACF6
	vpRsj/MYnSCBDzm3EeBM2V80OxL3MwEEWqIIeXBk+1lhtU1K2yt6gaO7wnJFxNOz3UF83kgFVoa
	4EyH8tGm9H7oJRQ/T9GNDSF6ybmoczw4W6t5+p/a+dWzVST3p+4EJ2uP/Y2vnvMfwmOeI77n7jr
	wCVJ7nNVR7pRv+u6EQbz+JvYBjJvfKI4EHKD327fKq9TLOI4L8XEv5XoZxfSpmdsnPChzHXU1r5
	zb6D7Pe/jnwTuNJD1kZSChgGPNHQ9Xc2ekBecIB1nv9BeU/2lvpRzPZxnB
X-Received: by 2002:a05:6a00:1911:b0:81f:3c77:a24c with SMTP id d2e1a72fcca58-829f71c2835mr1763994b3a.66.1773222388656;
        Wed, 11 Mar 2026 02:46:28 -0700 (PDT)
X-Received: by 2002:a05:6a00:1911:b0:81f:3c77:a24c with SMTP id d2e1a72fcca58-829f71c2835mr1763975b3a.66.1773222388178;
        Wed, 11 Mar 2026 02:46:28 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6df5ff0sm1677403b3a.21.2026.03.11.02.46.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 02:46:27 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 15:15:48 +0530
Subject: [PATCH 6/9] dt-bindings: mmc: sdhci-msm: add IPQ5210 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-ipq5210_boot_to_shell-v1-6-fe857d68d698@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773222347; l=900;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=IQmLRubc98sYLOJZBs/FSJfKQt2j9qNxxWA76OuA2lY=;
 b=9OwKMF0wDQKD28dnxyfTBusxTtAvDuDyTKmPQ4VL0dBcvlZWFztEFq9OqlcRrZDkeya/k5Gn8
 3APJ64QSwWpBbWrkghqziq1rpWICb2jnmWd95rlJgXBMGplAUHqoBmW
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: z2tHRYd2P8FdTG_2wLHtwJZ_yU6MxWj9
X-Authority-Analysis: v=2.4 cv=D7BK6/Rj c=1 sm=1 tr=0 ts=69b139f5 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=lbzul4gwta_GEy2M20MA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA4MSBTYWx0ZWRfX8Sb+vKikvtRY
 to+vC+8ZWkweE2dpZ6mwIqv8u6f348WVwAd9QHc6D8EIDONEcLG6h3Uu6bbEs+wBPQfam3ZDPF4
 qY4CkdzXGXBmHz9yKGLMWzvXg9wGGs1a0BO8JrvO/2bhNTEdKXbWMCKOhlasNi68sSCiREobinx
 GaGDMlx1eknLpWWmpiONeFK9OEUwuIcRyLnmb8BnyL5yu1RKIbizbYzbdUjTZnkcui9bRBIPZiy
 MSPlRn4lvVJ9qQzh7zlc8XixSbUNYmtUSEywEwHdCn/LmRkquzMqoXti9dpF+AR2UVw4k3/RFyu
 CJALMH9Dgq48kJ/q3y2VXL0wsoKkuFgcTkoUaRLphm/PJ6BZ+rLAQFldkUpOB5GUjMs98wSdMZO
 +OJ5RVM3qGBxLnJAtp5vxq+thNvJQ7kw9KxbckVslhpUu9cWLVcSv49xCHXxMVl7bT0ZQHPOLX+
 fVGDK4VCprPeZ0mQCeA==
X-Proofpoint-ORIG-GUID: z2tHRYd2P8FdTG_2wLHtwJZ_yU6MxWj9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603110081
X-Rspamd-Queue-Id: DE57F2617CD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273982-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
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

The IPQ5210 supports eMMC with an SDHCI controller. Add the appropriate
compatible to the documentation.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 938be8228d668c87f0be95c63d4d951ebbadd4e4..fd1d5b04e7556903daffe86e455fde11be0dbd9f 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -38,6 +38,7 @@ properties:
       - items:
           - enum:
               - qcom,ipq5018-sdhci
+              - qcom,ipq5210-sdhci
               - qcom,ipq5332-sdhci
               - qcom,ipq5424-sdhci
               - qcom,ipq6018-sdhci

-- 
2.34.1


