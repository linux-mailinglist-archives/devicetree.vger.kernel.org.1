Return-Path: <devicetree+bounces-259672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEHtGGX7d2nlmwEAu9opvQ
	(envelope-from <devicetree+bounces-259672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:40:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB688E465
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:40:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 43B06304C07B
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 23:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0954314A94;
	Mon, 26 Jan 2026 23:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HVK+8wbC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IUesLymQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE658313E0E
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769470722; cv=none; b=bA+6zyrJPmv4RydHLkLzbZjbQO8xqgUaQwwtp6QGykt4Av5nCMrnN38w/1oW5N7A6aag6gXuZAmPrPecEjAoKUN9MCxGl3KSPU9+CNhC0SqXSCYlNG6F5K1pyKE+/DsRByFCWKYcDEunn338pnc6aGNssYpUzfNS+a0K2D+/W2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769470722; c=relaxed/simple;
	bh=jYMZSplTH/Weoy7w2xwkPNIev4l2TEwX13EaENGM7y4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=R196s9LnsvKu8nek5Eclt6X+1dnBkAqKmZ0wbZNxTLuXyAxf0xNNRVPBYPjMusAMJwu57dE87fFuAvM8gV1gBaW7NeeEAYGCvwMd+sGJVo3E2g/qThG5aZdH+X+5ulfDi8llbJ0+/GIr9oq1CMaUe7+b+EN16fhTOhHJI9+42vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HVK+8wbC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IUesLymQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QLW3gQ4101094
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=7PTKth0UrDe
	AreEEoorgLCH/1E+7Lkz0YAQpMI46XKg=; b=HVK+8wbCdiIs/l622lAVwrz3EeR
	zZqWYZnv680gp+5x8ks1d/+hNAudyePUvl4hwQ8UyEzi0RvMYdRjhm5WZEQanFoo
	wcxEAsy4QcIzrchJtfC1lDWC41ORL3SlmGL2lrzC3VeatKga/NsYwBW49f563lE1
	9B/1slmi+4lMdXWtn3M+B2ND21lAfVtEK7xSZWMvucz4VCJ81u4gpern3vaJZTpk
	mC6RWH+rJJSemB6MmklBh1vVEVhryPZ2sbmXu602vXftKfaQbxDURRGlhlhfyJNk
	6g0cb4qm14ZuB/M0ZSqhIMstaCjoPcL4Nb/+44NFXZ/XuJWmCQZFpa9KEIw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxg93g923-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:39 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2b7155ca88cso4621404eec.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769470718; x=1770075518; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7PTKth0UrDeAreEEoorgLCH/1E+7Lkz0YAQpMI46XKg=;
        b=IUesLymQtsEG2G6zk64QOF3M1GZ2eo7vCp27Iq+anjpPofsP8HvBTJVaQ5L7EhlHah
         YWiocy5A2t2LGv5LmfONHzmvGi8IRa0xs2aWb6y5NO3nc9p5LuXyuzhjzdaW+p5HzrAR
         ctB/tkxVa+5AKPCs0Gsj2vhpPK3rAaVIyAtmh5OlGmKgu8TcRk6xO21PJP+FBSnA2msD
         vNkwwvYe+4ZG5j31To9/KYjU9NFgfA6LgOo7xIKE3Hiqc6h48F+5Kxm+08FyhQRkfhJl
         dzne6cbkfwC1+JuZpVGvPKHgItWiimIhx96BN92eqHt66lY5stB/r/8Smlvw/0UyZ0NA
         lv0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769470719; x=1770075519;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7PTKth0UrDeAreEEoorgLCH/1E+7Lkz0YAQpMI46XKg=;
        b=C+5pKrLeYudPAq6OfOtxRwYXRQD9zm6xK8e7JLwcgR7JD1RmCNdNgGpGqLhCPUuF0l
         Bq8GK/NPZONOGOH2ps2u1AHPVIOWh+4X/ehsBu2lGaVOy94rJxpYEX6LRGFvlzyfnTDH
         d+MhA3huNihAhGCYh2VWkyBXv9vs5jAR9Z1bWJRwMZtozj9hxfeouqUgJRND6Hd5hPUu
         sS+tLrTRkTKpOQfl7kBvx4SxbOJ6R0nCfYMwKsn4GGb+K1Ngxcz6Y8OinuqVqjoKhA/H
         JdFPte2s0el4B5AJsa61D77qqFwRGqyvMdFIQyDdAvLSP+6XgbL+DsETFGXIa8D+4wTM
         awdA==
X-Forwarded-Encrypted: i=1; AJvYcCV+6wjEhBSUmVuMoYp4zutLXRHAbSelv/o6mn9YtRdFdWT7PNjYO656uvLxSREJDJ1B8vednkQlXQqr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/1TmUIfDgv8Zwa1ySxQnwfoz1w9PHAdIAoqCjQvr3ALz3jb7R
	3WJTWxhMkHFv9sOCNcl4M7WyUUGeFuiAlPyAn61Cj1a2UjXh5e98KBfAA8Z8Q3rASxQVJsKeC4W
	DwSA9mIuTXeGY2A/mVxwtGpuL70nlBJLFyNUieE79S6fVyok84KqITXxdOPRf91hzB3LtAXlu
X-Gm-Gg: AZuq6aKn9rwaJNF2Tpve+pNHbB2L8YyT0D+B48wd8xATz4TwSX+/miQpkR8fJH5PzpW
	IWTcYsYAmxhVlLQbMrK9RKA6bp6yV8rjCX1FkLUm/kJx1b+bSFWqMBMlSh2D2zJJkBaTDc9pOlB
	azVOLz8IftBCuROebVXCkP/gQ3S+L7OxFZ4UnyGq1iznI5hHJLrn5w5JjuEbexj7J1L53pDZhHb
	g9/Ez0+IOXXqxry8DmW4NvSs6090zMhcCc0OBUq7jyBFUvHhO6syehzqRVnitWkOWt6u5PkTiKO
	n8EIqm4tFir2XWrkD/dg3k6JkxKMNI+aY1CDsInoIvImWkjUm2l/2/y9G67Ja668218qO0sCwvZ
	6573/7kYtLLbPWM79Hv9w0LOqy/Ongf+G7hj3DCJINaOk5AOT3xg64PL9M2IkKnc=
X-Received: by 2002:a05:7022:d95:b0:11b:1966:8732 with SMTP id a92af1059eb24-1248ec698e2mr2582776c88.25.1769470718453;
        Mon, 26 Jan 2026 15:38:38 -0800 (PST)
X-Received: by 2002:a05:7022:d95:b0:11b:1966:8732 with SMTP id a92af1059eb24-1248ec698e2mr2582759c88.25.1769470717874;
        Mon, 26 Jan 2026 15:38:37 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90ce0dsm19948967c88.4.2026.01.26.15.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 15:38:37 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/9] usb: misc: qcom_eud: fix virtual attach/detach event handling
Date: Mon, 26 Jan 2026 15:38:28 -0800
Message-Id: <20260126233830.2193816-8-elson.serrao@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDIwMiBTYWx0ZWRfXwe3AtYo5sT5l
 5XiyH9dFzIbY/EeM51yqIsNLQSdvlvzgtM65IU6zkqasInvjYR+JYI1kvkGnPnUj6ltymHFC5A4
 Bsvpq1e+FrGE4gScgzk3wQRFylb/BKTY+nnau+vY7c83RoetSjrJUET+MBlUaBKFb60REtyjK6t
 j7uJuNRep5FXyDMR1PiLQY+HaACPC21x9Z6s8HeMS4R8hbHOplldFZkalcJjLof+4Gm4/Aa8yYM
 pXdQdoSzKOeXWuAQD8iCf7et/sh+lCplqmoxKdmniHJ+gEPt9l3RjBMYrTKs4Ppr9ROCXhJJU9k
 /R+KH//cAUgAJH9wte3d8U5yIlVrtLF+iAWlovsPzLQ9AGwFEdDSjPaTUlm78yWCrkQO2299oOR
 tpjz2Hqu3E4NZIbzC3OSDxkq+W3FSIkpdV4ylWg2uDkXrp/D5ptM1pH9oIYgwHsdNgjHCz00wXq
 OoJ8PsiEfqgOzmm6jFg==
X-Authority-Analysis: v=2.4 cv=Uc1ciaSN c=1 sm=1 tr=0 ts=6977faff cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=oDIJ3hVRoRHbvujwG_AA:9 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: JMc36tgMXLZsyevA8MRIK9fi3o-2AHZY
X-Proofpoint-GUID: JMc36tgMXLZsyevA8MRIK9fi3o-2AHZY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_04,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601260202
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259672-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1BB688E465
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
index 3f1cc7ea2a6a..60f566427abe 100644
--- a/drivers/usb/misc/qcom_eud.c
+++ b/drivers/usb/misc/qcom_eud.c
@@ -343,10 +343,26 @@ static irqreturn_t handle_eud_irq_thread(int irq, void *data)
 	if (!path || !path->controller_sw)
 		goto clear_irq;
 
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
 		ret = usb_role_switch_set_role(path->controller_sw, USB_ROLE_DEVICE);
 	else
-		ret = usb_role_switch_set_role(path->controller_sw, USB_ROLE_HOST);
+		ret = usb_role_switch_set_role(path->controller_sw, USB_ROLE_NONE);
 	if (ret)
 		dev_err(chip->dev, "failed to set role switch\n");
 
-- 
2.34.1


