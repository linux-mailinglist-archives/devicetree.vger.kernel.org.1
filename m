Return-Path: <devicetree+bounces-259671-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLArMlf7d2nlmwEAu9opvQ
	(envelope-from <devicetree+bounces-259671-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:40:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2328E44F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:40:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3EB7230498C5
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 23:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 040163148DC;
	Mon, 26 Jan 2026 23:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X4KwaqLC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h/AbITzY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B25313277
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769470721; cv=none; b=R6Xm1FMv7STdCbr9rBdcg8AspwAoSFAcXx+CmBKcE0f/idtUTwiQqJOSlWXWrnxNtemVABi9fqdRaJyv+coqhtbWn/iiGmAilprqiVOS14tKLsTJ9BpWLkaNqTbxZqCpdZR5ayhBqRT1vSG+jyo8tdxDh1pVPx026/jslzUTV04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769470721; c=relaxed/simple;
	bh=r1bqX+YKzW7Wo7iz/2rkXvfUlo4SFKFYbrl1Eh5BoSQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RNAmKtT1M/R0nos0n6Ye83PRCY8+HDZ2AG2po3hoyVV0/hpj6gNOSiMns8y2znnWT2fY1lAYXcpidbsMZOdLiUiMz93glbh7lG2ue0fsDcHmBVTbdjPp3cqH7KqjYFTxN8ZjpDRT8rRl/zRtvcsjPi0uGoHgcdziE1DX4jWMGAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X4KwaqLC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h/AbITzY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QKgIlw3399272
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=nLNoInJmlgi
	CyTSp0s0aDwUKBeAC7fdewIAWrT/v+x8=; b=X4KwaqLC9LLCemO57LUhqgJjAMq
	B2+jhNok4UWzP7eKmowXMNqX8eflul5TxLtd8wx+zHAiJg+Buw9B70nhTnActyOJ
	gYSU/O899BmWhDhxAjDMVImicSUXH+tFsZkE+DHm7zjgbvfp9ZrhBrctUJucF5Hl
	In62/ROlblEDIup1Szjhs7//gcYIC4wusGOulWh0AIqVl63Jyj39NJQNMcfmFOxE
	PK2qvdd+ynPl7SkKdHlpXSS38jn5NFW+mHhcbXwO9nmBBbK2+P1pxQx2F9EIK//E
	F2Tnk6IZjOpAvyLa2bwRYEp2PQmI6P8tJ8Ehslm3+GLu2oBrnelBKhdl9AA==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv9gqx5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:38 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-12337114f3fso7033640c88.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769470718; x=1770075518; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nLNoInJmlgiCyTSp0s0aDwUKBeAC7fdewIAWrT/v+x8=;
        b=h/AbITzYvNoSLuacqnaGFqyw10AqpkH12dHFNEahRsbfO7B8gBye5mnqKFMKc5XRNH
         BC+xi7NJa3QfAoxMEZ6xpGeNF5bJ0k9Xc+4VjplT1KNv/FD5IeWMy3ROcGkzot7M4b5m
         DjfQLUXcBemIjadmHNemhScqL0PTzpapV11n359KAr0/p9kRRVVGdkWd4w/8J+KbifKH
         RYXgDC6kpTrA36OAqlkZHeNJN4g/NUsZkWSLLOHIwzGgtW1fdmppVlSZiXcJpITHyF1h
         vOWj0eNLugQFeFP1jqPEQPWq7VmDEFoojGwyiCWhvEfm1nTYOgdC+Qllom2ZSjVexloh
         vVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769470718; x=1770075518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nLNoInJmlgiCyTSp0s0aDwUKBeAC7fdewIAWrT/v+x8=;
        b=j41ewzonD2C9Dg59CBj3rXK3RiJWlxCfJtQ7zsDLfS2uegjModI+/iIaYI5r8TcIy+
         rS+PdeqsvilDGXdE3+w51xETSKrL8HSsW7OQVU35xQlNKzpFfsD65TNGUMm4ITWg9ZBG
         WrGq8pd0bKR9rjlVLvHuyQ1INnRr/rb3A3aYrYWeUDQtD3TA8aGF0qb5fOKXEoWO1n62
         d49Z4uebbBihlhE3mMsqNtmDz6XbQmF9smMRqLMnGcE8OqPcd44VaR90sJrXckkCdSdA
         cE/haxsJYICghOeZi4ZSKS4n4lsL/M0aUddzHOyYsQb4DOrwlQt0Dynu2fT1ZmQw5u7e
         71Lg==
X-Forwarded-Encrypted: i=1; AJvYcCVBwglTUYrQbZF0YtzC7louiqHHhMSApISx0qeLUePuaR4Dyuv0wghOeB/PQfAmgYab9p71I4iPwnYW@vger.kernel.org
X-Gm-Message-State: AOJu0YzunQSarmM/4f2E3jvKZ1gErOimrN8jTn85th5D6vOMoBVZeTut
	lS+5//Yd4OIeZkr1qokx+TyorxOl2Fej+IlhmeSTW0OIUn2rb6JpVQpN0634nG34FsQuUXAyPZb
	gkUEXk6TAbuBbhlGlUmKD8bXRvuzAWTw/FuDLM4XINfzFTd2EK9JRu1I5fXNSj290
X-Gm-Gg: AZuq6aJkd+SEmD30vyOV6KrZS4JXFrB6acRAwWOh0/XGHfih9u13JzwcKA5KxWInJny
	W/SZPAyMMKFDvBZrewyz2a4KoxqNNA6My2wZE2yAweTH7RGJ+AEx+vFaUaGHPmiqxPFuJBOPiLn
	Aq0ahn6twxXYaMk3ANYMWMFUrSpTb2usIeqqOhRM3q4R9GT9YQz9HetLW/6LjkqAKZe9s53/a8E
	uB6im/rLpt5/BN3W1E4jIsSKzwAggGSO+aXS/dldvSrDjftcpQ1gd2gz4RzonJhMWt3SxI2ng2k
	7nNlwjcjVLJZCcGerC+wH18fC4ZiDgYfWbKRaP5V7UoJ+/eBz+KZnVsabTT7sI9BJeoMDmcyGNF
	w35iQ3B5ZYOD4TaDjYRjCDwzewZyCyyY+D1hfnODkotBH0CsQ+FMQ/NrbEJjBP9U=
X-Received: by 2002:a05:7022:438c:b0:11a:51a8:ec9 with SMTP id a92af1059eb24-1248ec41322mr3202373c88.29.1769470717629;
        Mon, 26 Jan 2026 15:38:37 -0800 (PST)
X-Received: by 2002:a05:7022:438c:b0:11a:51a8:ec9 with SMTP id a92af1059eb24-1248ec41322mr3202352c88.29.1769470717090;
        Mon, 26 Jan 2026 15:38:37 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90ce0dsm19948967c88.4.2026.01.26.15.38.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 15:38:36 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/9] usb: misc: qcom_eud: add host mode coordination
Date: Mon, 26 Jan 2026 15:38:27 -0800
Message-Id: <20260126233830.2193816-7-elson.serrao@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=OYOVzxTY c=1 sm=1 tr=0 ts=6977fafe cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0DRR6HtdnbDkULtDn-kA:9 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-GUID: 8UoogFVTbVyxejj5eilOqE8m6O1H2_cZ
X-Proofpoint-ORIG-GUID: 8UoogFVTbVyxejj5eilOqE8m6O1H2_cZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDIwMiBTYWx0ZWRfX+/Uhcl+BBKhl
 N+hGGKmIEKxc+rWA3cuszcXwYUCSKl+QIoGLOEvJs1be8TSq4MKGoHuKsQhZ3P67VcMiwS9DgcH
 1L6gjd054qEfZ0hw/vd8xLkEhNAQILX9D5vFHP755HddY3UEWctBfaPiXNZPbbpFjt6/NkBZiZq
 z3xMnDIo/k8HZLYM3jkLcjt4VrYOKUawkeb/F/ZtJt0APtVKrxSzRCAaACGPPtKrw9E42Tq3u5l
 wifpvaguMwTPxvCeIqYyWggnEM4561NOY3sYO7uWdmY7i7NZRc1OJlWzrCPUbvHokR437f0XeyO
 c4DGbAlCzYAOQBG4adVPekrcaWwr0ciLWZqf30HCtZX7wgq4x7WVd1IkqozoB+lFi5FBmveCe5D
 pyMjTBHB/DuxwZzoOMeXODVDx4mrPLSvL9IXKyUSjowIpEQEABEjlyWHZqVQDJgyYteLeEiv92F
 328+Xce8AV222HpEfAQ==
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259671-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4B2328E44F
X-Rspamd-Action: no action

EUD functions by presenting itself as a USB device to the host PC for
debugging, making it incompatible in USB host mode configurations.
Enabling EUD, when in host mode can also cause the USB controller to
misbehave as the EUD hub can only have one upstream facing port.

Handle below two scenarios to prevent these conflicts:
1. Prevent user from enabling EUD via sysfs when the USB port is
   in host mode.
2. Automatically disable EUD when USB port switches to host mode
   and re-enable it when exiting host mode.

This ensures consistent state management without creating conflicts
between the EUD debug hub and the USB controller.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 drivers/usb/misc/qcom_eud.c | 79 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 78 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/misc/qcom_eud.c b/drivers/usb/misc/qcom_eud.c
index 0ea6491f963c..3f1cc7ea2a6a 100644
--- a/drivers/usb/misc/qcom_eud.c
+++ b/drivers/usb/misc/qcom_eud.c
@@ -49,12 +49,15 @@ struct eud_chip {
 	struct device			*dev;
 	void __iomem			*base;
 	struct eud_path			*paths[EUD_MAX_PORTS];
+	/* serializes EUD control operations */
+	struct mutex			state_lock;
 	phys_addr_t			mode_mgr;
 	unsigned int			int_status;
 	int				irq;
 	bool				enabled;
 	bool				usb_attached;
 	bool				phy_enabled;
+	bool				eud_disabled_for_host;
 	u8				port_idx;
 };
 
@@ -162,32 +165,66 @@ static ssize_t enable_store(struct device *dev,
 		const char *buf, size_t count)
 {
 	struct eud_chip *chip = dev_get_drvdata(dev);
+	struct eud_path *path;
 	bool enable;
 	int ret;
 
 	if (kstrtobool(buf, &enable))
 		return -EINVAL;
 
+	mutex_lock(&chip->state_lock);
+
 	/* Skip operation if already in desired state */
-	if (chip->enabled == enable)
+	if (chip->enabled == enable) {
+		mutex_unlock(&chip->state_lock);
 		return count;
+	}
+
+	/*
+	 * Handle double-disable scenario: User is disabling EUD that was already
+	 * disabled due to host mode. Since the hardware is already disabled, we
+	 * only need to clear the host-disabled flag to prevent unwanted re-enabling
+	 * when exiting host mode. This respects the user's explicit disable request.
+	 */
+	if (!enable && chip->eud_disabled_for_host) {
+		chip->eud_disabled_for_host = false;
+		chip->enabled = false;
+		mutex_unlock(&chip->state_lock);
+		return count;
+	}
 
 	if (enable) {
+		/*
+		 * EUD functions by presenting itself as a USB device to the host PC for
+		 * debugging, making it incompatible in USB host mode configuration.
+		 * Prevent enabling EUD in this configuration to avoid hardware conflicts.
+		 */
+		path = chip->paths[chip->port_idx];
+		if (path && path->curr_role == USB_ROLE_HOST) {
+			dev_err(chip->dev, "EUD not usable in host mode configuration\n");
+			mutex_unlock(&chip->state_lock);
+			return -EBUSY;
+		}
+
 		ret = enable_eud(chip);
 		if (ret) {
 			dev_err(chip->dev, "failed to enable eud\n");
+			mutex_unlock(&chip->state_lock);
 			return ret;
 		}
 	} else {
 		ret = disable_eud(chip);
 		if (ret) {
 			dev_err(chip->dev, "failed to disable eud\n");
+			mutex_unlock(&chip->state_lock);
 			return ret;
 		}
 	}
 
 	chip->enabled = enable;
 
+	mutex_unlock(&chip->state_lock);
+
 	return count;
 }
 
@@ -324,18 +361,56 @@ static irqreturn_t handle_eud_irq_thread(int irq, void *data)
 static int eud_role_switch_set(struct usb_role_switch *sw, enum usb_role role)
 {
 	struct eud_path *path = usb_role_switch_get_drvdata(sw);
+	struct eud_chip *chip = path->chip;
 	int ret;
 
+	mutex_lock(&chip->state_lock);
+
+	/*
+	 * EUD must be disabled when USB operates in host mode. EUD functions by
+	 * presenting itself as a USB device to the host PC for debugging, making
+	 * it incompatible in host mode configuration.
+	 *
+	 * chip->enabled preserves user's sysfs configuration and is not modified
+	 * during host mode transitions to maintain user intent.
+	 */
+
+	/* Only act if EUD is enabled and this is the active path */
+	if (chip->enabled && path->num == chip->port_idx) {
+		if (role == USB_ROLE_HOST && !chip->eud_disabled_for_host) {
+			ret = disable_eud(chip);
+			if (ret) {
+				dev_err(chip->dev, "Failed to disable EUD for host mode: %d\n",
+					ret);
+				mutex_unlock(&chip->state_lock);
+				return ret;
+			}
+			chip->eud_disabled_for_host = true;
+		} else if (role != USB_ROLE_HOST && chip->eud_disabled_for_host) {
+			ret = enable_eud(chip);
+			if (ret) {
+				dev_err(chip->dev, "Failed to re-enable EUD after host mode: %d\n",
+					ret);
+				mutex_unlock(&chip->state_lock);
+				return ret;
+			}
+			chip->eud_disabled_for_host = false;
+		}
+	}
+
 	/* Forward the role request to the USB controller */
 	ret = usb_role_switch_set_role(path->controller_sw, role);
 	if (ret) {
 		dev_err(path->chip->dev, "Failed to set role %s for port %u: %d\n",
 			usb_role_string(role), path->num, ret);
+		mutex_unlock(&chip->state_lock);
 		return ret;
 	}
 
 	path->curr_role = role;
 
+	mutex_unlock(&chip->state_lock);
+
 	return 0;
 }
 
@@ -433,6 +508,8 @@ static int eud_probe(struct platform_device *pdev)
 
 	chip->dev = &pdev->dev;
 
+	mutex_init(&chip->state_lock);
+
 	ret = devm_add_action_or_reset(chip->dev, eud_role_switch_release, chip);
 	if (ret)
 		return ret;
-- 
2.34.1


