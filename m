Return-Path: <devicetree+bounces-259668-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHZ0EBL7d2nlmwEAu9opvQ
	(envelope-from <devicetree+bounces-259668-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:38:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEBE8E3BF
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:38:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 29207300B598
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 23:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 759CE3128C1;
	Mon, 26 Jan 2026 23:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ePVjyov4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HfLHNtx2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FC230FF04
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769470719; cv=none; b=HbY4POOcQSOEdPgTwMxfau450/hWgvJzWo+x20qfysJa6Akac6rkSDXCQh59rjD2wBWVt3Qt0m8kYLeC9bkkB/24KEx37qJ2aXkgby+sFK+bwMwY+87OZBjrKOKwwOJowmOLzRTaGi4HcN5NVZNONYDcyT93S3lEI2lVNa63z5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769470719; c=relaxed/simple;
	bh=5phvMczW78qApnyZMBz0Y6XZX66r7Hm9w2Slz3QFyWs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ADVaW/Vn0DkSnzLwnPL00cUncPC4c5eYmQNjDaxyF8H06TBtCcdDCzFjSWnWrwW0Rmj0KQhiVVrgcPUocY3Ief/ry/Vb5ip2AYlJ3Vsr60mfrs/H3oA4oN0A/awHkSLf0/NiEBYVJAvj2p0gpkWnxvEdM6wNLzgi8CXTMfhja0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ePVjyov4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HfLHNtx2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QKgLMW3399313
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=e+sGwixJamM
	1RIjCRMV4pknYrlBFL8y0TztEEJmTrNE=; b=ePVjyov4p+J8zRQWfrg2h2VQo2B
	6ZZBa5DhPNlZUtrrj+6OKmM9QkyTljxO/jgChgxwQvbMUdcpXeuFmWFEVkvIEYxm
	hMPH7vDfHpwsaue7ZBTelDLUxsOarWYDeYiiag26WtqqgpZuYR/NG6+5ULE2aD0D
	faeB3k/2aI2e4JjIDPBiuBu0KS7JBwSs24syOVhlF9SQ53pVkiUIpF4UOhcdDv9k
	LsMm2OWsuJQEIppd4RR+voRLeX6d/jeO2BhyUjG2IARyFzSkAHP21toIc2IN4GVo
	aor0HpXpnLM9zvvLkmF3TvQEyl/4zmgKMJvmKlF0/a1+JM8qCMvTbEnyolA==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv9gqwx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:36 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1233b91de6bso8621027c88.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769470715; x=1770075515; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e+sGwixJamM1RIjCRMV4pknYrlBFL8y0TztEEJmTrNE=;
        b=HfLHNtx2XXKP7mFlZg6W7e4VG7lXdZ4iwHS3Ys3XuxMSLnwBWmcGp+xwFns4slo+iG
         b8+bTZrQqExQUToKzJVYVlSZJvaxyfY3Yng+kPEGnLcKlxCc+TzV2OWDXeEkRX6s2Sp8
         W4tw1aYbENk1HR0q65K7e1bhEy7eOJV53/wzc6KHk3NdOqfSAttDFNNWwPh/9HuAnH8t
         kUMQ6dUzeserNOtTAIaEL5HlIiTizxnL5Bc5MvC1CUNhPhw2miGNiE+9zYb2PhC66yO1
         u7xWkJlggzfUEeeTAoQck0aI/QSPRKwjcJy8zUDz/92OTl7y+bG7WnW8jWG675KkaXYO
         CALA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769470715; x=1770075515;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=e+sGwixJamM1RIjCRMV4pknYrlBFL8y0TztEEJmTrNE=;
        b=MJWB+DmfChj/aaIad0DgONInO5hXcJB8p4C2FAOiuF3kYMD+joIcFfUqUqHU9ce0J/
         /C9i1dtGEp6T4GZrXn/fO9SNdnYg3JZ48Y5Cf4QjgVFtxVUoo/0AJ6RWIMFG6EHLlq/1
         3qteq+4AiPsL3/JelEQZHQtXwWEo4BSxdwqL9bErcKheZeYm+xXsaKZXsklYXqogz0R5
         XDdAuDGQWfXaSK+bX8hcGXdfWEcY4wTLR9KdUy+H/XDVa1s0QnIoHzruvVGNYsv6yPau
         o8Q451Sqp4Obv61rzOqK8Oc2RbMBqin6rdxZGhwLlkuZB8rHlbPzDIzXka3F6Wu44IwF
         ttcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPJnS5ItI2JXlAgw4/6j4ecPSSmcRPt5CGq540xvYg9uYekd7jJ04TK3Uwc0ToDEEkqGblHpe/POp9@vger.kernel.org
X-Gm-Message-State: AOJu0YwRrBhetMDenFU5trSvhjGzjdmEGAKx9/1FEQ8Iqn9Y7VCzBLmy
	LECESZnVtQN60qADqkK+EWqNRr8ONySTT5U+gJH0QnL78kmpEu+d5zGbJJ230PtRPkfq/647vk7
	qXua10p8kOpuBh8wRNoaPRK7AAGXcfZtjXmSieQD3zwDs3BCA5ISbVDH6v+aib3gX
X-Gm-Gg: AZuq6aLPfY8uWUv4AqQtIl+rM2gv2yINog8OgNpDTj39bGICi1oQASIh+z1RidNcujN
	/fLbj0uGd+OoY7plxX2wwZ/IkJx5P7URvUl3S+D7jumMgTn9jqINPNjq5De7hkKbvWJPSgWVv09
	L0u7QVu1rUw2amDgPe4xg/Pnqo+pQKXjkRkQxT3ygUnETje19kVXkmExowEcExxMaVnmiXrsL5G
	3EkVOgRWQ3t6bV9SbTxQpZ75+zsrhGbOfCoZ3Cus47SpyxltwJwUnseXVvXruY7QPvqJV7BlW8k
	15K5+TiLxpOLt43MPeDj4tkG9qhYCqSGRJGlILE9Efwu+ghMrp7H+8XHK+LxrnldGjtSoKNezAH
	i2Nb7YUbng5a1Rb2eK2Yh7e51YgcDSr48Y2AvEgb8LNmByBs01ipD8vz7PaUb+Gk=
X-Received: by 2002:a05:7022:2484:b0:11b:b3a1:714a with SMTP id a92af1059eb24-1248ebe982amr2761237c88.12.1769470715205;
        Mon, 26 Jan 2026 15:38:35 -0800 (PST)
X-Received: by 2002:a05:7022:2484:b0:11b:b3a1:714a with SMTP id a92af1059eb24-1248ebe982amr2761217c88.12.1769470714569;
        Mon, 26 Jan 2026 15:38:34 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90ce0dsm19948967c88.4.2026.01.26.15.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 15:38:34 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/9] usb: misc: qcom_eud: add per-path High-Speed PHY control
Date: Mon, 26 Jan 2026 15:38:24 -0800
Message-Id: <20260126233830.2193816-4-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260126233830.2193816-1-elson.serrao@oss.qualcomm.com>
References: <20260126233830.2193816-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=OYOVzxTY c=1 sm=1 tr=0 ts=6977fafc cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=2YOFDtW_yV4_c3kXKk8A:9 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-GUID: ISXmc9yiNNE4PnBX9iS3KvtiE0wtuHm_
X-Proofpoint-ORIG-GUID: ISXmc9yiNNE4PnBX9iS3KvtiE0wtuHm_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDIwMiBTYWx0ZWRfX1mPj/azqhfMr
 cPj/uNi/ZoKxAJt3Qri0yUWYf56Iaq1hcNfM/Z6BZLe3Qe9c8WzRGO1Ib73tT3HsfAWeVMGD3u0
 Acta1B0hTs+GkYY+mEbEVSAf+VE5sNJdLTpPArY3bNhTvq8ufk26YlFPhoN0UiPKF+x6VBZB6gT
 nUTxvJKhURW8RJ+uqjSJtOheBbxzgL/u7TtcR3j7lPLRSljwunMJ/drdBsFyjxU64tsrWMmtCxZ
 AXgdgzB5mtS5D2zToSWL80ZO8KBlb9mK3YgErXekTTAfl1QlNne1QOIf4hG0ZVuhCxZs1K3OeBJ
 X0M3VfHRjWpK57xLUb2iCviBXF1oY4+RbovzIZdphVYUDJ/pCuv5sSuk1MI7pyeDb3hJBvI33V9
 3pJNC9F/SHQCrpF4jthxd6Iow/ZcHj6+bKYhkbuvlXvutkiCyLRqixr1TiIFeYqG+kTHTpW9Ouv
 BqRQ+VcdXHBDVjexPgg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_04,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260202
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259668-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1FEBE8E3BF
X-Rspamd-Action: no action

EUD hardware can support multiple High-Speed USB paths, each routed
through its own PHY. The active path is selected in hardware via the
EUD_PORT_SEL register. As a High-Speed hub, EUD requires access to the
High-Speed PHY associated with the active UTMI path. To support this
multi-path capability, the driver must manage PHY resources on a per-path
basis, ensuring that the PHY for the currently selected path is properly
initialized and powered.

This patch restructures the driver to implement per-path PHY management.
The driver now powers the appropriate PHY based on the selected and
enabled UTMI path, ensuring correct operation when EUD is enabled.

Supporting this requires describing the available UTMI paths and their
corresponding PHYs in Device Tree. This updates DT requirements and is
not backward compatible with older DTs that lacked this description.
Historically, EUD appeared to work on single-path systems because the
USB controller kept the PHY initialized. However, EUD is designed to
operate independently of the USB controller and therefore requires
explicit PHY control.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 drivers/usb/misc/qcom_eud.c | 130 +++++++++++++++++++++++++++++++++++-
 1 file changed, 129 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/misc/qcom_eud.c b/drivers/usb/misc/qcom_eud.c
index 1a136f8f1ae5..5cebb64f4a67 100644
--- a/drivers/usb/misc/qcom_eud.c
+++ b/drivers/usb/misc/qcom_eud.c
@@ -11,6 +11,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/sysfs.h>
@@ -34,26 +35,96 @@
 #define EUD_INT_SAFE_MODE	BIT(4)
 #define EUD_INT_ALL		(EUD_INT_VBUS | EUD_INT_SAFE_MODE)
 
+struct eud_path {
+	struct eud_chip		*chip;
+	struct phy		*phy;
+	u8			num;
+};
+
 struct eud_chip {
 	struct device			*dev;
 	struct usb_role_switch		*role_sw;
 	void __iomem			*base;
+	struct eud_path			*paths[EUD_MAX_PORTS];
 	phys_addr_t			mode_mgr;
 	unsigned int			int_status;
 	int				irq;
 	bool				enabled;
 	bool				usb_attached;
+	bool				phy_enabled;
 	u8				port_idx;
 };
 
+static int eud_phy_enable(struct eud_chip *chip)
+{
+	struct eud_path *path;
+	struct phy *phy;
+	int ret;
+
+	if (chip->phy_enabled)
+		return 0;
+
+	path = chip->paths[chip->port_idx];
+	if (!path || !path->phy) {
+		dev_err(chip->dev, "No PHY configured for port %u\n", chip->port_idx);
+		return -ENODEV;
+	}
+
+	phy = path->phy;
+
+	ret = phy_init(phy);
+	if (ret) {
+		dev_err(chip->dev, "Failed to initialize USB2 PHY for port %u: %d\n",
+			chip->port_idx, ret);
+		return ret;
+	}
+
+	ret = phy_power_on(phy);
+	if (ret) {
+		dev_err(chip->dev, "Failed to power on USB2 PHY for port %u: %d\n",
+			chip->port_idx, ret);
+		phy_exit(phy);
+		return ret;
+	}
+
+	chip->phy_enabled = true;
+
+	return 0;
+}
+
+static void eud_phy_disable(struct eud_chip *chip)
+{
+	struct eud_path *path;
+	struct phy *phy;
+
+	if (!chip->phy_enabled)
+		return;
+
+	path = chip->paths[chip->port_idx];
+	if (!path || !path->phy)
+		return;
+
+	phy = path->phy;
+
+	phy_power_off(phy);
+	phy_exit(phy);
+	chip->phy_enabled = false;
+}
+
 static int enable_eud(struct eud_chip *priv)
 {
 	int ret;
 
-	ret = qcom_scm_io_writel(priv->mode_mgr + EUD_REG_EUD_EN2, 1);
+	ret = eud_phy_enable(priv);
 	if (ret)
 		return ret;
 
+	ret = qcom_scm_io_writel(priv->mode_mgr + EUD_REG_EUD_EN2, 1);
+	if (ret) {
+		eud_phy_disable(priv);
+		return ret;
+	}
+
 	writel(EUD_ENABLE, priv->base + EUD_REG_CSR_EUD_EN);
 	writel(EUD_INT_VBUS | EUD_INT_SAFE_MODE,
 			priv->base + EUD_REG_INT1_EN_MASK);
@@ -70,6 +141,8 @@ static int disable_eud(struct eud_chip *priv)
 		return ret;
 
 	writel(0, priv->base + EUD_REG_CSR_EUD_EN);
+	eud_phy_disable(priv);
+
 	return 0;
 }
 
@@ -132,6 +205,12 @@ static ssize_t port_store(struct device *dev,
 	if (port >= EUD_MAX_PORTS)
 		return -EINVAL;
 
+	/* Check if the corresponding path is available */
+	if (!chip->paths[port]) {
+		dev_err(chip->dev, "EUD not supported on selected port\n");
+		return -EOPNOTSUPP;
+	}
+
 	/* Port selection must be done before enabling EUD */
 	if (chip->enabled) {
 		dev_err(chip->dev, "Cannot change port while EUD is enabled\n");
@@ -231,8 +310,45 @@ static void eud_role_switch_release(void *data)
 	usb_role_switch_put(chip->role_sw);
 }
 
+static int eud_init_path(struct eud_chip *chip, struct device_node *np)
+{
+	struct eud_path *path;
+	u32 path_num;
+	int ret;
+
+	ret = of_property_read_u32(np, "reg", &path_num);
+	if (ret) {
+		dev_err(chip->dev, "Missing 'reg' property in path node\n");
+		return ret;
+	}
+
+	if (path_num >= EUD_MAX_PORTS) {
+		dev_err(chip->dev, "Invalid path number: %u (max %d)\n",
+			path_num, EUD_MAX_PORTS - 1);
+		return -EINVAL;
+	}
+
+	path = devm_kzalloc(chip->dev, sizeof(*path), GFP_KERNEL);
+	if (!path)
+		return -ENOMEM;
+
+	path->chip = chip;
+	path->num = path_num;
+
+	path->phy = devm_of_phy_get(chip->dev, np, NULL);
+	if (IS_ERR(path->phy))
+		return dev_err_probe(chip->dev, PTR_ERR(path->phy),
+				     "Failed to get PHY for path %d\n", path_num);
+
+	chip->paths[path_num] = path;
+
+	return 0;
+}
+
 static int eud_probe(struct platform_device *pdev)
 {
+	struct device_node *np = pdev->dev.of_node;
+	struct device_node *child;
 	struct eud_chip *chip;
 	struct resource *res;
 	int ret;
@@ -252,6 +368,18 @@ static int eud_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	for_each_child_of_node(np, child) {
+		ret = eud_init_path(chip, child);
+		if (ret) {
+			of_node_put(child);
+			return ret;
+		}
+	}
+
+	/* Primary path is mandatory. Secondary is optional */
+	if (!chip->paths[0])
+		return -ENODEV;
+
 	chip->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(chip->base))
 		return PTR_ERR(chip->base);
-- 
2.34.1


