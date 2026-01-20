Return-Path: <devicetree+bounces-257424-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mB5uJqJ/cWk1IAAAu9opvQ
	(envelope-from <devicetree+bounces-257424-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:38:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7BD60696
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:38:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 00014906CBB
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 13:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25A4643C072;
	Tue, 20 Jan 2026 13:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Keb6RnWV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q+49glnK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03BC43636C
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 13:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768916300; cv=none; b=Fbn8sbrfiqp82N3KSYnD3SS7rRYazep0Au63ROrzsHa9+eibQbeffD7hLwYgvVgwMw8wOSsKuKsPE6ejsJmzMjna/AO/FP2kBYLn9GXwDl68s4Ru34L/w1gkXghsN/TDTI69zRQdywl4W0pgo0Dsza0yEXaVab5S8lENWiDjmTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768916300; c=relaxed/simple;
	bh=qsHYpCRnHkR9B4hsaDF2UxeZUZc9qiyn2qq13er/Eo0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=bUMQWOgA83CIPyDvoO018oUDAMxob3J54zrgc0XrpvFz8OUrdvnNZ29a6gM730TYm11bBi18/nNJEyohTnoC+Y159Kmk0aXNMVEFEkNdNPW/+Dz0Qmzq1ycU7xk8itQmNwe/2ViO0ntj1nhYovBazW6t8MBDc7Fzw9jZXizYbwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Keb6RnWV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q+49glnK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KD9PKX512110
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 13:38:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=267stE2GFuXel8U/+66Flp
	SLqJa+/S4BZouInklqODc=; b=Keb6RnWVf5omLaHbSodX96ZoHrYUs0Trpls0yB
	Gyz0EkmLp/bipEmk/cFMFGXkfarp5s/foRVA7UTXiGPmD0x23Sur0s6DIiEjIiKD
	slfCoZkKrvRB1orj144bjwz16MXziKUnMtEz2FP+hMhFXAOSd3PnghldXrAymoC1
	sK51s2ctpze2jiY83ywHkWHVOp6EbwUDtpHdNgSCDlrzzOWmWN5A1/1MmJ7bL6Xt
	lO8fHne+giMUxjwmM61/NY/SdKG5yb/ZmofIpQA54Qica3BHOxM3f/CzZ3LANtDM
	n08g1sZzwzPvMYY3IPZg1akWJBr0E1C+j3rWjsQQl8REEiQg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btabe02jf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 13:38:16 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c5291b89733so3011071a12.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 05:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768916296; x=1769521096; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=267stE2GFuXel8U/+66FlpSLqJa+/S4BZouInklqODc=;
        b=Q+49glnKRNDhAODOeogIsq1UInd3/rFjHfzUud7+HwdFDl7OT8Efnw8akDhEN3iuts
         CfffQQAvobHOHSmrOkPzU+1eriKxofrmWP4VekwhqIFZ3oEY/BoJVEDFrPDw0DasGVe1
         pk3XaaAbg1t2T2Hg7X0iOPlLL/hmpcxUeEjlLAwiGzv1gzQ6xs1f17XPa1XKI6lvVE/M
         BO1RG8qQ7fX4iG+GG1maRrVuYNmNHiu8Z5wUgE6NWa7n5UPVrQBYkMuZ9vOGTMx6L/ZE
         DiLh2IfIUTuW0PlgD5Xff9e6jNM0GntoFmCEP26QJDqLMZSg/aqYuVG2Wevn51XgY9qi
         MNtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768916296; x=1769521096;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=267stE2GFuXel8U/+66FlpSLqJa+/S4BZouInklqODc=;
        b=PDQZPKgVvbkbGl8KCvznkHxI6Z+BJAsoTOKuv8GasLgJOy7aTUKGIEjGzaSioaSWSW
         sD2sjeoI8oC8URdO5l1bJo8PkP58Nrj7XQxD9czddgI3LJZ2iKWdUOkxf/5ak69IrkWV
         z5x4/kAMdeK01Q/6ZCGRRy9g+/vaOJaOHPU0LSqbxJacPE4awqcwnZCyn98UP8aVN6v7
         ztwJxW74rSqoz7Eas67p/rXBUlSkVGWiLEsEYSYX8dA3YTLxu0cNotfoCwBIPZCnhrQb
         GCT1yMOERjx2Nbr7Sh4/bjwz9xnEavPHBLMVs5IzSQFtPrkYQyrXk+Lp9ND+ohHdSbXL
         EN8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXCXptddRKjF9daJMkyNJjrwjjZdm0HKsB/d8enxofov94oS9ntSzcgS3Z2GfQUWu6yXG1l/lXdJ9ok@vger.kernel.org
X-Gm-Message-State: AOJu0YwzuWt/SRjcA4gyGY3tLcRTMW5Qj/xSTkeOf6KcDUnHp5tNVJqA
	2HL7tfSTP7k2p1WeERNQZ5sc9Jwonu59hx0QvUIfuu2tk2Il8x9WH/S2KvYWNcySr8uiW8/RGW8
	6rrMZleVyFYsU+615XW+LflrR1obFr/cIb2mGNUIQeMz+82AQIiLKwOwgsCW0yesH
X-Gm-Gg: AZuq6aKYfhmnM91Vs2GSCo1/pKpiWWAIdHSMzQNojrFqYVsBI++6rEdv/S7yL2sKB4y
	/aHiOc3nw9hnAKtK9w7Tm3NeES6maO2EAGGf6bKDqE9B2HZcM5yYZQ8LgQgEc75aVf0jp2flU+6
	c4o3ZFdpaGAO7wzRF83gcqSb8oFOlnm1bLwlTPXcR6Se0dX3/zpf7KMtlVAxM+X7aml6zz13zIS
	NPD9yhzpfLo5e269Tfom/HroBJdd0Pz1+5BgHQTz/qgqG8n4gTO0HiLcXjT1DuQerspOHkQPSHh
	LuvBurDrHq990r/IHHEbnpXu0YwPEtzi9zjzJCQzfuCj3qE/EawEfAHRdqVQpNSgDI/d98Y62Dj
	cH9yaOBc2EQIdtDhdx2hImY8IxM0ynXp7PAV8vPl88mpVGvfq0Mas7SoUtd259mKKwhOoFcocV8
	9VHu5unUNwe1z6uIpjYYVZ4TERu8U1Qv3mkTe4
X-Received: by 2002:a17:903:19c8:b0:2a0:8f6f:1a12 with SMTP id d9443c01a7336-2a7698fb4a5mr17389525ad.17.1768916296172;
        Tue, 20 Jan 2026 05:38:16 -0800 (PST)
X-Received: by 2002:a17:903:19c8:b0:2a0:8f6f:1a12 with SMTP id d9443c01a7336-2a7698fb4a5mr17389275ad.17.1768916295592;
        Tue, 20 Jan 2026 05:38:15 -0800 (PST)
Received: from hu-ppapaniy-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf37b380sm12036532a12.34.2026.01.20.05.38.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 05:38:15 -0800 (PST)
From: Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 19:07:35 +0530
Subject: [PATCH] dt-bindings: interconnect: qcom-bwmon: Document Glymur
 BWMONs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-glymur_bwmon_binding-v1-1-57848445eccf@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAB6Fb2kC/x3MSwqAMAwA0atI1hbaLlS8iogYG2tAo7T4Q7y7x
 eVbzDwQKTBFqLMHAh0ceZUEk2cwTL14UuySwWpbaGO18vO97KHDc1mlQxbH4pUrqqpEi+hGAyn
 dAo18/dumfd8PUOZDz2YAAAA=
X-Change-ID: 20260120-glymur_bwmon_binding-d6887b2bbdf1
To: Krzysztof Kozlowski <krzk@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        pankaj.patil@oss.qualcomm.com,
        Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768916292; l=1131;
 i=pragnesh.papaniya@oss.qualcomm.com; s=20260120; h=from:subject:message-id;
 bh=qsHYpCRnHkR9B4hsaDF2UxeZUZc9qiyn2qq13er/Eo0=;
 b=GOehMMGTepIPP9nBawCSmRE58R095vP8GAXG3TBLjmkUoJwOyw8qOrQ7tgJ6+Orm+KOnER05Z
 ihk4GY7dMtNDpduzS2iLZ+HiXyRvd5cX1YRXMc1ZUxJjIkETyT2UdQM
X-Developer-Key: i=pragnesh.papaniya@oss.qualcomm.com; a=ed25519;
 pk=09P9nFmZLXJ9+4Jx10ZK5rIW0Fmk79A/DLErm6aVA0c=
X-Proofpoint-GUID: YLp3WvZgWE6C90SOO1QpacBCw6XEBayV
X-Authority-Analysis: v=2.4 cv=Q43fIo2a c=1 sm=1 tr=0 ts=696f8548 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yciQ9CAyKdn08I1YtksA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: YLp3WvZgWE6C90SOO1QpacBCw6XEBayV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDExMiBTYWx0ZWRfXx+3QoHNjwb/6
 i5ehzKXHOxRAZ/l1r0MUsYRAVB6WGz2yl31e85Q3oGdeqoyKC8oj94giJzLjQ0eL7/0jtfXHVuZ
 Dck9aT5r9ssJpPN1xcYyuFdEzHe/P6BiI0vKW0OX8JgfKbTCA9XwllZDIj3/iD1qPCR+eTCCCdc
 +lftpIVB0bO2wYAano9fNlFrXmNtriuXnVGxP+XnCS3UNbI8rlTmso32oDISzq4z+l7L/fWb3+D
 0O4LVEZ2Vd4HC1JraDspFMCJeO5+uEvE+0UiOoaF51RYhfewsYgHgcnqvOUi5P2w3xOa8ugYpix
 W5QFglRxEC7UX/YC8P9NYm2ME2KsAREBAuJlILNdgzXx59eoygJdKRdOMEvrEKw9W11Z7BcxzKy
 Z8ftckL80+msuWIUd7fj/KXUsNDo0TwoUlx96SpIL8bFZSU3cmlW4SuXlh3V1FAZSVt5mAvI2EY
 gJ8vfiUpLOSAO+lX34w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_03,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 phishscore=0 bulkscore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1011
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200112
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.96 / 15.00];
	DATE_IN_PAST(1.00)[36];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257424-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pragnesh.papaniya@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0E7BD60696
X-Rspamd-Action: no action

Document Glymur BWMONs, which has multiple (one per cluster) BWMONv4
instances for the CPU->DDR path.

Signed-off-by: Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
index 17b09292000e..ce79521bb1ef 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
@@ -25,6 +25,7 @@ properties:
       - const: qcom,msm8998-bwmon       # BWMON v4
       - items:
           - enum:
+              - qcom,glymur-cpu-bwmon
               - qcom,kaanapali-cpu-bwmon
               - qcom,qcm2290-cpu-bwmon
               - qcom,qcs615-cpu-bwmon

---
base-commit: d08c85ac8894995d4b0d8fb48d2f6a3e53cd79ab
change-id: 20260120-glymur_bwmon_binding-d6887b2bbdf1

Best regards,
-- 
Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>


