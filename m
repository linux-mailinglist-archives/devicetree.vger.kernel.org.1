Return-Path: <devicetree+bounces-275928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDdNOr6Vt2kMTQEAu9opvQ
	(envelope-from <devicetree+bounces-275928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:31:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2561294CD5
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:31:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 228233006906
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 05:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2BB4346ADC;
	Mon, 16 Mar 2026 05:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j85pw2KT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YK3OEded"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D1C158DA3
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 05:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773639095; cv=none; b=smQH7K/InqT+zt49mlYxNUVh7fhuR/YLiyTze1q3nxUqhZkVohhecw1FuRItwj1rDlxyVsYJnbX7I9mjnDLL3dy11f/INpEfxmRaPpUrTmbUHHZNeSgh9YsTr1+N8OIPui1WiZT4V0KotyTyfdvPt3K7U3R/DIfiRLbCp5B5LpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773639095; c=relaxed/simple;
	bh=OdrgWYBpsVnIMh/Rdvkx0gqk9AhhvjVO6QQyAyLEozw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=jBWH5NRhyqDT8CqjAeWg+ML8CcYI8SSsmeGYkBFNnPjgj9iI9djLjxgDJAhQGKDd4lsJ6PVlYWxLY9MX6BJ3O6XCp/BMXXKfEKQL79xreW02ynakOIBakrKR0wU9GO63RkfV79pg/He7mjdRFjq76XVdCRgQGEg5iaH5m0GNGng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j85pw2KT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YK3OEded; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G3W2WS3433912
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 05:31:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=i3Oz43XEEAV2bXcomxm+Lj
	NAvy0OBlpbyo05bM4H3Hw=; b=j85pw2KTX0CYjybQCjA46MpE2GTtZh+soBbV83
	jQA1+O1yVCiHTjwTqA72h4SaEPYB8RQp19NDqU06Kv8GwUtW9XsQM8+62kpxDoxN
	hFu4c2ibKxGCXhkea9bPI6mT/ePuRyMzGNyYnQA46j1YeveoXkHzZXX8Ld1+hIaD
	iXNu+45RJgZWUEnEYFnknG7loNHwtGRUkOaGjhln4HH0+lBQwIxqa+oEcge4gYMU
	YROlyCY1SWGcrnAdng1w8W+XNmgTxhfKEd+CVq6prkAEwzFsA3T3ZBDvQjTiK3ul
	DlYEPyhnWfXaxIRYMg/N0Bt+fkTbdfD15EDfH7U1U/F715Gw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw00amaxc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 05:31:33 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2b04293b16cso95064985ad.3
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 22:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773639092; x=1774243892; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i3Oz43XEEAV2bXcomxm+LjNAvy0OBlpbyo05bM4H3Hw=;
        b=YK3OEdedPLIOoTHvP32tZBUoCA36MOEnvd7WhCUJBoI2Q9hndTIm/TUilJJbycknfd
         4EM31uK3QoM80AnGe+CUtB17Gqdf1DCF7G9x4QdTtvMbgRdqP5a6PIj+Q23fEVXWbh4g
         xNslrniiv4QbAG6+CjxZ7ZNVWIYJYdq1Rw/oUdypz9Ec9F63lhpxpBv5pfhWPOB1LIaZ
         jXWO5BybOkn4dL9n9SpOaoegqYVuDQcisd5P884cmFDq8+OYp7Yc6oUYjuKLbrwMnElM
         AP/BBvK5GKpGVYuh34FRXCnQqlv5Z27zZNBrTsZm2vqlkISNfalyaM9G8I7mYI0E16cA
         RZVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773639092; x=1774243892;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i3Oz43XEEAV2bXcomxm+LjNAvy0OBlpbyo05bM4H3Hw=;
        b=PAB3vvxneTNIVY/kdmlUgcAHHfNZxjy43LbyPd8YD68EPnbqBma6ncjlAvHHDH8VPR
         0vGAjHRtGy0XZOMxkN0J1tADAYciIlSE4GABIdmGA0vFPU0rmK/fD3kR+EPLqQ5JtjCF
         7Fe2iPiXFF4Rhq7vg2R3poTSSel/g8T5EY9yRv8e2N6vT9ODpLSBbbTZdsw7wA0IiZxU
         h5NNYhIAoYhUUvRtXhyrxJmL0rifj5fjKvNErH7Eb3pyG0kkOeqMXOQHdJLuBey1cgt0
         q3eGx0R36Xd6BBKV7V1XNDu2kDUeVMHzl99xQaU6nQT5cAUG4kM83zhTKk27QrkkP+ED
         H1dA==
X-Forwarded-Encrypted: i=1; AJvYcCX8M8Ejtw5JNxq7M5zNly445rGVHkkzQRCBhbSbjmxIL2+jDKW5iPZFAO6BvnYEBEpUfu3QNgqaPCxW@vger.kernel.org
X-Gm-Message-State: AOJu0YwMOWUgA0EcNTuYj6/Yk8NKYDzW3KHpi2JC7OjUWH+dwK0tTeYd
	dHDiGa1d7ueum1ZMcuDqLkpkc9izlD6Htjv7TO9t92pZWmARdgZtDAt7/9tgNEOEr7p8T7LLasQ
	SKmVhN5gwEZm5vWqxtAJCVUTFKsOgb6XmSLDEibkpF8UJ97Ic7QRk1lpgZSl2Bj7Um7i447h6
X-Gm-Gg: ATEYQzyCWq8bZzT+ll0DubSRGnzcy/P4pVj/JBK8gp9pxAKBy5t8xUeEIVO+pVVz2bx
	kB/1mKCE3Sz2Mv/66ZJSWzQZksElNsOznHnF1HdHDYAeNqgVsOp3EfxkJHLwAd7H0rWw6/kyLnZ
	mz6+5lxC4rgZvIDSMepQ2lYjTBej4shRBDiz5QvIImN8v6XYkuGmB4xjXTxfwmuz8VwU5Mkoo7e
	rbn4iq8VsK9znhoIrHPFjDnjxALHbJorTuG3LRxW9QXc2LmJwF0E41x6ie06omVOPA8tYta5f6T
	v/ayaWY8u9TrKt+T1FFkG4+WxDpeGrBAvs4Jrvob1WgPUeqQKAjBcAOWQIMpK/uZDs3spPE/SxW
	4ANesNoEbVTvjpS4X3KGQLlRKorQ25RjKwpnyAg7y5tRWkAW9gQeR7Dyk89P3ngTsQ6iUc9b1QR
	CkTYdS9piv
X-Received: by 2002:a17:903:124e:b0:2ae:abe9:b391 with SMTP id d9443c01a7336-2aecaa9515cmr137829585ad.24.1773639092265;
        Sun, 15 Mar 2026 22:31:32 -0700 (PDT)
X-Received: by 2002:a17:903:124e:b0:2ae:abe9:b391 with SMTP id d9443c01a7336-2aecaa9515cmr137829295ad.24.1773639091478;
        Sun, 15 Mar 2026 22:31:31 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b05d95796asm5750875ad.52.2026.03.15.22.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 22:31:31 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 13:31:11 +0800
Subject: [PATCH] arm64: dts: qcom: remove the disabled replicator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-clean-up-failed-devices-v1-1-f22fc9b072ab@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAJ+Vt2kC/x3MQQqAIBBA0avIrBtIpZCuEi1MxxoIE6UIpLsnL
 f/i/QqFMlOBSVTIdHPhM7aQnQC327gRsm8Nqldjr+WI7iAb8UoYLB/k0TfkqKA0JjitzDp4BU2
 nTIGf/zwv7/sB7VsQ22kAAAA=
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773639088; l=2048;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=OdrgWYBpsVnIMh/Rdvkx0gqk9AhhvjVO6QQyAyLEozw=;
 b=fE8Wz8EWrY2vQNu9Wu4mevdrgkWvDknwd8FFMuScQhZIQqCuWFBTdcQmJR6APUCyYCDF4o29X
 YYg6AMwSEhMDIR5z7gsatBJQO879mqurdV5BT2z0J5dWYLo17IuACiN
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-GUID: 0nSehvBxnwLA31qkFzvIlgrP0YZmYEKN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA0MCBTYWx0ZWRfX8p159LiCeoCr
 8AS40xYNnPj3Q0NVLxKYCbufau7R+zGKJf7+CkGuPClSKXmx5f8AXplr5Annoq2IAqGc4bMK0H0
 rfKUUlT3v0xrBEErEvHonvOYjAwggG/xTry6TszhU9FTLGAyOpc3LTCUHoVWLszDkttKnt5pF+d
 Ys0ZK6iKC6MeMn/RFM/2sMLFJ8kFHVjdb59QxAyH3mbEm9nHKRQ/AQf39wKx2yvHg+j1qSU+DmZ
 MwyYFMPQO45xp9DafpbiJHVWa3jdXb6YpUdspoWG2elvRngEcNTcaGvrsBwyV5aKg6/4EymOsA6
 sHj1f/e8TTbN5My81oPHAUqmHc5k5oPRKMvqNFWFXc+nBTgwmf5JSH287qzjrdwY4NFVpJ1IRGM
 jZ65EdZATV/cldwCOpDPcmArV8pQdvwYbATipNnrexeM1xL7BFdrSptYUm2oSHxKOGl9skKcxpJ
 ARRBhYqXl+eN2gktHJQ==
X-Proofpoint-ORIG-GUID: 0nSehvBxnwLA31qkFzvIlgrP0YZmYEKN
X-Authority-Analysis: v=2.4 cv=ebIwvrEH c=1 sm=1 tr=0 ts=69b795b5 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=tc_rCIf4_8PxeAFaAM0A:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160040
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275928-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,0.0.0.7:email,0.0.0.6:email,683b000:email,604a000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F2561294CD5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Remove the disabled device that blocks probing of the connected
replicator, as the replicator driver validates all connected
devices during probe.

kernel log:
[   18.540971] platform 6046000.replicator: deferred probe pending: (reason unknown)

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 41 -------------------------------------
 1 file changed, 41 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index e0282a5f9a6a..1e2cfd040fe5 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -2263,14 +2263,6 @@ replicator0_out0: endpoint {
 						remote-endpoint = <&tmc_etr_in>;
 					};
 				};
-
-				port@1 {
-					reg = <1>;
-
-					replicator0_out1: endpoint {
-						remote-endpoint = <&replicator1_in>;
-					};
-				};
 			};
 		};
 
@@ -2317,31 +2309,6 @@ tmc_etr_in: endpoint {
 			};
 		};
 
-		replicator@604a000 {
-			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
-			reg = <0x0 0x0604a000 0x0 0x1000>;
-
-			clocks = <&aoss_qmp>;
-			clock-names = "apb_pclk";
-			status = "disabled";
-
-			in-ports {
-				port {
-					replicator1_in: endpoint {
-						remote-endpoint = <&replicator0_out1>;
-					};
-				};
-			};
-
-			out-ports {
-				port {
-					replicator1_out: endpoint {
-						remote-endpoint = <&funnel_swao_in6>;
-					};
-				};
-			};
-		};
-
 		cti@683b000 {
 			compatible = "arm,coresight-cti", "arm,primecell";
 			reg = <0x0 0x0683b000 0x0 0x1000>;
@@ -2763,14 +2730,6 @@ in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				port@6 {
-					reg = <6>;
-
-					funnel_swao_in6: endpoint {
-						remote-endpoint = <&replicator1_out>;
-					};
-				};
-
 				port@7 {
 					reg = <7>;
 

---
base-commit: b84a0ebe421ca56995ff78b66307667b62b3a900
change-id: 20260316-clean-up-failed-devices-188fc328b5d2

Best regards,
-- 
Jie Gan <jie.gan@oss.qualcomm.com>


