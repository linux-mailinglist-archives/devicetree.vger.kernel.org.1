Return-Path: <devicetree+bounces-262072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLlbCGWagWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:49:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 473B6D574D
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:49:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D25F330828FF
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 06:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29D4537F11C;
	Tue,  3 Feb 2026 06:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AC2qstMi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QDwOplm1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B299225A640
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 06:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770100370; cv=none; b=ZxA1NQyySpUKwCzRCUg/auMNoqxD3wMXB6RMf74woXqFn8rK8b3FxZJ6kfJJsiuZW4gG2j+e57i872DWIvpUpnBg57lYyIKkc52vVvuiB9tI1K5wW/Zy/Cfl3SUQR4O3m0nOd33SzdtOiV+IUxdTa7Avu+fSR85CVkn9zzaoDBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770100370; c=relaxed/simple;
	bh=kICWRRDeic3FzjUYfk6wZA50Xhw23GGYToPtLvwwX70=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=e/vq8zK4IeILz//c3Tiq03TQ240w8YnSkzIEj8Ra2gqfeCumd8QrUdDb4/KYB6g77tmFb487qJCExoPaAhcuTPzhSH4v4GuveaQGPYalb98qcaNgOcG0zSdy4m+xmQ/ZULR4z0H1M8O3teHNGSUKpka5PV2yL1KBsPtz7LWmSNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AC2qstMi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QDwOplm1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6132QqsH3386846
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 06:32:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=N2oBlPbjkzULaEw9PhLk74w0izpOPSVkdcW
	C0nfRP94=; b=AC2qstMiIzvSzflLO2crl7lLLSEoqUBD9jUqy11eDdCiYdgKMAt
	iv8Rr1dGziHMCuCNazC2pST5+MlV1bqvSDGCklw7mo6GfyYqnKSltG4tg0qjspzi
	5EoRQSG3WYYrpXgXYeCVrORSzh7Od+V9SjyphGbH09JhKvEKBeWBBdNnEVPeOLT/
	1UL5wlL9Anekh2mCNx43+cOXtlD1CJP6go0FF9Of8FT2p9UL50t4PD69qKeJjI37
	5YvmqFNpXg6DctAkJxsmziV+Ftg5BcoSLNDVqpqFKUcrRFlEtkoW49aI04ogypoT
	XKh55cicP6BPpxcj1IAPXA8t68P/GNaDYFQ==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2xvbtcnx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:32:47 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-11b94abc09dso7924594c88.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 22:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770100367; x=1770705167; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N2oBlPbjkzULaEw9PhLk74w0izpOPSVkdcWC0nfRP94=;
        b=QDwOplm1ZFkceVGqsN+0cfPHEmjQL7EvJlXI415RQ2/mhSlQN+RLpwCDZFZio8kvQP
         ataADpo8iVEvxEKQ1BWnj00omQ5kK9CFg7M0Owuogp9ikHSypMXA2q+OF3Fd0i0+ICvS
         dDw3GdCyxjBfGZ5OJ10znVjO83VZZAkvUtfhgXPWaoVYSNNccVCEH4uoBuuuJ5OVBhfY
         sm6jo6kB3172ycUeJX8G7OLa2IWnjjeL7UYbXe45XR++EZ0+KSDjjTKUSPRKFMLPH5pz
         SKKASxWx3RuMB95OTi+dhs3foHMFhpuRgbPtHNxJ0zhVcaqw7iJoIu0L7/dELUxO1hUs
         zMgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770100367; x=1770705167;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N2oBlPbjkzULaEw9PhLk74w0izpOPSVkdcWC0nfRP94=;
        b=OOxicLMN9wdU0zQRvVhrSSwbY2GwgG//uOG+YC/jZVc3Kbk1I+SYZCU/dDF/085k9z
         ywNjXXY1WVWBNktGS4FWUyMgup2/f4FezfQhHbzdQVbBD2/5FPXfUWkOP3GK6q11Q4VW
         yxX1GmHgtR8bcVgtfHRH933G2e5QZY5f/V1KVk7tgUCFDR8nkTe51nCG4/HtWmjADuGE
         t+olGso/4GJAOoGcD8M4k7JTAhIulyzthdcoYEQIk5JJMeBN5FbY8OoPCQqpl2DVSa2d
         dfoN7pxOAgVGSg/c9pojE+flhyRYCcSxJTxfTDj6XSEk0MEnwxdcTiW7KjkjW56PkMMa
         n/LQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3+5ZCpeUBJtxtDqKEGpH0AKBgkCSNTyEmCA3WEahWGAyfqy6VnMfANWkwxHJqRgQVvTvyBsgg/U3A@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4aOwrymCfKCw5IKktOZpW7H+P8jvgkV/3hySgEvy1zlgRe0IJ
	q02DSm/YyLV8MBpSndqFy29Zj7IYRmcFldDUmlz+9dSvtRbqWtYxb5CqlEKnclliyWEDqdLjdlw
	yWFrXv4XCIJL7U8zX4BPkOtlUQ8u7f5JiTX3+kotxPlF8NtAqM+UAG+pN+XCLbWqh
X-Gm-Gg: AZuq6aKLzp6f44RpgyZJTa/ZdCagyWluYAwJ+2CNsAPzjZ1mYPNpOUm2hkaeuy75SdG
	eV2wNctlcy/bqE5DsRIVPYA/NFagf67CXPeWE61D1mr1X1ZnNA8wUdCSOdrrWlXxK9nr71uZB17
	tLDBXGKTCJ6Ig74ToBHizWO61W/XiH7ZJFynIiUKat78cQQ/wHK28lzgQjuQxIXi/troFPVrnh0
	cUrfPLc5I/XwJp/hBFvu6JrEcysU41QFXOll0gEJat8YHVnNPSU3K6yUOnvQW9dbOwnQGcmEuPW
	8QkKNHqzd8WQQsFXggitSCdXtXvnB0Qsk2ZIMd6xb2O/GYpjCXRbgsp9Q2RqNgWV1cJDQSBUMYr
	Yk9DrKkff2iVHoAlPx4ixbE9hyCxFb9YXCtpb9lW35UkoeAjp+EBPxGo=
X-Received: by 2002:a05:7300:f193:b0:2ab:ca55:89c8 with SMTP id 5a478bee46e88-2b7c895fed9mr6525191eec.43.1770100366586;
        Mon, 02 Feb 2026 22:32:46 -0800 (PST)
X-Received: by 2002:a05:7300:f193:b0:2ab:ca55:89c8 with SMTP id 5a478bee46e88-2b7c895fed9mr6525184eec.43.1770100366009;
        Mon, 02 Feb 2026 22:32:46 -0800 (PST)
Received: from hu-liuxin-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a16eab72sm20957408eec.8.2026.02.02.22.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 22:32:45 -0800 (PST)
From: Xin Liu <xin.liu@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        jie.gan@oss.qualcomm.com, Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v3] arm64: dts: qcom: hamoa: Add remoteproc IOMMUS in EL2 device trees
Date: Mon,  2 Feb 2026 22:32:44 -0800
Message-ID: <20260203063244.1498699-1-xin.liu@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: wWhZyfglUhGeMKuwa0I3jbPFu_r-KSPK
X-Proofpoint-ORIG-GUID: wWhZyfglUhGeMKuwa0I3jbPFu_r-KSPK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA1MCBTYWx0ZWRfXxHThug+OILRR
 qb61TBBzZ+0FiDmBnjCV87nZcjrDAdaRRg2LnnFWgLyWvH5JyvQUb7Quyun+5Bf8bV6lzyjrQgc
 1vKq0HKM7S1KXP4lmygnBKwd1baB+YGA+fwSwefSApuchvQ5TnUupkMtRLCXZdqKcgDFaTy7sVV
 4cX80j590q2m58YwMw4rW47Q2kISjF+rLYWUf1JXa2RV2yhMRc/zyBodQmAse1yfY96n+PPxmeN
 onu/AKooBei15KEtYe2omMIkFbHqXFsUCFN3inLKRxtMzoVExD46TyK1av9uPxpYNocyuI4MWBa
 /oQWTv1dPiUMNOtpAiuj0eMBMaw14+2N560KEeXvjuKvVbzgliuhEWNMVYWE2niJ2gllO+u69fX
 ifu7UAQ8D0xVh8qP+eYU5rtU37hP1xK0I/cJAg4qY+kcQRj+sxlcksFEezSVD0xci3FReSZaY21
 S22lr9hIQ+dUCWWbsWQ==
X-Authority-Analysis: v=2.4 cv=AurjHe9P c=1 sm=1 tr=0 ts=6981968f cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=GxtIMRurDqL_IDABb0sA:9 a=eSe6kog-UzkA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_02,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030050
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262072-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xin.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:url,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 473B6D574D
X-Rspamd-Action: no action

All the existing variants Hamoa boards are using Gunyah hypervisor
which means that, so far, Linux-based OS could only boot in EL1 on
those devices. However, it is possible for us to boot Linux at EL2
on these devices [1].

When running under Gunyah, the remote processor firmware IOMMU streams
are controlled by Gunyah. However, without Gunyah, the IOMMU is managed
by the consumer of this DeviceTree. Therefore, describe the firmware
streams for each remote processor.

Add remoteproc IOMMUS to the EL2 device trees to generate the
corresponding -el2.dtb files.

[1]
https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Xin Liu <xin.liu@oss.qualcomm.com>
---
Changes in v3:
- Modify the subject title
- Link to v2 : https://lore.kernel.org/all/20260202055436.818098-1-xin.liu@oss.qualcomm.com/

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


