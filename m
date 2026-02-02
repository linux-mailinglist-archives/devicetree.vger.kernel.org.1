Return-Path: <devicetree+bounces-261627-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAkWCD48gGmD5AIAu9opvQ
	(envelope-from <devicetree+bounces-261627-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 06:55:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 764B3C863D
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 06:55:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9DE3830056F5
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 05:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EC932BEC2C;
	Mon,  2 Feb 2026 05:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PzNX5qEd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UXjYErqQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C2FF299AB3
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 05:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770011681; cv=none; b=JUExfmIDpnDr1zNWRQebf7Q6qRbJQOIC/ZF4kGSp6alxusPEZ/EtEgBvJPtlS4PGz2/cyyOa2tAy0v9cRKuc+kxDSjncDS2c1LpNo7Uz59w1xPZD7CU2bOGg+FcIhxntjvh8liFYsrJVouYRfvpEHxwNg/FTmpxMJvJ8JlTPOaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770011681; c=relaxed/simple;
	bh=Jk7zW9DfAJvos3787rUzzglH4/n5YuZy/w9oENa/MP0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YWa7Rm+n4ruDcyZOqW2aqP3dQlfrR0uAyzNOs+XKa6LBA65/F5Qe7JXZ1pqVZh4zvQOTQOh+kkxODwLai4fqozguqvg9/+K47dBuFQphERkAP307qMLkgXWCvfr8I1RYOpSoBlE1xq8jm2j91Zp1ZOdVPos+s22gAwEnTJRVB50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PzNX5qEd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UXjYErqQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611H9STl023076
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 05:54:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=WnOjDn8hve2TQf3r/j3F/Up7LhWDpZGwCJF
	66onCxCU=; b=PzNX5qEdeZvtOkn1ksyc1am8Yr4OtOweoMBrQB+q4pRn23zkKIH
	I0wBba703OarqZ2y9veLT7XrRLQu0PY9l5P9/WORv4OjT2tssjZi+XBc5JN28Cf2
	G9QEyvsTdy/VziwNUb+twYybiH2jUuNHnhzGFEupcBJqeriAGWubWvyXMt00SI7d
	sVY3U2xjqlxkrSSDAnmjPP43LykFaA6OHz7ja9PdkWqZq/+9ikUqImI+hs2AgdX0
	s6J62ptVCpJsYNAAhm+LCmN4JiE/0c3g6y/fHBsuqgGf8rWuFSmzICpoQkC1QNkB
	MV7bUqhWh8E/00p27Ju8xIMqeIIkeiD9luw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1avx40ym-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 05:54:39 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2b724ff60e6so4622490eec.0
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 21:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770011678; x=1770616478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WnOjDn8hve2TQf3r/j3F/Up7LhWDpZGwCJF66onCxCU=;
        b=UXjYErqQfiQCGZB9p4VzlDybLMI1BfBqJVPAB8PorDFpk+e/BNH+w1LpVuzcIBpvcT
         VBy55D6vK5Y+Teto3jvfnNqLoPaIECJXb9O8MEJiH0MSUZJsA/jSzffbWgMdVdS0Y2XW
         3l2FnAAxLwQkp17NnLkOhR/F9EuVKuKXy+c8AhgJ0aXQ9pyxLBrJzfcVTlaDN5LTzy/b
         AXJaeLp2TraPxI/DWngJzVdvzYjf0o2/yXOtbyv30X6WMJ3T2rCvUJMu8aV66C0x/O0z
         u16vGvqxg7iEKoqEnojI8h56FbxSXoKmTjGKXgiHPogHdAm/VRCpC5lu7zH2ktKpNULk
         rgtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770011678; x=1770616478;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WnOjDn8hve2TQf3r/j3F/Up7LhWDpZGwCJF66onCxCU=;
        b=T+Uz1HAL0RnedCOBrEKx8KhoAehPN7kCtPwLl9gmKSoxlydO8HGKmYyoSePYboH7jr
         iOzarrdcm29HLJO7zqWXa/gflptYPgl7Qr9sv9uBt45/R96l6tuE85oMiwbVvyXPBx9F
         753/Soi/ceFnEBWzR/x7ziPl7G5tOmZT4ba4T5CZXEuBoIsY+KTc+BvMrppUhqInszky
         aIJjl1m6pGFYTYoFaHezfffU10y8r8MJdAAddtQMq9uMW86I1WMxq++0vpjZhUvnTw0Y
         vKu2IEGsStYG6+UTbRri/yGa1Jcl/ZF7VFph1gxEGRAfreeU7lNAdhhwnXmTKQcJJE+j
         iNpg==
X-Forwarded-Encrypted: i=1; AJvYcCWBGVQ08IMIkcvNVEvDuHdOzxgHW2bchz1vk/kZbDhnZT+GS7O913fpNDqs3Sg0kD9AeikZnmwZ6ZCa@vger.kernel.org
X-Gm-Message-State: AOJu0YyQnGyNJjHkXmC/VdNMVrlX3O0YIbxSPUAFEY5FjfLDWyHi0k/3
	KAPN30tGjiXoTGif95Khz/u9P1LF2TE4VUFVcYCLJ6aE5sEJVQLCG78K+ADcOanqvCsnsgZvvu4
	/leMvqQcfTW5gMAseQf02bRTIMn++DQph6z4VVItyInWkWtovXuZ6bx4AHmZbyc+q
X-Gm-Gg: AZuq6aK+CdtZRbbIvZeHHiWwhWVXtysNr7i7U+vwrjRedtXt400IZCvA4mt3QvGEdcr
	wooSgNiyBhDwxvF0E6aOGrNg2BZ78W5V6DHjGFfIxumD2gxLb/a9WqU/1nrPLKsSkAuluH/260j
	vOlkyn4xYM9SLbsd5jtBcerGMhftyJt09+pflcEFhdTwJb5nxqMoeJR4TMAP0FD8Tfs8jd+Z0sj
	CIZrwrIsrWfk8WPbvzjoDaljITuQ0PYY/dSLQGTVWaC+RTWrXMho/gutNoIOgr5yd5KIzwpmFrc
	8xZR4pdbDa1f5xny87DYVQC2M27Ou/MiRpxgAQOkrn0heCb7ckefQsnC3cdRrfsFqX33qpPYFVE
	Ap8Rniul6QmgC0/8ZZ47qaGnOYtQrH9aXgpPuHFFDVDTO8ZozvEXNC5E=
X-Received: by 2002:a05:7301:1688:b0:2ac:1e68:2342 with SMTP id 5a478bee46e88-2b7c8940a53mr5005492eec.39.1770011678404;
        Sun, 01 Feb 2026 21:54:38 -0800 (PST)
X-Received: by 2002:a05:7301:1688:b0:2ac:1e68:2342 with SMTP id 5a478bee46e88-2b7c8940a53mr5005479eec.39.1770011677819;
        Sun, 01 Feb 2026 21:54:37 -0800 (PST)
Received: from hu-liuxin-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a1add664sm19618604eec.26.2026.02.01.21.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 21:54:37 -0800 (PST)
From: Xin Liu <xin.liu@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        jie.gan@oss.qualcomm.com
Subject: [PATCH v2] arm64: dts: qcom: hamoa: Add remoteproc in EL2 device trees
Date: Sun,  1 Feb 2026 21:54:36 -0800
Message-ID: <20260202055436.818098-1-xin.liu@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: NBpm37-q095mwlzRqPM0KC8ncmmk1jEf
X-Proofpoint-GUID: NBpm37-q095mwlzRqPM0KC8ncmmk1jEf
X-Authority-Analysis: v=2.4 cv=P4w3RyAu c=1 sm=1 tr=0 ts=69803c1f cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=GxtIMRurDqL_IDABb0sA:9 a=eSe6kog-UzkA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA0OSBTYWx0ZWRfX4y2X1AphilRO
 7rmaQVX9dZF2IHgkPEH2YijWhf56VHl81bp2iV/jSJ7DUN84B+UuWhkzWIYIcvZnfz/GfJ2q3I7
 fsp8hPPtjxVXTgKrVrGnYpi/ed9ZW5iyRO23Vmk2N8BEf8GCr39fnZGhArcHyb+SsJCXs2YFLQx
 scekULpa1nza9+zab31ynSmwT7PSvfuOL3VD2PCTRYQn9FY7ojU5xV4wVEMWrHsNMz4nyqmRuNH
 fxFKPjoqHTrEzZ1m/1Hq58CHAxG0CvSN96nt4VAQQmTl3X3zXMRPXfkTkXq4aK8f6hBRmrFBve6
 OR2Ke5bRBRXZrZ/EYSCRekthJxeSNINxaC0SHZJOnE0ribWdfwoIVgAsNfuOia2ip115rhV3kpY
 2aWgFh8nwXcaYeE4dZ+9fqmJ+l9/jGbkiTT1FxHaOZBpnDV6AKrNtOToXb2piI2FboUcctn+Pj9
 nbVYS0jpITjZqVhOF2Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020049
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-261627-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:url,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xin.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 764B3C863D
X-Rspamd-Action: no action

All the existing variants Hamoa boards are using Gunyah hypervisor
which means that, so far, Linux-based OS could only boot in EL1 on
those devices. However, it is possible for us to boot Linux at EL2
on these devices [1].

When running under Gunyah, the remote processor firmware IOMMU streams
are controlled by Gunyah. However, without Gunyah, the IOMMU is managed
by the consumer of this DeviceTree. Therefore, describe the firmware
streams for each remote processor.

Add remoteproc to the EL2 device trees to generate the corresponding
-el2.dtb files.

[1]
https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi

Signed-off-by: Xin Liu <xin.liu@oss.qualcomm.com>
---
Changes in v2:
- Fix the adsp iommus mask
- Link to v1 : https://lore.kernel.org/all/20260130073113.3091884-1-xin.liu@oss.qualcomm.com/

 arch/arm64/boot/dts/qcom/x1-el2.dtso | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-el2.dtso b/arch/arm64/boot/dts/qcom/x1-el2.dtso
index 175679be01eb..ee006742d6f3 100644
--- a/arch/arm64/boot/dts/qcom/x1-el2.dtso
+++ b/arch/arm64/boot/dts/qcom/x1-el2.dtso
@@ -52,6 +52,14 @@ &pcie_smmu {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	iommus = <&apps_smmu 0x1000 0x80>;
+};
+
+&remoteproc_cdsp {
+	iommus = <&apps_smmu 0x0c00 0x0>;
+};
+
 /*
  * The "SBSA watchdog" is implemented in software in Gunyah
  * and can't be used when running in EL2.
-- 
2.43.0


