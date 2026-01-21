Return-Path: <devicetree+bounces-257855-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NHjGqWqcGkgZAAAu9opvQ
	(envelope-from <devicetree+bounces-257855-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:29:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CB27A5538C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:29:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CC340907729
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:21:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DBE848B386;
	Wed, 21 Jan 2026 10:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J4YBrQ03";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RW/VAY6O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8438B48AE0F
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768990555; cv=none; b=aUYyRpVr42Y09B32xqS2ufk9JwXvZslT0IxxzmsyFat1Z2kzmb+KAICIpAXUBZI8K9vZehpClhIWVs9KMhiyXDpY1gU6b/E9rx4T81joblyxF3E2eXqKKDE2Hs8+RgIVQOmt3/xzHVS0KcgiBk3TpTfi11X6lfE3qvWBYz4vBwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768990555; c=relaxed/simple;
	bh=zOlSDJjkzETZjT9w08GWmGIzoMmh2Y8jvx1PkRhsows=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ixE+CdCxiTJwfO/sYHDIrLNu1vD9BR9P6HlnxkFfX4sppMKNNJP8mKvMSdAxcfF+jc4vgk6eg/8mwe6/EBVJ4toXO8XP00ic05sFzlXXZBHM045QNbUPcK25syajsJsE7cPoEXgWguxiGEhJ2luWT86qvEL9XsuU8ijjpHqPOws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J4YBrQ03; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RW/VAY6O; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9hdm9824271
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 10:15:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cgTKx4MA7+dif+0LvGOR400AipzpMKmAwQS8fpYwQPg=; b=J4YBrQ03wos/J3dd
	ATJ4V1DVpKNkin+X5TL3AIFE9p15vh8CwAAiv4KnbdY0R4FeGHGLqPAEK124eU0I
	OPbP2Njjx3mq9Zdo3BXj46if6WgdWJ0Y2UNzS9OLd3yEQotQRLupUJEwr8ZXkt1h
	7wRdffVnoReuPu0s5qrul6v16eVKQdzlYufhQqhVB99+Shz7hcm3AjdR0bVymk32
	ycXBiPwIgZotjNvcA1Vw3ONAI2oFRQq8llWptAAEO2nvSStH+gpkA2FgHqnyapfK
	xzEjDLqHxrRtM9zf0S2rQoDe7z+AYf9XHFOg8pqyL7CMoprOyfop5FrkM7YctvjI
	WadA1A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bte5e3fqa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 10:15:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c5e166fb75so171261685a.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 02:15:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768990551; x=1769595351; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cgTKx4MA7+dif+0LvGOR400AipzpMKmAwQS8fpYwQPg=;
        b=RW/VAY6O/dJJrvmTDPhw44QyUqbt0zSr+Wnw2/qDflpPPFkQi232aJoPAWlNngMwFl
         4eTTyKsmXbqdgGPxNVzlqyzwGMZbeNfGQWMTd0WhM9mjB1KYzrkxI4WyfkPiszmYpSf+
         Q5aglrzF424EARRquq/PuJOEFI8Jb2jER7Qbvp0+7bpyLIeh6SAfeLdhQ5dyvObgrGJl
         6MUfaWYEHL3HjkLeVZs7YgtI4ZECwsyE+SSleukmE5+locxxZUNxpzQ3Ts0++uuSmZWT
         1ZBFrzvwaUt1H9jnZjUraefipkvyPczePTePSwsqwpMskwh/gDDb0kGWtXcf3Ng+aKkQ
         Wx1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768990551; x=1769595351;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cgTKx4MA7+dif+0LvGOR400AipzpMKmAwQS8fpYwQPg=;
        b=voMa6SGL/iCCbSFYfFTZxiSvaHy98Mt350uaA24w9ketHT4FJ4JfpCShuJiQyNurhN
         zf/BWMymh0jjc/2B7Wp9TuU45M7m621wr+y/pl5CjRvhA36Y/2LYdk2xmxGqbL9xDNcj
         JfTBA9WKiG0GtO7xCiMCmXmqGkpAQsLKryXgh37vBVqHq4bLc1qHX3X1tdR27ydZ2cxT
         HJ9zDEeqmksv9AAMIrKr1O37fuHE8a/zcGiHj4xenPV8lN7cuNI6tokmA9pM9Dla+WiR
         hh6Hwp/xQt2d7pvXGRUjKGfy9mv9yX6F1TTgoAhVNc9/F/HGF7UopCgiMiI0OyrRqaUA
         HVTw==
X-Forwarded-Encrypted: i=1; AJvYcCUoi54oOc83qsuTMLajGgObRNO/Ebpjukd5NukLfHVfblC4hX5RkUhscwHd/vy60g+1+j/IVS5Uh7i8@vger.kernel.org
X-Gm-Message-State: AOJu0Yy763kWDnHvZ8kD5nuBOBg5+Nfl4/6ihjiF7pzs62aLJm9rW1LJ
	8VmG8Q6vOe///CGxsNTNVsTO+X+qeWKNGXatpCDcEF+3WDUCkY4sy3dR6fwaZRviDPZ5Jlz466N
	MarGEqUmulSek30r4fMzdChbeTOQbgby86ZpPcKnYpMu31EyyKQD1Cd3XpaKutB76
X-Gm-Gg: AZuq6aKzX7OXkK2NqTyynU/ngeWR2vTuVUvwUFxbEJhPTuapBYXGL5VnDg6tsLDj0l3
	mIG+Q5SK8MOOkHWm/ZBCOijaw7reGrhAfCrHrf+brAdjgkDtVCtrNqyZCbzdTPZWI4rKF1MO1ex
	9Va1AYAn47DlMp+k5a4gb1qgU23SY7SEs5MM9t/Oa1cFAbd0RxI6cY7YEI7eRNrH6cvjM5bVELq
	Ff5h8pHyojrkZuY7e3k5UtBjzETHeI+Se2GjT2tjjCAgayICzrSM70SY3gRs21oqhefK+KB+MtX
	NHk7TeyM0f6Rzs3148RNXfmEAtCBNg8JhyVFtrVhHn9rdDyERAIhYYWZ6QaInG1rmBvcZ7zdGLp
	tVj0ofvx7GNn7fN2PVaJ66qfJAo0PUFxVqAbdv2CF0n5n7v2Bu/uGvjQZaItS7/24pVriw3XQHC
	uj/c215fVCdxxzuPjsVit42SI=
X-Received: by 2002:a05:620a:4415:b0:8c5:2b23:bcce with SMTP id af79cd13be357-8c6a66d2248mr2329267585a.17.1768990551144;
        Wed, 21 Jan 2026 02:15:51 -0800 (PST)
X-Received: by 2002:a05:620a:4415:b0:8c5:2b23:bcce with SMTP id af79cd13be357-8c6a66d2248mr2329263985a.17.1768990550619;
        Wed, 21 Jan 2026 02:15:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf397785sm4720733e87.51.2026.01.21.02.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 02:15:49 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 12:15:47 +0200
Subject: [PATCH v2 3/3] drm: bridge: anx7625: implement message sending
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260121-anx7625-typec-v2-3-d14f31256a17@oss.qualcomm.com>
References: <20260121-anx7625-typec-v2-0-d14f31256a17@oss.qualcomm.com>
In-Reply-To: <20260121-anx7625-typec-v2-0-d14f31256a17@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3944;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=zOlSDJjkzETZjT9w08GWmGIzoMmh2Y8jvx1PkRhsows=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpcKdRkXfMCnUJ5mQFeOZtvWsmXjX8XdqS+3tXZ
 5dY35bP3AyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXCnUQAKCRCLPIo+Aiko
 1aAkB/4zQ+hoYV7IgDRMPJrr3xpFBAPy/xWb57Wq2oOez2MEovA03mIuZQL0cbd2EjEXxWFAsPd
 AyFZetuenlv9UIGyJt5WWuINXmy0L9kRV4stFtJlnECFPx40pG7CX5gBU4OObi0T2RqWWKIVoyY
 CUi1eh36ixtztQeiXq3/vM0NAz4Pll8GxgpYyzWfAqkuDnJGgmgHc8BUja/4zGJsjCG9y1pB7uh
 5AxSR0tIiF+QNVR3f4S4qqMBzkRqvnaYl5jz9HEwCk/GZ7iy/OkwKLxF7uTwcwaCP3X/nTAIBJ1
 HpQgUKtcRqgWojDjhU8TLPHk0vQshsVnY3wSSfOzhvhwJkjb
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=BKa+bVQG c=1 sm=1 tr=0 ts=6970a757 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_5utB2yTlrchjXRSIYoA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 17KfyVqAa-2cTzlKckWouEUQB3LItLDN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA4NiBTYWx0ZWRfXyeU0udL9jidx
 JoqmIBXClW2M0TD11uF5gfJqgermXhj5ApATzuiPhVHGs3K8Wp42wVrU5/aYztmxzB1e81Nb3qD
 +oUrcMbFte4yAkqbRSQq0jg1sscw/apkemM+sxWkpxnPs/we3K7a5J8ME//fZMidgCw70VAJF6t
 NIlZHN/ElQAQcwFPPwO6EGdDphXehBpsJZMxv5m0DtbMgL4N9nKOSZkiQ4FeB3aqf91ySyzgp3Z
 lSqNgluraY3Z8I9cQHNR+cymlayuCUFsvbiFCbBfBgpr1XOS2rIIJa6ABI+EpzRp6RKPJOIAkEr
 ZcwQX+S0MJqoA6Rz2u9KXYDaNFo2HSuBza3VfQ3D3RyUyVeZGUJiL3jCSkdGVdndfZIJMRJdsze
 koFFd/rbQAAfoEUENOhmExQF23mCOHrij1mKgjJp1S8Is37ALQ8nOc3dOB8/WSR5X3jmJou4v0G
 4c10u4H8j2cguCQPRDA==
X-Proofpoint-GUID: 17KfyVqAa-2cTzlKckWouEUQB3LItLDN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210086
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-257855-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,analogixsemi.com,linuxfoundation.org];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CB27A5538C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Swapping the data role requires sending the message to the other USB-C
side. Implement sending these messages through the OCM. The code is
largely based on the anx7411.c USB-C driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/bridge/analogix/anx7625.c | 68 +++++++++++++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h | 12 ++++++
 2 files changed, 80 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
index 8dc6e3b16968..c43519097a45 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.c
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
@@ -1484,6 +1484,73 @@ static void anx7625_start_dp_work(struct anx7625_data *ctx)
 }
 
 #if IS_REACHABLE(CONFIG_TYPEC)
+static u8 anx7625_checksum(u8 *buf, u8 len)
+{
+	u8 ret = 0;
+	u8 i;
+
+	for (i = 0; i < len; i++)
+		ret += buf[i];
+
+	return ret;
+}
+
+static int anx7625_read_msg_ctrl_status(struct anx7625_data *ctx)
+{
+	return anx7625_reg_read(ctx, ctx->i2c.rx_p0_client, CMD_SEND_BUF);
+}
+
+static int anx7625_wait_msg_empty(struct anx7625_data *ctx)
+{
+	int val;
+
+	return readx_poll_timeout(anx7625_read_msg_ctrl_status, ctx,
+				  val, (val < 0) || (val == 0),
+				  2000, 2000 * 150);
+}
+
+static int anx7625_send_msg(struct anx7625_data *ctx, u8 type, u8 *buf, u8 size)
+{
+	struct fw_msg *msg = &ctx->send_msg;
+	u8 crc;
+	int ret;
+
+	size = min_t(u8, size, (u8)MAX_BUF_LEN);
+	memcpy(msg->buf, buf, size);
+	msg->msg_type = type;
+
+	/* msg len equals buffer length + msg_type */
+	msg->msg_len = size + 1;
+
+	crc = anx7625_checksum((u8 *)msg, size + HEADER_LEN);
+	msg->buf[size] = 0 - crc;
+
+	ret = anx7625_wait_msg_empty(ctx);
+	if (ret)
+		return ret;
+
+	ret = anx7625_reg_block_write(ctx, ctx->i2c.rx_p0_client,
+				      CMD_SEND_BUF + 1, size + HEADER_LEN,
+				      &msg->msg_type);
+	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client, CMD_SEND_BUF,
+				 msg->msg_len);
+	return ret;
+}
+
+static int anx7625_typec_dr_set(struct typec_port *port, enum typec_data_role role)
+{
+	struct anx7625_data *ctx = typec_get_drvdata(port);
+
+	if (role == ctx->typec_data_role)
+		return 0;
+
+	return anx7625_send_msg(ctx, 0x11, NULL, 0);
+}
+
+static const struct typec_operations anx7625_typec_ops = {
+	.dr_set = anx7625_typec_dr_set,
+};
+
 static void anx7625_typec_set_orientation(struct anx7625_data *ctx)
 {
 	u32 val = anx7625_reg_read(ctx, ctx->i2c.rx_p0_client, SYSTEM_STSTUS);
@@ -1542,6 +1609,7 @@ static int anx7625_typec_register(struct anx7625_data *ctx)
 	typec_cap.orientation_aware = true;
 
 	typec_cap.driver_data = ctx;
+	typec_cap.ops = &anx7625_typec_ops;
 
 	ctx->typec_port = typec_register_port(ctx->dev, &typec_cap);
 	if (IS_ERR(ctx->typec_port))
diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.h b/drivers/gpu/drm/bridge/analogix/anx7625.h
index a18561c213af..957d234ec07c 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.h
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.h
@@ -67,6 +67,9 @@
 #define CC2_RA                  BIT(5)
 #define CC2_RP			(BIT(6) | BIT(7))
 
+#define CMD_SEND_BUF		0xC0
+#define CMD_RECV_BUF		0xE0
+
 /******** END of I2C Address 0x58 ********/
 
 /***************************************************************/
@@ -462,6 +465,14 @@ struct anx7625_i2c_client {
 struct typec_port;
 struct usb_role_switch;
 
+#define MAX_BUF_LEN	30
+struct fw_msg {
+	u8 msg_len;
+	u8 msg_type;
+	u8 buf[MAX_BUF_LEN];
+} __packed;
+#define HEADER_LEN		2
+
 struct anx7625_data {
 	struct anx7625_platform_data pdata;
 	struct platform_device *audio_pdev;
@@ -497,6 +508,7 @@ struct anx7625_data {
 	struct drm_connector *connector;
 	struct mipi_dsi_device *dsi;
 	struct drm_dp_aux aux;
+	struct fw_msg send_msg;
 };
 
 #endif  /* __ANX7625_H__ */

-- 
2.47.3


