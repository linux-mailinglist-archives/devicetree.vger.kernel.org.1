Return-Path: <devicetree+bounces-274215-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OhpBXeUsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274215-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:12:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AFA267153
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 41E5F31DDF18
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF9F53E024B;
	Wed, 11 Mar 2026 16:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XUBrRgNy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a5DN466t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84073E025D
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773245316; cv=none; b=J51siIYSI8Wud9QbQMJMLNYusYiCY5iZxhCu2wWkWMKzB9EFysaLYYK1hi8YrCK7WLqT6lOG6eVzntafZGYvmVOPZZr9bLt/n6bcmWtmOAHqCHz9dnlnX7qVPigQcu+cBAJ6L36q6zH6z+Tj0p5JoC02V0G5eeYUbAMpbO4ui3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773245316; c=relaxed/simple;
	bh=baLse7Wisy0ajVq7VAF1W6Q8rnqwQnJ0swQxre94YJY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QF2MVQFE4L2BnvFtgCvVjclRsdyttvRutic7pNB/jScIhGeQHqFfx3dz+/Av/2zQrsmbFNv6fA8VVEfSdN0qM8Mgct+j42wL+pKRr24CYiY7GUL0JOG0TrJdcqh8GVgGRqG+jrA74vEA2VTNarYye1R9DDALf7bQOJQQk1SuDwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XUBrRgNy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a5DN466t; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BFp2pg3171796
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aQ1VKYj6/MdhUSvHYax9UhceHrIKeZjpSOhtpE6EgXU=; b=XUBrRgNy1MTEe4i4
	ugvwGZp87T9kbpSD5/b5vWI5szxueilAJ133MoONPZTwElCm6NX0CUAFEtcKDxfe
	rdthRp0QcQuStVTADMK02f1ISM+lDxrvToN5HpR5P4iVyfimRhBXKqts0fE8+x/0
	jZroZ2AsCn8NSgpYf1jrYeyEVSsNwygz/wpdFa3C/OTRsooE+BuxJdA3dbO5O4G+
	FW3qe8h9e4xPZKAnZNiOkylh1fwUeBUNrCH2u2onzjtwr2bbSpqesgKwtgqBmanl
	9YaGWVU8XrPMdzIv+lTUGFTJH0WLB4Ly1+wqLnGpRxuGEInoUmE7MWQWD5o/gqZy
	6bLEUQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cubd8r2h7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:33 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd7d66afceso2423919285a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773245312; x=1773850112; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQ1VKYj6/MdhUSvHYax9UhceHrIKeZjpSOhtpE6EgXU=;
        b=a5DN466tugalMBPo/W/TAHZ/QcH1wKyLQyWq3SWXsUSQOJ5Guu7UfLaSGkfYN8uYJ+
         YN1XaW2c2bfyH7jts0kJKrPJYm/H1UT+U5PZghnh2yB0dLb24OwffAzy4pLz5eCU/6pz
         GYqHECoS7/aSCQX09UyRex+9LN3e55F/09H4DGjlZpqxdRBEnu3ovcbZd9KPBlYB/BSW
         NmODv8qhDtbfQsr7ZmwVNHWR7VdEPVtSnGKXmd3H+8xNR6VIqT2ZCYiAXpjl7PjhpYu2
         NORKOI3l4FPtTQw9VIYKRf2Kb1xl6cwidLoitK1Fbbey568M+EkY8nG25kY7vPM25H1s
         RPQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773245312; x=1773850112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aQ1VKYj6/MdhUSvHYax9UhceHrIKeZjpSOhtpE6EgXU=;
        b=Wb6iZvFu3VGPwtpJiV2qsx0MQVzvUqYAOvzfTDan3gqp6S2j2WtcG/AzM8zGOxqoZM
         UhEQQLwCqNf+c9Ga1ULxedu2Bhpjx6JiH1bXdZVHDfJa/F1N+PwgZKhTqfWLaO22hcpf
         jaozrDCoWan9eGT/BnSjAUs7s6nLzpSzMpv3ILhgOkq7tXLlI4jCjW42eJtPm+z/RQY9
         0Hev+kNCFgti5iGdtS6ra5mU2FFTuE6x+c192Gi2JDGtHfzhniwvYBWR0geK8yKddvfq
         REoD/COX+9To/GvlVGQZ6mgUDw6a5euJtyODSviB6HqlWI6YHG+VF7ntCwe32CjQr9VY
         /KQQ==
X-Gm-Message-State: AOJu0YzP4fGhTGoQcAnFa8m8Gcs+/Lt8Nf74BI/yZf/6Atw3SqhXPnbe
	S96zTDZbbueWiWmfGPKOoEaKLn6GeLCSpjD7XUTUKLxjeZ1hxHZ/S2h7jQ+aeIpKpeI2wKiQvfn
	YuM6VplGpT6ahsxF1kTICQPRtoKJITLGq5/sLUK2LO85xFbXjJAgBbpkAbW4NK9aF
X-Gm-Gg: ATEYQzwOySYXyixwbV0HzBZx1IbC4iT6ffy1BYxXhWa/L2HWXMQ2XciXHkg9edJvt9t
	zaegivdDM0AEWY2syrtJ0noUZ9+AUgFaekaEAq1V7IA8+/aGR1efPZngYlPPI2WKuexpZx4db3n
	DXZ55Z9L8Tr0FhN2sBuM4LvR0CsQfVOMoXKy4gRlFIjW5YNYK/ftxYv9GpRERoXEUNwyo6vFEND
	HUUtMZm4csDRI6TpXZ6QELypWD5XrwKHHFFMEqxzm13jtRadFE5iyYt57OgydaceO/lqtW/vsz6
	3bMQbqA7SnTfJ3ZynDdU3r5dS9qW3r03Pln4TTCbmPh+kPYDRCU3ywKeN0WHNHcA6H6SKNZlj/s
	XCoYUyvd9+Ps+6Sr7/Ed9pQpvFODEGn1J0X/m4kc1RwJx
X-Received: by 2002:a05:620a:290c:b0:8cb:4c:3ad9 with SMTP id af79cd13be357-8cda1a8a5e8mr382045685a.80.1773245312101;
        Wed, 11 Mar 2026 09:08:32 -0700 (PDT)
X-Received: by 2002:a05:620a:290c:b0:8cb:4c:3ad9 with SMTP id af79cd13be357-8cda1a8a5e8mr382035485a.80.1773245311331;
        Wed, 11 Mar 2026 09:08:31 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1aa2c3sm184711f8f.13.2026.03.11.09.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:08:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 17:08:02 +0100
Subject: [PATCH 06/12] ARM: dts: imx7d: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-dts-snps-reset-gpios-v1-6-ea1cc09fba84@oss.qualcomm.com>
References: <20260311-dts-snps-reset-gpios-v1-0-ea1cc09fba84@oss.qualcomm.com>
In-Reply-To: <20260311-dts-snps-reset-gpios-v1-0-ea1cc09fba84@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Marek Vasut <marex@denx.de>, Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@dh-electronics.com, linux@ew.tq-group.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1487;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=baLse7Wisy0ajVq7VAF1W6Q8rnqwQnJ0swQxre94YJY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsZNjGBIhOlV1H6GwnXQb4z7BUJr2Spz/02Iv8
 47oyFmsyUmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabGTYwAKCRDBN2bmhouD
 19KfEACDYpmDpcRiNffKmElW/1AumXhkqMDEsjZtblf0vSF5jCQutVoGcsHEEC1RnVfQVBdDBOL
 W1DRCCZMWzequ7h7NOxkCaHllg4fXTgYuG100z/2swIehPEfgB30j8eWD8VX6hs+uMqYb4qHAL9
 PK+d2COdKkgJxydxqEUjEeCV6QIGjQ0K2LLLj2z/jk2qHqNljF0iPAsOj731NSdPXbzFoISpRPn
 JPt90u7yGkwCjt6g7lsO6iw1tIA5fELc+1/zidEsv8zyvWuBgZDzF4witwRiltZ71fhYoWkS9va
 sKIJgeNEbY+xjzGTV2rFdvIdZPG99nkABiKJqTw5aqJxvWq6VEk2k8ggylGTB0Yj+x9igc0qZLQ
 Ehcqk8DhAsge715UEwaLUdeX9gpkvPA+FZpA2MAcwoQ/sT3K4nJCkBEAxikNtGHOAk/Viz2NziX
 5HR2iZiFmQyjU1NRYTawjbaOssYdo7ZBa0/kd9pN+LK8/WIAejGH+5AcUfTivg/dUK+TiFzMbsr
 xQlAaYhxdcFzwhqh5HenSDAo98auuT/6wA6z909G31J0kbePaHeSZtFCLUvdyzm/XYzMm1456Kl
 zTHgq1+8HYRsOQyIggDAcV1Jj38As5hsapeYCx020A9NTNCspomFtKR2kvNp1XNCSCBosVAxcCP
 +T9MzMaHCrBhgHA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: 0XBCIcv36GbjrVKpIR7dDwiuVuZzIAr_
X-Authority-Analysis: v=2.4 cv=eqHSD4pX c=1 sm=1 tr=0 ts=69b19381 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=BBuWd3GDwlF34hjrYEMA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 0XBCIcv36GbjrVKpIR7dDwiuVuZzIAr_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEzNiBTYWx0ZWRfX4GD9m9vww1QV
 LJfeLMDWd9lbY/rAAbHCgpOjGS9OybehMZ3km6IMiWHbhShHJqI41yn4Xyxx5UrrV0qv3H3NL/n
 3Z1+Om8ZXhIm9K+rDJ/5FifjJWm9IrhNjG5JqNEPQFwS5WOPLs6Pma6ozy45ALyFPL11ZqpOXnC
 PeedurKN3C+MscqbK96Rgk9+Dl5K03ZG/1VZ4rrLGBFtn6eZ1ejx0D00erR+p/hIJINeN7oGveV
 O5U1PHU0ug6Rjke5+0F1RlVzeeCXCEhnYatILbjHEuLt3bdZg0B9eC8GQa854Zmy6Hung5h/35t
 koad8qeFKxy87goSOX9/KxXiAMUkbEhURr2BTi8GNTBgUE/WGW+40xIj8upQiwgAD9gJmFFgMOl
 qIfO/Uf36mMH7UR25YM8TOj1k0g7W+sXnMOMtWSc7ayLblDrrY3zu+hMcza/MF9bAOqRbCBKAKo
 QV6hXpDu4cvlGDfRQvw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110136
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274215-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A8AFA267153
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings through referenced
snps,dw-pcie-common.yaml schema already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" deprecated since commit 42694f9f6407 ("dt-bindings: PCI:
add snps,dw-pcie.yaml") in 2021.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts | 2 +-
 arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
index e3ee16f1aaa9..a5fc7f80f651 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
@@ -122,7 +122,7 @@ &pcie {
 	/* 1.5V logically from 3.3V */
 	/* probe deferral not supported */
 	/* pcie-bus-supply = <&reg_mpcie_1v5>; */
-	reset-gpio = <&gpio5 12 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
 	status = "disabled";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts b/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
index a370e868cafe..ab7cabe5552d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
@@ -456,7 +456,7 @@ display_out: endpoint {
 };
 
 &pcie {
-	reset-gpio = <&extended_io 1 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&extended_io 1 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 

-- 
2.51.0


