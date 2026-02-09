Return-Path: <devicetree+bounces-263861-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GHBHhGWiWlj/AQAu9opvQ
	(envelope-from <devicetree+bounces-263861-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:08:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BA210CC4D
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:08:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60D453033F86
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 08:06:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63E6333CEA7;
	Mon,  9 Feb 2026 08:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AjBEhDw8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="btGUeLOW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A05733CE9D
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 08:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770624391; cv=none; b=ZCt3NrOUWT3t9aV+uUDOPLtnG8vPhvEYU15ETEgC5S1g8o4Jbs6uEK0nlb8zFQh0y5Fbv6G3SBCWw7PzuOxveihqajKSKWjkQVBynV3TDBpjYPmaQ9pndd8r2QTIo2qkb+aJTY4fD3U9NGOGD5tjEcESqagAmuIIINJp5i3NDzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770624391; c=relaxed/simple;
	bh=NwZkZd3x0F6Rk9OACyZ+Tb3Qv9NN+TnPmiBEq0ZzE30=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=p1jy8f8FXpaWPNlkslZ65dcnVadEb4LGsjT/Q8K6WW/CCL1LE12QntIT962gjyOm+pFpzP65KYmqXney5c3x6Xq4c6ORBdP2w+3DClWh2y2U5I6elVBZYt/A8fHsg4S5kl8Q384OZ6ERNl5WyM4ZqlmIxaVA8HnHaxatcoIqOIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AjBEhDw8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=btGUeLOW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61952nhv2586998
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 08:06:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sNI3lzVkEBQ
	S+BoxTw7c+JVyJ4uoevI1lC1p3lobflc=; b=AjBEhDw8gkFmKF5EhDr6IDBn1xq
	+sODPuFOkHoRV5yjuwnQvzrJ78yPDM5jo991zIJqBIwTffCQOhqe5AuEa85ujajm
	nQ5/W6LKNxpmydFWgSvHZOyUNg38fZdDJSPCIs6qMZd6UEbYKXEC0bjEIqISzJLz
	ru3oFC5joVClOlHYhXox8X7kW4wc6GGuM7uktHWzs0alzIcj1XoWRpMTPcSl6TSk
	diGhBTSCCj/ad1undKGO0cR5OpKD7h2HLWVOf7bTipDpQyy1+2F21Yh5askXEMZx
	sewrzs4H3wUs1Z0X7U1tFAq+wtrRnCB85qCTxuryalMIxbzwePHZSRl6LCg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c793bgk46-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 08:06:28 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81e81fbbb8cso4311970b3a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 00:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770624388; x=1771229188; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sNI3lzVkEBQS+BoxTw7c+JVyJ4uoevI1lC1p3lobflc=;
        b=btGUeLOWItOUFMhEDsnw7CNKRBHU74rEcaiDkTYlUlmiICt2pVJLaMnowgqGlSVFhJ
         Ll2J/sacyuXgY5JB839WyXXcCKOKj3H9tImUK6juHF595+aFxbYYOgM4LXksWwx9RTgd
         B8EL2B2pSr8KjgMDrqT/CmdoOsOJbd/f103Ks3lK/Vi/3hkFv7F1RAdjnEEfDUtHrVde
         o4SAXsQviG9GOZAfsxx0gqtej6Sho0K81xvtABeLauEEiLAv7dS5XQ9IA4oaKaZ4o54q
         5rFJNxuCZ4ZpbV+I9Xc2Fq6JpHOCuZjMmA8U9GJIzA7Y4nm6gc6l7by5a5cNUSpPfEPz
         k3UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770624388; x=1771229188;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sNI3lzVkEBQS+BoxTw7c+JVyJ4uoevI1lC1p3lobflc=;
        b=t8k316BWFV1J47hXqDRBI/w0H2YSSSUEPLVNoE6a2q5b0+J+plwaDtuS8RgFJxAaF2
         0pWqBE/dJpAsV21HyCc1Yvvez4/rqqumkpRn7Sxy5XfFDO9qJ9pxDKYyLQyBq9GMgpR1
         vSRSKlH7Y7UbLLOm617ShvXaMk0TD7MIfCmNjlgwRSo85FlPSOqIjLst2qbSoZTZdkEa
         qfVQ78cXHENdjb+ygJa7D8Bw8DoQs6iMnL1HEDxGDmdM6/T6/QlLw2+DST679wUtA0R0
         XPHyl3oYesbeavx5Qy+f2xVojfKzQN//fHKG08AdkAk4U2KFPzDbIbQFM06plgp9bY6V
         xLMw==
X-Forwarded-Encrypted: i=1; AJvYcCVjkHX+zwTXJTNRyzWhVRLKdMP+I9yFow9DdqhM0PIce1W7pjpVesITgWmjm2buH4MlK5hF+sxASXSy@vger.kernel.org
X-Gm-Message-State: AOJu0YxyYhaSctXi2tpjVuHtI8lrl3fVBeJx7qBQDIpuYxcA+7opNaON
	CgPhDkfXBbNNlNz4nDAXUyrss3KrGH6mcTLn6gRMv3FOBwZZpfSI9hKIW8qyJa/fHZ9bOlxkPXJ
	YYZb94UdzEK2v44w5wwS7DX99ywcqkea22x86BIz42BzCni9vk5YDnVlCG7O7sU+f
X-Gm-Gg: AZuq6aJ7e4zKMJyRshmLUqtJwmn38Gugj0FU1KXpV8+pU2yzd8ZduMkv0l4PaIKVlFk
	tzm2mtCkqAlDVzbPz6qx5dcDfkOKRJkpwqXEpOoI9tPIzOMowRVxd2RrQLzdJdivmkKQeVUB5CV
	hUDhTX+Au9igUvDKinhNwTiNPn9ueal6OzPULEiZBX2XLmDsvAoZxJMCqKwEXjtD934pknz9Uth
	XlI+9k1FU2RumUAu78p9E77sHuQ7uLOxcNCXRqM3o08zczbxoO0vwqKwHHZqnRzWTmFnAdFkvIx
	+GnyOLeYiDV0CM2LwBhgfIFMSI8eRNDGDyFoEeiflimTV5ZVsu9ybgUf3GYzu39bjKb+D6lDz+V
	iI3hXMnHbySmUYnLdqI0bRSQ73wwYBe84t9f15rg=
X-Received: by 2002:a05:6a20:d524:b0:2bf:183c:ac86 with SMTP id adf61e73a8af0-393ad00062amr9948229637.25.1770624387680;
        Mon, 09 Feb 2026 00:06:27 -0800 (PST)
X-Received: by 2002:a05:6a20:d524:b0:2bf:183c:ac86 with SMTP id adf61e73a8af0-393ad00062amr9948193637.25.1770624387136;
        Mon, 09 Feb 2026 00:06:27 -0800 (PST)
Received: from hu-vivesahu-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb4fb713sm9202221a12.3.2026.02.09.00.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 00:06:26 -0800 (PST)
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
To: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>
Cc: quic_mohamull@quicinc.com, quic_hbandi@quicinc.com,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Vivek Sahu <vivek.sahu@oss.qualcomm.com>
Subject: [PATCH v3 1/2] dt-bindings: net: bluetooth: qualcomm: add bindings for QCC2072
Date: Mon,  9 Feb 2026 13:36:12 +0530
Message-Id: <20260209080613.217578-2-vivek.sahu@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260209080613.217578-1-vivek.sahu@oss.qualcomm.com>
References: <20260209080613.217578-1-vivek.sahu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ctOWUl4i c=1 sm=1 tr=0 ts=69899584 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=VxM-c8O0AL3WG2ldIhIA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: PACkrSZ4dHAY90F_szkFwlYpqh8PDEkN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA2NSBTYWx0ZWRfX9wvRPd4lqvO8
 pEh5sZGKEQuQU7DYkcU9mj6wqnTY98gy32QAIGqcweskq7HjHevVAgJIAuIi/xpqwfyF9lQebWn
 y5XCOXrjA37LQPxEcibK8BO3H1VUHz2JSSNABapXKXdWoqedaPrOtPaSbiz5tWbFT09ibX0wues
 5idSu8dOWQr+fa4SWuKJx9EfkNCUiVOyRG6PHH3Q37epgTj4RESEemYZhKKl6NwSaCfDHJ9O0Vz
 FRzs9si47OFTZ7Rrd10/pRcMqC5rAzSo8Jr0pF6WP38m83Lpd6qHzC31/eGb6jMbslXxl2U3CCs
 R2OmRdYOi6QZ1p9fS+4VSyaZVShlri4Dc4/y9JGI3SV8cNHcODti8qI0AVcUyyeycXhlb46VfR4
 x9T+1Q6D8JBeNbMTRW/vu4GnfGuiGEz4+bqu7CgNrrLKB5TmYjgo0IpuOUH4CznIuXBHp/3P4t+
 JZi0NGx1K5oCOxXx7fw==
X-Proofpoint-GUID: PACkrSZ4dHAY90F_szkFwlYpqh8PDEkN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090065
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[holtmann.org,gmail.com,kernel.org,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263861-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.sahu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.989];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 19BA210CC4D
X-Rspamd-Action: no action

QCC2072 is a WiFi/BT connectivity chip.
It requires different firmware, so document it as a new compat string.

Correct the sorting of other chipsets for better readability.

Signed-off-by: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
---
 .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml  | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 6353a336f382..85cf65efca92 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -18,13 +18,14 @@ properties:
     enum:
       - qcom,qca2066-bt
       - qcom,qca6174-bt
+      - qcom,qca6390-bt
       - qcom,qca9377-bt
+      - qcom,qcc2072-bt
       - qcom,wcn3950-bt
       - qcom,wcn3988-bt
       - qcom,wcn3990-bt
       - qcom,wcn3991-bt
       - qcom,wcn3998-bt
-      - qcom,qca6390-bt
       - qcom,wcn6750-bt
       - qcom,wcn6855-bt
       - qcom,wcn7850-bt
-- 
2.34.1


