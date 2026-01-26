Return-Path: <devicetree+bounces-259670-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GSCLB/7d2nlmwEAu9opvQ
	(envelope-from <devicetree+bounces-259670-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:39:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 525098E3DD
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:39:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 81260300D4C5
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 23:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7EE1312807;
	Mon, 26 Jan 2026 23:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pLeeNpmo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZQ7caOR+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCAE3112BB
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769470720; cv=none; b=EoTHhiUcjYdMwpMmZ2sOfcTqxt2cOtW5YAZZBGyvqqdGIDrhfzMDWGdaiiQQqsUsU1GPMr36O2IaG0dnw5lf9+ehQxFLUVB6F2AH+b8xQolPxMCiPxbXNT/BTA7ERgeqPwWKGUl2zKdWNi3L/qvWOFlL/QFO1gYo8IcHF9LaYzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769470720; c=relaxed/simple;
	bh=8QuxfXdYRJcE3fyNR6NyT4XaseLCItGHgJZH0P+Yloc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UnGZAyzGZO8hG3zODizzpJLhQWmK7OGF0JjOBYQOWRPCW8FpfGfCSqetq6eWUc4al87yiaAXFSL890pfFPg2U8lFreo0pEyDqpOtcKPha87aPN1YCG0SZM+F7Pe0E+WpH2wH+42DqujJRIzAY5jKbKborOmLgIMKToj8CdHJMmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pLeeNpmo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZQ7caOR+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QKgHvS3384251
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=VKaYciJerw3
	mJBDnc7jGWgSPFPx7Co7DTR1b7g2zoXc=; b=pLeeNpmojZkTBxn5u7o150Eu3z6
	4cxiNJIl7nDThgv6WeYvyZ56HyNhHb5vhn4FnTh1z1HA80y13PSPg0JM3OCWd0Km
	QzwaHjU3l5GH8C2qNqCBGAS+M+wmJAQuV+Z20BrM8WvmrIqZN6ji28hZHIe2A973
	oRzbulbsqb9Im8aRDzD7DUYFf7q29Yks1nJeg/XLBu4MCGuzn2DTjNDxpO7nDjgB
	o5jVMHSQTUXgZ1V+sJkHntznhijIfKAnGi67QKSuGLm77qz/TLZSxHSpqSaA35CN
	DHJKTqfarnTrbx8RI9crgVTHrfl5MO0QynwADyl/XgMVhRjYb6dXsaoW5bA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3a0f21-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:36 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2b71c5826fbso5335335eec.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769470716; x=1770075516; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VKaYciJerw3mJBDnc7jGWgSPFPx7Co7DTR1b7g2zoXc=;
        b=ZQ7caOR+g5CBQPFASca3Qbku61HvR0bnS0hqqT3MbpxbReTrl+gAH9nREveaOjyqg6
         n5fyN+i9hTSGi0ata4F11hmdTqUZ+fvLFzU14ju0y9Sqo+1T/QoUSlzXJgbB1mhsxbMI
         sswtdvsqKGk/2AyOVXoVCiZo71jQ/u5dh5TTaz2ZUWDKvX8kVL8wmMwpr2BIjQ8IGVcl
         OkMpuVAOY9hvg7rjcT0ckUGt2//prftYmgOKa/Ek2ILTEPR7o8iki7lthlxFKR/hqEF2
         oPXIxga3RiQ1HubVlkNaugN4fZ7UPxWXMPsMnGKDD8hQcRJMQ8Zx06xUkU3SASJsDJ1z
         utDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769470716; x=1770075516;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VKaYciJerw3mJBDnc7jGWgSPFPx7Co7DTR1b7g2zoXc=;
        b=NQZg0zYKMBASo2PjvaPvXQ5TLmvdTG5odC4EnAj9Lgm//PRP9nIQqVuz7L1fq4HYCd
         PukrPq8qesMKakL0ITJjtXODYSRMdg/kCtPldMSWyR311t/mAAKyxU4DATwiIuVa08/8
         0SkC2G+DZFvb2ct8MNkjIKOP+HZ+sIeLMiG7yHVsSQmXOWaf6jru+u9rKTs4lGDFAgwg
         gPS3be9lc8Dhwk6S8Hhg0KmA2PUJMsh+SBSOVbif/Wfqyw8ilkd1N1coGVaX82rIIS+p
         EazCERvllEDoD96no33h79c1zpcJGkTq+5yJsD20Xvvp9ZPRBfrs/4RNM38Aqh4iu1wa
         PNug==
X-Forwarded-Encrypted: i=1; AJvYcCX8JMqoLyLynP9WU7luyObro92Ce2fWrr4zz1ievwBMBhz5sCE29W/AkbSJuhyqHD7Cnb75HyIdHU6v@vger.kernel.org
X-Gm-Message-State: AOJu0YyOvwzf4fryE5jmW+1KJ1bo8yFg6jyrey65jAncnwx38vuaVcZz
	4VTepqc+nPIb6KFB4CDbbPssOnCA/ZB7h+iuSO9emVCcewsIwNw+i9MGVzR79UHmrRd+Li4z7oT
	gKNSF4+r+nKXIWutfC1JUTrbPzfl5B18OjvK1/xYpDYT/KtqT5JvnWrS2UfzNDc/H
X-Gm-Gg: AZuq6aI/zomm+8sz0xLZcZ+Uv1TtbWQbeQNboB6eaClYBrqJvB72mkvCM7aSxoNXFq8
	4B6uNbsFJ3XxqDxAIMEHq4SbX1MRdpBAE2udVrfH+0V0UUMmkdH34lUXRpyEYTBAOSpFF/o2KXY
	ApU2v/HEd4XC4vd4/l2HWyetJMZiJ3MptvUJxHveRCtfXOWRGN7N36CPPdf5XfpMLhksXwsMxpz
	eXozPxJjJI0BYoHg24d455ZuZpyyj0mr+Ui6cf05xNYcgs03KK8+3Of7Kg98n+MLqyWcj4Lz+LB
	3uspKhIkvJ+KAmEa7LfciwXecHKzh1hBZIcMdLczm7fGZZEyENdvGrb/XeidYIjYFup8Ur8CJsR
	BxyGMYDxFGUjzbB00Jbmf+Nf2GeW/RfV9a5CbmXFeL28zpySNmUOn93zs/KLdyZI=
X-Received: by 2002:a05:7300:cb15:b0:2ae:59d3:46d3 with SMTP id 5a478bee46e88-2b7644f9a2amr3597637eec.25.1769470716059;
        Mon, 26 Jan 2026 15:38:36 -0800 (PST)
X-Received: by 2002:a05:7300:cb15:b0:2ae:59d3:46d3 with SMTP id 5a478bee46e88-2b7644f9a2amr3597615eec.25.1769470715403;
        Mon, 26 Jan 2026 15:38:35 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90ce0dsm19948967c88.4.2026.01.26.15.38.34
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
Subject: [PATCH v2 4/9] usb: misc: qcom_eud: add per-path role switch support
Date: Mon, 26 Jan 2026 15:38:25 -0800
Message-Id: <20260126233830.2193816-5-elson.serrao@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDIwMiBTYWx0ZWRfX30j6f5CBA4Qw
 wwG6Kp6DX0873+soiKladH738NAqsl9j3hZ0H7kA1CD78kzDeDf7Qu8dpVlkUKppss43S47LmYA
 R3mIh/gGD0LlzLevQM1iTcApAaG4CHSQ0syS/OSiDRLldlqIC2Dad7YYtud6dDDUWmj1Y2lgK2b
 d603kdqOeH4QrUvOsc/AZCdMKOIc7LVvvsxdJm0nefYyBqyohKm3QvGWKGAjnl4+rEjrDVZjr40
 ctFRxgqjCMh+0t32pIRJbAi78mwsRhG+597iaYPZLwsXwU+tpgCVgs28H/Jp4iGdhT+4peiHmkm
 /O8CG2Q3ZftMsD8Eco5J4+oHkQyxl76tsI8Rj+EMu3nwLrvAIcEIwp6dO/7AAZJziLJRh3+iV7/
 sk+qeF3KD/ZmizX9CUE4s4jwnxGblw3BGOoVErSbnJrQWFBwygstGXKo/kmndRaJMS1jmVje45p
 VakWGzBeLVQSy9bjDlg==
X-Proofpoint-ORIG-GUID: 9GnlsbuBE-kcfGP2GRZRx5BFaa0Ycqsm
X-Proofpoint-GUID: 9GnlsbuBE-kcfGP2GRZRx5BFaa0Ycqsm
X-Authority-Analysis: v=2.4 cv=a6k9NESF c=1 sm=1 tr=0 ts=6977fafc cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_OGk7KolV25BrENr9Q4A:9 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_04,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
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
	TAGGED_FROM(0.00)[bounces-259670-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,role_sw_desc.name:url];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 525098E3DD
X-Rspamd-Action: no action

The EUD hardware can support multiple High-Speed USB paths, each connected
to different USB controllers. The current implementation uses a single
chip-level role switch, which cannot properly handle multi-path
configurations where each path needs independent role management. Since
EUD is physically present between the USB connector and the controller,
it should also relay the role change requests from the connector.

Restructure the driver to support per-path role switches and remove the
chip-level role switch. Additionally, as EUD need not modify the USB
role upon enabling, remove the unnecessary role switch call from
enable_eud().

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 drivers/usb/misc/qcom_eud.c | 80 ++++++++++++++++++++++++++++++++-----
 1 file changed, 70 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/misc/qcom_eud.c b/drivers/usb/misc/qcom_eud.c
index 5cebb64f4a67..a58022f50484 100644
--- a/drivers/usb/misc/qcom_eud.c
+++ b/drivers/usb/misc/qcom_eud.c
@@ -38,12 +38,15 @@
 struct eud_path {
 	struct eud_chip		*chip;
 	struct phy		*phy;
+	struct usb_role_switch	*controller_sw;
+	struct usb_role_switch	*eud_sw;
+	enum usb_role		curr_role;
+	char			name[16];
 	u8			num;
 };
 
 struct eud_chip {
 	struct device			*dev;
-	struct usb_role_switch		*role_sw;
 	void __iomem			*base;
 	struct eud_path			*paths[EUD_MAX_PORTS];
 	phys_addr_t			mode_mgr;
@@ -129,7 +132,7 @@ static int enable_eud(struct eud_chip *priv)
 	writel(EUD_INT_VBUS | EUD_INT_SAFE_MODE,
 			priv->base + EUD_REG_INT1_EN_MASK);
 
-	return usb_role_switch_set_role(priv->role_sw, USB_ROLE_DEVICE);
+	return 0;
 }
 
 static int disable_eud(struct eud_chip *priv)
@@ -287,15 +290,21 @@ static irqreturn_t handle_eud_irq(int irq, void *data)
 static irqreturn_t handle_eud_irq_thread(int irq, void *data)
 {
 	struct eud_chip *chip = data;
+	struct eud_path *path;
 	int ret;
 
+	path = chip->paths[chip->port_idx];
+	if (!path || !path->controller_sw)
+		goto clear_irq;
+
 	if (chip->usb_attached)
-		ret = usb_role_switch_set_role(chip->role_sw, USB_ROLE_DEVICE);
+		ret = usb_role_switch_set_role(path->controller_sw, USB_ROLE_DEVICE);
 	else
-		ret = usb_role_switch_set_role(chip->role_sw, USB_ROLE_HOST);
+		ret = usb_role_switch_set_role(path->controller_sw, USB_ROLE_HOST);
 	if (ret)
 		dev_err(chip->dev, "failed to set role switch\n");
 
+clear_irq:
 	/* set and clear vbus_int_clr[0] to clear interrupt */
 	writel(BIT(0), chip->base + EUD_REG_VBUS_INT_CLR);
 	writel(0, chip->base + EUD_REG_VBUS_INT_CLR);
@@ -303,15 +312,45 @@ static irqreturn_t handle_eud_irq_thread(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static int eud_role_switch_set(struct usb_role_switch *sw, enum usb_role role)
+{
+	struct eud_path *path = usb_role_switch_get_drvdata(sw);
+	int ret;
+
+	/* Forward the role request to the USB controller */
+	ret = usb_role_switch_set_role(path->controller_sw, role);
+	if (ret) {
+		dev_err(path->chip->dev, "Failed to set role %s for port %u: %d\n",
+			usb_role_string(role), path->num, ret);
+		return ret;
+	}
+
+	path->curr_role = role;
+
+	return 0;
+}
+
 static void eud_role_switch_release(void *data)
 {
 	struct eud_chip *chip = data;
+	int i;
 
-	usb_role_switch_put(chip->role_sw);
+	for (i = 0; i < EUD_MAX_PORTS; i++) {
+		struct eud_path *path = chip->paths[i];
+
+		if (!path)
+			continue;
+
+		if (path->eud_sw)
+			usb_role_switch_unregister(path->eud_sw);
+		if (path->controller_sw)
+			usb_role_switch_put(path->controller_sw);
+	}
 }
 
 static int eud_init_path(struct eud_chip *chip, struct device_node *np)
 {
+	struct usb_role_switch_desc role_sw_desc = {};
 	struct eud_path *path;
 	u32 path_num;
 	int ret;
@@ -342,6 +381,32 @@ static int eud_init_path(struct eud_chip *chip, struct device_node *np)
 
 	chip->paths[path_num] = path;
 
+	path->curr_role = USB_ROLE_NONE;
+
+	if (!of_property_read_bool(np, "usb-role-switch"))
+		return 0;
+
+	/* Fetch the USB controller's role switch */
+	path->controller_sw = fwnode_usb_role_switch_get(of_fwnode_handle(np));
+	if (IS_ERR(path->controller_sw))
+		return dev_err_probe(chip->dev, PTR_ERR(path->controller_sw),
+				     "Failed to get controller role switch for path %d\n",
+				     path_num);
+
+	/* Create a role switch */
+	role_sw_desc.fwnode = of_fwnode_handle(np);
+	role_sw_desc.set = eud_role_switch_set;
+	role_sw_desc.driver_data = path;
+	snprintf(path->name, sizeof(path->name), "eud-path%u", path_num);
+	role_sw_desc.name = path->name;
+
+	path->eud_sw = usb_role_switch_register(chip->dev, &role_sw_desc);
+	if (IS_ERR(path->eud_sw)) {
+		dev_err(chip->dev, "Failed to register EUD role switch for path %d: %ld\n",
+			path_num, PTR_ERR(path->eud_sw));
+		return PTR_ERR(path->eud_sw);
+	}
+
 	return 0;
 }
 
@@ -359,11 +424,6 @@ static int eud_probe(struct platform_device *pdev)
 
 	chip->dev = &pdev->dev;
 
-	chip->role_sw = usb_role_switch_get(&pdev->dev);
-	if (IS_ERR(chip->role_sw))
-		return dev_err_probe(chip->dev, PTR_ERR(chip->role_sw),
-					"failed to get role switch\n");
-
 	ret = devm_add_action_or_reset(chip->dev, eud_role_switch_release, chip);
 	if (ret)
 		return ret;
-- 
2.34.1


