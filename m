Return-Path: <devicetree+bounces-223431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 994F3BB4B18
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 19:28:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51E42166CA6
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 17:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 067E42773D9;
	Thu,  2 Oct 2025 17:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ajv4vE7M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517952765D1
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 17:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759425964; cv=none; b=Bb3d47aVTI0P6B2eFbZURhKHh7zS4t4pYTpwyC6YIwWcFpr/zXSKv/YJOr6AlF31bAdW91dR+jK4DrcwTsqqpamhenWPJLRFadb4Arl4y82szsG1v+QzReS9QhlZguog5/iZszb+KMzK/OzmPyOb7ipx4VNp1NKZJWsUS1astmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759425964; c=relaxed/simple;
	bh=KpJUhLHlhpfLyU7v5hWLmJqH5SP+8qByBBw5bJBqoe4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EkkWpzDijf3eWsuRG0FCGF14PRa7CecOU0vG2k7qrDFlyB3XOUZx9BW2Pbz0O1R4Ipt4J4DcbkhO9EmP4atSoufwnCxifw0013LS+L9kbtwQNNdfm502m4LF5mqF16VbNf97Lp1pBY2WdhzjAP+VQnyKTKHrY46A+soHQpvMy2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ajv4vE7M; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5928V79X022671
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 17:26:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=dZF5G3OllrQ
	VIzCtQTPcNpCQm6618iDRuW3sNgs9wT8=; b=ajv4vE7MXKnJVmnN2oMeYShjOvR
	qg64a8b+edOYUATr7JgEOmRGlVfCzVfUwq/QF02DTudgF47jOHkOGLFcyhNFOeFY
	WuRtva8uH7W/ZQqOvh5fLgbKLmqy2O/tmLJ23nm4tYsrVz0sXBvcSlWCzMyNhP4y
	34yNycPYDlAfGRmkyGCdX8sPeufnd9oA8kVdxeRvW8kkGm0277aq9OT+x31wt/jR
	WCDF1pQTX82j06mw9Rd2ywz+u77tFZ+iTKS17A1y2xUDXl1gzlqZqkL/HA+a7ZQZ
	1hQqcrTcbsT8RQBY3E4gJ9Ip9aEKbWYVtyd14A41oAaJxujuK6J/HXoun6g==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n8vsy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 17:26:01 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76e2e60221fso2087722b3a.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 10:26:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759425960; x=1760030760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dZF5G3OllrQVIzCtQTPcNpCQm6618iDRuW3sNgs9wT8=;
        b=eJWMMXnCOFV6RauZSsTukRvcgswyI8iDRdB214tDBNV57id1PI2oisSOfQu4eLw/YG
         pVZ5WKzfvadXGczzg1ckLES2PowCx68xRvY2MMN5Mdr9M3psMaeZCnseQfq/hpDhAClH
         6F5nBNrD6TORDUTtAr4p6cw2mFbRKb93WSfvT/QN347+wbsRGBb0nFkhXU/SQ4R57/vQ
         ecxYJ0Im7m1hY4BhCpw5kgLnszxpWOAORdOeVBens8qMMGCD0k3wlr9/R08WtONlQ1ve
         NtDS6vZoj2nf9s+spP44DBWax11cgHSjg8e22Od8dEkibLw1kPXoIB80v0YsgFcfE/fi
         EnkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBMhHrTetUyNZb3AEVfbzSkMeshsDo1E4XXPu5vRN7Xa3yT6VkEfW8ZQn7Sn8jA6MLO5+DNImpiksw@vger.kernel.org
X-Gm-Message-State: AOJu0YzTK/G2GUaFGIL2L+WnqKaSgPg6izNn9GMXkP8Zl7sXU1hi9oa8
	RI9ysE6XK+otXxt4IcPybW7HgMRhn/n3olzyveGYi280JvHy7aoWVPZx7WX/pbl+V9DP7j8XOd0
	tU8F5NQa2+Bvf2SzGBP7GdmAZ1epVzSADBPeAZspRi6YOYLzqZ0GFKeWG+XEHWs6I
X-Gm-Gg: ASbGncuO7X5jhluhxdJpxs+9lt8Hzf7Akb2P8qKMBQGylKOzyr6h8zfuVvGoMUbHbWM
	LjjMToZOX3CWxAAuw8Yaq6LwEAlXecQ2pE8eryAAwLoV4aej1wBpYS8wERQp2Ih13FOSUv6IAZj
	iiDP0VCuJuekCiqdEjXa/HrQlXb+dvW+5ygXyR+Gwn/89SuemQjR1CC94Vf4CTWDZas6oPyAGx0
	sfSbo/Dz0eghIkfZkTBOt2D5XUh4i9QPlPcay1/WvWJDPRHgVqL+uLe2ozlpcFT1hMJKFfdX2ep
	i5cdOT3GpgYCNM7nZRfZpDA4aCLWozlb1IWqBK1ua8lDOibCoPviEm+dj/sT0iRGvUqQ4ziWDHi
	aGPy2MIE=
X-Received: by 2002:a05:6a21:6d9b:b0:2f6:cabe:a7ac with SMTP id adf61e73a8af0-32b620946bfmr267574637.34.1759425959778;
        Thu, 02 Oct 2025 10:25:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBdBouPUdDeim0CeupGCCbGHi5OzKKAktzwICCdkbUIZj19Y9+1mzW+TAuT6J/3p4skOgJZQ==
X-Received: by 2002:a05:6a21:6d9b:b0:2f6:cabe:a7ac with SMTP id adf61e73a8af0-32b620946bfmr267540637.34.1759425959285;
        Thu, 02 Oct 2025 10:25:59 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f5b6e9sm2387423a12.40.2025.10.02.10.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 10:25:58 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 2/2] usb: typec: hd3ss3220: Enable VBUS based on ID pin state
Date: Thu,  2 Oct 2025 22:55:39 +0530
Message-Id: <20251002172539.586538-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251002172539.586538-1-krishna.kurapati@oss.qualcomm.com>
References: <20251002172539.586538-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: efwg6mR-MzISOAoDd3P8ZtBn4ay3hkNt
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68deb5a9 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=UqlIXWcyfNZJISXVOQ4A:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: efwg6mR-MzISOAoDd3P8ZtBn4ay3hkNt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX9eKQegfv5ZWN
 EpQUH+Wrtbd5k68f0k/WMXBVsLid4T4871EznIoB2Gk5bjHB21hfr6bNnouqKIXsGuwkh04gW78
 w65IPikRHs+5q6jnBvshdxQxDeiaMZBCE2/NE/2GT89vwZ4Vk3JK26ZasoQ31B6pYUyErHjXveU
 VkXGiZPq7FqG8XxDcBDuI6XmQOhiNGsjQes6PPiKRhHyQXfnker4r7Xq+fctiPK72LmDgSKi5kB
 mjHyimkwJDoyfIUAZBDNLoW1ogWlmV2do8Vj1pFbm+3r+u4yy0jtTbeFmMMs5aBS+xjjM2cZeGz
 J3sGm8cG/ywP8AkA+uYw8SccZEd6+SHlmtDmhkNresWe4ukRwUQ7ZoXPSV3VtHYUm3+3ijxZ7q4
 5zC5991pdtfuIoN95dBJgq2OscO5fg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_06,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

Enable VBUS on HD3SS3220 when the ID pin is low, as required by the Type-C
specification. The ID pin stays high when VBUS is not at VSafe0V, and goes
low when VBUS is at VSafe0V.

Add support to read the ID pin state and enable VBUS accordingly.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/usb/typec/hd3ss3220.c | 58 +++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/drivers/usb/typec/hd3ss3220.c b/drivers/usb/typec/hd3ss3220.c
index 3ecc688dda82..44ee0be27644 100644
--- a/drivers/usb/typec/hd3ss3220.c
+++ b/drivers/usb/typec/hd3ss3220.c
@@ -54,6 +54,11 @@ struct hd3ss3220 {
 	struct delayed_work output_poll_work;
 	enum usb_role role_state;
 	bool poll;
+
+	struct gpio_desc *id_gpiod;
+	int id_irq;
+
+	struct regulator *vbus;
 };
 
 static int hd3ss3220_set_power_opmode(struct hd3ss3220 *hd3ss3220, int power_opmode)
@@ -319,6 +324,28 @@ static const struct regmap_config config = {
 	.max_register = 0x0A,
 };
 
+static irqreturn_t hd3ss3220_id_isr(int irq, void *dev_id)
+{
+	struct hd3ss3220 *hd3ss3220 = dev_id;
+	int ret;
+	int id;
+
+	if (IS_ERR_OR_NULL(hd3ss3220->vbus))
+		return IRQ_HANDLED;
+
+	id = hd3ss3220->id_gpiod ? gpiod_get_value_cansleep(hd3ss3220->id_gpiod) : 1;
+
+	if (!id) {
+		ret = regulator_enable(hd3ss3220->vbus);
+		if (ret)
+			dev_err(hd3ss3220->dev, "enable vbus regulator failed\n");
+	} else {
+		regulator_disable(hd3ss3220->vbus);
+	}
+
+	return IRQ_HANDLED;
+}
+
 static int hd3ss3220_probe(struct i2c_client *client)
 {
 	struct typec_capability typec_cap = { };
@@ -354,6 +381,37 @@ static int hd3ss3220_probe(struct i2c_client *client)
 		hd3ss3220->role_sw = usb_role_switch_get(hd3ss3220->dev);
 	}
 
+	hd3ss3220->id_gpiod = devm_gpiod_get_optional(hd3ss3220->dev, "id", GPIOD_IN);
+	if (IS_ERR(hd3ss3220->id_gpiod))
+		return PTR_ERR(hd3ss3220->id_gpiod);
+
+	if (hd3ss3220->id_gpiod) {
+		hd3ss3220->id_irq = gpiod_to_irq(hd3ss3220->id_gpiod);
+		if (hd3ss3220->id_irq < 0) {
+			dev_err(hd3ss3220->dev, "failed to get ID IRQ\n");
+			return hd3ss3220->id_irq;
+		}
+
+		ret = devm_request_threaded_irq(hd3ss3220->dev,
+						hd3ss3220->id_irq, NULL,
+						hd3ss3220_id_isr,
+						IRQF_TRIGGER_RISING |
+						IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
+						dev_name(hd3ss3220->dev), hd3ss3220);
+		if (ret < 0) {
+			dev_err(hd3ss3220->dev, "failed to get id irq\n");
+			return ret;
+		}
+	}
+
+	hd3ss3220->vbus = devm_regulator_get_optional(hd3ss3220->dev, "vbus");
+	if (PTR_ERR(hd3ss3220->vbus) == -ENODEV)
+		hd3ss3220->vbus = NULL;
+
+	if (IS_ERR(hd3ss3220->vbus))
+		return dev_err_probe(hd3ss3220->dev,
+				     PTR_ERR(hd3ss3220->vbus), "failed to get vbus\n");
+
 	if (IS_ERR(hd3ss3220->role_sw)) {
 		ret = PTR_ERR(hd3ss3220->role_sw);
 		goto err_put_fwnode;
-- 
2.34.1


