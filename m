Return-Path: <devicetree+bounces-273112-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJNNOLEvr2nFPQIAu9opvQ
	(envelope-from <devicetree+bounces-273112-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:38:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB6F240F27
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:38:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D44CD315D275
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 20:34:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DCDE421EF2;
	Mon,  9 Mar 2026 20:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kvlMvyGV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iDNRueHp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1FA407570
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 20:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773088435; cv=none; b=Tz1CO9LicztyAUgJK1bxb+wCexom0ofaw/D71Hay+C6kxiF/FyWaiUhbK+MFmRPiIQ5+tEN5u/MSyHM6ke44eltgYCDVkdqSTpCsLEo3khiwSrBNHAhpN7XDxKmJ8FS7ouhFZDxnqngRydhZDpcr293Gr0vq9tL0KWAZ6H4FmPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773088435; c=relaxed/simple;
	bh=iR9FBVRNdBPKUJuF0gdJRHocxr70Pd+iL3Ur6tNvyx8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Dmu+RH2/noIWMsQPwdFnlQqReMSrk1W4Bb7BQpM3AzcTS/3O9vQaYMWAH0jNyqk6rgC3Ki2IEqgjU6r/j9OLKLeBgNIWIQ65W/v5drk05Ctepy1OtCGjWMZi5BE4hgExOHdSRLO6kaoQtTGURqVaXUI2A7rS4jpam2MVCfY3OVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kvlMvyGV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iDNRueHp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HCEgH1212197
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 20:33:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6aSf9RIHhE0
	ux1aAmM2DjF7m6jzh28AeMG4simH1BJ0=; b=kvlMvyGVnIOq2Nbqz48K1o+SloW
	5bN4LqbAhvHIayeWjrUzduAq7bl+Pz5sa2QX4PbefpArctiPI+nArD1jpgjD75QG
	6u27c8hEWsTJPgaI3+UEgUDQIwlBYSkZX8WgO9UDJCnglXOTEqoRPxzFGVUOdefm
	LC4tMrKgr+JLaXzPFhC1v8UJKXyr8QeeRiqwi5McBfGj1wA11wKvgGFrSqVgAH4j
	qyHohRHVGxAFSg4SVrpIfaaQ5SdLSmz/wcDpTmwQz3aidZ8GHxvP6i7tAokKDeOB
	lzldC75OhdApJeF357E4ZE1UhlUevWeBGUL77SJ7tY7JM1LYKKN3aasTokQ==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cswwkhmdq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:33:48 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7d742da766aso7253726a34.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 13:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773088427; x=1773693227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6aSf9RIHhE0ux1aAmM2DjF7m6jzh28AeMG4simH1BJ0=;
        b=iDNRueHp49/krD9OgsUK5Pd6sDh0swG+xfpl2agIbFA5m2H70QKaOqEolX3c00uwe8
         hhFbykPG4OUJ6RF6DQGmFOO8+iAWyh0/XPEyKsg/xXsoWyFSZj2pKMHmcCulD4kOqQNy
         B6zFsVMn0LAj/yOfiivtooKwlQutskUwXXQaITJKSvpHnWE9pxRjhySjS5N786CcmRiD
         Jl0cl917pZtkzDyE3BtGiS49o83IBnwbngwZ7FHjPxfkXQrAH5vgMER8V7gbiILUrWvD
         v0wupt3r2XeZfBvfQQhn0QNkSWICKP0bY1n96ro+yIdxk+lIHkXxnjBMr3kCLSFF8ILK
         gPIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773088427; x=1773693227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6aSf9RIHhE0ux1aAmM2DjF7m6jzh28AeMG4simH1BJ0=;
        b=T4MFsVXYgW0QEXr11d+DCiKCse8AUrrPt+IWTfY1yIYFbwQIm3qPguMeAVZE7YSIzC
         6RxWJTbES4NWa/XbBDiCOA6wZVbEBZtP2gRxqTnu0qS5fi+cnham4FgjE1CtEbqCkXK6
         XX6fBIdJ367Z9Bq1rsOIZHyHdOvErHATNanQFHoay0thcQZTSSTfzlSjAtA7GzMgNlpr
         ozibzQS8a5HVuZ9jpzqaI52E0JUyS2VnvWacSbUie0YcgiPvi0xSC0PJwGslYcX1HgA1
         LMxdZzttbvO7LUfUiGh/z579vLCZspfq6V4B7JHitAVMU1sZsc79vi0qUgE6IOT5YSjA
         DTrg==
X-Forwarded-Encrypted: i=1; AJvYcCU0WCSwurWcfU2MXp7AoAfr50ktxSIa4w0Mkcy+B4c6d9Sa5r6xXohta6nnds8MyYTr0nBQJXFL4Y7W@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq5D0c0qFrs06l7q0tDhAwbY0BlhlF8JZ03L6+8M/KquSksjib
	CJ3+6vueioQFg3vPzVzlEQz4MvIkN0aJKvLb49i19Ax7IjFguwXd3gC5JcBzwyMZqAZfmKcFpCe
	gf0wBrVENaiFYUcM+otnEvjVj+BNM/w16ARryG6TgpxVwHwCa47hGwfDCgHFMwJjD
X-Gm-Gg: ATEYQzyQn3OxhIDKN7JyXXpO/IDt5YCnoqMdWVVCgHVHAgN0TCbMl2lNTDQd2OoDjEE
	ABAc5LSuQwYiG9KcymP1Edu5C9fzDeMA3EhNYz04Xm867AMd7Uns0Z3pMkot8K9oe9qhYM+tNg/
	sn61DbE3m0DQWsqA52EINnXhncVqYwbYsq3QY5dTEOjmgUu4XyX86AvqzWbzUU+nCqvCuindEp3
	OrO8FiRXxKwYXMTp6VvD0tb2dn5Yv6iM/5CCldWV+e6APLBGQEdlhc535X/L4EqoYAuGMQf4iaq
	n7kn8q3uJw/Bzoh+mAlHcTz2+kPAfks4MEYClNeV+96YpsgD9Wv3HShyu8FJvnGeB/jbSUCoYCZ
	XAPmjx6IhCRe0pYvNzHI0Dv9crtQXeW1+dLjqndMVWn1UjFKrfuND643vQZeQ2ZbHFJl5TcWVr4
	Y=
X-Received: by 2002:a05:6830:411d:b0:7d7:4639:440d with SMTP id 46e09a7af769-7d7463947damr3864439a34.6.1773088427341;
        Mon, 09 Mar 2026 13:33:47 -0700 (PDT)
X-Received: by 2002:a05:6830:411d:b0:7d7:4639:440d with SMTP id 46e09a7af769-7d7463947damr3864414a34.6.1773088426862;
        Mon, 09 Mar 2026 13:33:46 -0700 (PDT)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d74885b5a4sm3036494a34.23.2026.03.09.13.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 13:33:46 -0700 (PDT)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH RFC v3 06/10] usb: misc: qcom_eud: fix virtual attach/detach event handling
Date: Mon,  9 Mar 2026 13:33:33 -0700
Message-Id: <20260309203337.803986-7-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260309203337.803986-1-elson.serrao@oss.qualcomm.com>
References: <20260309203337.803986-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=cZ/fb3DM c=1 sm=1 tr=0 ts=69af2eac cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=oDIJ3hVRoRHbvujwG_AA:9 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-ORIG-GUID: ljJAWOXcyia1CAQjI6kNhEgr-b37yMHA
X-Proofpoint-GUID: ljJAWOXcyia1CAQjI6kNhEgr-b37yMHA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE4MiBTYWx0ZWRfX4yojYSfHp8N4
 5ONuDtejk7fO0xVuiqTbveG90OPPSiOAx0RXztiyuNK47z21L2fq9QzesErIlBW7Z+OCncLtpaU
 B6uNiIIhachvX4S4vRfWzhFgPMcWj2iJoKgY2SCJRUWrfh/dP1TPqhBJ/X3XAjVKJqW+bG+7B3M
 io/sUaBfa0HYDD0fmKiphsurchLGwO3aVoMlNftHoZMVvvUg/mWG9mvaAOkTWEGX3DxlA3Z2BAn
 V9fCIOSLd+GMsUBkzj4UD6nMEeA/Jj0vcdIp6rlqXK7WNFoWUIZYEzto6sRKEtYHqP/dB/38Wz3
 SW0F2diPRwbuPzg/t4FfJU/zXqoj/EN/foWs9lOzemWEF8Gn0qrgubPUXJMfzVztDafQp1wXaX6
 B1YIeXx2L5iXoMYBwCD8JQJ92RAzzNIC1+4iyAhRrubOosUEZCizyD9UFJx8VFd0e7CWL86hU5K
 LzQv6b0mxLIUI2o/0Jw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090182
X-Rspamd-Queue-Id: 8DB6F240F27
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273112-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

EUD provides virtual USB attach/detach events to simulate cable
plug/unplug while maintaining the physical debug connection. However,
the current implementation incorrectly sets the USB role to HOST on
virtual detach, which doesn't represent the disconnected state.

Fix the virtual detach handling by setting the USB role to NONE
instead of HOST, correctly representing the disconnected state.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 drivers/usb/misc/qcom_eud.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/misc/qcom_eud.c b/drivers/usb/misc/qcom_eud.c
index 4fd08962d4fb..3a71a0d27b5e 100644
--- a/drivers/usb/misc/qcom_eud.c
+++ b/drivers/usb/misc/qcom_eud.c
@@ -280,10 +280,26 @@ static irqreturn_t handle_eud_irq_thread(int irq, void *data)
 	struct eud_chip *chip = data;
 	int ret;
 
+	/*
+	 * EUD virtual attach/detach event handling for low power debugging:
+	 *
+	 * When EUD is enabled in debug mode, the device remains physically
+	 * connected to the PC throughout the debug session, keeping the USB
+	 * controller active. This prevents testing of low power scenarios that
+	 * require USB disconnection.
+	 *
+	 * EUD solves this by providing virtual USB attach/detach events while
+	 * maintaining the physical connection. These events are triggered from
+	 * the Host PC via the enumerated EUD control interface and delivered
+	 * to the EUD driver as interrupts.
+	 *
+	 * These notifications are forwarded to the USB controller through role
+	 * switch framework.
+	 */
 	if (chip->usb_attached)
 		ret = usb_role_switch_set_role(chip->role_sw[chip->port_idx], USB_ROLE_DEVICE);
 	else
-		ret = usb_role_switch_set_role(chip->role_sw[chip->port_idx], USB_ROLE_HOST);
+		ret = usb_role_switch_set_role(chip->role_sw[chip->port_idx], USB_ROLE_NONE);
 	if (ret)
 		dev_err(chip->dev, "failed to set role switch\n");
 
-- 
2.34.1


