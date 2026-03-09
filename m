Return-Path: <devicetree+bounces-273108-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKbpB+Aur2lzPQIAu9opvQ
	(envelope-from <devicetree+bounces-273108-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:34:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFFB240DEA
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:34:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A530830406BE
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 20:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CBC541C305;
	Mon,  9 Mar 2026 20:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P9LnB6cu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QdfMZC70"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8CC41C0B7
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 20:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773088429; cv=none; b=llqg45O2QrB/9VoZ2VMPh7J19jfb3gGRonEpufFbM8AjE3h+899V/gjTBXe4vYEDvyMWuQxNtIEhjNk7aPoZ4/vNuuj24xmBbNCHe37qLV5xoWvT1KkH55PNh/ZE84jkWCc7+4OHKohC3bY+4/yRJA0nAM1iA3JvcEZZNHjpXes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773088429; c=relaxed/simple;
	bh=royapcGosrFDfN1+WyvBjef85L3TpzNsrnUe+lEHvP4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=W7N56/gO1I8l+51UDKYKzODqHk5wzOoTzSaH2mDjZ1VNlOIGFxA7DFgSWiR3Ej0kCsGRL1lMQW6T2tE0YRr3ctbxbAe2wmACT93Wb4MrNu4oia8tDM9Y1VgQNbIp5JhxJQ+cXzVZQaSgntu/k0YVlkhXgC2X3+qPKaQMk8FB5Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P9LnB6cu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QdfMZC70; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBnnI1920907
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 20:33:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ZtqMZiiTPmW
	H7gYvculLjfwmF7B59MpYwDHoaL2++qE=; b=P9LnB6cupDYWUrtdb5ZvZBxvD9r
	VpT4BxSIFQDBplw3dumBaGDw1Va5RZhmHD9jYkuV53srS6x2/1AmwoUg1keywHUK
	vEwltS7mJ0xwmqJZACmwuwhjjCh8WGJ5j/UPXllkQ3VJ3DRAob4OTIPAtWtcFf5Z
	0PQ1Wov1apcpw78xwsiqUAm6N8ytJSEsgbyWLbelmbv5lJE8xe60TkAY1kENX2Bq
	rOoSsXCpfbJPRvq0Vpx1wCWAwOTxwSYiP+KkyPTBnIzAGAjkDpYYxCGIq4I3qgsW
	r/9i+Rk/n/CkMRfnGvjJgzTresPsV6TIhyamt+QIM9TJ3onlnvQHGG01gxw==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csxy81gat-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:33:46 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7d74cd7b1e3so5490234a34.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 13:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773088426; x=1773693226; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZtqMZiiTPmWH7gYvculLjfwmF7B59MpYwDHoaL2++qE=;
        b=QdfMZC70baH1r/X9Bhm2/TUoZP1ZCT69XqkxCUwFVklhiq/ylNI26kfOCWpNV9Egkj
         bRxUPJRFCWgBIs+Ksh3FXu/gn3sUcAO59K1Y1lVMh4fDnlPYpxCfovjHV9r8SkEfI82C
         XM4o4qkVLDOYs0U9gbdwcLdi/YagP4QfWwseLevB2zY2P4S7vVt+d9Ebn1XDQ7vaqmhy
         +HaDUZibTNejtDFpo5qtwzJeP3lkX8DjitdUY3fiuv50qxNfFqcBdyXSgqivw4nZUW57
         pOFX797xiT2eq2AzzmO1g3Yvqn5wUt8xX4UrbTXfgeECAG+ZOJ3ODDKieX8DC6C5gGXA
         XGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773088426; x=1773693226;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZtqMZiiTPmWH7gYvculLjfwmF7B59MpYwDHoaL2++qE=;
        b=ScwkSBr6uFBotv6hYcNj5VHOkBZQisW74mSPZa2kiaqonWS49eG2RIzh2CDkFRPbYm
         U/hBTgbR49TYxETskDL7vnayyFnNM1MuaQ8YuCEoFDbQj7ZB+pX6IGN3K0MqfqlsKQbq
         NazRCnFx7OdttrmfBgsN0nMaET27PbJC8NXzzDBkC3T4EQIerWL8i/N+zAGWvYzjmCkt
         WEckFTlB8NfAstOHkBJRKAlKRx9F65o3FkOdp2XxPn1gGU0zC3rv+Ubh0euZtBm6iAkO
         bP8zrw1+SKTsl9mzCm5iQqF5XhwKWBrMhA42kQjh7BWca2IOB78fbYczPVpR3nRheRBM
         46UQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcDPW4LlsHWZqvPpMz+EKF5gwbE22Dk/xP8WE8X7DJLBVPKM6qeUGFk1hQjZIjc1rb11PmmetTFH+1@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ77kn2lgV88k+92sTXjmsh6IZ8/BjCxYCe5cDpykLcAn1mmHi
	WZbj0z8oAWHVN4JqcmbAhhYhNWaIlvawnOCQyWSNFcLJx6oUAhSGruoTN1umtGp4Mvai7yF+aiy
	bmnAbTPnVrWfuDockgtQR/unnPySteOV8R85G2/tNbeuvxnbTqkPfbGvVPw90eKeT
X-Gm-Gg: ATEYQzwn+Xl2gHb2IIbZ2QiujbAFelOgUX6wXc1trFddMEWbib652eiMZCkF5R6kyxR
	IlEzmf6CMlSd6iF5dGH7RS6nYlLC4nUwCEOWPIJhiu4trVPQqpqjYF4FhIhqbGgDpBwu1NeMpRj
	59w47vi6epVEfS5LrhyknTqjcwEV8VuXZx/5UFUAQ9ywxfGVVvoiFoger8hp24HpfxneAC2O1sZ
	UYfde7NUAPS8hsYo5C8ZuNqAKJ5OgqY1PLMmfTUQuu0FW9oOIxoLIlSxpBW1AOmiYiManIdlj0p
	sZpfnVD3RGg884ewNbHnaPKqQ9sF2eMQdsm9mVcflFVTSden48Ow7vfqXcdRAIY5D7coUVpbgKY
	shjAXmENEM/xkTHw5IIoHXcdBarIBuK1pImQrmgy9LiIVGEwQYY7rqDMxyFpAySdDNDSbHdBlNu
	k=
X-Received: by 2002:a05:6830:a8f:b0:7d7:5016:7ed1 with SMTP id 46e09a7af769-7d7501680a7mr1815249a34.33.1773088425987;
        Mon, 09 Mar 2026 13:33:45 -0700 (PDT)
X-Received: by 2002:a05:6830:a8f:b0:7d7:5016:7ed1 with SMTP id 46e09a7af769-7d7501680a7mr1815235a34.33.1773088425634;
        Mon, 09 Mar 2026 13:33:45 -0700 (PDT)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d74885b5a4sm3036494a34.23.2026.03.09.13.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 13:33:45 -0700 (PDT)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH RFC v3 05/10] usb: misc: qcom_eud: improve enable_store API
Date: Mon,  9 Mar 2026 13:33:32 -0700
Message-Id: <20260309203337.803986-6-elson.serrao@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=SvmdKfO0 c=1 sm=1 tr=0 ts=69af2eaa cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=iEam2xx7WbKG8qDqzoQA:9 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-GUID: ztaXUxoGMDnBNg7zyyqVWaw5POJRLhsZ
X-Proofpoint-ORIG-GUID: ztaXUxoGMDnBNg7zyyqVWaw5POJRLhsZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE4MiBTYWx0ZWRfX6AHi9J4sxnjK
 ++euINjNajFMsBEl9bnkByXNvkw0wNsoTg053BBL3TBIdroe2rtS78b9qPCGVNjsIx2IDI6H/Ml
 kXonof+9UtF4fM7UhDRxAhXjkojA9h3BajNl+qmtZFbIy5QcoTp/Tix///nsePvK403Ntu/HXQt
 5t8KiRQyWcKS56nsUxyCzwOmxu11nb6luiwT3Z6EfPJbzMnondFBXIWLXLXOH3+InJS7rFDePSf
 X8b0sXAR8FdrG/rpCcQhhP/QohPP0xHYqh3i4/QbIEPcP7h8UCsUxP3jxuQttrRKai6EYXS59ZA
 1y3Qs67WE2Sftc8Jzd8WpycNNm1K5HnwHRjzrA0Zr8Viw492Ib+C1VvblMnJEKv+4EkhDSKGBVc
 VfeAKKEecuuZs5LGdCjGZr1isYxDBSs+tXbLRocMub9IymIgSxlJuyduuuYB1n/J1hbdqhBM+io
 oHvSuoFuSNGqmGdXFiQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090182
X-Rspamd-Queue-Id: 8EFFB240DEA
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
	TAGGED_FROM(0.00)[bounces-273108-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Currently enable_store() allows operations irrespective of the EUD state,
which can result in redundant operations. Avoid this by adding duplicate
state checks to skip requests when EUD is already in the desired state.
Additionally, improve error handling with explicit logging to provide
better feedback.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 drivers/usb/misc/qcom_eud.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/misc/qcom_eud.c b/drivers/usb/misc/qcom_eud.c
index 1936b45791d2..4fd08962d4fb 100644
--- a/drivers/usb/misc/qcom_eud.c
+++ b/drivers/usb/misc/qcom_eud.c
@@ -148,18 +148,27 @@ static ssize_t enable_store(struct device *dev,
 	if (kstrtobool(buf, &enable))
 		return -EINVAL;
 
+	/* Skip operation if already in desired state */
+	if (chip->enabled == enable)
+		return count;
+
 	if (enable) {
 		ret = enable_eud(chip);
-		if (!ret)
-			chip->enabled = enable;
-		else
-			disable_eud(chip);
-
+		if (ret) {
+			dev_err(chip->dev, "failed to enable eud\n");
+			return ret;
+		}
 	} else {
 		ret = disable_eud(chip);
+		if (ret) {
+			dev_err(chip->dev, "failed to disable eud\n");
+			return ret;
+		}
 	}
 
-	return ret < 0 ? ret : count;
+	chip->enabled = enable;
+
+	return count;
 }
 
 static DEVICE_ATTR_RW(enable);
-- 
2.34.1


