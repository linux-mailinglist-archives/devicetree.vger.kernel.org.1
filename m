Return-Path: <devicetree+bounces-273246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDVTO0eSr2kragIAu9opvQ
	(envelope-from <devicetree+bounces-273246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:38:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5794F244E62
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:38:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E99D1315F20A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:36:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6E3F233D9E;
	Tue, 10 Mar 2026 03:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qzl6hekO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SAwLZwIU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1CB03B8D59
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773113807; cv=none; b=F2WVYxCWt4FgczKDu2/jjALQDgbFEuGbLWeEuVvL/alZZ17hKKmT5nBUDB0/m8/MldlGHDVKg4XLd88nyXDsc5M0TgA3JIHFBGXHEI6Zt8AORM2zhqrFnzgs6hxgaXudCtvkVIWejn7rVqfE/LONaX5NCBZUSwDfYWNmMhrKbB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773113807; c=relaxed/simple;
	bh=McOFs17KMBE80Kx1yQ7dtWDsgmcWE2xvIe4QDqWpGkk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rKQbnQRmApgpKNsSUpIAN6M/wR+qqc0rqIUp91wieD4YacvCAPck0wpXr30sEh/7LbyqGH3CDZtPLwpnCqdbcQRJk6n5L+yqlarffPZtz+pltr9VjgMgNpfSoV6v0vmMEND19G9EkllnRLcWn8ZwuX59phs1clofV6dzlhGQ8vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qzl6hekO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SAwLZwIU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EdlL3587447
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:36:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=bjsGqclSC5A
	+jOI39DgtAXUsVsWpwMND9DHnXWAUT54=; b=Qzl6hekObTVFaa3UXQUNoGPG7ZP
	/70nrB5uKeuszfajsc5RCxOjC3aNV2zPoYUkFzEbdOirelOfptjT5tHbKmtegA3V
	oD+JT95OKS54ukZMyH9/72U4WTmt0QAz6nFcTsFgOUZ8HUmvQmDbrBrlbmXZuOrw
	ZiRYHvpMZDLlqE95W+OhASdul+KQLzpcrbKmWo5wo1bW8QBX2UL8k+SS2YoeDNa7
	C+WiJWD/f+tK8NuOLyyINpHtt1PD8CCL2Kt7Zwitnx+Ub37MSB3nJMtZqIfDtttt
	oUV3146V/SGy1/gFN/GYEVHc1I7CI7tGmKQd5bynU7Dtqjd7++OtefpdYMQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct1ekt0sc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:36:45 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c737b6686ddso3452099a12.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773113805; x=1773718605; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bjsGqclSC5A+jOI39DgtAXUsVsWpwMND9DHnXWAUT54=;
        b=SAwLZwIUR9fNq8aUfksyOOreKYSnA8bt0HZTZagA/tiTv2woJ4pVTH0VQwcHD3NS+H
         yw5uJUo+x/zZshYhmYQFIfFR2KfvqoEvEcVPQ3XobPGOYRcjlWCcATYMoDhVVAOqi7em
         kdP+2DNrHbKw8zNBTkJ/LzBz5stag0+SZO33KhP5lS9XpCvVp9E9inkrwcoZHBLGXS0J
         4bvgASh2nqjyizPj260V4x/o/NLTNwNPBnW2/5RuS9NkYCLhZmZkklqVNJ7uESmTqCqI
         0O366SPJnSuAV8S6v0D7tILjAU6O1IZ2N+6uxMNtlveiRfNaumLMi7jNthRcxTq9RAoc
         L2CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773113805; x=1773718605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bjsGqclSC5A+jOI39DgtAXUsVsWpwMND9DHnXWAUT54=;
        b=cO4Y9WISShSX2RrH4MJVAus9NdMapDlY3UXSOP38MXFsrPjXL6nG47c8wbCKb4Ze+u
         gQbXbulkvzJI20JeEOhH+HUL9mT5a3H66fD/cgbK92KFkqZEMpUM84UJVh2ki67A0ua1
         9Ec9pBJNWOiPH/LyfGbyvjhiTLv1mxXHuRhyG45Xw8UJ/T857MrA84h8Pq2g9tkippm9
         We62vmOCzKI17EQTfBMR+u8IcQImpT7/gjRKSNtN0HWvAOY4NEsZoZnnL/KsLw5o18nW
         HApXLS0o7ayfpXuZUWdMEqquL0Ow23epe5QFzuXLAHYa93KEBV7jwzt5OdsWzH68S3IS
         YIVg==
X-Forwarded-Encrypted: i=1; AJvYcCUKDT+Y0maHYTf1ZlkiIB/hBkEbjjzKbODsmbUv3zwrZbMsJP83aT7pIQjleh3af3rBcxE9qJ7y5OJl@vger.kernel.org
X-Gm-Message-State: AOJu0YycuDJeaENMuLUxqBbn4KLg5eL12WnbtzrNjdN9MY5acpV+wfTd
	PEp/KV8IU0xEOU0SOL7+cEFZN01jE4q/GzqtdHtyV/O/tHMs7Dymi6aFVBcBwsOsYGJpm5DjIgA
	2Hc+d7+dLyPIPJ+BYtea+4dBIWjplcgvUPaJoK4Wcrf4QuDjrJg0QJRy5rnfDGqUD
X-Gm-Gg: ATEYQzzfBRGogKVqJFKsjp8Lhqh6RQi5CNBnZticLX0S0SX7OJ2JEXvHWpgAD8ftF+H
	Jstvr+VBjU9ZEz/5KiAMvqKEFs7EQwb0ekjpuPaDljBsr8/sbuEgPbpMmtfR+lkbuWeNhjaxiVi
	o2n1Cwtszd5sN3ZE5+d0cNB++g1D4l1gG8URpRwUALrtXTVDO0XTNLe8wOEPcT/DeFHQW8X/k9G
	iu43Wk1etc4IcOPd/l5F9CchVxYcZMhB0Duikg4lS/mgwcAWzJdaUyZt3RAD51tFbrhXsPK6gYg
	bwb1s506uqa/MfpAENRiJ+NQVdQRLT5dsurGAaNqcAvX4/gBppFNeVgAAMIgbYPnHcfjuFU9htD
	jsj0vgQkU+Hp81ndtr3Tb35n2X8L/Lk9cV4dXzQ09EUAhfrf522CzCLYScLfCoBV4zwnAKUq4+w
	Q9uZWClWpCi8WPgLJIEzuWMWlzsNQPi5UVaUZ4
X-Received: by 2002:a05:6a21:112:b0:398:a6ae:9882 with SMTP id adf61e73a8af0-398a6aea519mr2681094637.50.1773113805291;
        Mon, 09 Mar 2026 20:36:45 -0700 (PDT)
X-Received: by 2002:a05:6a21:112:b0:398:a6ae:9882 with SMTP id adf61e73a8af0-398a6aea519mr2681064637.50.1773113804848;
        Mon, 09 Mar 2026 20:36:44 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c739e182d72sm10272923a12.25.2026.03.09.20.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 20:36:44 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        mani@kernel.org
Subject: [PATCH V4 3/5] dt-bindings: misc: qcom,fastrpc: Add compatible for Glymur
Date: Tue, 10 Mar 2026 09:06:15 +0530
Message-Id: <20260310033617.3108675-4-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260310033617.3108675-1-sibi.sankar@oss.qualcomm.com>
References: <20260310033617.3108675-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: atpBHIDbOZaVpfuNJ57UqmC8g6GbpqJI
X-Proofpoint-ORIG-GUID: atpBHIDbOZaVpfuNJ57UqmC8g6GbpqJI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDAyNSBTYWx0ZWRfXz0XPYXDvAQop
 6PT99k+YWloT5cpimZ7TgIQBfksclaE7aamnDliPUhe3XPPFRiLuwz1p7/McmKmgDef/bV7SegA
 nojmZ6W3sHF96C6UWqUZJL3de+67JG1wmNUAcV8kFYEfY4YeKgipnUjjbQm5mNgOOLMJlRtzNRR
 8OoOxF7GAFlKmeMjWm92Wkr00x1t/yW+2z/LdRsBIuQvc9VaXoqpVEGggjpVVGRP7e9+Cl2W1ea
 PDUigL/fSXcnt0ZLFt5/dg5BjUbTBaiVn24XcS55mCUYvxnj/GNt2PuSLp7NZa3C/hZ3XnjzKDC
 pM0+FylLOJ61FicWGDNFrAZphYWp93wKrzx17lK2mL338J5pe/Y6RY2nfx+EdxS1m2AntONJ9HE
 SWkoc/GflpHiHxkULyqgJBBV1tTGsYG7gUcBS+XjAY5Nk29RF4PtfanGpRDShubKN9NOX3c1aSb
 +c8QCek59/SfPpWPzuw==
X-Authority-Analysis: v=2.4 cv=eIEeTXp1 c=1 sm=1 tr=0 ts=69af91cd cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=Eu9c2-cO-uz-pbzhnSkA:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100025
X-Rspamd-Queue-Id: 5794F244E62
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
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273246-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Document compatible for Qualcomm Glymur fastrpc which is fully compatible
with Qualcomm Kaanapali fastrpc.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 .../devicetree/bindings/misc/qcom,fastrpc.yaml        | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
index d8e47db677cc..ca830dd06de2 100644
--- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
+++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
@@ -18,9 +18,14 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - qcom,kaanapali-fastrpc
-      - qcom,fastrpc
+    oneOf:
+      - enum:
+          - qcom,kaanapali-fastrpc
+          - qcom,fastrpc
+      - items:
+          - enum:
+              - qcom,glymur-fastrpc
+          - const: qcom,kaanapali-fastrpc
 
   label:
     enum:
-- 
2.34.1


